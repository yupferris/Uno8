using Uno;
using Uno.Collections;

namespace Uno8.Emulator
{
	public static class Games
	{
		public static readonly IEnumerable<Game> All = new[]
		{
			new Game("15 Puzzle (alt)", "Roger Ivie", null, new[]
			{
				(byte)0x00, (byte)0xe0, (byte)0x6c, (byte)0x00, (byte)0x4c, (byte)0x00, (byte)0x6e, (byte)0x0f, (byte)0xa2, (byte)0x03, (byte)0x60, (byte)0x20, (byte)0xf0, (byte)0x55, (byte)0x00, (byte)0xe0,
				(byte)0x22, (byte)0xbe, (byte)0x22, (byte)0x76, (byte)0x22, (byte)0x8e, (byte)0x22, (byte)0x5e, (byte)0x22, (byte)0x46, (byte)0x12, (byte)0x10, (byte)0x61, (byte)0x00, (byte)0x62, (byte)0x17,
				(byte)0x63, (byte)0x04, (byte)0x41, (byte)0x10, (byte)0x00, (byte)0xee, (byte)0xa2, (byte)0xe8, (byte)0xf1, (byte)0x1e, (byte)0xf0, (byte)0x65, (byte)0x40, (byte)0x00, (byte)0x12, (byte)0x34,
				(byte)0xf0, (byte)0x29, (byte)0xd2, (byte)0x35, (byte)0x71, (byte)0x01, (byte)0x72, (byte)0x05, (byte)0x64, (byte)0x03, (byte)0x84, (byte)0x12, (byte)0x34, (byte)0x00, (byte)0x12, (byte)0x22,
				(byte)0x62, (byte)0x17, (byte)0x73, (byte)0x06, (byte)0x12, (byte)0x22, (byte)0x64, (byte)0x03, (byte)0x84, (byte)0xe2, (byte)0x65, (byte)0x03, (byte)0x85, (byte)0xd2, (byte)0x94, (byte)0x50,
				(byte)0x00, (byte)0xee, (byte)0x44, (byte)0x03, (byte)0x00, (byte)0xee, (byte)0x64, (byte)0x01, (byte)0x84, (byte)0xe4, (byte)0x22, (byte)0xa6, (byte)0x12, (byte)0x46, (byte)0x64, (byte)0x03,
				(byte)0x84, (byte)0xe2, (byte)0x65, (byte)0x03, (byte)0x85, (byte)0xd2, (byte)0x94, (byte)0x50, (byte)0x00, (byte)0xee, (byte)0x44, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0x64, (byte)0xff,
				(byte)0x84, (byte)0xe4, (byte)0x22, (byte)0xa6, (byte)0x12, (byte)0x5e, (byte)0x64, (byte)0x0c, (byte)0x84, (byte)0xe2, (byte)0x65, (byte)0x0c, (byte)0x85, (byte)0xd2, (byte)0x94, (byte)0x50,
				(byte)0x00, (byte)0xee, (byte)0x44, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0x64, (byte)0xfc, (byte)0x84, (byte)0xe4, (byte)0x22, (byte)0xa6, (byte)0x12, (byte)0x76, (byte)0x64, (byte)0x0c,
				(byte)0x84, (byte)0xe2, (byte)0x65, (byte)0x0c, (byte)0x85, (byte)0xd2, (byte)0x94, (byte)0x50, (byte)0x00, (byte)0xee, (byte)0x44, (byte)0x0c, (byte)0x00, (byte)0xee, (byte)0x64, (byte)0x04,
				(byte)0x84, (byte)0xe4, (byte)0x22, (byte)0xa6, (byte)0x12, (byte)0x8e, (byte)0xa2, (byte)0xe8, (byte)0xf4, (byte)0x1e, (byte)0xf0, (byte)0x65, (byte)0xa2, (byte)0xe8, (byte)0xfe, (byte)0x1e,
				(byte)0xf0, (byte)0x55, (byte)0x60, (byte)0x00, (byte)0xa2, (byte)0xe8, (byte)0xf4, (byte)0x1e, (byte)0xf0, (byte)0x55, (byte)0x8e, (byte)0x40, (byte)0x00, (byte)0xee, (byte)0x3c, (byte)0x00,
				(byte)0x12, (byte)0xd2, (byte)0x22, (byte)0x1c, (byte)0x22, (byte)0xd8, (byte)0x22, (byte)0x1c, (byte)0xa2, (byte)0xf8, (byte)0xfd, (byte)0x1e, (byte)0xf0, (byte)0x65, (byte)0x8d, (byte)0x00,
				(byte)0x00, (byte)0xee, (byte)0x7c, (byte)0xff, (byte)0xcd, (byte)0x0f, (byte)0x00, (byte)0xee, (byte)0x7d, (byte)0x01, (byte)0x60, (byte)0x0f, (byte)0x8d, (byte)0x02, (byte)0xed, (byte)0x9e,
				(byte)0x12, (byte)0xd8, (byte)0xed, (byte)0xa1, (byte)0x12, (byte)0xe2, (byte)0x00, (byte)0xee, (byte)0x01, (byte)0x02, (byte)0x03, (byte)0x04, (byte)0x05, (byte)0x06, (byte)0x07, (byte)0x08,
				(byte)0x09, (byte)0x0a, (byte)0x0b, (byte)0x0c, (byte)0x0d, (byte)0x0e, (byte)0x0f, (byte)0x00, (byte)0x0d, (byte)0x00, (byte)0x01, (byte)0x02, (byte)0x04, (byte)0x05, (byte)0x06, (byte)0x08,
				(byte)0x09, (byte)0x0a, (byte)0x0c, (byte)0x0e, (byte)0x03, (byte)0x07, (byte)0x0b, (byte)0x0f,
			}),
			new Game("15 Puzzle", "Roger Ivie", "Same than PUZZLE2. Wait for randomization... Instead of moving the item by pressing his associated key, move it UP DOWN LEFT RIGHT with respectively 2 8 4 6. Up and Down are inverted as the game uses the original CHIP8 keyboard.", new[]
			{
				(byte)0x00, (byte)0xe0, (byte)0x6c, (byte)0x00, (byte)0x4c, (byte)0x00, (byte)0x6e, (byte)0x0f, (byte)0xa2, (byte)0x03, (byte)0x60, (byte)0x20, (byte)0xf0, (byte)0x55, (byte)0x00, (byte)0xe0,
				(byte)0x22, (byte)0xbe, (byte)0x22, (byte)0x76, (byte)0x22, (byte)0x8e, (byte)0x22, (byte)0x5e, (byte)0x22, (byte)0x46, (byte)0x12, (byte)0x10, (byte)0x61, (byte)0x00, (byte)0x62, (byte)0x17,
				(byte)0x63, (byte)0x04, (byte)0x41, (byte)0x10, (byte)0x00, (byte)0xee, (byte)0xa2, (byte)0xe8, (byte)0xf1, (byte)0x1e, (byte)0xf0, (byte)0x65, (byte)0x40, (byte)0x00, (byte)0x12, (byte)0x34,
				(byte)0xf0, (byte)0x29, (byte)0xd2, (byte)0x35, (byte)0x71, (byte)0x01, (byte)0x72, (byte)0x05, (byte)0x64, (byte)0x03, (byte)0x84, (byte)0x12, (byte)0x34, (byte)0x00, (byte)0x12, (byte)0x22,
				(byte)0x62, (byte)0x17, (byte)0x73, (byte)0x06, (byte)0x12, (byte)0x22, (byte)0x64, (byte)0x03, (byte)0x84, (byte)0xe2, (byte)0x65, (byte)0x03, (byte)0x85, (byte)0xd2, (byte)0x94, (byte)0x50,
				(byte)0x00, (byte)0xee, (byte)0x44, (byte)0x03, (byte)0x00, (byte)0xee, (byte)0x64, (byte)0x01, (byte)0x84, (byte)0xe4, (byte)0x22, (byte)0xa6, (byte)0x12, (byte)0x46, (byte)0x64, (byte)0x03,
				(byte)0x84, (byte)0xe2, (byte)0x65, (byte)0x03, (byte)0x85, (byte)0xd2, (byte)0x94, (byte)0x50, (byte)0x00, (byte)0xee, (byte)0x44, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0x64, (byte)0xff,
				(byte)0x84, (byte)0xe4, (byte)0x22, (byte)0xa6, (byte)0x12, (byte)0x5e, (byte)0x64, (byte)0x0c, (byte)0x84, (byte)0xe2, (byte)0x65, (byte)0x0c, (byte)0x85, (byte)0xd2, (byte)0x94, (byte)0x50,
				(byte)0x00, (byte)0xee, (byte)0x44, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0x64, (byte)0xfc, (byte)0x84, (byte)0xe4, (byte)0x22, (byte)0xa6, (byte)0x12, (byte)0x76, (byte)0x64, (byte)0x0c,
				(byte)0x84, (byte)0xe2, (byte)0x65, (byte)0x0c, (byte)0x85, (byte)0xd2, (byte)0x94, (byte)0x50, (byte)0x00, (byte)0xee, (byte)0x44, (byte)0x0c, (byte)0x00, (byte)0xee, (byte)0x64, (byte)0x04,
				(byte)0x84, (byte)0xe4, (byte)0x22, (byte)0xa6, (byte)0x12, (byte)0x8e, (byte)0xa2, (byte)0xe8, (byte)0xf4, (byte)0x1e, (byte)0xf0, (byte)0x65, (byte)0xa2, (byte)0xe8, (byte)0xfe, (byte)0x1e,
				(byte)0xf0, (byte)0x55, (byte)0x60, (byte)0x00, (byte)0xa2, (byte)0xe8, (byte)0xf4, (byte)0x1e, (byte)0xf0, (byte)0x55, (byte)0x8e, (byte)0x40, (byte)0x00, (byte)0xee, (byte)0x3c, (byte)0x00,
				(byte)0x12, (byte)0xd2, (byte)0x22, (byte)0x1c, (byte)0x22, (byte)0xd8, (byte)0x22, (byte)0x1c, (byte)0xa2, (byte)0xf8, (byte)0xfd, (byte)0x1e, (byte)0xf0, (byte)0x65, (byte)0x8d, (byte)0x00,
				(byte)0x00, (byte)0xee, (byte)0x7c, (byte)0xff, (byte)0xcd, (byte)0x0f, (byte)0x00, (byte)0xee, (byte)0x7d, (byte)0x01, (byte)0x60, (byte)0x0f, (byte)0x8d, (byte)0x02, (byte)0xed, (byte)0x9e,
				(byte)0x12, (byte)0xd8, (byte)0xed, (byte)0xa1, (byte)0x12, (byte)0xe2, (byte)0x00, (byte)0xee, (byte)0x01, (byte)0x02, (byte)0x03, (byte)0x04, (byte)0x05, (byte)0x06, (byte)0x07, (byte)0x08,
				(byte)0x09, (byte)0x0a, (byte)0x0b, (byte)0x0c, (byte)0x0d, (byte)0x0e, (byte)0x0f, (byte)0x00, (byte)0x0d, (byte)0x00, (byte)0x01, (byte)0x02, (byte)0x04, (byte)0x05, (byte)0x06, (byte)0x08,
				(byte)0x09, (byte)0x0a, (byte)0x0c, (byte)0x0e, (byte)0x03, (byte)0x07, (byte)0x0b, (byte)0x0f, (byte)0x84, (byte)0xe4, (byte)0x22, (byte)0xa6, (byte)0x12, (byte)0x76, (byte)0x64, (byte)0x0c,
				(byte)0x84, (byte)0xe2, (byte)0x65, (byte)0x0c, (byte)0x85, (byte)0xd2, (byte)0x94, (byte)0x50, (byte)0x00, (byte)0xee, (byte)0x44, (byte)0x0c, (byte)0x00, (byte)0xee, (byte)0x64, (byte)0x04,
				(byte)0x84, (byte)0xe4, (byte)0x22, (byte)0xa6, (byte)0x12, (byte)0x8e, (byte)0xa2, (byte)0xe8, (byte)0xf4, (byte)0x1e, (byte)0xf0, (byte)0x65, (byte)0xa2, (byte)0xe8, (byte)0xfe, (byte)0x1e,
				(byte)0xf0, (byte)0x55, (byte)0x60, (byte)0x00, (byte)0xa2, (byte)0xe8, (byte)0xf4, (byte)0x1e, (byte)0xf0, (byte)0x55, (byte)0x8e, (byte)0x40, (byte)0x00, (byte)0xee, (byte)0x3c, (byte)0x00,
				(byte)0x12, (byte)0xd2, (byte)0x22, (byte)0x1c, (byte)0x22, (byte)0xd8, (byte)0x22, (byte)0x1c, (byte)0xa2, (byte)0xf8, (byte)0xfd, (byte)0x1e, (byte)0xf0, (byte)0x65, (byte)0x8d, (byte)0x00,
				(byte)0x00, (byte)0xee, (byte)0x7c, (byte)0xff, (byte)0xcd, (byte)0x0f, (byte)0x00, (byte)0xee, (byte)0x7d, (byte)0x01, (byte)0x60, (byte)0x0f, (byte)0x8d, (byte)0x02, (byte)0xed, (byte)0x9e,
				(byte)0x12, (byte)0xd8, (byte)0xed, (byte)0xa1, (byte)0x12, (byte)0xe2, (byte)0x00, (byte)0xee, (byte)0x01, (byte)0x02, (byte)0x03, (byte)0x04, (byte)0x05, (byte)0x06, (byte)0x07, (byte)0x08,
				(byte)0x09, (byte)0x0a, (byte)0x0b, (byte)0x0c, (byte)0x0d, (byte)0x0e, (byte)0x0f, (byte)0x00, (byte)0x0d, (byte)0x00, (byte)0x01, (byte)0x02, (byte)0x04, (byte)0x05, (byte)0x06, (byte)0x08,
			}),
			new Game("Addition Problems", "Paul C. Moews", null, new[]
			{
				(byte)0x00, (byte)0xe0, (byte)0xcd, (byte)0x7f, (byte)0xce, (byte)0x7f, (byte)0x8c, (byte)0xd0, (byte)0x8c, (byte)0xe4, (byte)0xa2, (byte)0xa2, (byte)0x6a, (byte)0x00, (byte)0x6b, (byte)0x00,
				(byte)0xfd, (byte)0x33, (byte)0xf2, (byte)0x65, (byte)0x22, (byte)0x76, (byte)0xa2, (byte)0x88, (byte)0x7a, (byte)0x07, (byte)0xda, (byte)0xb5, (byte)0xa2, (byte)0xa2, (byte)0x7a, (byte)0x08,
				(byte)0xfe, (byte)0x33, (byte)0xf2, (byte)0x65, (byte)0x22, (byte)0x76, (byte)0xa2, (byte)0x8e, (byte)0x7a, (byte)0x07, (byte)0xda, (byte)0xb4, (byte)0xa2, (byte)0x92, (byte)0x6a, (byte)0x18,
				(byte)0x6b, (byte)0x08, (byte)0xda, (byte)0xbf, (byte)0xf0, (byte)0x0a, (byte)0xf1, (byte)0x0a, (byte)0xf2, (byte)0x0a, (byte)0xda, (byte)0xbf, (byte)0x6a, (byte)0x15, (byte)0x22, (byte)0x76,
				(byte)0xa2, (byte)0xa5, (byte)0xf2, (byte)0x55, (byte)0xa2, (byte)0xa2, (byte)0xfc, (byte)0x33, (byte)0xf5, (byte)0x65, (byte)0x83, (byte)0x05, (byte)0x33, (byte)0x00, (byte)0x12, (byte)0x62,
				(byte)0x84, (byte)0x15, (byte)0x34, (byte)0x00, (byte)0x12, (byte)0x62, (byte)0x85, (byte)0x25, (byte)0x35, (byte)0x00, (byte)0x12, (byte)0x62, (byte)0x66, (byte)0x0c, (byte)0xf6, (byte)0x18,
				(byte)0x12, (byte)0x6a, (byte)0x6a, (byte)0x15, (byte)0x6b, (byte)0x10, (byte)0x22, (byte)0x76, (byte)0x66, (byte)0x0e, (byte)0x6a, (byte)0x26, (byte)0x6b, (byte)0x08, (byte)0xf6, (byte)0x29,
				(byte)0xda, (byte)0xb5, (byte)0xf0, (byte)0x0a, (byte)0x12, (byte)0x00, (byte)0xf0, (byte)0x29, (byte)0xda, (byte)0xb5, (byte)0x7a, (byte)0x05, (byte)0xf1, (byte)0x29, (byte)0xda, (byte)0xb5,
				(byte)0x7a, (byte)0x05, (byte)0xf2, (byte)0x29, (byte)0xda, (byte)0xb5, (byte)0x00, (byte)0xee, (byte)0x20, (byte)0x20, (byte)0xf8, (byte)0x20, (byte)0x20, (byte)0x00, (byte)0x00, (byte)0xff,
				(byte)0x00, (byte)0xff, (byte)0xff, (byte)0xff, (byte)0x03, (byte)0x03, (byte)0x03, (byte)0xff, (byte)0xff, (byte)0xc0, (byte)0xc0, (byte)0xc0, (byte)0xc0, (byte)0xc0, (byte)0x00, (byte)0xc0,
				(byte)0xc0, (byte)0x00, (byte)0x00, (byte)0x00, (byte)0x00, (byte)0x00, (byte)0x00, (byte)0x00,
			}),
			new Game("Airplane", null, null, new[]
			{
				(byte)0x6a, (byte)0x00, (byte)0x6b, (byte)0x04, (byte)0x6c, (byte)0x01, (byte)0x6d, (byte)0x00, (byte)0x6e, (byte)0x02, (byte)0x23, (byte)0x26, (byte)0x23, (byte)0x20, (byte)0x60, (byte)0x30,
				(byte)0x61, (byte)0x01, (byte)0xf0, (byte)0x15, (byte)0xf0, (byte)0x07, (byte)0xf1, (byte)0x18, (byte)0x30, (byte)0x00, (byte)0x12, (byte)0x14, (byte)0x22, (byte)0x42, (byte)0x23, (byte)0x20,
				(byte)0x7d, (byte)0x01, (byte)0x23, (byte)0x20, (byte)0x60, (byte)0x08, (byte)0xe0, (byte)0xa1, (byte)0x23, (byte)0x0a, (byte)0x4a, (byte)0x00, (byte)0x12, (byte)0x3e, (byte)0xa3, (byte)0x62,
				(byte)0xd8, (byte)0x91, (byte)0x79, (byte)0x01, (byte)0xd8, (byte)0x91, (byte)0x4f, (byte)0x01, (byte)0x12, (byte)0xf4, (byte)0x49, (byte)0x18, (byte)0x12, (byte)0xe4, (byte)0x22, (byte)0xb2,
				(byte)0x12, (byte)0x1e, (byte)0x4c, (byte)0x01, (byte)0x22, (byte)0x6c, (byte)0x4c, (byte)0x02, (byte)0x22, (byte)0x7a, (byte)0x4c, (byte)0x03, (byte)0x22, (byte)0x88, (byte)0x4c, (byte)0x04,
				(byte)0x22, (byte)0x96, (byte)0x4c, (byte)0x05, (byte)0x22, (byte)0xa4, (byte)0xa3, (byte)0x59, (byte)0xd6, (byte)0x72, (byte)0x44, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0xa3, (byte)0x57,
				(byte)0xd4, (byte)0x52, (byte)0x42, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0xa3, (byte)0x5b, (byte)0xd2, (byte)0x32, (byte)0x00, (byte)0xee, (byte)0x66, (byte)0x28, (byte)0x67, (byte)0x09,
				(byte)0x64, (byte)0x00, (byte)0x65, (byte)0x00, (byte)0x62, (byte)0x00, (byte)0x63, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0x66, (byte)0x28, (byte)0x67, (byte)0x0e, (byte)0x64, (byte)0x28,
				(byte)0x65, (byte)0x14, (byte)0x62, (byte)0x00, (byte)0x63, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0x66, (byte)0x28, (byte)0x67, (byte)0x07, (byte)0x64, (byte)0x28, (byte)0x65, (byte)0x0c,
				(byte)0x62, (byte)0x16, (byte)0x63, (byte)0x11, (byte)0x00, (byte)0xee, (byte)0x66, (byte)0x28, (byte)0x67, (byte)0x07, (byte)0x64, (byte)0x28, (byte)0x65, (byte)0x0e, (byte)0x62, (byte)0x16,
				(byte)0x63, (byte)0x14, (byte)0x00, (byte)0xee, (byte)0x66, (byte)0x28, (byte)0x67, (byte)0x05, (byte)0x64, (byte)0x28, (byte)0x65, (byte)0x10, (byte)0x62, (byte)0x16, (byte)0x63, (byte)0x0b,
				(byte)0x00, (byte)0xee, (byte)0xa3, (byte)0x59, (byte)0xd6, (byte)0x72, (byte)0x76, (byte)0xfe, (byte)0xd6, (byte)0x72, (byte)0x44, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0xa3, (byte)0x57,
				(byte)0xd4, (byte)0x52, (byte)0x74, (byte)0x02, (byte)0x44, (byte)0x44, (byte)0x74, (byte)0xc0, (byte)0xd4, (byte)0x52, (byte)0x42, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0xa3, (byte)0x5b,
				(byte)0xd2, (byte)0x32, (byte)0x72, (byte)0x02, (byte)0x4c, (byte)0x04, (byte)0x72, (byte)0x02, (byte)0x4c, (byte)0x05, (byte)0x72, (byte)0x02, (byte)0x42, (byte)0x44, (byte)0x72, (byte)0xc0,
				(byte)0xd2, (byte)0x32, (byte)0x00, (byte)0xee, (byte)0x7c, (byte)0x01, (byte)0x6d, (byte)0x00, (byte)0x6e, (byte)0x02, (byte)0x00, (byte)0xe0, (byte)0x4c, (byte)0x06, (byte)0x6c, (byte)0x01,
				(byte)0x6a, (byte)0x00, (byte)0x12, (byte)0x0a, (byte)0x60, (byte)0x06, (byte)0xf0, (byte)0x18, (byte)0x7b, (byte)0xff, (byte)0x4b, (byte)0x00, (byte)0x13, (byte)0x08, (byte)0x6d, (byte)0x00,
				(byte)0x6e, (byte)0x02, (byte)0x00, (byte)0xe0, (byte)0x6a, (byte)0x00, (byte)0x12, (byte)0x0a, (byte)0x13, (byte)0x08, (byte)0x4a, (byte)0x01, (byte)0x00, (byte)0xee, (byte)0x60, (byte)0x02,
				(byte)0xf0, (byte)0x18, (byte)0x6a, (byte)0x01, (byte)0x88, (byte)0xd0, (byte)0x78, (byte)0x01, (byte)0x89, (byte)0xe0, (byte)0x79, (byte)0x01, (byte)0xd8, (byte)0x91, (byte)0x00, (byte)0xee,
				(byte)0xa3, (byte)0x54, (byte)0xdd, (byte)0xe2, (byte)0x00, (byte)0xee, (byte)0x64, (byte)0x19, (byte)0x63, (byte)0x00, (byte)0xa3, (byte)0x56, (byte)0xd3, (byte)0x41, (byte)0x73, (byte)0x08,
				(byte)0x33, (byte)0x40, (byte)0x13, (byte)0x2c, (byte)0x63, (byte)0x1e, (byte)0x64, (byte)0x1b, (byte)0xfc, (byte)0x29, (byte)0xd3, (byte)0x45, (byte)0x4b, (byte)0x04, (byte)0xa3, (byte)0x5f,
				(byte)0x4b, (byte)0x03, (byte)0xa3, (byte)0x60, (byte)0x4b, (byte)0x02, (byte)0xa3, (byte)0x61, (byte)0x4b, (byte)0x01, (byte)0xa3, (byte)0x62, (byte)0x63, (byte)0x01, (byte)0x74, (byte)0x02,
				(byte)0xd3, (byte)0x41, (byte)0x00, (byte)0xee, (byte)0x80, (byte)0xf8, (byte)0xff, (byte)0x80, (byte)0xe0, (byte)0x10, (byte)0x70, (byte)0x88, (byte)0xee, (byte)0x11, (byte)0x77, (byte)0xaa,
				(byte)0xa8, (byte)0xa0, (byte)0x80, (byte)0x00,
			}),
			new Game("Animal Race", "Brian Astle", "9. VIP Animal Race\n\nAnimal Race is a fun game for one person, with an element of luck - sure to\nput a smile on your face.  Five different animals race against one another\nand you have the chance to test your expertise at picking the winner.\n\n\nHow To Play Animal Race\n\n1. Load the CHIP-8 interpretor at 0000-01FF\n   and the game starting at 0200.\n\n2. Turn RUN switch on.\n\n3. Wait until the animals are lined up and read to start, then select an animal\n   by pressing a letter A through E.  A mark will appear to the left of the\n   animal to remind you of the one you have selected.\n\n4. Decide how much you want to bet (up to a limit of $9), then press that key.\n\n5. After the race is over, press zero (or any key) to start the next race.\n   Your winnings or losses will be computed and the new total displayed at\n   the begining of the next race.\n\nHints for expert players\nAll animals move at approximately the same speed, but they start from different\npositions.  The odds for each animal are related to the starting position but\ninclude a random element.  Some races favor the player and you should bet up to\nthe limit on these.  Some races are unfavorable and you should bet carefully\non these.\n\nYou can win the game by accumulating $256 or more.\n", new[]
			{
				(byte)0x6d, (byte)0x0a, (byte)0x6e, (byte)0x02, (byte)0x68, (byte)0x0e, (byte)0x69, (byte)0x0b, (byte)0xa5, (byte)0xb5, (byte)0x24, (byte)0x82, (byte)0x68, (byte)0x2c, (byte)0x24, (byte)0x84,
				(byte)0x68, (byte)0x1d, (byte)0x69, (byte)0x18, (byte)0x24, (byte)0x84, (byte)0x6b, (byte)0x00, (byte)0x6c, (byte)0x23, (byte)0x24, (byte)0x58, (byte)0x24, (byte)0xc0, (byte)0x68, (byte)0x21,
				(byte)0x69, (byte)0x00, (byte)0xa4, (byte)0xd8, (byte)0xfb, (byte)0x1e, (byte)0xd8, (byte)0x94, (byte)0xfe, (byte)0x18, (byte)0x7b, (byte)0x04, (byte)0x4b, (byte)0x1c, (byte)0x6b, (byte)0x04,
				(byte)0x7c, (byte)0xff, (byte)0x24, (byte)0xc0, (byte)0x3c, (byte)0x00, (byte)0x12, (byte)0x1a, (byte)0x00, (byte)0xe0, (byte)0xf9, (byte)0x18, (byte)0x24, (byte)0x58, (byte)0x24, (byte)0xc0,
				(byte)0x6a, (byte)0x00, (byte)0x6b, (byte)0x0a, (byte)0xa6, (byte)0x00, (byte)0xfa, (byte)0x1e, (byte)0xf7, (byte)0x65, (byte)0x62, (byte)0x0c, (byte)0x74, (byte)0x01, (byte)0xfb, (byte)0x29,
				(byte)0xd2, (byte)0x45, (byte)0x62, (byte)0x13, (byte)0xf3, (byte)0x29, (byte)0xd2, (byte)0x45, (byte)0x62, (byte)0x17, (byte)0xa6, (byte)0xa0, (byte)0xd2, (byte)0x45, (byte)0x7a, (byte)0x08,
				(byte)0x7b, (byte)0x01, (byte)0x3a, (byte)0x28, (byte)0x12, (byte)0x44, (byte)0x68, (byte)0x20, (byte)0x69, (byte)0x02, (byte)0xa5, (byte)0xe2, (byte)0x24, (byte)0x80, (byte)0x62, (byte)0x26,
				(byte)0x63, (byte)0x08, (byte)0xd2, (byte)0x37, (byte)0xa5, (byte)0xfd, (byte)0xfd, (byte)0x33, (byte)0xf2, (byte)0x65, (byte)0x63, (byte)0x2c, (byte)0x64, (byte)0x09, (byte)0x40, (byte)0x00,
				(byte)0x12, (byte)0x88, (byte)0xf0, (byte)0x29, (byte)0xd3, (byte)0x45, (byte)0x12, (byte)0x8c, (byte)0x41, (byte)0x00, (byte)0x12, (byte)0x92, (byte)0xf1, (byte)0x29, (byte)0x63, (byte)0x31,
				(byte)0xd3, (byte)0x45, (byte)0xf2, (byte)0x29, (byte)0x63, (byte)0x36, (byte)0xd3, (byte)0x45, (byte)0xa6, (byte)0x80, (byte)0x68, (byte)0x24, (byte)0x69, (byte)0x11, (byte)0x24, (byte)0x84,
				(byte)0x68, (byte)0x36, (byte)0xa6, (byte)0xa5, (byte)0xd8, (byte)0x95, (byte)0x6f, (byte)0x0a, (byte)0xff, (byte)0x15, (byte)0x24, (byte)0x4a, (byte)0x30, (byte)0x10, (byte)0x12, (byte)0xb8,
				(byte)0xff, (byte)0x07, (byte)0x3f, (byte)0x00, (byte)0x12, (byte)0xaa, (byte)0x12, (byte)0xa4, (byte)0xfe, (byte)0x18, (byte)0x8c, (byte)0x00, (byte)0x6a, (byte)0x09, (byte)0x8a, (byte)0xc5,
				(byte)0x4f, (byte)0x01, (byte)0x12, (byte)0xa4, (byte)0x4c, (byte)0x0f, (byte)0x12, (byte)0xa4, (byte)0xd8, (byte)0x95, (byte)0x4f, (byte)0x00, (byte)0x12, (byte)0xc8, (byte)0xfc, (byte)0x29,
				(byte)0xd8, (byte)0x95, (byte)0x24, (byte)0xa0, (byte)0xa5, (byte)0xf6, (byte)0x63, (byte)0x2c, (byte)0x64, (byte)0x17, (byte)0xd3, (byte)0x47, (byte)0x63, (byte)0x36, (byte)0x64, (byte)0x18,
				(byte)0xa6, (byte)0xa5, (byte)0xd3, (byte)0x45, (byte)0x6f, (byte)0x0a, (byte)0xff, (byte)0x15, (byte)0x24, (byte)0x4a, (byte)0x30, (byte)0x10, (byte)0x12, (byte)0xf6, (byte)0xff, (byte)0x07,
				(byte)0x3f, (byte)0x00, (byte)0x12, (byte)0xe8, (byte)0x12, (byte)0xe2, (byte)0xfe, (byte)0x18, (byte)0x8b, (byte)0x00, (byte)0x8a, (byte)0xd0, (byte)0x8a, (byte)0xb5, (byte)0x4f, (byte)0x00,
				(byte)0x12, (byte)0xe2, (byte)0x4b, (byte)0x00, (byte)0x12, (byte)0xe2, (byte)0x6a, (byte)0x09, (byte)0x8a, (byte)0xb5, (byte)0x4f, (byte)0x00, (byte)0x12, (byte)0xe2, (byte)0xd3, (byte)0x45,
				(byte)0x4f, (byte)0x00, (byte)0x13, (byte)0x0e, (byte)0xfb, (byte)0x29, (byte)0xd3, (byte)0x45, (byte)0x24, (byte)0x94, (byte)0x00, (byte)0xe0, (byte)0x24, (byte)0xc0, (byte)0x24, (byte)0xa0,
				(byte)0xa4, (byte)0xd6, (byte)0x60, (byte)0x38, (byte)0x61, (byte)0x00, (byte)0xd0, (byte)0x11, (byte)0x71, (byte)0x01, (byte)0x31, (byte)0x20, (byte)0x13, (byte)0x26, (byte)0x60, (byte)0x1e,
				(byte)0x61, (byte)0x0f, (byte)0x6a, (byte)0x03, (byte)0xfa, (byte)0x29, (byte)0xd0, (byte)0x15, (byte)0xfe, (byte)0x18, (byte)0x24, (byte)0x94, (byte)0x7a, (byte)0xff, (byte)0xd0, (byte)0x15,
				(byte)0x3a, (byte)0x00, (byte)0x13, (byte)0x34, (byte)0x6a, (byte)0x00, (byte)0xa6, (byte)0x00, (byte)0xfa, (byte)0x1e, (byte)0xf6, (byte)0x65, (byte)0xa6, (byte)0x00, (byte)0xfa, (byte)0x1e,
				(byte)0x70, (byte)0xff, (byte)0x40, (byte)0x00, (byte)0x13, (byte)0x5a, (byte)0xf0, (byte)0x55, (byte)0x13, (byte)0x72, (byte)0xc0, (byte)0x01, (byte)0x70, (byte)0x02, (byte)0x91, (byte)0x50,
				(byte)0x81, (byte)0x65, (byte)0x71, (byte)0x06, (byte)0x72, (byte)0x01, (byte)0xf2, (byte)0x55, (byte)0xa5, (byte)0x00, (byte)0xf1, (byte)0x1e, (byte)0xd2, (byte)0x46, (byte)0x42, (byte)0x38,
				(byte)0x13, (byte)0x80, (byte)0x7a, (byte)0x08, (byte)0x4a, (byte)0x18, (byte)0xfe, (byte)0x18, (byte)0x3a, (byte)0x28, (byte)0x13, (byte)0x46, (byte)0xfe, (byte)0x18, (byte)0x13, (byte)0x44,
				(byte)0xf2, (byte)0x18, (byte)0x68, (byte)0x06, (byte)0x69, (byte)0x08, (byte)0xa5, (byte)0xe2, (byte)0x24, (byte)0x84, (byte)0x87, (byte)0xa6, (byte)0x87, (byte)0x76, (byte)0x87, (byte)0x76,
				(byte)0x77, (byte)0x0a, (byte)0x97, (byte)0xc0, (byte)0x13, (byte)0xc0, (byte)0xa6, (byte)0x94, (byte)0x24, (byte)0x84, (byte)0x24, (byte)0xb2, (byte)0xfb, (byte)0x29, (byte)0x8d, (byte)0xb5,
				(byte)0xd8, (byte)0x95, (byte)0x3d, (byte)0x00, (byte)0x13, (byte)0xee, (byte)0x24, (byte)0x90, (byte)0xd8, (byte)0x95, (byte)0x24, (byte)0xb2, (byte)0xa5, (byte)0x25, (byte)0x68, (byte)0x08,
				(byte)0x69, (byte)0x03, (byte)0xd8, (byte)0x95, (byte)0x6f, (byte)0x10, (byte)0x24, (byte)0x96, (byte)0xd8, (byte)0x95, (byte)0x89, (byte)0xf3, (byte)0x13, (byte)0xb2, (byte)0x00, (byte)0xee,
				(byte)0xa6, (byte)0x8a, (byte)0x24, (byte)0x84, (byte)0x24, (byte)0xb2, (byte)0xa6, (byte)0x00, (byte)0xfa, (byte)0x1e, (byte)0xf6, (byte)0x65, (byte)0x67, (byte)0x00, (byte)0x87, (byte)0xb4,
				(byte)0x73, (byte)0xff, (byte)0x33, (byte)0x00, (byte)0x13, (byte)0xce, (byte)0xa5, (byte)0xfd, (byte)0xf7, (byte)0x33, (byte)0xf2, (byte)0x65, (byte)0x41, (byte)0x00, (byte)0x13, (byte)0xe4,
				(byte)0xf1, (byte)0x29, (byte)0x24, (byte)0x86, (byte)0xf2, (byte)0x29, (byte)0xd8, (byte)0x95, (byte)0x8d, (byte)0x74, (byte)0x4f, (byte)0x01, (byte)0x14, (byte)0x0c, (byte)0xa6, (byte)0x00,
				(byte)0xfa, (byte)0x1e, (byte)0xf6, (byte)0x65, (byte)0xa5, (byte)0x00, (byte)0xf1, (byte)0x1e, (byte)0xd2, (byte)0x45, (byte)0x6f, (byte)0x18, (byte)0xff, (byte)0x15, (byte)0xff, (byte)0x07,
				(byte)0x24, (byte)0x4a, (byte)0x30, (byte)0x10, (byte)0x12, (byte)0x38, (byte)0x3f, (byte)0x00, (byte)0x13, (byte)0xfe, (byte)0x13, (byte)0xf8, (byte)0x24, (byte)0x90, (byte)0x00, (byte)0xe0,
				(byte)0x64, (byte)0x0e, (byte)0x62, (byte)0x00, (byte)0x61, (byte)0x40, (byte)0xa5, (byte)0xe2, (byte)0x68, (byte)0x06, (byte)0x69, (byte)0x08, (byte)0x24, (byte)0x84, (byte)0xa6, (byte)0x8a,
				(byte)0x24, (byte)0x84, (byte)0xa6, (byte)0x00, (byte)0xf1, (byte)0x1e, (byte)0xd2, (byte)0x48, (byte)0x72, (byte)0x01, (byte)0x32, (byte)0x40, (byte)0x14, (byte)0x36, (byte)0x74, (byte)0x09,
				(byte)0x34, (byte)0x20, (byte)0x14, (byte)0x12, (byte)0x14, (byte)0x0e, (byte)0x71, (byte)0x08, (byte)0x41, (byte)0x78, (byte)0x61, (byte)0x48, (byte)0x6d, (byte)0x07, (byte)0x8d, (byte)0x22,
				(byte)0x4d, (byte)0x00, (byte)0x14, (byte)0x16, (byte)0x6f, (byte)0x04, (byte)0x24, (byte)0x96, (byte)0x14, (byte)0x22, (byte)0x60, (byte)0x00, (byte)0xe0, (byte)0xa1, (byte)0x00, (byte)0xee,
				(byte)0x70, (byte)0x01, (byte)0x40, (byte)0x10, (byte)0x00, (byte)0xee, (byte)0x14, (byte)0x4c, (byte)0xa6, (byte)0x00, (byte)0x61, (byte)0x00, (byte)0x66, (byte)0x04, (byte)0x24, (byte)0x66,
				(byte)0x24, (byte)0x66, (byte)0x24, (byte)0x66, (byte)0x24, (byte)0x66, (byte)0xc0, (byte)0x01, (byte)0x70, (byte)0x01, (byte)0xc2, (byte)0x03, (byte)0x87, (byte)0x2e, (byte)0x63, (byte)0x06,
				(byte)0x83, (byte)0x75, (byte)0xc7, (byte)0x01, (byte)0x83, (byte)0x74, (byte)0x83, (byte)0x04, (byte)0xf3, (byte)0x55, (byte)0x71, (byte)0x24, (byte)0xf6, (byte)0x1e, (byte)0x00, (byte)0xee,
				(byte)0x24, (byte)0x86, (byte)0x24, (byte)0x86, (byte)0x24, (byte)0x86, (byte)0xd8, (byte)0x95, (byte)0x6f, (byte)0x05, (byte)0xff, (byte)0x1e, (byte)0x78, (byte)0x08, (byte)0x00, (byte)0xee,
				(byte)0x24, (byte)0x92, (byte)0x24, (byte)0x94, (byte)0x6f, (byte)0x3c, (byte)0xff, (byte)0x18, (byte)0xff, (byte)0x07, (byte)0x3f, (byte)0x00, (byte)0x14, (byte)0x98, (byte)0x00, (byte)0xee,
				(byte)0xa6, (byte)0x9e, (byte)0x68, (byte)0x00, (byte)0x89, (byte)0xce, (byte)0x89, (byte)0x9e, (byte)0x89, (byte)0x9e, (byte)0x89, (byte)0xc5, (byte)0x79, (byte)0xbb, (byte)0xd8, (byte)0x92,
				(byte)0x00, (byte)0xee, (byte)0xa5, (byte)0xf6, (byte)0x68, (byte)0x08, (byte)0x69, (byte)0x10, (byte)0xd8, (byte)0x97, (byte)0x68, (byte)0x10, (byte)0x69, (byte)0x11, (byte)0x00, (byte)0xee,
				(byte)0x6a, (byte)0x00, (byte)0xa6, (byte)0x00, (byte)0xfa, (byte)0x1e, (byte)0xf4, (byte)0x65, (byte)0xa5, (byte)0x00, (byte)0xf1, (byte)0x1e, (byte)0xd2, (byte)0x46, (byte)0x7a, (byte)0x08,
				(byte)0x3a, (byte)0x28, (byte)0x14, (byte)0xc2, (byte)0x00, (byte)0xee, (byte)0x01, (byte)0x01, (byte)0x81, (byte)0x7e, (byte)0x18, (byte)0x00, (byte)0x99, (byte)0x42, (byte)0xdb, (byte)0x00,
				(byte)0x00, (byte)0x00, (byte)0x81, (byte)0x81, (byte)0x00, (byte)0x00, (byte)0x00, (byte)0xc3, (byte)0x3c, (byte)0x66, (byte)0x18, (byte)0x42, (byte)0x42, (byte)0xc3, (byte)0x42, (byte)0x00,
				(byte)0xe7, (byte)0xe7, (byte)0x00, (byte)0x00, (byte)0x00, (byte)0xee, (byte)0x8e, (byte)0x8a, (byte)0x8a, (byte)0x8a, (byte)0xee, (byte)0xee, (byte)0x88, (byte)0xec, (byte)0x28, (byte)0xee,
				(byte)0x03, (byte)0x02, (byte)0x02, (byte)0x0e, (byte)0x0a, (byte)0x0a, (byte)0x05, (byte)0x06, (byte)0x06, (byte)0x12, (byte)0x1e, (byte)0x05, (byte)0x05, (byte)0x06, (byte)0x06, (byte)0x12,
				(byte)0x1e, (byte)0x28, (byte)0x05, (byte)0x06, (byte)0x06, (byte)0x12, (byte)0x1e, (byte)0x10, (byte)0x05, (byte)0x06, (byte)0x06, (byte)0x12, (byte)0x1e, (byte)0x02, (byte)0x05, (byte)0x06,
				(byte)0x06, (byte)0x12, (byte)0x1e, (byte)0x05, (byte)0x00, (byte)0x3f, (byte)0x3f, (byte)0x3d, (byte)0x25, (byte)0x24, (byte)0x00, (byte)0x41, (byte)0x41, (byte)0x47, (byte)0x6e, (byte)0x0a,
				(byte)0x00, (byte)0x41, (byte)0x41, (byte)0x47, (byte)0x6d, (byte)0x90, (byte)0x00, (byte)0x41, (byte)0x41, (byte)0x47, (byte)0x6f, (byte)0x00, (byte)0x00, (byte)0x41, (byte)0x41, (byte)0x47,
				(byte)0x6e, (byte)0x12, (byte)0x00, (byte)0x41, (byte)0x41, (byte)0x47, (byte)0x6d, (byte)0x90, (byte)0x00, (byte)0x03, (byte)0x06, (byte)0x0e, (byte)0x14, (byte)0x26, (byte)0x00, (byte)0x05,
				(byte)0x0a, (byte)0x22, (byte)0x20, (byte)0x40, (byte)0x03, (byte)0x00, (byte)0x02, (byte)0x68, (byte)0x36, (byte)0x18, (byte)0x06, (byte)0x0f, (byte)0x1a, (byte)0x16, (byte)0x48, (byte)0x03,
				(byte)0x00, (byte)0x05, (byte)0x0a, (byte)0x42, (byte)0x0c, (byte)0x00, (byte)0x00, (byte)0x05, (byte)0x0a, (byte)0x42, (byte)0x00, (byte)0x00, (byte)0x00, (byte)0x0b, (byte)0x1e, (byte)0x3e,
				(byte)0x22, (byte)0x22, (byte)0x00, (byte)0x1d, (byte)0x22, (byte)0x42, (byte)0x66, (byte)0x05, (byte)0x00, (byte)0x1d, (byte)0x22, (byte)0x42, (byte)0x66, (byte)0x80, (byte)0x00, (byte)0x1d,
				(byte)0x22, (byte)0x42, (byte)0x66, (byte)0x10, (byte)0x00, (byte)0x1d, (byte)0x22, (byte)0x42, (byte)0x66, (byte)0x08, (byte)0x00, (byte)0x1d, (byte)0x22, (byte)0x42, (byte)0x66, (byte)0x01,
				(byte)0x00, (byte)0x02, (byte)0x13, (byte)0x1e, (byte)0x12, (byte)0x12, (byte)0x02, (byte)0x17, (byte)0x38, (byte)0x2e, (byte)0x06, (byte)0x24, (byte)0x04, (byte)0x24, (byte)0x2f, (byte)0x3a,
				(byte)0x56, (byte)0x11, (byte)0x00, (byte)0x06, (byte)0x35, (byte)0x22, (byte)0x36, (byte)0x28, (byte)0x00, (byte)0x06, (byte)0x35, (byte)0x22, (byte)0x36, (byte)0x00, (byte)0x02, (byte)0x17,
				(byte)0x38, (byte)0x2e, (byte)0x06, (byte)0x28, (byte)0x01, (byte)0xe9, (byte)0xad, (byte)0xeb, (byte)0xa9, (byte)0xa9, (byte)0x51, (byte)0x5b, (byte)0x55, (byte)0x51, (byte)0x51, (byte)0x74,
				(byte)0x54, (byte)0x74, (byte)0x54, (byte)0x57, (byte)0xf7, (byte)0x95, (byte)0xf7, (byte)0xa5, (byte)0x95, (byte)0x77, (byte)0x44, (byte)0x46, (byte)0x44, (byte)0x77, (byte)0xef, (byte)0xa8,
				(byte)0xae, (byte)0xe2, (byte)0xbe, (byte)0xf3, (byte)0x92, (byte)0x93, (byte)0x92, (byte)0x9f, (byte)0x17, (byte)0x15, (byte)0x17, (byte)0x11, (byte)0x11, (byte)0x77, (byte)0x15, (byte)0x17,
				(byte)0x15, (byte)0x17, (byte)0x2b, (byte)0x2a, (byte)0x12, (byte)0x12, (byte)0x13, (byte)0xa8, (byte)0xa8, (byte)0xa8, (byte)0xa8, (byte)0xb8, (byte)0xae, (byte)0xaa, (byte)0xee, (byte)0xaa,
				(byte)0xaa, (byte)0xae, (byte)0xa8, (byte)0xae, (byte)0xa8, (byte)0x4e, (byte)0x20, (byte)0x78, (byte)0xa0, (byte)0x70, (byte)0x28, (byte)0xf0, (byte)0x20, (byte)0x00, (byte)0x01, (byte)0x00,
				(byte)0x02, (byte)0x00, (byte)0x03, (byte)0x02, (byte)0x00, (byte)0x1e, (byte)0x18, (byte)0x00, (byte)0x01, (byte)0x24, (byte)0x03, (byte)0x01, (byte)0x06, (byte)0x42, (byte)0x12, (byte)0x00,
				(byte)0x01, (byte)0x48, (byte)0x00, (byte)0x08, (byte)0x0d, (byte)0x66, (byte)0x18, (byte)0x00, (byte)0x02, (byte)0x68, (byte)0x03, (byte)0x03, (byte)0x13, (byte)0x8a, (byte)0x18, (byte)0x00,
				(byte)0x01, (byte)0x90, (byte)0x03, (byte)0x01, (byte)0x1a, (byte)0xae, (byte)0x18, (byte)0x00, (byte)0x01, (byte)0x08, (byte)0x38, (byte)0x06, (byte)0x00, (byte)0x18, (byte)0x18, (byte)0x01,
				(byte)0x01, (byte)0x04, (byte)0x31, (byte)0x00, (byte)0x05, (byte)0x18, (byte)0x18, (byte)0x01, (byte)0x7f, (byte)0x48, (byte)0x1c, (byte)0x1c, (byte)0x0b, (byte)0x4c, (byte)0x18, (byte)0x00,
				(byte)0x03, (byte)0x02, (byte)0x02, (byte)0x0e, (byte)0x5e, (byte)0x04, (byte)0x26, (byte)0x54, (byte)0x05, (byte)0x06, (byte)0x06, (byte)0xd2, (byte)0xa2, (byte)0x4c, (byte)0xe6, (byte)0xc1,
				(byte)0x05, (byte)0x06, (byte)0xc6, (byte)0xd2, (byte)0xe2, (byte)0xcc, (byte)0xb8, (byte)0x90, (byte)0x05, (byte)0x86, (byte)0x06, (byte)0x52, (byte)0x22, (byte)0x4c, (byte)0x5e, (byte)0x60,
				(byte)0x05, (byte)0x06, (byte)0x86, (byte)0xd2, (byte)0xa2, (byte)0x8c, (byte)0xc6, (byte)0xc1, (byte)0x05, (byte)0x06, (byte)0x86, (byte)0x92, (byte)0x22, (byte)0x8c, (byte)0x98, (byte)0x30,
				(byte)0x00, (byte)0x06, (byte)0x06, (byte)0x12, (byte)0x62, (byte)0x0c, (byte)0x3e, (byte)0x10, (byte)0x00, (byte)0xee, (byte)0x63, (byte)0x1a, (byte)0x24, (byte)0xc0, (byte)0x00, (byte)0xee,
				(byte)0xf0, (byte)0x90, (byte)0xf7, (byte)0x90, (byte)0x90, (byte)0x78, (byte)0x40, (byte)0x70, (byte)0x40, (byte)0x78, (byte)0xab, (byte)0xa9, (byte)0xa9, (byte)0xa9, (byte)0x53, (byte)0xa2,
				(byte)0x32, (byte)0x2a, (byte)0x26, (byte)0xa2, (byte)0x8e, (byte)0x8a, (byte)0x8a, (byte)0x8a, (byte)0xee, (byte)0xee, (byte)0x88, (byte)0xec, (byte)0x28, (byte)0xee, (byte)0x00, (byte)0xc0,
				(byte)0x18, (byte)0x48, (byte)0x08, (byte)0x48, (byte)0x1c, (byte)0xe0, (byte)0x20, (byte)0x60, (byte)0x00, (byte)0x40,
			}),
		};
		
		public static Game Get(string title)
		{
			foreach (var game in All)
			{
				if (game.Title == title)
					return game;
			}
			
			throw new Exception("Could not find game: " + title);
		}
	}
}