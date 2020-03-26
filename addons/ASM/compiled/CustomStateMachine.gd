class_name CustomStateMachine


var state_machine:StateMachine = StateMachine.new(self)

enum STATE {STATE_2668139190, STATE_4134715227}

func _ready():
	state_machine.register_state(STATE.STATE_2668139190,"state_2668139190",false,false)
	state_machine.register_state(STATE.STATE_4134715227,"state_4134715227",true,false)
	state_machine.change_state(STATE.STATE_2668139190)

func _process(_delta):
	state_machine.machine_update()




func st_update_state_2668139190():
	#code_here
	pass

func st_init_state_4134715227():
	#code_here
	pass

func st_update_state_4134715227():
	#code_here
	pass
