extends SceneTree

# This will work in the provided Godot Game Engine script editor.
# To make this work on VSCode, use the "godot-tools" extension.

#region
func a():
    return "I'm in an region. You can collapse my region in the editor."
#endregion
    
#region With a Description
func b():
    return "I'm in an named region. You can collapse my region in the editor."
#endregion

#region
func c():
    #region
    return "I'm in a nested region. You can collapse either of my regions in the editor."
    #endregion
#endregion

func _init():
    print(a())
    print(b())
    print(c())
    quit()