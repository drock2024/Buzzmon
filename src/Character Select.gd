extends Control

func _ready():
	$CM.grab_focus()
	var font = DynamicFont.new()
	font.font_data = load("res://alagard.ttf")
	$CM.set("custom_fonts/font", font)
	$ME.set("custom_fonts/font", font)
	$Business.set("custom_fonts/font", font)
	$AE.set("custom_fonts/font", font)
	var tween = get_node("Tween")
	tween.interpolate_property($Logo, "position",
		Vector2(640, 100), Vector2(640,-100), 1,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
	$Character.show()
	$Major.show()

func _on_CM_pressed():
	get_tree().change_scene("res://src/ChallengerCard.tscn")
	GlobalStats.major = "CM"

func _on_ME_pressed():
	get_tree().change_scene("res://src/ChallengerCard.tscn")
	GlobalStats.major = "ME"

func _on_AE_pressed():
	get_tree().change_scene("res://src/ChallengerCard.tscn")
	GlobalStats.major = "AE"


func _on_Business_focus_entered():
	$Character.texture = load("res://sprites/businesshead.png")
	$Major.text = "Business Administration"
	$Character.scale = Vector2(0.25, 0.25)


func _on_ME_focus_entered():
	$Character.texture = load("res://sprites/mehead.png")
	$Major.text = "Mechanical Engineer"
	$Character.scale = Vector2(0.25, 0.25)


func _on_Business_pressed():
	get_tree().change_scene("res://src/ChallengerCard.tscn")
	GlobalStats.major = "BA"


func _on_AE_focus_entered():
	$Character.texture = load("res://sprites/mehead.png")
	$Major.text = "Aerospace Engineer"
	$Character.scale = Vector2(0.25, 0.25)


func _on_CM_focus_entered():
	$Character.texture = load("res://sprites/CMhead.png")
	$Major.text = "Computational Media"
	$Character.scale = Vector2(0.75, 0.75)
