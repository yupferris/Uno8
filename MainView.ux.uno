using Uno;
using Uno.Collections;
using Uno.Scenes;
using Uno.UI;

public partial class MainView
{
    public MainView()
    {
        InitializeUX();
    }
	
	protected override void OnDraw()
	{
		base.OnDraw();
		
		draw Uno.Scenes.Primitives.Quad
		{
			PixelColor: float4(1, 0, 0, 1);
		};
	}
}
