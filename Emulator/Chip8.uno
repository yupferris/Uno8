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
		public Game
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
		
		readonly Random _random = new Random(12345);
		readonly byte[] _ram = new byte[4096];
		readonly Stack<ushort> _stack = new Stack<ushort>(16);
		
		int _speed = 20;
		
		public Chip8(Game game)
		{
			Game = game;
		}
		
		
	}
}