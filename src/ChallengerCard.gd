extends Node2D

func _ready():
	if GlobalStats.major == "CM":
		if GlobalStats.curr_battle == 0:
			$Sprite.texture = load("res://sprites/BusinessChallengeScreen.png")
		if GlobalStats.curr_battle == 1:
			$Sprite.texture = load("res://sprites/BusinessChallengeScreen.png")
		if GlobalStats.curr_battle == 2:
			$Sprite.texture = load("res://sprites/BusinessChallengeScreen.png")
	if GlobalStats.major == "ME":
		if GlobalStats.curr_battle == 0:
			$Sprite.texture = load("res://sprites/BusinessChallengeScreen.png")
		if GlobalStats.curr_battle == 1:
			$Sprite.texture = load("res://sprites/BusinessChallengeScreen.png")
		if GlobalStats.curr_battle == 2:
			$Sprite.texture = load("res://sprites/CMChallengeScreen.png")
	if GlobalStats.major == "AE":
		if GlobalStats.curr_battle == 0:
			$Sprite.texture = load("res://sprites/MEChallengerScreen.png")
		if GlobalStats.curr_battle == 1:
			$Sprite.texture = load("res://sprites/CMChallengeScreen.png")
		if GlobalStats.curr_battle == 2:
			$Sprite.texture = load("res://sprites/BusinessChallengeScreen.png")
	if GlobalStats.major == "BA":
		if GlobalStats.curr_battle == 0:
			$Sprite.texture = load("res://sprites/CMChallengerScreen.png")
		if GlobalStats.curr_battle == 1:
			$Sprite.texture = load("res://sprites/MEChallengeScreen.png")
		if GlobalStats.curr_battle == 2:
			$Sprite.texture = load("res://sprites/BusinessChallengeScreen.png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	if GlobalStats.major == "CM":
		get_tree().change_scene(GlobalStats.cm_opps[GlobalStats.curr_battle])
	if GlobalStats.major == "ME":
		get_tree().change_scene(GlobalStats.me_opps[GlobalStats.curr_battle])
	if GlobalStats.major == "AE":
		get_tree().change_scene(GlobalStats.ae_opps[GlobalStats.curr_battle])
	if GlobalStats.major == "BA":
		get_tree().change_scene(GlobalStats.ba_opps[GlobalStats.curr_battle])
