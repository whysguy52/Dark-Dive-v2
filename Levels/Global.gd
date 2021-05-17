extends Node

#This is working but dissabled.
#No matter what I do, some screen freezes up. I cannot run the game and load the main game in the background smoothly.
var nextLevel
var root

func _ready():
#	nextLevel = ResourceLoader.load_interactive("res://Levels/TestLevel.tscn")
	root = get_tree().get_root()

func preload_level_1():
	while nextLevel.poll() != ERR_FILE_EOF:
		pass

func load_level_1():
	var nextScene = nextLevel.get_resource().instance()
	root.add_child(nextScene)
	
	var scene = root.get_node("PrePlayScreen")
	root.remove_child(scene)
	scene.queue_free()
