extends Node2D

var debug_overlay

func _ready() -> void:
	var explorer = $Explorer
	debug_overlay = $DebugOverlay
	debug_overlay.add_stat("Direction X", explorer, 'direction', false)
	debug_overlay.add_stat('In Ladder', explorer, '_in_ladder', false)

