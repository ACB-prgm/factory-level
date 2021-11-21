extends Node2D

var debug_overlay

func _ready() -> void:
	var explorer = $Explorer
	debug_overlay = $DebugOverlay
	debug_overlay.add_stat("Direction X", explorer, 'direction', false)
	debug_overlay.add_stat('In Ladder', explorer, '_in_ladder', false)
	debug_overlay.add_stat('Picked', $EnergyBall, 'picked', false)

func _unhandled_key_input(event: InputEventKey) -> void:
	if event.is_action_pressed('reset'):
		$EnergyBall.set_rigid_position(Vector2(248, 350))
