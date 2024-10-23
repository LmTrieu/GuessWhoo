extends Control

@export var peep_scene: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	var i: int = 0;

	const name_gen = preload("res://HelperScript/name-generator.gd");

	while i <= 17:
		var names = name_gen.generate(4,10);
		var peep = peep_scene.instantiate();
		
		peep.get_node("VBoxContainer/Label").text = names;
		
		get_tree().get_root().get_node("Game/GridContainer").add_child(peep);
		i += 1;
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_texture_button_pressed():
	get_tree().get_current_scene().queue_free();
	get_tree().change_scene_to_file("res://Scene/MainMenu/main_menu.tscn");
