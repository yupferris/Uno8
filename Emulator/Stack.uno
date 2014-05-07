using Uno;
using Uno.Collections;
using Uno.Graphics;
using Uno.Scenes;
using Uno.Content;
using Uno.Content.Models;

namespace Uno8.Emulator
{
	public class Stack<T>
	{
		readonly T[] _items;
		
		int _pos = 0;
		
		public Stack(int size)
		{
			_items = new T[size];
		}
		
		public void Push(T item)
		{
			if (pos >= size)
				throw new Exception("Stack overflow occurred");
			_items[pos] = item;
			pos++;
		}
		
		public T Pop()
		{
			if (pos < 1)
				throw new Exception("Stack underflow occurred");
			pos--;
			return _items[pos];
		}
	}
}