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
	public class Keypad : StackPanel
	{
		public class KeyPointerHandler
		{
			readonly Keypad _keypad;
			readonly int _index;

			public KeyPointerHandler(Keypad keypad, int index, Button button)
			{
				_keypad = keypad;
				_index = index;

				button.PointerDown += KeyPointerDown;
				button.PointerUp += KeyPointerUp;
			}

			void KeyPointerDown(object sender, PointerDownArgs args)
			{
				SetInput(true);
			}

			void KeyPointerUp(object sender, PointerUpArgs args)
			{
				SetInput(false);
			}

			void SetInput(bool value)
			{
				var host = _keypad.EmulatorHost;
				if (host == null)
					return;

				host.Chip8.SetInput(_index, value);
			}
		}

		public EmulatorHost EmulatorHost { get; set; }

		public Keypad()
		{
			var keyChars = new[]
			{
				'1', '2', '3', 'C',
				'4', '5', '6', 'D',
				'7', '8', '9', 'E',
				'A', '0', 'B', 'F'
			};

			var keyIndices = new[]
			{
				1,  2,  3, 12,
				4,  5,  6, 13,
				7,  8,  9, 14,
				10, 0, 11, 15
			};

			for (int i = 0; i < 4; i++)
			{
				var row = new StackPanel();
				row.Orientation = Orientation.Horizontal;
				Children.Add(row);
				for (int j = 0; j < 4; j++)
				{
					int k = i * 4 + j;
					var keyChar = keyChars[k];
					int keyIndex = keyIndices[k];

					var key = new Button();
					key.Width = 40.0f;
					key.Height = 30.0f;
					key.Margin = float4(2.0f);
					key.Text = keyChar.ToString();

					new KeyPointerHandler(this, keyIndex, key);

					row.Children.Add(key);
				}
			}
		}
	}
}