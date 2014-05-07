using Uno;
using Uno.Collections;
using Uno.Scenes;
using Uno.UI;
using Uno8;
using Uno8.Emulator;

public partial class MainView
{
	readonly Chip8 _chip8;
	
    public MainView()
    {
        InitializeUX();
		
		_chip8 = new Chip8(Games.Get("Airplane"));
    }
	
	protected override void OnUpdate()
	{
		base.OnUpdate();
		
		_chip8.Update();
	}
	
	protected override void OnDraw()
	{
		base.OnDraw();
		
		var tex = _chip8.CreateOutputTexture();
		draw Uno.Scenes.Primitives.Quad
		{
			PixelColor: sample(tex, TexCoord, Uno.Graphics.SamplerState.NearestClamp);
		};
		tex.Dispose();
	}
}
