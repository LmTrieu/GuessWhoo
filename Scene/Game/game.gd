extends Control

@export var peep_scene: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	var i: int = 0;
	var names = ["John","Jack","Jill","Bill","Cum","Dump"];

	while i <= 5:
		var peep = peep_scene.instantiate();
		var picked_name = names.pick_random();

		peep.get_node("VBoxContainer/Label").text = picked_name;
		names.erase(picked_name);
		
		get_tree().get_root().get_node("Game/GridContainer").add_child(peep);
		i += 1;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
