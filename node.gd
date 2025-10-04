extends Node
var nimS=aracter.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_pressed() -> void:
	var s := Time.get_ticks_msec()
	print(nimS.numu())
	var e := Time.get_ticks_msec()
	print(e-s)
	pass # Replace with function body.
