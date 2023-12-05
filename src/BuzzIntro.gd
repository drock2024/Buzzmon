extends Control


func _ready():
	var tween = get_node("Tween")
	tween.interpolate_property($Stripe1, "rect_position",
		Vector2(-75, -1000), Vector2(540,-370), 0.5,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.interpolate_property($Stripe2, "rect_position",
		Vector2(340,-70), Vector2(-575, -1000), 0.5,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.interpolate_property($Stripe3, "rect_position",
		Vector2(-1075, -1000), Vector2(-140,-70), 0.5,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.interpolate_property($Buzz, "position",
		Vector2(1700, 360), Vector2(700,360), 0.5,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()


func _on_Button_pressed():
	get_tree().change_scene("res://src/BuzzBattle.tscn")
