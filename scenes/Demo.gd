extends Node2D

var debug_overlay

func _ready() -> void:
	debug_overlay = $DebugOverlay
	debug_overlay.add_stat("Direction X", $Explorer, 'direction', false)

