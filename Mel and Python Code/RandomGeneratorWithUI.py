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

class RandomGeneratorUI():
    ui_name = 'RandomGen'
    window_name = '%sWindow' % ui_name

    def __init__(self):
        self.num_field_list = None
        self.operation_type = None
        self.num_values = None
        self.m_col = None

    def delete(self):
        if cmds.window(RandomGeneratorUI.window_name, exists=True):
            cmds.deleteUI(RandomGeneratorUI.window_name)

    def create(self):
        self.delete()
        self.window_name = cmds.window(RandomGeneratorUI.window_name,
                                       title='%s Tool' % (RandomGeneratorUI.ui_name),
                                       widthHeight=(504, 139),
                                       sizeable=False)

        self.m_col = cmds.columnLayout(p=RandomGeneratorUI.window_name, adj=True)

        cmds.separator(p=self.m_col, style='in', h=10)

        cmds.button(p=self.m_col,
                    l='Randomize!',
                    command=lambda *args: self.update_num_fields())

        cmds.separator(p=self.m_col, style='in', h=10)

        self.show()

    def update_num_fields(self):
        placement_generator(-10, 30, -5, 20, -100, 100, 50)


    def show(self):
        cmds.showWindow(RandomGeneratorUI.window_name)

myTest = RandomGeneratorUI()
myTest.create()
