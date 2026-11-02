extends BoneAttachment3D
class_name WeaponSlot

signal ranged_attack
signal slash
enum mode {NONE, SLASH, STAB}

@export var shape: ShapeCast3D
@export var attack_mode: mode = mode.NONE
@export var vfx_threshold: float = 0.0
@export var enabled: bool = false:
	set(value):
		if enabled == false and value == true:
			slash.emit
		enabled = value
		if shape: 
			shape.enabled = enabled
