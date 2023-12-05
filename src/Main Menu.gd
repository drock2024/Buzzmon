extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalStats.curr_battle = 0
	$Start.grab_focus()
	var font = DynamicFont.new()
	font.font_data = load("res://alagard.ttf")
	$Start.set("custom_fonts/font", font)
	$End.set("custom_fonts/font", font)
	var tween = get_node("Tween")
	tween.interpolate_property($Logo, "position",
		Vector2(640, -100), Vector2(640,100), 1,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Start_pressed():
	get_tree().change_scene("res://src/Character Select.tscn")
	#get_tree().change_scene("res://src/BuzzBattle.tscn")
	#get_tree().change_scene("res://src/BuzzIntro.tscn")


func _on_End_pressed():
	get_tree().quit()
