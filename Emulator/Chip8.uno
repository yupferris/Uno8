using Uno;
using Uno.Collections;
using Uno.Graphics;
using Uno.Scenes;
using Uno.Content;
using Uno.Content.Models;

namespace Uno8.Emulator
{
	public class Chip8
	{
		Game _game;
		public Game Game
		{
			get { return _game; }
			set
			{
				if (value == _game)
					return;
				_game = value;
				Reset();
			}
		}
		
		public int OutputWidth { get { return 64; } }
		public int OutputHeight { get { return 32; } }
		
		static readonly byte[] _charMem = new[]
		{
			(byte)0xf0, (byte)0x90, (byte)0x90, (byte)0x90, (byte)0xf0, // 0
			(byte)0x20, (byte)0x60, (byte)0x20, (byte)0x20, (byte)0x70, // 1
			(byte)0xf0, (byte)0x10, (byte)0xf0, (byte)0x80, (byte)0xf0, // 2
			(byte)0xf0, (byte)0x10, (byte)0xf0, (byte)0x10, (byte)0xf0, // 3
			(byte)0x90, (byte)0x90, (byte)0xf0, (byte)0x10, (byte)0x10, // 4
			(byte)0xf0, (byte)0x80, (byte)0xf0, (byte)0x10, (byte)0xf0, // 5
			(byte)0xf0, (byte)0x80, (byte)0xf0, (byte)0x90, (byte)0xf0, // 6
			(byte)0xf0, (byte)0x10, (byte)0x20, (byte)0x40, (byte)0x40, // 7
			(byte)0xf0, (byte)0x90, (byte)0xf0, (byte)0x90, (byte)0xf0, // 8
			(byte)0xf0, (byte)0x90, (byte)0xf0, (byte)0x10, (byte)0xf0, // 9
			(byte)0xf0, (byte)0x90, (byte)0xf0, (byte)0x90, (byte)0x90, // a
			(byte)0xe0, (byte)0x90, (byte)0xe0, (byte)0x90, (byte)0xe0, // b
			(byte)0xf0, (byte)0x80, (byte)0x80, (byte)0x80, (byte)0xf0, // c
			(byte)0xe0, (byte)0x90, (byte)0x90, (byte)0x90, (byte)0xe0, // d
			(byte)0xf0, (byte)0x80, (byte)0xf0, (byte)0x80, (byte)0xf0, // e
			(byte)0xf0, (byte)0x80, (byte)0xf0, (byte)0x80, (byte)0x80, // f
		};
		
		readonly Gpu _gpu = new Gpu();
		
		readonly byte[] _regs = new byte[16];
		readonly byte[] _ram = new byte[4096];
		readonly Stack<ushort> _stack = new Stack<ushort>(16);
		readonly bool[] _inputs = new bool[16];
		
		readonly Random _random = new Random(12345);
		
		int _speed = 20;
		
		ushort _pc;
		ushort _iReg;
		byte _timerDelay;
		
		bool _isWaitingForKeypress;
		
		public Chip8(Game game)
		{
			Game = game;
		}
		
		public void Reset()
		{
			_pc = 0x200;
			for (int i = 0; i < 16; i++)
				_regs[i] = 0;
			_iReg = 0;
			_timerDelay = 0;
			for (int i = 0; i < 4096; i++)
				_ram[i] = (byte)_random.NextInt(256);
			for (int i = 0; i < 16 * 5; i++)
				_ram[i] = _charMem[i];
			for (int i = 0; i < 16; i++)
				_inputs[i] = false;
			_gpu.Clear();
			// TODO: _gpu.Update()?
			for (int i = 0; i < Game.Data.Length; i++)
				_ram[i + 0x200] = Game.Data[i];
			_isWaitingForKeypress = false;
		}
		
