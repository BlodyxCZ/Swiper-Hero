class_name Hurtbox
extends Area2D


func _init() -> void:
	collision_layer = 3
	collision_mask = 2


func _ready() -> void:
	connect("area_entered", _on_area_entered)


func _on_area_entered(hitbox: Hitbox) -> void:
	if hitbox == null:
		return
	
	if owner.has_method("take_damage"):
		var sword = hitbox.get_parent()
		if abs(sword.linear_velocity.x) > 750 || abs(sword.linear_velocity.y) > 750 || abs(sword.angular_velocity) > 7.5:
			owner.take_damage(hitbox.damage)
