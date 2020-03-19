# WIP - Abstract State Machine (ASM)

ASM is a GraphNode Based State machine tool for Godot 3, It generates a ready-to-go state machine
for your game:

![ASM in action](https://i.imgur.com/1RWHFyK.png)


## WIP Alpha 0.1
I did this plugin for my game, since the plugin is alpha, I want to add a lot of features yet, like:
* Run at editor
* State Machine working animation (live feedback)
* State Containers (for better organization)
* Edit an existing code (in case you have a script and want to attach the state machine automatically)
* Save/Load System
* And a lot of things

## How to Use:
* Download this
* Extract to your project's addon folder
* Since this tool runs at runtime you dont need to enable/disable plugin in order to work
* Open GraphController.scn
* Press F6 to run
* Make your State Machine
* Click at the compile button at the top
* Get your ready-to-go CustomStateMachine at res://addons/ASM/compiled/CustomStateMachine.gd
* Have fun

## PS
I encourage you to test this plugin and give me feedback, enhancement ideas, Pull requests, lets make this tool very powerful!

## How this SH@T works behind the scenes?

![ASM graph](https://i.imgur.com/Rm326WU.png)
