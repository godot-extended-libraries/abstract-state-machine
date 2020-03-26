extends GraphNode
class_name ASM_GN

onready var graph_control = get_parent().graph_control
var state:State = null

func get_connections() -> Array:
	return get_parent().graph_control.get_connections_from(self.name)


func change_names(text,pre_title) -> void:
	text = text.to_lower()
	text = text.replace(" ","_")
	title = pre_title+text
	name = text
	state.name = text

func _ready():
	connect("mouse_entered",self,"_on_mouse_enter")
	connect("mouse_exited",self,"_on_mouse_exit")
	pass

func _on_mouse_enter():
#	pos = get_local_mouse_position()
#	graph_control.active_graph.set_start_line(self)
	graph_control.connection_manager.send_data(self,true)
	
	pass

func _on_mouse_exit():
	graph_control.connection_manager.send_data(self,false)
	pass
