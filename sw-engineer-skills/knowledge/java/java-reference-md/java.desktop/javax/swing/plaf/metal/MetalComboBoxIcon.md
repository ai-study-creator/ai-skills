Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalComboBoxIcon

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.metal.MetalComboBoxIcon

All Implemented Interfaces:
:   `Serializable`, `Icon`

---

public class MetalComboBoxIcon
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Icon](../../Icon.md "interface in javax.swing"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

This utility class draws the horizontal bars which indicate a MetalComboBox

See Also:
:   * [`MetalComboBoxUI`](MetalComboBoxUI.md "class in javax.swing.plaf.metal")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalComboBoxIcon()`

  Constructs a `MetalComboBoxIcon`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getIconHeight()`

  Created a stub to satisfy the interface.

  `int`

  `getIconWidth()`

  Created a stub to satisfy the interface.

  `void`

  `paintIcon(Component c,
  Graphics g,
  int x,
  int y)`

  Paints the horizontal bars for the

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalComboBoxIcon

    public MetalComboBoxIcon()

    Constructs a `MetalComboBoxIcon`.
* ## Method Details

  + ### paintIcon

    public void paintIcon([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y)

    Paints the horizontal bars for the

    Specified by:
    :   `paintIcon` in interface `Icon`

    Parameters:
    :   `c` - a `Component` to get properties useful for painting
    :   `g` - the graphics context
    :   `x` - the X coordinate of the icon's top-left corner
    :   `y` - the Y coordinate of the icon's top-left corner
  + ### getIconWidth

    public int getIconWidth()

    Created a stub to satisfy the interface.

    Specified by:
    :   `getIconWidth` in interface `Icon`

    Returns:
    :   an int specifying the fixed width of the icon.
  + ### getIconHeight

    public int getIconHeight()

    Created a stub to satisfy the interface.

    Specified by:
    :   `getIconHeight` in interface `Icon`

    Returns:
    :   an int specifying the fixed height of the icon.