# WIP - Abstract State Machine (ASM)

ASM is a GraphNode Based State machine tool for Godot 3, It generates a ready-to-go state machine
for your game:

![ASM in action](https://i.imgur.com/5PedUZm.png)
![Generated code](https://i.imgur.com/jAyiAeQ.png)

## WIP Alpha 0.5

**New Features:**

- [x] Run at editor
- [x] Delete States
- [ ] State Machine working animation (live feedback)
- [ ] State Containers (for better organization)
- [ ] Edit an existing code (in case you have a script and want to attach the state machine automatically)
- [ ] Save/Load System
- [ ] And a lot of things

**Bug Fixes**

- [x] Compile.gd was not producing _process() to update the state machine
- [x] Right-Mouse click was generating itemlist far from mouse (needs testing on different screens)

## How to Use:
* Download this
* Extract to your project's addon folder
* Now you need to enable the plugin
* You should see an ASM on the engine's top (where 2d,3d is located)
* Make your State Machine
* Click at the compile button at the top
* Get your ready-to-go CustomStateMachine at res://addons/ASM/compiled/CustomStateMachine.gd
	- If you can see inside the engine use the system folder explorer
	- Engine's Output tab will give you information if anything happens
* Have fun

## Known Issues
* If you create a state connect it, and then rename it, can cause compile errors
* I encourage you to test this plugin and give me feedback, enhancement ideas, Pull requests, lets make this tool very powerful!


## How this SH@T works behind the scenes?

![ASM graph](https://i.imgur.com/Rm326WU.png)
