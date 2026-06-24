Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicBorders

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicBorders

---

public class BasicBorders
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Factory object that can vend Borders appropriate for the basic L & F.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `BasicBorders.ButtonBorder`

  Draws a border around a button.

  `static class`

  `BasicBorders.FieldBorder`

  Draws the border around a field.

  `static class`

  `BasicBorders.MarginBorder`

  Draws the border around components which support margins.

  `static class`

  `BasicBorders.MenuBarBorder`

  Draws the border around a menu bar.

  `static class`

  `BasicBorders.RadioButtonBorder`

  Draws the border around a radio button.

  `static class`

  `BasicBorders.RolloverButtonBorder`

  Special thin border for rollover toolbar buttons.

  `static class`

  `BasicBorders.SplitPaneBorder`

  Draws the border around the splitpane.

  `static class`

  `BasicBorders.ToggleButtonBorder`

  Draws the border around a toggle button.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicBorders()`

  Constructs a `BasicBorders`.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Border`

  `getButtonBorder()`

  Returns a border instance for a `JButton`.

  `static Border`

  `getInternalFrameBorder()`

  Returns a border instance for a `JInternalFrame`.

  `static Border`

  `getMenuBarBorder()`

  Returns a border instance for a `JMenuBar`.

  `static Border`

  `getProgressBarBorder()`

  Returns a border instance for a `JProgressBar`.

  `static Border`

  `getRadioButtonBorder()`

  Returns a border instance for a `JRadioButton`.

  `static Border`

  `getSplitPaneBorder()`

  Returns a border instance for a `JSplitPane`.

  `static Border`

  `getSplitPaneDividerBorder()`

  Returns a border instance for a `JSplitPane` divider.

  `static Border`

  `getTextFieldBorder()`

  Returns a border instance for a `JTextField`.

  `static Border`

  `getToggleButtonBorder()`

  Returns a border instance for a `JToggleButton`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicBorders

    public BasicBorders()

    Constructs a `BasicBorders`.
* ## Method Details

  + ### getButtonBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getButtonBorder()

    Returns a border instance for a `JButton`.

    Returns:
    :   a border instance for a `JButton`
  + ### getRadioButtonBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getRadioButtonBorder()

    Returns a border instance for a `JRadioButton`.

    Returns:
    :   a border instance for a `JRadioButton`
  + ### getToggleButtonBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getToggleButtonBorder()

    Returns a border instance for a `JToggleButton`.

    Returns:
    :   a border instance for a `JToggleButton`
  + ### getMenuBarBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getMenuBarBorder()

    Returns a border instance for a `JMenuBar`.

    Returns:
    :   a border instance for a `JMenuBar`
  + ### getSplitPaneBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getSplitPaneBorder()

    Returns a border instance for a `JSplitPane`.

    Returns:
    :   a border instance for a `JSplitPane`
  + ### getSplitPaneDividerBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getSplitPaneDividerBorder()

    Returns a border instance for a `JSplitPane` divider.

    Returns:
    :   a border instance for a `JSplitPane` divider

    Since:
    :   1.3
  + ### getTextFieldBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getTextFieldBorder()

    Returns a border instance for a `JTextField`.

    Returns:
    :   a border instance for a `JTextField`
  + ### getProgressBarBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getProgressBarBorder()

    Returns a border instance for a `JProgressBar`.

    Returns:
    :   a border instance for a `JProgressBar`
  + ### getInternalFrameBorder

    public static [Border](../../border/Border.md "interface in javax.swing.border") getInternalFrameBorder()

    Returns a border instance for a `JInternalFrame`.

    Returns:
    :   a border instance for a `JInternalFrame`