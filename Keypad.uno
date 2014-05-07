using Uno;
using Uno.Collections;
using Uno.Graphics;
using Uno.Scenes;
using Uno.Content;
using Uno.Content.Models;
using Uno.UI;

namespace Uno8
{
	public class Keypad : StackPanel
	{
		public Keypad()
		{
			var keyChars = new[]
			{
				'1', '2', '3', 'C',
				'4', '5', '6', 'D',
				'7', '8', '9', 'E',
				'A', '0', 'B', 'F',
			};
			
			for (int i = 0; i < 4; i++)
			{
				var row = new StackPanel();
				row.Orientation = Orientation.Horizontal;
				Children.Add(row);
				for (int j = 0; j < 4; j++)
				{
					var keyChar = keyChars[i * 4 + j];
					var key = new Button();
					key.Text = keyChar.ToString();
					key.Width = 40.0f;
					key.Height = 40.0f;
					key.Margin = float4(2.0f);
					row.Children.Add(key);
				}
			}
		}
	}
}