extends Node2D

@onready var grass_area_2d: Area2D = $GrassArea2D

func _ready() -> void:
	grass_area_2d.area_entered.connect(_grass_area_entered)

func _grass_area_entered(area: Area2D) -> void:
	queue_free()
	print("Grass entered")
