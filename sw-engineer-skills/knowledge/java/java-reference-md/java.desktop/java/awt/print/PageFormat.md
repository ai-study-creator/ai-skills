Module [java.desktop](../../../module-summary.md)

Package [java.awt.print](package-summary.md)

# Class PageFormat

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.print.PageFormat

All Implemented Interfaces:
:   `Cloneable`

---

public class PageFormat
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

The `PageFormat` class describes the size and
orientation of a page to be printed.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `LANDSCAPE`

  The origin is at the bottom left of the paper with
  x running bottom to top and y running left to right.

  `static final int`

  `PORTRAIT`

  The origin is at the top left of the paper with
  x running to the right and y running down the
  paper.

  `static final int`

  `REVERSE_LANDSCAPE`

  The origin is at the top right of the paper with x
  running top to bottom and y running right to left.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PageFormat()`

  Creates a default, portrait-oriented
  `PageFormat`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Makes a copy of this `PageFormat` with the same
  contents as this `PageFormat`.

  `double`

  `getHeight()`

  Returns the height, in 1/72nds of an inch, of the page.

  `double`

  `getImageableHeight()`

  Return the height, in 1/72nds of an inch, of the imageable
  area of the page.

  `double`

  `getImageableWidth()`

  Returns the width, in 1/72nds of an inch, of the imageable
  area of the page.

  `double`

  `getImageableX()`

  Returns the x coordinate of the upper left point of the
  imageable area of the `Paper` object
  associated with this `PageFormat`.

  `double`

  `getImageableY()`

  Returns the y coordinate of the upper left point of the
  imageable area of the `Paper` object
  associated with this `PageFormat`.

  `double[]`

  `getMatrix()`

  Returns a transformation matrix that translates user
  space rendering to the requested orientation
  of the page.

  `int`

  `getOrientation()`

  Returns the orientation of this `PageFormat`.

  `Paper`

  `getPaper()`

  Returns a copy of the [`Paper`](Paper.md "class in java.awt.print") object associated
  with this `PageFormat`.

  `double`

  `getWidth()`

  Returns the width, in 1/72nds of an inch, of the page.

  `void`

  `setOrientation(int orientation)`

  Sets the page orientation.

  `void`

  `setPaper(Paper paper)`

  Sets the `Paper` object for this
  `PageFormat`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### LANDSCAPE

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int LANDSCAPE

    The origin is at the bottom left of the paper with
    x running bottom to top and y running left to right.
    Note that this is not the Macintosh landscape but
    is the Window's and PostScript landscape.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.print.PageFormat.LANDSCAPE)
  + ### PORTRAIT

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int PORTRAIT

    The origin is at the top left of the paper with
    x running to the right and y running down the
    paper.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.print.PageFormat.PORTRAIT)
  + ### REVERSE\_LANDSCAPE

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int REVERSE\_LANDSCAPE

    The origin is at the top right of the paper with x
    running top to bottom and y running right to left.
    Note that this is the Macintosh landscape.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.print.PageFormat.REVERSE_LANDSCAPE)
* ## Constructor Details

  + ### PageFormat

    public PageFormat()

    Creates a default, portrait-oriented
    `PageFormat`.
* ## Method Details

  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Makes a copy of this `PageFormat` with the same
    contents as this `PageFormat`.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a copy of this `PageFormat`.

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getWidth

    public double getWidth()

    Returns the width, in 1/72nds of an inch, of the page.
    This method takes into account the orientation of the
    page when determining the width.

    Returns:
    :   the width of the page.
  + ### getHeight

    public double getHeight()

    Returns the height, in 1/72nds of an inch, of the page.
    This method takes into account the orientation of the
    page when determining the height.

    Returns:
    :   the height of the page.
  + ### getImageableX

    public double getImageableX()

    Returns the x coordinate of the upper left point of the
    imageable area of the `Paper` object
    associated with this `PageFormat`.
    This method takes into account the
    orientation of the page.

    Returns:
    :   the x coordinate of the upper left point of the
        imageable area of the `Paper` object
        associated with this `PageFormat`.
  + ### getImageableY

    public double getImageableY()

    Returns the y coordinate of the upper left point of the
    imageable area of the `Paper` object
    associated with this `PageFormat`.
    This method takes into account the
    orientation of the page.

    Returns:
    :   the y coordinate of the upper left point of the
        imageable area of the `Paper` object
        associated with this `PageFormat`.
  + ### getImageableWidth

    public double getImageableWidth()

    Returns the width, in 1/72nds of an inch, of the imageable
    area of the page. This method takes into account the orientation
    of the page.

    Returns:
    :   the width of the page.
  + ### getImageableHeight

    public double getImageableHeight()

    Return the height, in 1/72nds of an inch, of the imageable
    area of the page. This method takes into account the orientation
    of the page.

    Returns:
    :   the height of the page.
  + ### getPaper

    public [Paper](Paper.md "class in java.awt.print") getPaper()

    Returns a copy of the [`Paper`](Paper.md "class in java.awt.print") object associated
    with this `PageFormat`. Changes made to the
    `Paper` object returned from this method do not
    affect the `Paper` object of this
    `PageFormat`. To update the `Paper`
    object of this `PageFormat`, create a new
    `Paper` object and set it into this
    `PageFormat` by using the [`setPaper(Paper)`](#setPaper(java.awt.print.Paper))
    method.

    Returns:
    :   a copy of the `Paper` object associated
        with this `PageFormat`.

    See Also:
    :   - [`setPaper(java.awt.print.Paper)`](#setPaper(java.awt.print.Paper))
  + ### setPaper

    public void setPaper([Paper](Paper.md "class in java.awt.print") paper)

    Sets the `Paper` object for this
    `PageFormat`.

    Parameters:
    :   `paper` - the `Paper` object to which to set
        the `Paper` object for this `PageFormat`.

    Throws:
    :   `NullPointerException` - a null paper instance was passed as a parameter.

    See Also:
    :   - [`getPaper()`](#getPaper())
  + ### setOrientation

    public void setOrientation(int orientation)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets the page orientation. `orientation` must be
    one of the constants: PORTRAIT, LANDSCAPE,
    or REVERSE\_LANDSCAPE.

    Parameters:
    :   `orientation` - the new orientation for the page

    Throws:
    :   `IllegalArgumentException` - if
        an unknown orientation was requested

    See Also:
    :   - [`getOrientation()`](#getOrientation())
  + ### getOrientation

    public int getOrientation()

    Returns the orientation of this `PageFormat`.

    Returns:
    :   this `PageFormat` object's orientation.

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
  + ### getMatrix

    public double[] getMatrix()

    Returns a transformation matrix that translates user
    space rendering to the requested orientation
    of the page. The values are placed into the
    array as
    { m00, m10, m01, m11, m02, m12} in
    the form required by the [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom")
    constructor.

    Returns:
    :   the matrix used to translate user space rendering
        to the orientation of the page.

    See Also:
    :   - [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom")