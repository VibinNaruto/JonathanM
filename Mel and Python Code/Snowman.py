import maya.cmds as cmds

# Create Snowman's body (Bottom part)
cmds.polySphere(radius=4, subdivisionsX=20, subdivisionsY=20, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(0, 4, 0)

# Create Snowman's body (Middle part)
cmds.polySphere(radius=3, subdivisionsX=20, subdivisionsY=20, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(0, 8, 0)

# Create Snowman's body (Top part the head)
cmds.polySphere(radius=2, subdivisionsX=20, subdivisionsY=20, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(0, 11, 0)

# Create Snowman's eyes (Left)
cmds.polySphere(radius=0.2, subdivisionsX=20, subdivisionsY=20, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(-0.7, 11.5, 1.7)

# Create Snowman's eyes (Right)
cmds.polySphere(radius=0.2, subdivisionsX=20, subdivisionsY=20, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(0.9, 11.5, 1.6)

# Create Snowman's nose (Carrot)
cmds.polyCone(radius=0.2, height=1, subdivisionsX=20, subdivisionsY=1, subdivisionsZ=1, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(0.1, 11.3, 2.2)
cmds.rotate(88, 0, 0, relative=True, os=True)

# Create Snowman's hat (Brim)
cmds.polyCylinder(radius=3.5, height=0.5, subdivisionsX=20, subdivisionsY=1, subdivisionsZ=1, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(0, 12.3, 0)
cmds.scale(0.7, 0.7, 0.7)

# Create Snowman's hat (Top)
cmds.polyCylinder(radius=1, height=2, subdivisionsX=20, subdivisionsY=1, subdivisionsZ=1, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(0, 14, 0)
cmds.scale(1.5, 1.5, 1.5)

# Create Left Arm
cmds.polyCylinder(radius=1, height=2, subdivisionsX=20, subdivisionsY=1, subdivisionsZ=1, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(-2.9, 8.7, 0)
cmds.rotate(0, 0, 314, relative=True, os=True)
cmds.scale(0.2, 1.3, 0.2)

# Create Right Arm
cmds.polyCylinder(radius=1, height=2, subdivisionsX=20, subdivisionsY=1, subdivisionsZ=1, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(2.8, 9.0, 0)
cmds.rotate(0, 0, 45, relative=True, os=True)
cmds.scale(0.2, 1.3, 0.2)

# Create Snowman's buttons
cmds.polySphere(radius=0.15, subdivisionsX=20, subdivisionsY=20, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(0.1, 9.5, 2.6)
cmds.polySphere(radius=0.15, subdivisionsX=20, subdivisionsY=20, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(0.09, 8.5, 3.0)
cmds.polySphere(radius=0.15, subdivisionsX=20, subdivisionsY=20, axis=[0, 1, 0], texture=1, ch=1)
cmds.move(0.1, 7.6, 2.9)
