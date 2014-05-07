using Uno;
using Uno.Collections;
using Uno.Graphics;
using Uno.Scenes;
using Uno.Content;
using Uno.Content.Models;
using Uno8.Emulator;

namespace Uno8
{
	public class EmulatorHost
	{
		readonly Chip8 _chip8;
		
		public EmulatorHost(Chip8 chip8)
		{
			_chip8 = chip8;
		}
		
		public void Update()
		{
			_chip8.Update();
		}
		
		public void Draw()
		{
			var tex = _chip8.CreateOutputTexture();
			draw Uno.Scenes.Primitives.Quad
			{
				PixelColor: sample(tex, TexCoord, Uno.Graphics.SamplerState.NearestClamp);
			};
			tex.Dispose();
		}
	}
}