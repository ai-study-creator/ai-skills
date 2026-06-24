Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class BorderUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.BorderUIResource

All Implemented Interfaces:
:   `Serializable`, `Border`, `UIResource`

---

public class BorderUIResource
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Border](../border/Border.md "interface in javax.swing.border"), [UIResource](UIResource.md "interface in javax.swing.plaf"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A Border wrapper class which implements UIResource. UI
classes which set border properties should use this class
to wrap any borders specified as defaults.
This class delegates all method invocations to the
Border "delegate" object specified at construction.

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

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `BorderUIResource.BevelBorderUIResource`

  A bevel border UI resource.

  `static class`

  `BorderUIResource.CompoundBorderUIResource`

  A compound border UI resource.

  `static class`

  `BorderUIResource.EmptyBorderUIResource`

  An empty border UI resource.

  `static class`

  `BorderUIResource.EtchedBorderUIResource`

  An etched border UI resource.

  `static class`

  `BorderUIResource.LineBorderUIResource`

  A line border UI resource.

  `static class`

  `BorderUIResource.MatteBorderUIResource`

  A matte border UI resource.

  `static class`

  `BorderUIResource.TitledBorderUIResource`

  A titled border UI resource.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BorderUIResource(Border delegate)`

  Creates a UIResource border object which wraps
  an existing Border instance.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Border`

  `getBlackLineBorderUIResource()`

  Returns a black line border UI resource.

  `Insets`

  `getBorderInsets(Component c)`

  Returns the insets of the border.

  `static Border`

  `getEtchedBorderUIResource()`

  Returns a etched border UI resource.

  `static Border`

  `getLoweredBevelBorderUIResource()`

  Returns a lowered bevel border UI resource.

  `static Border`

  `getRaisedBevelBorderUIResource()`

  Returns a raised bevel border UI resource.

  `boolean`

  `isBorderOpaque()`

  Returns whether or not the border is opaque.

  `void`

  `paintBorder(Component c,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  Paints the border for the specified component with the specified
  position and size.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BorderUIResource

    public BorderUIResource([Border](../border/Border.md "interface in javax.swing.border") delegate)

    Creates a UIResource border object which wraps
    an existing Border instance.

    Parameters:
    :   `delegate` - the border being wrapped
* ## Method Details

  + ### getEtchedBorderUIResource

    public static [Border](../border/Border.md "interface in javax.swing.border") getEtchedBorderUIResource()

    Returns a etched border UI resource.

    Returns:
    :   a etched border UI resource
  + ### getLoweredBevelBorderUIResource

    public static [Border](../border/Border.md "interface in javax.swing.border") getLoweredBevelBorderUIResource()

    Returns a lowered bevel border UI resource.

    Returns:
    :   a lowered bevel border UI resource
  + ### getRaisedBevelBorderUIResource

    public static [Border](../border/Border.md "interface in javax.swing.border") getRaisedBevelBorderUIResource()

    Returns a raised bevel border UI resource.

    Returns:
    :   a raised bevel border UI resource
  + ### getBlackLineBorderUIResource

    public static [Border](../border/Border.md "interface in javax.swing.border") getBlackLineBorderUIResource()

    Returns a black line border UI resource.

    Returns:
    :   a black line border UI resource
  + ### paintBorder

    public void paintBorder([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Description copied from interface: `Border`

    Paints the border for the specified component with the specified
    position and size.

    Specified by:
    :   `paintBorder` in interface `Border`

    Parameters:
    :   `c` - the component for which this border is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the painted border
    :   `y` - the y position of the painted border
    :   `width` - the width of the painted border
    :   `height` - the height of the painted border
  + ### getBorderInsets

    public [Insets](../../../java/awt/Insets.md "class in java.awt") getBorderInsets([Component](../../../java/awt/Component.md "class in java.awt") c)

    Description copied from interface: `Border`

    Returns the insets of the border.

    Specified by:
    :   `getBorderInsets` in interface `Border`

    Parameters:
    :   `c` - the component for which this border insets value applies

    Returns:
    :   an `Insets` object containing the insets from top, left,
        bottom and right of this `Border`
  + ### isBorderOpaque

    public boolean isBorderOpaque()

    Description copied from interface: `Border`

    Returns whether or not the border is opaque. If the border
    is opaque, it is responsible for filling in it's own
    background when painting.

    Specified by:
    :   `isBorderOpaque` in interface `Border`

    Returns:
    :   true if this `Border` is opaque