extends Node2D


@onready var hitbox : Hitbox = $CanvasLayer/Sword/Hitbox
@onready var sword : RigidBody2D = $CanvasLayer/Sword

var auto_swing_speed : float = 85.0        #Default-85   Boosted-1000


var money : int = 0 : set = money_setter


func _ready() -> void:
	
	sword.set_as_top_level(true)
	
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN
	global_position = get_global_mouse_position()
	sword.global_position = global_position
	money = 100


func _physics_process(delta) -> void:
	
	global_position = get_global_mouse_position()
	
	if Input.is_action_pressed("Swing"):
		sword.angular_velocity = 85


func money_setter(value) -> void:
	
	money = value
	get_tree().get_first_node_in_group("MoneyLabel").text = "$%s" % money
