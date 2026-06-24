Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class GradientPaint

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.GradientPaint

All Implemented Interfaces:
:   `Paint`, `Transparency`

---

public class GradientPaint
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Paint](Paint.md "interface in java.awt")

The `GradientPaint` class provides a way to fill
a [`Shape`](Shape.md "interface in java.awt") with a linear color gradient pattern.
If [`Point`](Point.md "class in java.awt") P1 with [`Color`](Color.md "class in java.awt") C1 and `Point` P2 with
`Color` C2 are specified in user space, the
`Color` on the P1, P2 connecting line is proportionally
changed from C1 to C2. Any point P not on the extended P1, P2
connecting line has the color of the point P' that is the perpendicular
projection of P on the extended P1, P2 connecting line.
Points on the extended line outside of the P1, P2 segment can be colored
in one of two ways.

* If the gradient is cyclic then the points on the extended P1, P2
  connecting line cycle back and forth between the colors C1 and C2.* If the gradient is acyclic then points on the P1 side of the segment
    have the constant `Color` C1 while points on the P2 side
    have the constant `Color` C2.

See Also:
:   * [`Paint`](Paint.md "interface in java.awt")
    * [`Graphics2D.setPaint(java.awt.Paint)`](Graphics2D.md#setPaint(java.awt.Paint))

* ## Field Summary

  ### Fields inherited from interface java.awt.[Transparency](Transparency.md "interface in java.awt")

  `BITMASK, OPAQUE, TRANSLUCENT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GradientPaint(float x1,
  float y1,
  Color color1,
  float x2,
  float y2,
  Color color2)`

  Constructs a simple acyclic `GradientPaint` object.

  `GradientPaint(float x1,
  float y1,
  Color color1,
  float x2,
  float y2,
  Color color2,
  boolean cyclic)`

  Constructs either a cyclic or acyclic `GradientPaint`
  object depending on the `boolean` parameter.

  `GradientPaint(Point2D pt1,
  Color color1,
  Point2D pt2,
  Color color2)`

  Constructs a simple acyclic `GradientPaint` object.

  `GradientPaint(Point2D pt1,
  Color color1,
  Point2D pt2,
  Color color2,
  boolean cyclic)`

  Constructs either a cyclic or acyclic `GradientPaint`
  object depending on the `boolean` parameter.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `PaintContext`

  `createContext(ColorModel cm,
  Rectangle deviceBounds,
  Rectangle2D userBounds,
  AffineTransform xform,
  RenderingHints hints)`

  Creates and returns a [`PaintContext`](PaintContext.md "interface in java.awt") used to
  generate a linear color gradient pattern.

  `Color`

  `getColor1()`

  Returns the color C1 anchored by the point P1.

  `Color`

  `getColor2()`

  Returns the color C2 anchored by the point P2.

  `Point2D`

  `getPoint1()`

  Returns a copy of the point P1 that anchors the first color.

  `Point2D`

  `getPoint2()`

  Returns a copy of the point P2 which anchors the second color.

  `int`

  `getTransparency()`

  Returns the transparency mode for this `GradientPaint`.

  `boolean`

  `isCyclic()`

  Returns `true` if the gradient cycles repeatedly
  between the two colors C1 and C2.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### GradientPaint

    public GradientPaint(float x1,
    float y1,
    [Color](Color.md "class in java.awt") color1,
    float x2,
    float y2,
    [Color](Color.md "class in java.awt") color2)

    Constructs a simple acyclic `GradientPaint` object.

    Parameters:
    :   `x1` - x coordinate of the first specified
        `Point` in user space
    :   `y1` - y coordinate of the first specified
        `Point` in user space
    :   `color1` - `Color` at the first specified
        `Point`
    :   `x2` - x coordinate of the second specified
        `Point` in user space
    :   `y2` - y coordinate of the second specified
        `Point` in user space
    :   `color2` - `Color` at the second specified
        `Point`

    Throws:
    :   `NullPointerException` - if either one of colors is null
  + ### GradientPaint

    public GradientPaint([Point2D](geom/Point2D.md "class in java.awt.geom") pt1,
    [Color](Color.md "class in java.awt") color1,
    [Point2D](geom/Point2D.md "class in java.awt.geom") pt2,
    [Color](Color.md "class in java.awt") color2)

    Constructs a simple acyclic `GradientPaint` object.

    Parameters:
    :   `pt1` - the first specified `Point` in user space
    :   `color1` - `Color` at the first specified
        `Point`
    :   `pt2` - the second specified `Point` in user space
    :   `color2` - `Color` at the second specified
        `Point`

    Throws:
    :   `NullPointerException` - if either one of colors or points
        is null
  + ### GradientPaint

    public GradientPaint(float x1,
    float y1,
    [Color](Color.md "class in java.awt") color1,
    float x2,
    float y2,
    [Color](Color.md "class in java.awt") color2,
    boolean cyclic)

    Constructs either a cyclic or acyclic `GradientPaint`
    object depending on the `boolean` parameter.

    Parameters:
    :   `x1` - x coordinate of the first specified
        `Point` in user space
    :   `y1` - y coordinate of the first specified
        `Point` in user space
    :   `color1` - `Color` at the first specified
        `Point`
    :   `x2` - x coordinate of the second specified
        `Point` in user space
    :   `y2` - y coordinate of the second specified
        `Point` in user space
    :   `color2` - `Color` at the second specified
        `Point`
    :   `cyclic` - `true` if the gradient pattern should cycle
        repeatedly between the two colors; `false` otherwise
  + ### GradientPaint

    [@ConstructorProperties](../beans/ConstructorProperties.md "annotation interface in java.beans")({"point1","color1","point2","color2","cyclic"})
    public GradientPaint([Point2D](geom/Point2D.md "class in java.awt.geom") pt1,
    [Color](Color.md "class in java.awt") color1,
    [Point2D](geom/Point2D.md "class in java.awt.geom") pt2,
    [Color](Color.md "class in java.awt") color2,
    boolean cyclic)

    Constructs either a cyclic or acyclic `GradientPaint`
    object depending on the `boolean` parameter.

    Parameters:
    :   `pt1` - the first specified `Point`
        in user space
    :   `color1` - `Color` at the first specified
        `Point`
    :   `pt2` - the second specified `Point`
        in user space
    :   `color2` - `Color` at the second specified
        `Point`
    :   `cyclic` - `true` if the gradient pattern should cycle
        repeatedly between the two colors; `false` otherwise

    Throws:
    :   `NullPointerException` - if either one of colors or points
        is null
* ## Method Details

  + ### getPoint1

    public [Point2D](geom/Point2D.md "class in java.awt.geom") getPoint1()

    Returns a copy of the point P1 that anchors the first color.

    Returns:
    :   a [`Point2D`](geom/Point2D.md "class in java.awt.geom") object that is a copy of the point
        that anchors the first color of this
        `GradientPaint`.
  + ### getColor1

    public [Color](Color.md "class in java.awt") getColor1()

    Returns the color C1 anchored by the point P1.

    Returns:
    :   a `Color` object that is the color
        anchored by P1.
  + ### getPoint2

    public [Point2D](geom/Point2D.md "class in java.awt.geom") getPoint2()

    Returns a copy of the point P2 which anchors the second color.

    Returns:
    :   a [`Point2D`](geom/Point2D.md "class in java.awt.geom") object that is a copy of the point
        that anchors the second color of this
        `GradientPaint`.
  + ### getColor2

    public [Color](Color.md "class in java.awt") getColor2()

    Returns the color C2 anchored by the point P2.

    Returns:
    :   a `Color` object that is the color
        anchored by P2.
  + ### isCyclic

    public boolean isCyclic()

    Returns `true` if the gradient cycles repeatedly
    between the two colors C1 and C2.

    Returns:
    :   `true` if the gradient cycles repeatedly
        between the two colors; `false` otherwise.
  + ### createContext

    public [PaintContext](PaintContext.md "interface in java.awt") createContext([ColorModel](image/ColorModel.md "class in java.awt.image") cm,
    [Rectangle](Rectangle.md "class in java.awt") deviceBounds,
    [Rectangle2D](geom/Rectangle2D.md "class in java.awt.geom") userBounds,
    [AffineTransform](geom/AffineTransform.md "class in java.awt.geom") xform,
    [RenderingHints](RenderingHints.md "class in java.awt") hints)

    Creates and returns a [`PaintContext`](PaintContext.md "interface in java.awt") used to
    generate a linear color gradient pattern.
    See the [`specification`](Paint.md#createContext(java.awt.image.ColorModel,java.awt.Rectangle,java.awt.geom.Rectangle2D,java.awt.geom.AffineTransform,java.awt.RenderingHints)) of the
    method in the [`Paint`](Paint.md "interface in java.awt") interface for information
    on null parameter handling.

    Specified by:
    :   `createContext` in interface `Paint`

    Parameters:
    :   `cm` - the preferred [`ColorModel`](image/ColorModel.md "class in java.awt.image") which represents the most convenient
        format for the caller to receive the pixel data, or `null`
        if there is no preference.
    :   `deviceBounds` - the device space bounding box
        of the graphics primitive being rendered.
    :   `userBounds` - the user space bounding box
        of the graphics primitive being rendered.
    :   `xform` - the [`AffineTransform`](geom/AffineTransform.md "class in java.awt.geom") from user
        space into device space.
    :   `hints` - the set of hints that the context object can use to
        choose between rendering alternatives.

    Returns:
    :   the `PaintContext` for
        generating color patterns.

    See Also:
    :   - [`Paint`](Paint.md "interface in java.awt")
        - [`PaintContext`](PaintContext.md "interface in java.awt")
        - [`ColorModel`](image/ColorModel.md "class in java.awt.image")
        - [`Rectangle`](Rectangle.md "class in java.awt")
        - [`Rectangle2D`](geom/Rectangle2D.md "class in java.awt.geom")
        - [`AffineTransform`](geom/AffineTransform.md "class in java.awt.geom")
        - [`RenderingHints`](RenderingHints.md "class in java.awt")
  + ### getTransparency

    public int getTransparency()

    Returns the transparency mode for this `GradientPaint`.

    Specified by:
    :   `getTransparency` in interface `Transparency`

    Returns:
    :   an integer value representing this `GradientPaint`
        object's transparency mode.

    See Also:
    :   - [`Transparency`](Transparency.md "interface in java.awt")