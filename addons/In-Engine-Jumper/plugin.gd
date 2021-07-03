tool
extends EditorPlugin

var dock


func _enter_tree():
	dock = load("res://addons/In-Engine-Jumper/Game.tscn").instance()
	add_control_to_dock(EditorPlugin.DOCK_SLOT_LEFT_UL, dock)


func _exit_tree():
	remove_control_from_docks(dock)
	dock.queue_free()
	dock = null
