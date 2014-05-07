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
	
    public MainView()
    {
        InitializeUX();
		
		Uno.Application.Current.Window.KeyDown += WindowKeyDown;
		Uno.Application.Current.Window.KeyUp += WindowKeyUp;
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
				EmulatorHost1.Chip8.SetInput(i, value);
		}
	}
}
