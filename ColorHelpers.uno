using Uno;
using Uno.Collections;
using Uno.Graphics;
using Uno.Scenes;
using Uno.Content;
using Uno.Content.Models;

namespace Uno8
{
	public static class ColorHelpers
	{
		static float ConvertComponent(int c)
		{
			return (float)c / 255.0f;
		}
		
		public static float4 FromRgb(int r, int g, int b)
		{
			return float4(ConvertComponent(r), ConvertComponent(g), ConvertComponent(b), 1);
		}
	}
}