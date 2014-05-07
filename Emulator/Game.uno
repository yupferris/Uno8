using Uno;
using Uno.Collections;
using Uno.Graphics;
using Uno.Scenes;
using Uno.Content;
using Uno.Content.Models;

namespace Uno8.Emulator
{
	public class Game
	{
		public readonly string Title;
		public readonly string Author;
		public readonly string Info;
		public readonly byte[] Data;

		public Game(string title, string author, string info, byte[] data)
		{
			Title = title;
			Author = author ?? "Unknown Author";
			Info = info ?? "No additional info.";
			Data = data;
		}
	}
}