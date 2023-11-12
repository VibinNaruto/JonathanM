import maya.cmds as cmds

def change_override_color(selected_objects, color_index):
    if not selected_objects:
        cmds.warning("No objects selected. Please select some objects.")
        return

    for obj in selected_objects:
        shapes = cmds.listRelatives(obj, shapes=True, fullPath=True) or []
        for shape in shapes:
            cmds.setAttr(shape + ".overrideColor", color_index)

selected_objects = cmds.ls(selection=True, long=True)
color_index = 13
change_override_color(selected_objects, color_index)
