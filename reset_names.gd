@tool
extends EditorScript

func _run():
	var root = get_editor_interface().get_edited_scene_root()
	if root == null:
		print("No scene open in editor")
		return
	reset_names(root)
	print("Done")

func reset_names(node: Node) -> void:
	node.name = node.get_class()
	for child in node.get_children():
		reset_names(child)
