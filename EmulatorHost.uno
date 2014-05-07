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
		public Chip8 Chip8 { get { return _chip8; } }
		
		public EmulatorHost()
		{
			_chip8 = new Chip8(Games.Get("15 Puzzle"));
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