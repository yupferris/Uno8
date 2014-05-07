using Uno;
using Uno.Collections;
using Uno.Scenes;
using Uno.UI;
using Uno.Platform;
using Uno8;
using Uno8.Emulator;

public partial class MainView
{
	class GameButtonHandler
	{
		readonly EmulatorHost _host;
		readonly Game _game;
		
		public GameButtonHandler(EmulatorHost host, Game game, Button button)
		{
			_host = host;
			_game = game;
			
			button.Click += ButtonClicked;
		}
		
		void ButtonClicked(object sender, SceneEventArgs args)
		{
			_host.Chip8.Game = _game;
		}
	}
	
	static readonly Key[] _keymap = new[] { Key.X, Key.D1, Key.D2, Key.D3, Key.Q, Key.W, Key.E, Key.A, Key.S, Key.D, Key.Z, Key.C, Key.D4, Key.R, Key.F, Key.V };

    public MainView()
    {
        InitializeUX();

		Uno.Application.Current.Window.KeyDown += WindowKeyDown;
		Uno.Application.Current.Window.KeyUp += WindowKeyUp;
		
		foreach (var game in Games.All)
		{
			var b = new Button();
			
			b.HorizontalContentAlignment = HorizontalAlignment.Left;
			b.Height = 24.0f;
			b.Margin = float4(0, 0, 0, 2.0f);
			b.Text = game.Title;
			
			new GameButtonHandler(EmulatorHost1, game, b);
			
			gamesContainer.Children.Add(b);
		}
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

	void resetButton_Click(object a1, Uno.Scenes.SceneEventArgs a2)
    {
		EmulatorHost1.Chip8.Reset();
    }
}
