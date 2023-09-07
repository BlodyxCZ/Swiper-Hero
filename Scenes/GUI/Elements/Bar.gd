extends TextureRect


@export_category("Upgrade Information")
@export var upgrade_name : String = "Placeholder"
@export var upgrade_cost : int = 0
@export var upgrade_desc : String = "Placeholder placeholder placeholder placeholder placeholder"
@export var upgrade_icon : ImageTexture = null
@export var upgrade_amount : int = 0


@onready var Name : Label = $Name
@onready var Amount : Label  = $Amount
@onready var Desc : Label  = $Desc
@onready var Cost : Label  = $Cost


func _ready() -> void:
	Name.text = upgrade_name
	Amount.text = "x%s" % upgrade_amount
	Desc.text = upgrade_desc
	Cost.text = "cost: %s" % upgrade_cost


func _on_button_pressed() -> void:
	if get_tree().get_first_node_in_group("Player").money >= upgrade_cost:
		get_tree().get_first_node_in_group("Player").money -= upgrade_cost
		_calculate_cost()
		upgrade_amount += 1
		Amount.text = "x%s" % upgrade_amount


func _calculate_cost() -> void:
	pass
	Cost.text = "cost: %s" % upgrade_cost
