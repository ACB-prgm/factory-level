extends Node

# TODO: add documentation

static func is_in_range(value: float, min_value: float, max_value: float) -> bool:
	return (value >= min_value) && (value <= max_value)
