Module [java.desktop](../../../module-summary.md)

# Package java.awt.geom

---

package java.awt.geom

Provides the Java 2D classes for defining and performing operations on
objects related to two-dimensional geometry. Some important features of the
package include:

* classes for manipulating geometry, such as AffineTransform and the
  PathIterator interface which is implemented by all Shape objects.
* classes that implement the Shape interface, such as CubicCurve2D,
  Ellipse2D, Line2D, Rectangle2D, and GeneralShape.
* the Area class which provides mechanisms for add (union), subtract,
  intersect, and exclusiveOR operations on other Shape objects.

Since:
:   1.2

* Related Packages

  Package

  Description

  [java.awt](../package-summary.md)

  Contains all of the classes for creating user interfaces and for painting
  graphics and images.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AffineTransform](AffineTransform.md "class in java.awt.geom")

  The `AffineTransform` class represents a 2D affine transform
  that performs a linear mapping from 2D coordinates to other 2D
  coordinates that preserves the "straightness" and
  "parallelness" of lines.

  [Arc2D](Arc2D.md "class in java.awt.geom")

  `Arc2D` is the abstract superclass for all objects that
  store a 2D arc defined by a framing rectangle,
  start angle, angular extent (length of the arc), and a closure type
  (`OPEN`, `CHORD`, or `PIE`).

  [Arc2D.Double](Arc2D.Double.md "class in java.awt.geom")

  This class defines an arc specified in `double` precision.

  [Arc2D.Float](Arc2D.Float.md "class in java.awt.geom")

  This class defines an arc specified in `float` precision.

  [Area](Area.md "class in java.awt.geom")

  An `Area` object stores and manipulates a
  resolution-independent description of an enclosed area of
  2-dimensional space.

  [CubicCurve2D](CubicCurve2D.md "class in java.awt.geom")

  The `CubicCurve2D` class defines a cubic parametric curve
  segment in `(x,y)` coordinate space.

  [CubicCurve2D.Double](CubicCurve2D.Double.md "class in java.awt.geom")

  A cubic parametric curve segment specified with
  `double` coordinates.

  [CubicCurve2D.Float](CubicCurve2D.Float.md "class in java.awt.geom")

  A cubic parametric curve segment specified with
  `float` coordinates.

  [Dimension2D](Dimension2D.md "class in java.awt.geom")

  The `Dimension2D` class is to encapsulate a width
  and a height dimension.

  [Ellipse2D](Ellipse2D.md "class in java.awt.geom")

  The `Ellipse2D` class describes an ellipse that is defined
  by a framing rectangle.

  [Ellipse2D.Double](Ellipse2D.Double.md "class in java.awt.geom")

  The `Double` class defines an ellipse specified
  in `double` precision.

  [Ellipse2D.Float](Ellipse2D.Float.md "class in java.awt.geom")

  The `Float` class defines an ellipse specified
  in `float` precision.

  [FlatteningPathIterator](FlatteningPathIterator.md "class in java.awt.geom")

  The `FlatteningPathIterator` class returns a flattened view of
  another [`PathIterator`](PathIterator.md "interface in java.awt.geom") object.

  [GeneralPath](GeneralPath.md "class in java.awt.geom")

  The `GeneralPath` class represents a geometric path
  constructed from straight lines, and quadratic and cubic
  (Bézier) curves.

  [IllegalPathStateException](IllegalPathStateException.md "class in java.awt.geom")

  The `IllegalPathStateException` represents an
  exception that is thrown if an operation is performed on a path
  that is in an illegal state with respect to the particular
  operation being performed, such as appending a path segment
  to a [`GeneralPath`](GeneralPath.md "class in java.awt.geom") without an initial moveto.

  [Line2D](Line2D.md "class in java.awt.geom")

  This `Line2D` represents a line segment in `(x,y)`
  coordinate space.

  [Line2D.Double](Line2D.Double.md "class in java.awt.geom")

  A line segment specified with double coordinates.

  [Line2D.Float](Line2D.Float.md "class in java.awt.geom")

  A line segment specified with float coordinates.

  [NoninvertibleTransformException](NoninvertibleTransformException.md "class in java.awt.geom")

  The `NoninvertibleTransformException` class represents
  an exception that is thrown if an operation is performed requiring
  the inverse of an [`AffineTransform`](AffineTransform.md "class in java.awt.geom") object but the
  `AffineTransform` is in a non-invertible state.

  [Path2D](Path2D.md "class in java.awt.geom")

  The `Path2D` class provides a simple, yet flexible
  shape which represents an arbitrary geometric path.

  [Path2D.Double](Path2D.Double.md "class in java.awt.geom")

  The `Double` class defines a geometric path with
  coordinates stored in double precision floating point.

  [Path2D.Float](Path2D.Float.md "class in java.awt.geom")

  The `Float` class defines a geometric path with
  coordinates stored in single precision floating point.

  [PathIterator](PathIterator.md "interface in java.awt.geom")

  The `PathIterator` interface provides the mechanism
  for objects that implement the [`Shape`](../Shape.md "interface in java.awt")
  interface to return the geometry of their boundary by allowing
  a caller to retrieve the path of that boundary a segment at a
  time.

  [Point2D](Point2D.md "class in java.awt.geom")

  The `Point2D` class defines a point representing a location
  in `(x,y)` coordinate space.

  [Point2D.Double](Point2D.Double.md "class in java.awt.geom")

  The `Double` class defines a point specified in
  `double` precision.

  [Point2D.Float](Point2D.Float.md "class in java.awt.geom")

  The `Float` class defines a point specified in float
  precision.

  [QuadCurve2D](QuadCurve2D.md "class in java.awt.geom")

  The `QuadCurve2D` class defines a quadratic parametric curve
  segment in `(x,y)` coordinate space.

  [QuadCurve2D.Double](QuadCurve2D.Double.md "class in java.awt.geom")

  A quadratic parametric curve segment specified with
  `double` coordinates.

  [QuadCurve2D.Float](QuadCurve2D.Float.md "class in java.awt.geom")

  A quadratic parametric curve segment specified with
  `float` coordinates.

  [Rectangle2D](Rectangle2D.md "class in java.awt.geom")

  The `Rectangle2D` class describes a rectangle
  defined by a location `(x,y)` and dimension
  `(w x h)`.

  [Rectangle2D.Double](Rectangle2D.Double.md "class in java.awt.geom")

  The `Double` class defines a rectangle specified in
  double coordinates.

  [Rectangle2D.Float](Rectangle2D.Float.md "class in java.awt.geom")

  The `Float` class defines a rectangle specified in float
  coordinates.

  [RectangularShape](RectangularShape.md "class in java.awt.geom")

  `RectangularShape` is the base class for a number of
  [`Shape`](../Shape.md "interface in java.awt") objects whose geometry is defined by a rectangular frame.

  [RoundRectangle2D](RoundRectangle2D.md "class in java.awt.geom")

  The `RoundRectangle2D` class defines a rectangle with
  rounded corners defined by a location `(x,y)`, a
  dimension `(w x h)`, and the width and height of an arc
  with which to round the corners.

  [RoundRectangle2D.Double](RoundRectangle2D.Double.md "class in java.awt.geom")

  The `Double` class defines a rectangle with rounded
  corners all specified in `double` coordinates.

  [RoundRectangle2D.Float](RoundRectangle2D.Float.md "class in java.awt.geom")

  The `Float` class defines a rectangle with rounded
  corners all specified in `float` coordinates.