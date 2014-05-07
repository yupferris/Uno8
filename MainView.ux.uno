using Uno;
using Uno.Collections;
using Uno.Scenes;
using Uno.UI;
using Uno8;
using Uno8.Emulator;

public partial class MainView
{
	readonly EmulatorHost _host;
	
    public MainView()
    {
        InitializeUX();
		
		_host = new EmulatorHost(new Chip8(Games.Get("15 Puzzle")));
    }
	
	protected override void OnUpdate()
	{
		base.OnUpdate();
		
		_host.Update();
	}
	
	protected override void OnDraw()
	{
		base.OnDraw();
		
		_host.Draw();
	}
}
