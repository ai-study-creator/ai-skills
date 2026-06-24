Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalIconFactory.FolderIcon16

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.metal.MetalIconFactory.FolderIcon16

All Implemented Interfaces:
:   `Serializable`, `Icon`

Direct Known Subclasses:
:   `MetalIconFactory.TreeFolderIcon`

Enclosing class:
:   `MetalIconFactory`

---

public static class MetalIconFactory.FolderIcon16
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Icon](../../Icon.md "interface in javax.swing"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

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

  `FolderIcon16()`

  Constructs a `FolderIcon16`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getAdditionalHeight()`

  Returns an additional height of the icon.

  `int`

  `getIconHeight()`

  Returns the icon's height.

  `int`

  `getIconWidth()`

  Returns the icon's width.

  `int`

  `getShift()`

  Returns a shift of the icon.

  `void`

  `paintIcon(Component c,
  Graphics g,
  int x,
  int y)`

  Draw the icon at the specified location.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FolderIcon16

    public FolderIcon16()

    Constructs a `FolderIcon16`.
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
  + ### getShift

    public int getShift()

    Returns a shift of the icon.

    Returns:
    :   a shift of the icon
  + ### getAdditionalHeight

    public int getAdditionalHeight()

    Returns an additional height of the icon.

    Returns:
    :   an additional height of the icon
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