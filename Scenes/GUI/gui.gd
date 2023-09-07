extends CanvasLayer


func _on_weapons_pressed() -> void:
	_hide_lists("WeaponList")

func _on_player_pressed() -> void:
	_hide_lists("PlayerList")

func _on_pets_pressed() -> void:
	_hide_lists("PetsList")

func _on_spells_pressed() -> void:
	_hide_lists("SpellsList")


func _hide_lists(exception: String) -> void:
	var lists = get_tree().get_nodes_in_group("List")
	for list in lists:
		list.hide()
	get_tree().get_first_node_in_group(exception).show()
