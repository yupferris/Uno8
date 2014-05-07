using Uno;
using Uno.Collections;
using Uno.Graphics;
using Uno.Scenes;
using Uno.Content;
using Uno.Content.Models;
using Uno.UI;
using Uno8.Emulator;

namespace Uno8
{
	public class EmulatorHost : Element
	{
		readonly Chip8 _chip8;
		public Chip8 Chip8 { get { return _chip8; } }
		
		public EmulatorHost()
		{
			_chip8 = new Chip8(Games.Get("15 Puzzle"));
		}
		
		protected override void OnUpdate()
		{
			_chip8.Update();
		}
		
		protected override void OnDraw(float2 origin)
		{
			int w = Math.Max((int)Math.Ceil(ActualSize.X), 1);
			int h = Math.Max((int)Math.Ceil(ActualSize.Y), 1);
			
			var tex = _chip8.CreateOutputTexture();
			draw
			{
				float2[] Vertices: new []
				{
					float2(0, 0), float2(0, 1), float2(1, 1),
					float2(0, 0), float2(1, 1), float2(1, 0)
				};

				float2 Coord: vertex_attrib(Vertices);

				ClipPosition: float4(
					(Math.Ceil(Coord.X * (float)w + origin.X) / Context.VirtualResolution.X) * 2.0f - 1.0f,
					((Math.Ceil(Coord.Y * (float)h + origin.Y) / Context.VirtualResolution.Y) * -2.0f) + 1.0f,
					0, 1);

				CullFace: PolygonFace.None;
				PixelColor: sample(tex, Coord, Uno.Graphics.SamplerState.NearestClamp);
			};
			tex.Dispose();
			
			InvalidateVisual();
		}
	}
}