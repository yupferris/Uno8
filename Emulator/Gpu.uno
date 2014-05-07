using Uno;
using Uno.Collections;
using Uno.Graphics;
using Uno.Scenes;
using Uno.Content;
using Uno.Content.Models;

namespace Uno8.Emulator
{
	public class Gpu
	{
		readonly uint[] _framebuffer = new uint[64 * 32];

		public void Clear()
		{
			for (int i = 0; i < _framebuffer.Length; i++)
				_framebuffer[i] = 0;
		}

		public int DrawSprite(int x, int y, byte[] buf, int bufOffset, int n)
		{
			int ret = 0;
			for (int i = 0; i < n; i++)
			{
				if (y >= 0 && y < 32)
				{
					var c = buf[bufOffset + i];
					for (int j = 0; j < 8; j++)
					{
						if (((c >> (7 - j)) & 1) != 0)
						{
							int bi = y * 64 + ((x + j) & 63);
							if (_framebuffer[bi] != 0)
							{
								_framebuffer[bi] = 0;
								ret = 1;
							}
							else
							{
								_framebuffer[bi] = 0xffffffff;
							}
						}
					}
				}
				y++;
			}
			return ret;
		}
		
		public texture2D CreateOutputTexture()
		{
			var ret = new Texture2D(int2(64, 32), Uno.Graphics.Format.RGBA8888, false);
			var bytes = new byte[_framebuffer.Length * 4];
			for (int i = 0; i < _framebuffer.Length; i++)
			{
				uint pixel = _framebuffer[i];
				int bi = i * 4;
				bytes[bi + 0] = (byte)((pixel >> 24) & 0xff);
				bytes[bi + 1] = (byte)((pixel >> 16) & 0xff);
				bytes[bi + 2] = (byte)((pixel >> 8) & 0xff);
				bytes[bi + 3] = (byte)(pixel & 0xff);
			}
			ret.Update(new Buffer(bytes));
			return ret;
		}
	}
}