using Uno;
using Uno.Collections;
using Uno.Scenes;
using Uno.UI;
using Uno.Platform;
using Uno8;
using Uno8.Emulator;

public partial class MainView
{
	static readonly Key[] _keymap = new[] { Key.X, Key.D1, Key.D2, Key.D3, Key.Q, Key.W, Key.E, Key.A, Key.S, Key.D, Key.Z, Key.C, Key.D4, Key.R, Key.F, Key.V };
	
	readonly Chip8 _chip8;
	readonly EmulatorHost _host;
	
    public MainView()
    {
        InitializeUX();
		
		_chip8 = new Chip8(Games.Get("15 Puzzle"));
		_host = new EmulatorHost(_chip8);
		
		Uno.Application.Current.Window.KeyDown += WindowKeyDown;
		Uno.Application.Current.Window.KeyUp += WindowKeyUp;
    }
	
	protected override void OnUpdate()
	{
		base.OnUpdate();
		
		_host.Update();
	}
	
	protected override void OnDraw()
	{
		Context.Clear(float4(0, 0, 0, 1), 1);
		
		_host.Draw();
		
		base.OnDraw();
	}
	
	void WindowKeyDown(object sender, Uno.Platform.KeyEventArgs args)
	{
		SetInput(args.Key, true);
	}
	
	void WindowKeyUp(object sender, Uno.Platform.KeyEventArgs args)
	{
		SetInput(args.Key, false);
	}
	
	void SetInput(Key key, bool value)
	{
		for (int i = 0; i < _keymap.Length; i++)
		{
			if (key == _keymap[i])
				_chip8.SetInput(i, value);
		}
	}
}
