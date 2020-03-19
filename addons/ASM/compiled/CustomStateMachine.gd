class_name CustomStateMachine


var state_machine:StateMachine = StateMachine.new(self)

enum STATE {IDLE, WALK}

func _ready():
	state_machine.register_state(STATE.IDLE,"idle",false,true)
	state_machine.register_state(STATE.WALK,"walk",true,false)
	state_machine.change_state(STATE.IDLE)

func st_update_idle():
	state_machine.change_state(STATE.WALK)
	pass

func st_exit_idle():
	#code_here
	pass

func st_init_walk():
	#code_here
	pass

func st_update_walk():
	state_machine.change_state(STATE.IDLE)
	pass
