package;

import kha.Framebuffer;
import kha.Image;
import kha.Font;
import kha.Assets;
import kha.Color;

class Project {
	public var img:Image;
	public var fnt:Font;
	
	public function new() {
		img = Assets.images.zombie;		
		fnt = Assets.fonts.roboto;
	}

	public function update():Void {		
	}

	public function render(framebuffer:Framebuffer):Void {		
		var g = framebuffer.g2;
		g.begin();
		// Draw image
		g.color = Color.White;		
		g.drawImage(img, 30, 30);
		// Draw Text
		g.font = fnt;
		g.fontSize = 128;
		g.color = Color.Green;
		g.drawString("Walkha Dead!", 50, 300);
		g.end();
	}
}
