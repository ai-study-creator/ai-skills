Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalIconFactory.PaletteCloseIcon

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.metal.MetalIconFactory.PaletteCloseIcon

All Implemented Interfaces:
:   `Serializable`, `Icon`, `UIResource`

Enclosing class:
:   `MetalIconFactory`

---

public static class MetalIconFactory.PaletteCloseIcon
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Icon](../../Icon.md "interface in javax.swing"), [UIResource](../UIResource.md "interface in javax.swing.plaf"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

Defines an icon for Palette close

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PaletteCloseIcon()`

  Constructs a `PaletteCloseIcon`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

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

  + ### PaletteCloseIcon

    public PaletteCloseIcon()

    Constructs a `PaletteCloseIcon`.
* ## Method Details

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