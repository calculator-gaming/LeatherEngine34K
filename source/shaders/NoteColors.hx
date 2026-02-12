package shaders;

class NoteColors {
	public static var noteColors:Map<String, Array<Int>> = new Map<String, Array<Int>>();

	public static final defaultColors:Map<String, Array<Int>> = [
		"left" => [194, 75, 153],
		"down" => [0, 255, 255],
		"up" => [18, 250, 5],
		"right" => [249, 57, 63],
		"square" => [204, 204, 204],
		"left2" => [255, 255, 0],
		"down2" => [139, 74, 255],
		"up2" => [255, 0, 0],
		"right2" => [0, 51, 255],
		"rleft" => [79, 255, 128],
		"rdown" => [137, 78, 8],
		"rup" => [0, 171, 255],
		"rright" => [125, 0, 181],
		"plus" => [176, 0, 127],
		"rleft2" => [255, 131, 0],
		"rdown2" => [0, 120, 118],
		"rup2" => [66, 100, 253],
		"rright2" => [130, 255, 174],
		"tleft" => [255, 200, 1],
		"tdown" => [255, 135, 137],
		"tup" => [255, 0, 255],
		"tright" => [0, 163, 30],
		"tleft2" => [176, 0, 0],
		"tdown2" => [255, 255, 255],
		"tup2" => [168, 111, 181],
		"tright2" => [61, 180, 102],
		"gleft" => [12, 52, 86],
		"gdown" => [255, 162, 0],
		"gup" => [237, 203, 169],
		"gright" => [255, 0, 214],
		"gleft2" => [135, 163, 173], //same as the strum color lol
		"gdown2" => [255, 0, 68],
		"gup2" => [0, 255, 221],
		"gright2" => [207, 114, 21],
		"extra" => [84, 84, 84], //Just in case someone wants to add another key without modding the code (you'll have to define your colors manually with the in-game editor though)
		"extra2" => [200, 200, 200]
	];

	public static function setNoteColor(note:String, color:Array<Int>):Void {
		noteColors.set(note, color);
		Options.setData(noteColors, "arrowColors", "arrowColors");
	}

	public static function getNoteColor(note:String):Array<Int> {
		if (!noteColors.exists(note))
			setNoteColor(note, defaultColors.get(note));

		return noteColors.get(note);
	}

	public static function load():Void {
		if (Options.getData("arrowColors", "arrowColors") != null)
			noteColors = Options.getData("arrowColors", "arrowColors");
		else
			Options.setData(defaultColors, "arrowColors", "arrowColors");
	}
}



