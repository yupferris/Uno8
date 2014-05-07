using Uno;
using Uno.Collections;
using Uno.Graphics;
using Uno.Scenes;
using Uno.Content;
using Uno.Content.Models;

namespace Uno8
{
	public class Game
	{
		public readonly string Name;
		public readonly string Author;
		public readonly string Info;
		public readonly byte[] Data;
		
		public Game(string name, string author, string info, byte[] data)
		{
			Name = name;
			Author = author ?? "Unknown Author";
			Info = info ?? "No additional info.";
			Data = data;
		}
	}
}