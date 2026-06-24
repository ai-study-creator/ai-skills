Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalBorders

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.metal.MetalBorders

---

public class MetalBorders
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Factory object that can vend Borders appropriate for the metal L & F.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `MetalBorders.ButtonBorder`

  The class represents the border of a `JButton`.

  `static class`

  `MetalBorders.Flush3DBorder`

  The class represents the 3D border.

  `static class`

  `MetalBorders.InternalFrameBorder`

  The class represents the border of a `JInternalFrame`.

  `static class`

  `MetalBorders.MenuBarBorder`

  The class represents the border of a `JMenuBar`.

  `static class`

  `MetalBorders.MenuItemBorder`

  The class represents the border of a `JMenuItem`.

  `static class`

  `MetalBorders.OptionDialogBorder`

  The class represents the border of an option dialog.

  `static class`

  `MetalBorders.PaletteBorder`

  Border for a Palette.

  `static class`

  `MetalBorders.PopupMenuBorder`

  The class represents the border of a `JPopupMenu`.

  `static class`

  `MetalBorders.RolloverButtonBorder`

  The class represents the border of a rollover `Button`.

  `static class`

  `MetalBorders.ScrollPaneBorder`

  The class represents the border of a `JScrollPane`.

  `static class`

  `MetalBorders.TableHeaderBorder`

  Border for a Table Header

  `static class`

  `MetalBorders.TextFieldBorder`

  Border for a `JTextField`.

  `static class`

  `MetalBorders.ToggleButtonBorder`

  Border for a `JToggleButton`.

  `static class`

  `MetalBorders.ToolBarBorder`

  The class represents the border of a `JToolBar`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalBorders()`

  Constructs a `MetalBorders`.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Border`

  `getButtonBorder()`

  Returns a border instance for a `JButton`.

  `static Border`

  `getDesktopIconBorder()`

  Returns a border instance for a Desktop Icon.

  `static Border`

  `getTextBorder()`

  Returns a border instance for a text component.

  `static Border`

  `getTextFieldBorder()`

  Returns a border instance for a `JTextField`.

  `static Border`

  `getToggleButtonBorder()`

  Returns a border instance for a `JToggleButton`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalBorders

    public MetalBorders()

    Constructs a `MetalBorders`.
* ## Method Details

  + ### getButtonBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getButtonBorder()

    Returns a border instance for a `JButton`.

    Returns:
    :   a border instance for a `JButton`

    Since:
    :   1.3
  + ### getTextBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getTextBorder()

    Returns a border instance for a text component.

    Returns:
    :   a border instance for a text component

    Since:
    :   1.3
  + ### getTextFieldBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getTextFieldBorder()

    Returns a border instance for a `JTextField`.

    Returns:
    :   a border instance for a `JTextField`

    Since:
    :   1.3
  + ### getToggleButtonBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getToggleButtonBorder()

    Returns a border instance for a `JToggleButton`.

    Returns:
    :   a border instance for a `JToggleButton`

    Since:
    :   1.3
  + ### getDesktopIconBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getDesktopIconBorder()

    Returns a border instance for a Desktop Icon.

    Returns:
    :   a border instance for a Desktop Icon

    Since:
    :   1.3