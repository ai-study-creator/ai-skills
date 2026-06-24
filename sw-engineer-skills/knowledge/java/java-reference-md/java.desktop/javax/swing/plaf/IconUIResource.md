Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class IconUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.IconUIResource

All Implemented Interfaces:
:   `Serializable`, `Icon`, `UIResource`

---

public class IconUIResource
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Icon](../Icon.md "interface in javax.swing"), [UIResource](UIResource.md "interface in javax.swing.plaf"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

An Icon wrapper class which implements UIResource. UI
classes which set icon properties should use this class
to wrap any icons specified as defaults.
This class delegates all method invocations to the
Icon "delegate" object specified at construction.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`UIResource`](UIResource.md "interface in javax.swing.plaf")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IconUIResource(Icon delegate)`

  Creates a UIResource icon object which wraps
  an existing Icon instance.
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

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### IconUIResource

    public IconUIResource([Icon](../Icon.md "interface in javax.swing") delegate)

    Creates a UIResource icon object which wraps
    an existing Icon instance.

    Parameters:
    :   `delegate` - the icon being wrapped
* ## Method Details

  + ### paintIcon

    public void paintIcon([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
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