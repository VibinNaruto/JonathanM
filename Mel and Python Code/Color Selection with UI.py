import maya.cmds as cmds

def change_override_color(selected_objects, color_index):
    if not selected_objects:
        cmds.warning("No objects selected. Please select some objects.")
        return

    for obj in selected_objects:
        shapes = cmds.listRelatives(obj, shapes=True, fullPath=True) or []
        for shape in shapes:
            cmds.setAttr(shape + ".overrideColor", color_index)
            cmds.setAttr(f"{shape}.overrideEnabled", 1)

class ColorSelectionUI():
    ui_name = 'Color'
    window_name = '%sWindow' % ui_name

    def __init__(self):
        self.num_field_list = None
        self.operation_type = None
        self.num_values = None
        self.m_col = None
        self.color_slider = None

    def delete(self):
        if cmds.window(ColorSelectionUI.window_name, exists=True):
            cmds.deleteUI(ColorSelectionUI.window_name)

    def create(self):
        self.delete()
        self.window_name = cmds.window(ColorSelectionUI.window_name,
                                       title='%s Tool' % (ColorSelectionUI.ui_name),
                                       widthHeight=(504, 139),
                                       sizeable=False)

        self.m_col = cmds.columnLayout(p=ColorSelectionUI.window_name, adj=True)

        cmds.separator(p=self.m_col, style='in', h=10)

        self.color_slider = cmds.intSliderGrp(p=self.m_col,
                                              label='Select Color',
                                              field=True,
                                              minValue=1,
                                              maxValue=31,
                                              value=1,
                                              cw=[(1, 150), (2, 50)],
                                              cl3=['center', 'center', 'center'],
                                              dragCommand=lambda *args: self.update_color())

        cmds.separator(p=self.m_col, style='in', h=10)

        cmds.button(p=self.m_col,
                    l='Change Color!',
                    command=lambda *args: self.calculate_and_change_color())

        cmds.separator(p=self.m_col, style='in', h=10)

        self.show()

    def update_num_fields(self):
        pass

    def update_color(self):
        pass

    def calculate_and_change_color(self):
        selected_objects = cmds.ls(selection=True, long=True)
        color_index = cmds.intSliderGrp(self.color_slider, q=True, value=True)  # Gets the Color for slider
        change_override_color(selected_objects, color_index)

    def show(self):
        cmds.showWindow(ColorSelectionUI.window_name)

colorSelection_ui = ColorSelectionUI()
colorSelection_ui.create()
