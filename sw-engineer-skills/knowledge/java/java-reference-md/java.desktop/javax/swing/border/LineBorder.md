Module [java.desktop](../../../module-summary.md)

Package [javax.swing.border](package-summary.md)

# Class LineBorder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](AbstractBorder.md "class in javax.swing.border")

javax.swing.border.LineBorder

All Implemented Interfaces:
:   `Serializable`, `Border`

Direct Known Subclasses:
:   `BorderUIResource.LineBorderUIResource`

---

public class LineBorder
extends [AbstractBorder](AbstractBorder.md "class in javax.swing.border")

A class which implements a line border of arbitrary thickness
and of a single color.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Color`

  `lineColor`

  Color of the border.

  `protected boolean`

  `roundedCorners`

  Whether or not the border has rounded corners.

  `protected int`

  `thickness`

  Thickness of the border.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LineBorder(Color color)`

  Creates a line border with the specified color and a
  thickness = 1.

  `LineBorder(Color color,
  int thickness)`

  Creates a line border with the specified color and thickness.

  `LineBorder(Color color,
  int thickness,
  boolean roundedCorners)`

  Creates a line border with the specified color, thickness,
  and corner shape.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Border`

  `createBlackLineBorder()`

  Convenience method for getting the Color.black LineBorder of thickness 1.

  `static Border`

  `createGrayLineBorder()`

  Convenience method for getting the Color.gray LineBorder of thickness 1.

  `Insets`

  `getBorderInsets(Component c,
  Insets insets)`

  Reinitialize the insets parameter with this Border's current Insets.

  `Color`

  `getLineColor()`

  Returns the color of the border.

  `boolean`

  `getRoundedCorners()`

  Returns whether this border will be drawn with rounded corners.

  `int`

  `getThickness()`

  Returns the thickness of the border.

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

  Paints the border for the specified component with the
  specified position and size.

  ### Methods inherited from class javax.swing.border.[AbstractBorder](AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### thickness

    protected int thickness

    Thickness of the border.
  + ### lineColor

    protected [Color](../../../java/awt/Color.md "class in java.awt") lineColor

    Color of the border.
  + ### roundedCorners

    protected boolean roundedCorners

    Whether or not the border has rounded corners.
* ## Constructor Details

  + ### LineBorder

    public LineBorder([Color](../../../java/awt/Color.md "class in java.awt") color)

    Creates a line border with the specified color and a
    thickness = 1.

    Parameters:
    :   `color` - the color for the border
  + ### LineBorder

    public LineBorder([Color](../../../java/awt/Color.md "class in java.awt") color,
    int thickness)

    Creates a line border with the specified color and thickness.

    Parameters:
    :   `color` - the color of the border
    :   `thickness` - the thickness of the border
  + ### LineBorder

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"lineColor","thickness","roundedCorners"})
    public LineBorder([Color](../../../java/awt/Color.md "class in java.awt") color,
    int thickness,
    boolean roundedCorners)

    Creates a line border with the specified color, thickness,
    and corner shape.

    Parameters:
    :   `color` - the color of the border
    :   `thickness` - the thickness of the border
    :   `roundedCorners` - whether or not border corners should be round

    Since:
    :   1.3
* ## Method Details

  + ### createBlackLineBorder

    public static [Border](Border.md "interface in javax.swing.border") createBlackLineBorder()

    Convenience method for getting the Color.black LineBorder of thickness 1.

    Returns:
    :   a `LineBorder` with `Color.black` and thickness of 1
  + ### createGrayLineBorder

    public static [Border](Border.md "interface in javax.swing.border") createGrayLineBorder()

    Convenience method for getting the Color.gray LineBorder of thickness 1.

    Returns:
    :   a `LineBorder` with `Color.gray` and thickness of 1
  + ### paintBorder

    public void paintBorder([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Paints the border for the specified component with the
    specified position and size.

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
  + ### getBorderInsets

    public [Insets](../../../java/awt/Insets.md "class in java.awt") getBorderInsets([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Insets](../../../java/awt/Insets.md "class in java.awt") insets)

    Reinitialize the insets parameter with this Border's current Insets.

    Overrides:
    :   `getBorderInsets` in class `AbstractBorder`

    Parameters:
    :   `c` - the component for which this border insets value applies
    :   `insets` - the object to be reinitialized

    Returns:
    :   the `insets` object

    Throws:
    :   `NullPointerException` - if the specified `insets`
        is `null`
  + ### getLineColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getLineColor()

    Returns the color of the border.

    Returns:
    :   a `Color` object representing the color of this object
  + ### getThickness

    public int getThickness()

    Returns the thickness of the border.

    Returns:
    :   the thickness of this border
  + ### getRoundedCorners

    public boolean getRoundedCorners()

    Returns whether this border will be drawn with rounded corners.

    Returns:
    :   `true` if this border should have rounded corners

    Since:
    :   1.3
  + ### isBorderOpaque

    public boolean isBorderOpaque()

    Returns whether or not the border is opaque.

    Specified by:
    :   `isBorderOpaque` in interface `Border`

    Overrides:
    :   `isBorderOpaque` in class `AbstractBorder`

    Returns:
    :   `true` if the border is opaque, `false` otherwise