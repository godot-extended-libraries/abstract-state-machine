tool
extends ASM_GN


func _ready():
	graph_control = get_tree().get_nodes_in_group("Controller")[0]
	state = State.new(graph_control.get_ai_id(),"entry",offset,State.Type.ENTRY,self)
	pass
