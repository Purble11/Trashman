package;

import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import openfl.Lib;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OutOfDate extends MusicBeatState
{
	public static var leftState:Bool = false;

	public static var needVer:String = "IDFK LOL";

	public static var changelog:String = "qwertyuiop";

	override function create()
	{
		super.create();

		var lol = (cast(Lib.current.getChildAt(0), Main)).lastY;
		FlxTween.tween(Application.current.window, {y: lol}, 0.5, {ease: FlxEase.circOut});
		
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);
		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"Oh funk I (Purble) forgot to update the mod\n"
			+ "But if i did update it "
			+ "All you have to do is press ACCEPT/ENTER to go to its official patch release and grab the latest build from there.",
			32);
		txt.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt.screenCenter();
		add(txt);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			FlxG.openURL("https://gamebanana.com/mods/312200");
		}
		if (controls.BACK)
		{
			leftState = true;
			FlxG.switchState(new TitleState());
		}
		super.update(elapsed);
	}
}
