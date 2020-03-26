extends Control
class_name ConnectionManager


enum STATE {IDLE,CONNECTING}

var _state:int = STATE.IDLE
var _is_mouse_inside_graph_node:bool = false
var _current_graph_node:GraphNode = null
var _last_graph_node:GraphNode = null
var _from:GraphNode = null
var _to:GraphNode = null
var _clicked_from:Vector2 = Vector2()
var _clicked_to:Vector2 = Vector2()
var _connections = {}
var _line_dict = {a=Vector2(),b=null}
var graph_controller

func _init(graph_controller):
	self.graph_controller = graph_controller

func _set_state(new_state:int):
	_state = new_state



func _add_connection():
	_from.state.add_connection(_to)
	var st = _from.state
	var ost = _to.state
	st.clicked_points[ost.ID] = {from=_clicked_from,to=_clicked_to}
	
	_set_state(STATE.IDLE)
	print("connected from: %s to %s" % [_from.name,_current_graph_node.name])
	pass

func send_data(graph_node:GraphNode,inside_graph:bool=false):
	_is_mouse_inside_graph_node = inside_graph
	if inside_graph:
		_last_graph_node = _current_graph_node
		_current_graph_node = graph_node
	else: print("graph is the same")
	print("current GN: "+_current_graph_node.name)
	

func _input(event):
	if event is InputEventKey:
		if (event.is_pressed() and event.scancode == KEY_C):
			if _is_mouse_inside_graph_node and _state == STATE.IDLE:
				_from = _current_graph_node
				_clicked_from = _from.get_local_mouse_position()
				_set_state(STATE.CONNECTING)
			pass
	elif event is InputEventMouseButton:
		if (event.is_pressed() and event.button_index == BUTTON_LEFT and _state == STATE.CONNECTING):
			_to = _current_graph_node
			_clicked_to = _to.get_local_mouse_position()
			_add_connection()
			pass
		pass

func _process(delta):
	update()
	
func _draw():
	if _state == STATE.CONNECTING:
		draw_line(_from.rect_position + _clicked_from,get_local_mouse_position(),Color.aqua)
	
	for graph_node in graph_controller.get_active_gnodes():
		for i in range(graph_node.state.connections.size()):
			var to = graph_node.state.connections[i].graph_node
			var from = graph_node
			
			#{from,to} -> Vector2 clicked_point
			var dict = graph_node.state.clicked_points[to.state.ID]
			var pos_a = from.rect_position + dict.from
			var pos_b = to.rect_position + dict.to
			draw_line(pos_a,pos_b,Color.white,3)
			draw_circle(pos_a,3,Color.gold)
#		if graph_node.state.connections == null: return
#		for conn in graph_node.state.connections:
#			draw_line(graph_node.rect_position,conn.rect_position,Color.white,3)
	
#	for conn in _connections:
#		draw_line(conn.from.get_virtual_pos(),conn.to.rect_position + conn.to_clicked,Color.white,3)
#		draw_circle(conn.from.get_virtual_pos(),5,Color.darkgoldenrod)
		
#	for line in _lines:
#		var b = line.b
#		if b == null: b = get_local_mouse_position()
#
#		draw_line(_current_graph_node.rect_position,b,Color.white)

