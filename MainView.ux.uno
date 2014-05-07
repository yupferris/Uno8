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
		
		
	}
	
	protected override void OnDraw()
	{
		base.OnDraw();
		
		draw Uno.Scenes.Primitives.Quad
		{
			PixelColor: float4(1, 0, 0, 1);
		};
	}
}
