import maya.cmds as cmds
import random

def placement_generator(x_min, x_max, y_min, y_max, z_min, z_max, num_dups):

    sels = cmds.ls(selection=True)

    if not sels:
        print("No objects selected.")
        return

    for sel in sels:

        for _ in range(num_dups):

            dup = cmds.duplicate(sel, rr=True)[0]

            rand_x = random.uniform(x_min, x_max)
            rand_y = random.uniform(y_min, y_max)
            rand_z = random.uniform(z_min, z_max)

            cmds.setAttr(f"{dup}.translateX", rand_x)
            cmds.setAttr(f"{dup}.translateY", rand_y)
            cmds.setAttr(f"{dup}.translateZ", rand_z)

placement_generator(-10, 30, -5, 20, -100, 100, 50)
