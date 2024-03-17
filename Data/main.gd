extends Node2D


@export var growthSpeed = 10
func _ready():
	$GrowthTimer.set_wait_time(growthSpeed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
