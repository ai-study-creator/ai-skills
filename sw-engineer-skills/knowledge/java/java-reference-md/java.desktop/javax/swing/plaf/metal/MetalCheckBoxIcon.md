Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalCheckBoxIcon

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.metal.MetalCheckBoxIcon

All Implemented Interfaces:
:   `Serializable`, `Icon`, `UIResource`

---

public class MetalCheckBoxIcon
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Icon](../../Icon.md "interface in javax.swing"), [UIResource](../UIResource.md "interface in javax.swing.plaf"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

CheckboxIcon implementation for OrganicCheckBoxUI

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalCheckBoxIcon()`

  Constructs a `MetalCheckBoxIcon`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `drawCheck(Component c,
  Graphics g,
  int x,
  int y)`

  Paints `MetalCheckBoxIcon`.

  `protected int`

  `getControlSize()`

  Returns the size of the control.

  `int`

  `getIconHeight()`

  Returns the icon's height.

  `int`

  `getIconWidth()`

  Returns the icon's width.

  `void`

  `paintIcon(Component c,
  Graphics g,
  int x,
  int y)`

  Draw the icon at the specified location.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalCheckBoxIcon

    public MetalCheckBoxIcon()

    Constructs a `MetalCheckBoxIcon`.
* ## Method Details

  + ### getControlSize

    protected int getControlSize()

    Returns the size of the control.

    Returns:
    :   the size of the control
  + ### paintIcon

    public void paintIcon([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y)

    Description copied from interface: `Icon`

    Draw the icon at the specified location. Icon implementations
    may use the Component argument to get properties useful for
    painting, e.g. the foreground or background color.

    Specified by:
    :   `paintIcon` in interface `Icon`

    Parameters:
    :   `c` - a `Component` to get properties useful for painting
    :   `g` - the graphics context
    :   `x` - the X coordinate of the icon's top-left corner
    :   `y` - the Y coordinate of the icon's top-left corner
  + ### drawCheck

    protected void drawCheck([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y)

    Paints `MetalCheckBoxIcon`.

    Parameters:
    :   `c` - a component
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
  + ### getIconWidth

    public int getIconWidth()

    Description copied from interface: `Icon`

    Returns the icon's width.

    Specified by:
    :   `getIconWidth` in interface `Icon`

    Returns:
    :   an int specifying the fixed width of the icon.
  + ### getIconHeight

    public int getIconHeight()

    Description copied from interface: `Icon`

    Returns the icon's height.

    Specified by:
    :   `getIconHeight` in interface `Icon`

    Returns:
    :   an int specifying the fixed height of the icon.