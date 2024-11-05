<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/gdscript-logo-64.png">

# GDScript Explorations:
To begin coding with GDScript, start by installing the [GDScript Interpretor](https://docs.godotengine.org/en/3.3/getting_started/editor/command_line_tutorial.html). Another way to install the interpretor can be done [here](https://www.francogarcia.com/en/blog/development-environments-gdscript/#interpreter-and-text-editor).

If you are on Windows and want to install Godot on the command line, type in the following command in Windows Powershell through the Administrator role (you will need to install [Chocolatey](https://chocolatey.org/install) if you have not yet done):
```
choco install godot
```
To run a gdscript like helloworld.gd, type the following command:
```
godot -s helloworld.gd
```
Note that the files are formatted differently from the online playgrounds. This is because in order for the files to properly run, each of the files must extend the `SceneTree` class and have the name of the main function be `_init`. Online interpretors, however, extend to `Node` and the main function is named `_ready`.

If you are unable to install Godot on your computer, then you can write on the third-party 
[GDScript Playground](https://gd.tumeo.space/#).

## About GDScript:

GDScript is a high-level, object-oriented, imperative, and gradually typed programming language for the Godot Game Engine developed by _ . The aim of this programming language is to give game developers using Godot to reduce the complexity of code by utilizing built-in types within the code such as 2D/3D Vectors. (Still WIP)

## GDScript Resources:

Continue your study of GDScript via:

[Godot Game Engine](https://godotengine.org/)  
[GDScript GitHub](https://github.com/godotengine/godot/tree/master/modules/gdscript)  
[GDScript Main Documentation](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/index.html)  
[GDScript Smaller Documentation](https://gdscript.com/)  
[GDScript Tutorial](https://gdquest.github.io/learn-gdscript/?ref=godot-docs)  
[GDScript Playground](https://gd.tumeo.space/#)  

Extas (for myself): https://www.francogarcia.com/en/blog/development-environments-gdscript/#interpreter-and-text-editor