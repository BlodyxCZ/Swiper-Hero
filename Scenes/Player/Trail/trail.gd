extends Line2D


@export var length : int = 50
var point : Vector2 = Vector2()

func _physics_process(delta) -> void:
	
	global_position = Vector2(0,0)
	global_rotation = 0
	
	point = get_parent().global_position
	
	add_point(point)
	
	while get_point_count()>length:
		remove_point(0)
