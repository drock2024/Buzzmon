extends Node

var major = ""
var curr_battle = 0
var buzz_count = 0

var me_opps = ["res://src/Battle.tscn", "res://src/AEBattle.tscn", "res://src/CMBattle.tscn"]
var ae_opps = ["res://src/MEBattle.tscn", "res://src/CMBattle.tscn", "res://src/Battle.tscn"]
var ba_opps = ["res://src/CMBattle.tscn", "res://src/MEBattle.tscn", "res://src/AEBattle.tscn"]
var cm_opps = ["res://src/Battle.tscn", "res://src/AEBattle.tscn", "res://src/MEBattle.tscn"]

func _ready():
	major = "CM"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