		public void Update()
		{
			int keyPressReg = 0;
			for (int i = 0; i < _speed; i++)
			{
				if (_isWaitingForKeypress)
				{
					for (int j = 0; j < 16; j++)
					{
						if (GetInput(j))
						{
							_regs[keyPressReg] = (byte)j;
							_isWaitingForKeypress = false;
							break;
						}
					}
					continue;
				}
				
				if (_pc >= 4095)
					throw new Exception("PC out of bounds");
				var opcode = (ushort)((_ram[_pc] << 8) | _ram[_pc + 1]);
				_pc = (ushort)(_pc + 2);
				
				int h = (opcode >> 12) & 0x0f;
				int x = (opcode >> 8) & 0x0f;
				int y = (opcode >> 4) & 0x0f;
				int n = opcode & 0x0f;
				int nn = opcode & 0xff;
				int nnn = opcode & 0x0fff;
				
				switch (h)
				{
					case 0:
						if ((opcode & 0x0f00) != 0)
						{
							// SYS addr (ignored)
						}
						else if(opcode == 0x00e0)
						{
							// CLS
							_gpu.Clear();
						}
						else if (opcode == 0x00ee)
						{
							// RET
							_pc = _stack.Pop();
						}
						else
						{
							InvalidOpcode();
						}
						break;
						
					case 1:
						// JP addr
						_pc = (ushort)nnn;
						break;

					case 2:
						// CALL addr
						_stack.Push(_pc);
						_pc = (ushort)nnn;
						break;

					case 3:
						// SE Vx, byte
						if (_regs[x] == nn)
							_pc = (ushort)(_pc + 2);
						break;

					case 4:
						// SNE Vx, byte
						if (_regs[x] != nn)
							_pc = (ushort)(_pc + 2);
						break;

					case 5:
						if (n != 0)
							InvalidOpcode();

						// SE Vx, Vy
						if (_regs[x] == _regs[y])
							_pc = (ushort)(_pc + 2);
						break;

					case 6:
						// LD Vx, byte
						_regs[x] = (byte)nn;
						break;

					case 7:
						// ADD Vx, byte
						_regs[x] = (byte)(_regs[x] + nn);
						break;

					case 8:
						switch (opcode & 0xf)
						{
						case 0:
							// LD Vx, Vy
							_regs[x] = _regs[y];
							break;

						case 1:
							// OR Vx, Vy
							_regs[x] = (byte)(_regs[x] | _regs[y]);
							break;

						case 2:
							// AND Vx, Vy
							_regs[x] = (byte)(_regs[x] & _regs[y]);
							break;

						case 3:
							// XOR Vx, Vy
							_regs[x] = (byte)(_regs[x] ^ _regs[y]);
							break;

						case 4:
							{
								// ADD Vx, Vy
								int result = _regs[x] + _regs[y];
								_regs[15] = (byte)(result > 255 ? 1 : 0);
								_regs[x] = (byte)result;
							}
							break;

						case 5:
							// SUB Vx, Vy
							_regs[15] = (byte)(_regs[x] < _regs[y] ? 0 : 1);
							_regs[x] = (byte)(_regs[x] - _regs[y]);
							break;

						case 6:
							// SHR Vx
							_regs[15] = (byte)(_regs[x] & 1);
							_regs[x] = (byte)(_regs[x] >> 1);
							break;

						case 7:
							// SUBN Vx, Vy
							_regs[15] = (byte)(_regs[y] < _regs[x] ? 0 : 1);
							_regs[x] = (byte)(_regs[y] - _regs[x]);
							break;

						case 0xe:
							// SHL Vx
							_regs[15] = (byte)((_regs[x] >> 7) & 1);
							_regs[x] = (byte)(_regs[x] << 1);
							break;

						default:
							InvalidOpcode();
						}
						break;

					case 9:
						// SNE Vx, Vy
						if (_regs[x] != _regs[y])
							_pc = (ushort)(_pc + 2);
						break;

					case 0xa:
						// LD i, addr
						_iReg = nnn;
						break;

					case 0xb:
						// JP V0, addr
						_pc = nnn + _regs[0];
						break;

					case 0xc:
						// RND Vx, byte
						_regs[x] = _random.GetNextInt() & nn;
						break;

					case 0xd:
						// DRW Vx, Vy, nibble
						_regs[15] = _gpu.DrawSprite(_regs[x], _regs[y], ram + _iReg, n);
						break;

					case 0xe:
						if (nn == 0x9e)
						{
							// SKP Vx
							if (GetInput(_regs[x]))
								pc += 2;
						}
						else if (nn == 0xa1)
						{
							// SKNP Vx
							if (!GetInput(_regs[x]))
								pc += 2;
						}
						else
						{
							InvalidOpcode();
						}
						break;

					case 0xf:
						switch (nn)
						{
						case 0x07:
							// LD Vx, DT
							_regs[x] = _timerDelay;
							break;

						case 0x0a:
							// LD Vx, K
							keyPressReg = x;
							_isWaitingForKeypress = true;
							break;

						case 0x15:
							// LD DT, Vx
							_timerDelay = _regs[x];
							break;

						case 0x18:
							// LD ST, Vx
							_timerSound = _regs[x];
							break;

						case 0x1e:
							{
								// ADD I, Vx
								var result = _iReg + _regs[x];
								_regs[15] = result > 0xfff ? 1 : 0;
								_iReg = result & 0xfff;
							}
							break;

						case 0x29:
							// LD F, Vx
							_iReg = _regs[x] * 5;
							break;

						case 0x33:
							{
								// LD B, Vx
								var c = _regs[x];
								_ram[(_iReg + 2) & 0xfff] = c % 10;
								_ram[(_iReg + 1) & 0xfff] = (c / 10) % 10;
								_ram[_iReg] = (c / 100) % 10;
							}
							break;

						case 0x55:
							{
								// LD [I], Vx
								for (int i = 0; i <= x; i++)
									ram[(_iReg + i) & 0xfff] = _regs[i];
								_iReg = (_iReg + x + 1) & 0xfff;
							}
							break;

						case 0x65:
							{
								// LD Vx, [I]
								for (int i = 0; i <= x; i++)
									_regs[i] = _ram[(_iReg + i) & 0xfff];
								_iReg = (_iReg + x + 1) & 0xfff;
							}
							break;

						default:
							InvalidOpcode();
						}
						break;

					default:
						InvalidOpcode();
				}
			}
			
			_gpu.Update();
		}
		
		public bool GetInput(int index)
		{
			return _inputs[index];
		}
		
		public void SetInput(int index, bool value)
		{
			_inputs[index & 0x0f] = value;
		}
		
		void InvalidOpcode()
		{
			throw new Exception("Invalid opcode");
		}
	}
}