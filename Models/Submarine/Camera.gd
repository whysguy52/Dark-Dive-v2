extends Camera


var cameraTargetPos
var pos_interpFactor = 0.3
var rot_interpFact = 0.3


# Called when the node enters the scene tree for the first time.
func _ready():
	cameraTargetPos = get_parent().get_node("Submarine/ShipNod/CameraPos")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var origin_from = global_transform.origin
	var origin_to = cameraTargetPos.global_transform.origin
	
	#consider look_at() function
	global_transform.origin = lerp(origin_from, origin_to, pos_interpFactor)
	global_transform.basis.x = lerp(global_transform.basis.x, cameraTargetPos.global_transform.basis.x, rot_interpFact)
	global_transform.basis.y = lerp(global_transform.basis.y, cameraTargetPos.global_transform.basis.y, rot_interpFact)
	global_transform.basis.z = lerp(global_transform.basis.z, cameraTargetPos.global_transform.basis.z, rot_interpFact)
	

