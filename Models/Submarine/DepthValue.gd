extends Label


var ship


# Called when the node enters the scene tree for the first time.
func _ready():
	ship = get_parent().get_parent().get_parent() #3 parents is the submarine


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = str(int(ship.transform.origin.y*-0.1) )
