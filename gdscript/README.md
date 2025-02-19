<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/gdscript-logo-64.png">

# GDScript Explorations:

To build and run GDScript programs on your local machine, download and install the most recent game engine version from the [Godot downloads page](https://godotengine.org/) or use your favorite package manager.

Programs in this folder can be run from the command line like so:

```
godot -s triple.gd
```

```
godot -s permutations.gd I like carrots
```

```
godot -s top_ten_scorers.gd < ../test/wnba_input
```

Running the command `godot` with at any time will open the Godot game engine. To avoid this, add the flag `--display-driver headless`.

To make sure that your test matches properly to the test files, you will need to add the `--no-header` flag.

The test files will have this command ran. It is quite verbose, but it allows you to run GDScript programs without any inconveniences.

```
godot --display-driver headless --no-header -s triple.gd
```

To run the tests on a Unix-like shell:

```
./test.sh
```

Run `test.ps1` in PowerShell.

If you are unable to install Godot on your computer, then you can write on the online third-party
[GDScript Playground](https://gd.tumeo.space/#).

Note that the files are formatted differently from the online playgrounds. This is because in order for the files to properly run, each of the files must extend the `SceneTree` class and have the name of the main function be `_init`. Online interpretors, however, extend to `Node` and the main function is named `_ready`.

## About GDScript:

GDScript is a high-level, object-oriented, imperative, and gradually typed programming language for the Godot Game Engine that was aimed to replace Lua.The motivations on making a new custom programming language was that existing programming languages during that time was not ideal candidates for running Godot.

The aim of this programming language is to give game developers at any skill level using Godot to reduce the complexity of code by reducing the amount of time needed to run Godot and the overall burden of maintenance. Syntactically, the language is very similar to Python, one of the most popular languages in the world.

To learn more about the history of GDScript, see the [Godot FAQs](https://docs.godotengine.org/en/stable/about/faq.html#doc-faq-what-is-gdscript).

## GDScript Resources:

Continue your study of GDScript via:

[Godot Game Engine](https://godotengine.org/)  
[GDScript GitHub](https://github.com/godotengine/godot/tree/master/modules/gdscript)  
[GDScript Main Documentation](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/index.html)  
[GDScript Smaller Documentation](https://gdscript.com/)  
[GDScript Extra Documentation](https://www.francogarcia.com/en/blog/development-environments-gdscript/#interpreter-and-text-editor)  
[GDScript Cheat-Cheat](https://godot.community/topic/78/gdscript-cheatsheet/2)  
[GDScript Tutorial](https://gdquest.github.io/learn-gdscript/?ref=godot-docs)  
[GDScript Playground](https://gd.tumeo.space/#)

Godot and GDScript is a free and open source programming language, and you can contribute to the program here:
[Godot Engine Contributions](https://docs.godotengine.org/en/stable/contributing/how_to_contribute.html)
