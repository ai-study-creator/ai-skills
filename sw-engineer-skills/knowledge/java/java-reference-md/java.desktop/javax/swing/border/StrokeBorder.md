Module [java.desktop](../../../module-summary.md)

Package [javax.swing.border](package-summary.md)

# Class StrokeBorder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](AbstractBorder.md "class in javax.swing.border")

javax.swing.border.StrokeBorder

All Implemented Interfaces:
:   `Serializable`, `Border`

---

public class StrokeBorder
extends [AbstractBorder](AbstractBorder.md "class in javax.swing.border")

A class which implements a border of an arbitrary stroke.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI
between applications running the same version of Swing.
As of 1.4, support for long term storage of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.7

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StrokeBorder(BasicStroke stroke)`

  Creates a border of the specified `stroke`.

  `StrokeBorder(BasicStroke stroke,
  Paint paint)`

  Creates a border of the specified `stroke` and `paint`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Insets`

  `getBorderInsets(Component c,
  Insets insets)`

  Reinitializes the `insets` parameter
  with this border's current insets.

  `Paint`

  `getPaint()`

  Returns the [`Paint`](../../../java/awt/Paint.md "interface in java.awt") object used to generate a color
  during the border rendering.

  `BasicStroke`

  `getStroke()`

  Returns the [`BasicStroke`](../../../java/awt/BasicStroke.md "class in java.awt") object used to stroke a shape
  during the border rendering.

  `void`

  `paintBorder(Component c,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  Paints the border for the specified component
  with the specified position and size.

  ### Methods inherited from class javax.swing.border.[AbstractBorder](AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle, isBorderOpaque`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### StrokeBorder

    public StrokeBorder([BasicStroke](../../../java/awt/BasicStroke.md "class in java.awt") stroke)

    Creates a border of the specified `stroke`.
    The component's foreground color will be used to render the border.

    Parameters:
    :   `stroke` - the [`BasicStroke`](../../../java/awt/BasicStroke.md "class in java.awt") object used to stroke a shape

    Throws:
    :   `NullPointerException` - if the specified `stroke` is `null`
  + ### StrokeBorder

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"stroke","paint"})
    public StrokeBorder([BasicStroke](../../../java/awt/BasicStroke.md "class in java.awt") stroke,
    [Paint](../../../java/awt/Paint.md "interface in java.awt") paint)

    Creates a border of the specified `stroke` and `paint`.
    If the specified `paint` is `null`,
    the component's foreground color will be used to render the border.

    Parameters:
    :   `stroke` - the [`BasicStroke`](../../../java/awt/BasicStroke.md "class in java.awt") object used to stroke a shape
    :   `paint` - the [`Paint`](../../../java/awt/Paint.md "interface in java.awt") object used to generate a color

    Throws:
    :   `NullPointerException` - if the specified `stroke` is `null`
* ## Method Details

  + ### paintBorder

    public void paintBorder([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Paints the border for the specified component
    with the specified position and size.
    If the border was not specified with a [`Paint`](../../../java/awt/Paint.md "interface in java.awt") object,
    the component's foreground color will be used to render the border.
    If the component's foreground color is not available,
    the default color of the [`Graphics`](../../../java/awt/Graphics.md "class in java.awt") object will be used.

    Specified by:
    :   `paintBorder` in interface `Border`

    Overrides:
    :   `paintBorder` in class `AbstractBorder`

    Parameters:
    :   `c` - the component for which this border is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the painted border
    :   `y` - the y position of the painted border
    :   `width` - the width of the painted border
    :   `height` - the height of the painted border

    Throws:
    :   `NullPointerException` - if the specified `g` is `null`
  + ### getBorderInsets

    public [Insets](../../../java/awt/Insets.md "class in java.awt") getBorderInsets([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Insets](../../../java/awt/Insets.md "class in java.awt") insets)

    Reinitializes the `insets` parameter
    with this border's current insets.
    Every inset is the smallest (closest to negative infinity) integer value
    that is greater than or equal to the line width of the stroke
    that is used to paint the border.

    Overrides:
    :   `getBorderInsets` in class `AbstractBorder`

    Parameters:
    :   `c` - the component for which this border insets value applies
    :   `insets` - the `Insets` object to be reinitialized

    Returns:
    :   the reinitialized `insets` parameter

    Throws:
    :   `NullPointerException` - if the specified `insets` is `null`

    See Also:
    :   - [`Math.ceil(double)`](../../../../java.base/java/lang/Math.md#ceil(double))
  + ### getStroke

    public [BasicStroke](../../../java/awt/BasicStroke.md "class in java.awt") getStroke()

    Returns the [`BasicStroke`](../../../java/awt/BasicStroke.md "class in java.awt") object used to stroke a shape
    during the border rendering.

    Returns:
    :   the [`BasicStroke`](../../../java/awt/BasicStroke.md "class in java.awt") object
  + ### getPaint

    public [Paint](../../../java/awt/Paint.md "interface in java.awt") getPaint()

    Returns the [`Paint`](../../../java/awt/Paint.md "interface in java.awt") object used to generate a color
    during the border rendering.

    Returns:
    :   the [`Paint`](../../../java/awt/Paint.md "interface in java.awt") object or `null`
        if the `paint` parameter is not set