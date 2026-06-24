Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class Region

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.synth.Region

---

public class Region
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A distinct rendering area of a Swing component. A component may
support one or more regions. Specific component regions are defined
by the typesafe enumeration in this class.

Regions are typically used as a way to identify the `Component`s
and areas a particular style is to apply to. Synth's file format allows you
to bind styles based on the name of a `Region`.
The name is derived from the field name of the constant:

1. Map all characters to lowercase.- Map the first character to uppercase.- Map the first character after underscores to uppercase.- Remove all underscores.

For example, to identify the `SPLIT_PANE`
`Region` you would use `SplitPane`.
The following shows a custom `SynthStyleFactory`
that returns a specific style for split panes:

```
    public SynthStyle getStyle(JComponent c, Region id) {
        if (id == Region.SPLIT_PANE) {
            return splitPaneStyle;
        }
        ...
    }
```

The following [xml](doc-files/synthFileFormat.md)
accomplishes the same thing:

```
 <style id="splitPaneStyle">
   ...
 </style>
 <bind style="splitPaneStyle" type="region" key="SplitPane"/>
```

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Region`

  `ARROW_BUTTON`

  ArrowButton's are special types of buttons that also render a
  directional indicator, typically an arrow.

  `static final Region`

  `BUTTON`

  Button region.

  `static final Region`

  `CHECK_BOX`

  CheckBox region.

  `static final Region`

  `CHECK_BOX_MENU_ITEM`

  CheckBoxMenuItem region.

  `static final Region`

  `COLOR_CHOOSER`

  ColorChooser region.

  `static final Region`

  `COMBO_BOX`

  ComboBox region.

  `static final Region`

  `DESKTOP_ICON`

  DesktopIcon region.

  `static final Region`

  `DESKTOP_PANE`

  DesktopPane region.

  `static final Region`

  `EDITOR_PANE`

  EditorPane region.

  `static final Region`

  `FILE_CHOOSER`

  FileChooser region.

  `static final Region`

  `FORMATTED_TEXT_FIELD`

  FormattedTextField region.

  `static final Region`

  `INTERNAL_FRAME`

  InternalFrame region.

  `static final Region`

  `INTERNAL_FRAME_TITLE_PANE`

  TitlePane of an InternalFrame.

  `static final Region`

  `LABEL`

  Label region.

  `static final Region`

  `LIST`

  List region.

  `static final Region`

  `MENU`

  Menu region.

  `static final Region`

  `MENU_BAR`

  MenuBar region.

  `static final Region`

  `MENU_ITEM`

  MenuItem region.

  `static final Region`

  `MENU_ITEM_ACCELERATOR`

  Accelerator region of a MenuItem.

  `static final Region`

  `OPTION_PANE`

  OptionPane region.

  `static final Region`

  `PANEL`

  Panel region.

  `static final Region`

  `PASSWORD_FIELD`

  PasswordField region.

  `static final Region`

  `POPUP_MENU`

  PopupMenu region.

  `static final Region`

  `POPUP_MENU_SEPARATOR`

  PopupMenuSeparator region.

  `static final Region`

  `PROGRESS_BAR`

  ProgressBar region.

  `static final Region`

  `RADIO_BUTTON`

  RadioButton region.

  `static final Region`

  `RADIO_BUTTON_MENU_ITEM`

  RadioButtonMenuItem region.

  `static final Region`

  `ROOT_PANE`

  RootPane region.

  `static final Region`

  `SCROLL_BAR`

  ScrollBar region.

  `static final Region`

  `SCROLL_BAR_THUMB`

  Thumb of the ScrollBar.

  `static final Region`

  `SCROLL_BAR_TRACK`

  Track of the ScrollBar.

  `static final Region`

  `SCROLL_PANE`

  ScrollPane region.

  `static final Region`

  `SEPARATOR`

  Separator region.

  `static final Region`

  `SLIDER`

  Slider region.

  `static final Region`

  `SLIDER_THUMB`

  Thumb of the Slider.

  `static final Region`

  `SLIDER_TRACK`

  Track of the Slider.

  `static final Region`

  `SPINNER`

  Spinner region.

  `static final Region`

  `SPLIT_PANE`

  SplitPane region.

  `static final Region`

  `SPLIT_PANE_DIVIDER`

  Divider of the SplitPane.

  `static final Region`

  `TABBED_PANE`

  TabbedPane region.

  `static final Region`

  `TABBED_PANE_CONTENT`

  Region of a TabbedPane containing the content.

  `static final Region`

  `TABBED_PANE_TAB`

  Region of a TabbedPane for one tab.

  `static final Region`

  `TABBED_PANE_TAB_AREA`

  Region of a TabbedPane containing the tabs.

  `static final Region`

  `TABLE`

  Table region.

  `static final Region`

  `TABLE_HEADER`

  TableHeader region.

  `static final Region`

  `TEXT_AREA`

  TextArea region.

  `static final Region`

  `TEXT_FIELD`

  TextField region.

  `static final Region`

  `TEXT_PANE`

  TextPane region.

  `static final Region`

  `TOGGLE_BUTTON`

  ToggleButton region.

  `static final Region`

  `TOOL_BAR`

  ToolBar region.

  `static final Region`

  `TOOL_BAR_CONTENT`

  Region of the ToolBar containing the content.

  `static final Region`

  `TOOL_BAR_DRAG_WINDOW`

  Region for the Window containing the ToolBar.

  `static final Region`

  `TOOL_BAR_SEPARATOR`

  ToolBar separator region.

  `static final Region`

  `TOOL_TIP`

  ToolTip region.

  `static final Region`

  `TREE`

  Tree region.

  `static final Region`

  `TREE_CELL`

  Region of the Tree for one cell.

  `static final Region`

  `VIEWPORT`

  Viewport region.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Region(String name,
  String ui,
  boolean subregion)`

  Creates a Region with the specified name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Returns the name of the region.

  `boolean`

  `isSubregion()`

  Returns true if the Region is a subregion of a Component, otherwise
  false.

  `String`

  `toString()`

  Returns the name of the Region.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ARROW\_BUTTON

    public static final [Region](Region.md "class in javax.swing.plaf.synth") ARROW\_BUTTON

    ArrowButton's are special types of buttons that also render a
    directional indicator, typically an arrow. ArrowButtons are used by
    composite components, for example ScrollBar's contain ArrowButtons.
    To bind a style to this `Region` use the name
    `ArrowButton`.
  + ### BUTTON

    public static final [Region](Region.md "class in javax.swing.plaf.synth") BUTTON

    Button region. To bind a style to this `Region` use the name
    `Button`.
  + ### CHECK\_BOX

    public static final [Region](Region.md "class in javax.swing.plaf.synth") CHECK\_BOX

    CheckBox region. To bind a style to this `Region` use the name
    `CheckBox`.
  + ### CHECK\_BOX\_MENU\_ITEM

    public static final [Region](Region.md "class in javax.swing.plaf.synth") CHECK\_BOX\_MENU\_ITEM

    CheckBoxMenuItem region. To bind a style to this `Region` use
    the name `CheckBoxMenuItem`.
  + ### COLOR\_CHOOSER

    public static final [Region](Region.md "class in javax.swing.plaf.synth") COLOR\_CHOOSER

    ColorChooser region. To bind a style to this `Region` use
    the name `ColorChooser`.
  + ### COMBO\_BOX

    public static final [Region](Region.md "class in javax.swing.plaf.synth") COMBO\_BOX

    ComboBox region. To bind a style to this `Region` use
    the name `ComboBox`.
  + ### DESKTOP\_PANE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") DESKTOP\_PANE

    DesktopPane region. To bind a style to this `Region` use
    the name `DesktopPane`.
  + ### DESKTOP\_ICON

    public static final [Region](Region.md "class in javax.swing.plaf.synth") DESKTOP\_ICON

    DesktopIcon region. To bind a style to this `Region` use
    the name `DesktopIcon`.
  + ### EDITOR\_PANE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") EDITOR\_PANE

    EditorPane region. To bind a style to this `Region` use
    the name `EditorPane`.
  + ### FILE\_CHOOSER

    public static final [Region](Region.md "class in javax.swing.plaf.synth") FILE\_CHOOSER

    FileChooser region. To bind a style to this `Region` use
    the name `FileChooser`.
  + ### FORMATTED\_TEXT\_FIELD

    public static final [Region](Region.md "class in javax.swing.plaf.synth") FORMATTED\_TEXT\_FIELD

    FormattedTextField region. To bind a style to this `Region` use
    the name `FormattedTextField`.
  + ### INTERNAL\_FRAME

    public static final [Region](Region.md "class in javax.swing.plaf.synth") INTERNAL\_FRAME

    InternalFrame region. To bind a style to this `Region` use
    the name `InternalFrame`.
  + ### INTERNAL\_FRAME\_TITLE\_PANE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") INTERNAL\_FRAME\_TITLE\_PANE

    TitlePane of an InternalFrame. The TitlePane typically
    shows a menu, title, widgets to manipulate the internal frame.
    To bind a style to this `Region` use the name
    `InternalFrameTitlePane`.
  + ### LABEL

    public static final [Region](Region.md "class in javax.swing.plaf.synth") LABEL

    Label region. To bind a style to this `Region` use the name
    `Label`.
  + ### LIST

    public static final [Region](Region.md "class in javax.swing.plaf.synth") LIST

    List region. To bind a style to this `Region` use the name
    `List`.
  + ### MENU

    public static final [Region](Region.md "class in javax.swing.plaf.synth") MENU

    Menu region. To bind a style to this `Region` use the name
    `Menu`.
  + ### MENU\_BAR

    public static final [Region](Region.md "class in javax.swing.plaf.synth") MENU\_BAR

    MenuBar region. To bind a style to this `Region` use the name
    `MenuBar`.
  + ### MENU\_ITEM

    public static final [Region](Region.md "class in javax.swing.plaf.synth") MENU\_ITEM

    MenuItem region. To bind a style to this `Region` use the name
    `MenuItem`.
  + ### MENU\_ITEM\_ACCELERATOR

    public static final [Region](Region.md "class in javax.swing.plaf.synth") MENU\_ITEM\_ACCELERATOR

    Accelerator region of a MenuItem. To bind a style to this
    `Region` use the name `MenuItemAccelerator`.
  + ### OPTION\_PANE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") OPTION\_PANE

    OptionPane region. To bind a style to this `Region` use
    the name `OptionPane`.
  + ### PANEL

    public static final [Region](Region.md "class in javax.swing.plaf.synth") PANEL

    Panel region. To bind a style to this `Region` use the name
    `Panel`.
  + ### PASSWORD\_FIELD

    public static final [Region](Region.md "class in javax.swing.plaf.synth") PASSWORD\_FIELD

    PasswordField region. To bind a style to this `Region` use
    the name `PasswordField`.
  + ### POPUP\_MENU

    public static final [Region](Region.md "class in javax.swing.plaf.synth") POPUP\_MENU

    PopupMenu region. To bind a style to this `Region` use
    the name `PopupMenu`.
  + ### POPUP\_MENU\_SEPARATOR

    public static final [Region](Region.md "class in javax.swing.plaf.synth") POPUP\_MENU\_SEPARATOR

    PopupMenuSeparator region. To bind a style to this `Region`
    use the name `PopupMenuSeparator`.
  + ### PROGRESS\_BAR

    public static final [Region](Region.md "class in javax.swing.plaf.synth") PROGRESS\_BAR

    ProgressBar region. To bind a style to this `Region`
    use the name `ProgressBar`.
  + ### RADIO\_BUTTON

    public static final [Region](Region.md "class in javax.swing.plaf.synth") RADIO\_BUTTON

    RadioButton region. To bind a style to this `Region`
    use the name `RadioButton`.
  + ### RADIO\_BUTTON\_MENU\_ITEM

    public static final [Region](Region.md "class in javax.swing.plaf.synth") RADIO\_BUTTON\_MENU\_ITEM

    RadioButtonMenuItem region. To bind a style to this `Region`
    use the name `RadioButtonMenuItem`.
  + ### ROOT\_PANE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") ROOT\_PANE

    RootPane region. To bind a style to this `Region` use
    the name `RootPane`.
  + ### SCROLL\_BAR

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SCROLL\_BAR

    ScrollBar region. To bind a style to this `Region` use
    the name `ScrollBar`.
  + ### SCROLL\_BAR\_TRACK

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SCROLL\_BAR\_TRACK

    Track of the ScrollBar. To bind a style to this `Region` use
    the name `ScrollBarTrack`.
  + ### SCROLL\_BAR\_THUMB

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SCROLL\_BAR\_THUMB

    Thumb of the ScrollBar. The thumb is the region of the ScrollBar
    that gives a graphical depiction of what percentage of the View is
    currently visible. To bind a style to this `Region` use
    the name `ScrollBarThumb`.
  + ### SCROLL\_PANE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SCROLL\_PANE

    ScrollPane region. To bind a style to this `Region` use
    the name `ScrollPane`.
  + ### SEPARATOR

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SEPARATOR

    Separator region. To bind a style to this `Region` use
    the name `Separator`.
  + ### SLIDER

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SLIDER

    Slider region. To bind a style to this `Region` use
    the name `Slider`.
  + ### SLIDER\_TRACK

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SLIDER\_TRACK

    Track of the Slider. To bind a style to this `Region` use
    the name `SliderTrack`.
  + ### SLIDER\_THUMB

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SLIDER\_THUMB

    Thumb of the Slider. The thumb of the Slider identifies the current
    value. To bind a style to this `Region` use the name
    `SliderThumb`.
  + ### SPINNER

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SPINNER

    Spinner region. To bind a style to this `Region` use the name
    `Spinner`.
  + ### SPLIT\_PANE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SPLIT\_PANE

    SplitPane region. To bind a style to this `Region` use the name
    `SplitPane`.
  + ### SPLIT\_PANE\_DIVIDER

    public static final [Region](Region.md "class in javax.swing.plaf.synth") SPLIT\_PANE\_DIVIDER

    Divider of the SplitPane. To bind a style to this `Region`
    use the name `SplitPaneDivider`.
  + ### TABBED\_PANE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TABBED\_PANE

    TabbedPane region. To bind a style to this `Region` use
    the name `TabbedPane`.
  + ### TABBED\_PANE\_TAB

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TABBED\_PANE\_TAB

    Region of a TabbedPane for one tab. To bind a style to this
    `Region` use the name `TabbedPaneTab`.
  + ### TABBED\_PANE\_TAB\_AREA

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TABBED\_PANE\_TAB\_AREA

    Region of a TabbedPane containing the tabs. To bind a style to this
    `Region` use the name `TabbedPaneTabArea`.
  + ### TABBED\_PANE\_CONTENT

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TABBED\_PANE\_CONTENT

    Region of a TabbedPane containing the content. To bind a style to this
    `Region` use the name `TabbedPaneContent`.
  + ### TABLE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TABLE

    Table region. To bind a style to this `Region` use
    the name `Table`.
  + ### TABLE\_HEADER

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TABLE\_HEADER

    TableHeader region. To bind a style to this `Region` use
    the name `TableHeader`.
  + ### TEXT\_AREA

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TEXT\_AREA

    TextArea region. To bind a style to this `Region` use
    the name `TextArea`.
  + ### TEXT\_FIELD

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TEXT\_FIELD

    TextField region. To bind a style to this `Region` use
    the name `TextField`.
  + ### TEXT\_PANE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TEXT\_PANE

    TextPane region. To bind a style to this `Region` use
    the name `TextPane`.
  + ### TOGGLE\_BUTTON

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TOGGLE\_BUTTON

    ToggleButton region. To bind a style to this `Region` use
    the name `ToggleButton`.
  + ### TOOL\_BAR

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TOOL\_BAR

    ToolBar region. To bind a style to this `Region` use
    the name `ToolBar`.
  + ### TOOL\_BAR\_CONTENT

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TOOL\_BAR\_CONTENT

    Region of the ToolBar containing the content. To bind a style to this
    `Region` use the name `ToolBarContent`.
  + ### TOOL\_BAR\_DRAG\_WINDOW

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TOOL\_BAR\_DRAG\_WINDOW

    Region for the Window containing the ToolBar. To bind a style to this
    `Region` use the name `ToolBarDragWindow`.
  + ### TOOL\_TIP

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TOOL\_TIP

    ToolTip region. To bind a style to this `Region` use
    the name `ToolTip`.
  + ### TOOL\_BAR\_SEPARATOR

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TOOL\_BAR\_SEPARATOR

    ToolBar separator region. To bind a style to this `Region` use
    the name `ToolBarSeparator`.
  + ### TREE

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TREE

    Tree region. To bind a style to this `Region` use the name
    `Tree`.
  + ### TREE\_CELL

    public static final [Region](Region.md "class in javax.swing.plaf.synth") TREE\_CELL

    Region of the Tree for one cell. To bind a style to this
    `Region` use the name `TreeCell`.
  + ### VIEWPORT

    public static final [Region](Region.md "class in javax.swing.plaf.synth") VIEWPORT

    Viewport region. To bind a style to this `Region` use
    the name `Viewport`.
* ## Constructor Details

  + ### Region

    protected Region([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") ui,
    boolean subregion)

    Creates a Region with the specified name. This should only be
    used if you are creating your own `JComponent` subclass
    with a custom `ComponentUI` class.

    Parameters:
    :   `name` - Name of the region
    :   `ui` - String that will be returned from
        `component.getUIClassID`. This will be null
        if this is a subregion.
    :   `subregion` - Whether or not this is a subregion.
* ## Method Details

  + ### isSubregion

    public boolean isSubregion()

    Returns true if the Region is a subregion of a Component, otherwise
    false. For example, `Region.BUTTON` corresponds do a
    `Component` so that `Region.BUTTON.isSubregion()`
    returns false.

    Returns:
    :   true if the Region is a subregion of a Component.
  + ### getName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of the region.

    Returns:
    :   name of the Region.
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the name of the Region.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   name of the Region.