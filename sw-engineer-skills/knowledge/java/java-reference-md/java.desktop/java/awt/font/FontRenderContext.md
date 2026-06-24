Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Class FontRenderContext

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.font.FontRenderContext

---

public class FontRenderContext
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The `FontRenderContext` class is a container for the
information needed to correctly measure text. The measurement of text
can vary because of rules that map outlines to pixels, and rendering
hints provided by an application.

One such piece of information is a transform that scales
typographical points to pixels. (A point is defined to be exactly 1/72
of an inch, which is slightly different than
the traditional mechanical measurement of a point.) A character that
is rendered at 12pt on a 600dpi device might have a different size
than the same character rendered at 12pt on a 72dpi device because of
such factors as rounding to pixel boundaries and hints that the font
designer may have specified.

Anti-aliasing and Fractional-metrics specified by an application can also
affect the size of a character because of rounding to pixel
boundaries.

Typically, instances of `FontRenderContext` are
obtained from a [`Graphics2D`](../Graphics2D.md "class in java.awt") object. A
`FontRenderContext` which is directly constructed will
most likely not represent any actual graphics device, and may lead
to unexpected or incorrect results.

See Also:
:   * [`RenderingHints.KEY_TEXT_ANTIALIASING`](../RenderingHints.md#KEY_TEXT_ANTIALIASING)
    * [`RenderingHints.KEY_FRACTIONALMETRICS`](../RenderingHints.md#KEY_FRACTIONALMETRICS)
    * [`Graphics2D.getFontRenderContext()`](../Graphics2D.md#getFontRenderContext())
    * [`LineMetrics`](LineMetrics.md "class in java.awt.font")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FontRenderContext()`

  Constructs a new `FontRenderContext`
  object.

  `FontRenderContext(AffineTransform tx,
  boolean isAntiAliased,
  boolean usesFractionalMetrics)`

  Constructs a `FontRenderContext` object from an
  optional [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom") and two `boolean`
  values that determine if the newly constructed object has
  anti-aliasing or fractional metrics.

  `FontRenderContext(AffineTransform tx,
  Object aaHint,
  Object fmHint)`

  Constructs a `FontRenderContext` object from an
  optional [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom") and two `Object`
  values that determine if the newly constructed object has
  anti-aliasing or fractional metrics.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(FontRenderContext rhs)`

  Return true if rhs has the same transform, antialiasing,
  and fractional metrics values as this.

  `boolean`

  `equals(Object obj)`

  Return true if obj is an instance of FontRenderContext and has the same
  transform, antialiasing, and fractional metrics values as this.

  `Object`

  `getAntiAliasingHint()`

  Return the text anti-aliasing rendering mode hint used in this
  `FontRenderContext`.

  `Object`

  `getFractionalMetricsHint()`

  Return the text fractional metrics rendering mode hint used in this
  `FontRenderContext`.

  `AffineTransform`

  `getTransform()`

  Gets the transform that is used to scale typographical points
  to pixels in this `FontRenderContext`.

  `int`

  `getTransformType()`

  Returns the integer type of the affine transform for this
  `FontRenderContext` as specified by
  [`AffineTransform.getType()`](../geom/AffineTransform.md#getType())

  `int`

  `hashCode()`

  Return a hashcode for this FontRenderContext.

  `boolean`

  `isAntiAliased()`

  Returns a boolean which indicates whether or not some form of
  antialiasing is specified by this `FontRenderContext`.

  `boolean`

  `isTransformed()`

  Indicates whether or not this `FontRenderContext` object
  measures text in a transformed render context.

  `boolean`

  `usesFractionalMetrics()`

  Returns a boolean which whether text fractional metrics mode
  is used in this `FontRenderContext`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FontRenderContext

    protected FontRenderContext()

    Constructs a new `FontRenderContext`
    object.
  + ### FontRenderContext

    public FontRenderContext([AffineTransform](../geom/AffineTransform.md "class in java.awt.geom") tx,
    boolean isAntiAliased,
    boolean usesFractionalMetrics)

    Constructs a `FontRenderContext` object from an
    optional [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom") and two `boolean`
    values that determine if the newly constructed object has
    anti-aliasing or fractional metrics.
    In each case the boolean values `true` and `false`
    correspond to the rendering hint values `ON` and
    `OFF` respectively.

    To specify other hint values, use the constructor which
    specifies the rendering hint values as parameters :
    [`FontRenderContext(AffineTransform, Object, Object)`](#%3Cinit%3E(java.awt.geom.AffineTransform,java.lang.Object,java.lang.Object)).

    Parameters:
    :   `tx` - the transform which is used to scale typographical points
        to pixels in this `FontRenderContext`. If null, an
        identity transform is used.
    :   `isAntiAliased` - determines if the newly constructed object
        has anti-aliasing.
    :   `usesFractionalMetrics` - determines if the newly constructed
        object has fractional metrics.
  + ### FontRenderContext

    public FontRenderContext([AffineTransform](../geom/AffineTransform.md "class in java.awt.geom") tx,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") aaHint,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") fmHint)

    Constructs a `FontRenderContext` object from an
    optional [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom") and two `Object`
    values that determine if the newly constructed object has
    anti-aliasing or fractional metrics.

    Parameters:
    :   `tx` - the transform which is used to scale typographical points
        to pixels in this `FontRenderContext`. If null, an
        identity transform is used.
    :   `aaHint` - one of the text antialiasing rendering hint values
        defined in [`java.awt.RenderingHints`](../RenderingHints.md "class in java.awt").
        Any other value will throw `IllegalArgumentException`.
        [`VALUE_TEXT_ANTIALIAS_DEFAULT`](../RenderingHints.md#VALUE_TEXT_ANTIALIAS_DEFAULT)
        may be specified, in which case the mode used is implementation
        dependent.
    :   `fmHint` - one of the text fractional rendering hint values defined
        in [`java.awt.RenderingHints`](../RenderingHints.md "class in java.awt").
        [`VALUE_FRACTIONALMETRICS_DEFAULT`](../RenderingHints.md#VALUE_FRACTIONALMETRICS_DEFAULT)
        may be specified, in which case the mode used is implementation
        dependent.
        Any other value will throw `IllegalArgumentException`

    Throws:
    :   `IllegalArgumentException` - if the hints are not one of the
        legal values.

    Since:
    :   1.6
* ## Method Details

  + ### isTransformed

    public boolean isTransformed()

    Indicates whether or not this `FontRenderContext` object
    measures text in a transformed render context.

    Returns:
    :   `true` if this `FontRenderContext`
        object has a non-identity AffineTransform attribute.
        `false` otherwise.

    Since:
    :   1.6

    See Also:
    :   - [`getTransform()`](#getTransform())
  + ### getTransformType

    public int getTransformType()

    Returns the integer type of the affine transform for this
    `FontRenderContext` as specified by
    [`AffineTransform.getType()`](../geom/AffineTransform.md#getType())

    Returns:
    :   the type of the transform.

    Since:
    :   1.6

    See Also:
    :   - [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom")
  + ### getTransform

    public [AffineTransform](../geom/AffineTransform.md "class in java.awt.geom") getTransform()

    Gets the transform that is used to scale typographical points
    to pixels in this `FontRenderContext`.

    Returns:
    :   the `AffineTransform` of this
        `FontRenderContext`.

    See Also:
    :   - [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom")
  + ### isAntiAliased

    public boolean isAntiAliased()

    Returns a boolean which indicates whether or not some form of
    antialiasing is specified by this `FontRenderContext`.
    Call [`getAntiAliasingHint()`](#getAntiAliasingHint())
    for the specific rendering hint value.

    Returns:
    :   `true`, if text is anti-aliased in this
        `FontRenderContext`; `false` otherwise.

    See Also:
    :   - [`RenderingHints.KEY_TEXT_ANTIALIASING`](../RenderingHints.md#KEY_TEXT_ANTIALIASING)
        - [`FontRenderContext(AffineTransform,boolean,boolean)`](#%3Cinit%3E(java.awt.geom.AffineTransform,boolean,boolean))
        - [`FontRenderContext(AffineTransform,Object,Object)`](#%3Cinit%3E(java.awt.geom.AffineTransform,java.lang.Object,java.lang.Object))
  + ### usesFractionalMetrics

    public boolean usesFractionalMetrics()

    Returns a boolean which whether text fractional metrics mode
    is used in this `FontRenderContext`.
    Call [`getFractionalMetricsHint()`](#getFractionalMetricsHint())
    to obtain the corresponding rendering hint value.

    Returns:
    :   `true`, if layout should be performed with
        fractional metrics; `false` otherwise.
        in this `FontRenderContext`.

    See Also:
    :   - [`RenderingHints.KEY_FRACTIONALMETRICS`](../RenderingHints.md#KEY_FRACTIONALMETRICS)
        - [`FontRenderContext(AffineTransform,boolean,boolean)`](#%3Cinit%3E(java.awt.geom.AffineTransform,boolean,boolean))
        - [`FontRenderContext(AffineTransform,Object,Object)`](#%3Cinit%3E(java.awt.geom.AffineTransform,java.lang.Object,java.lang.Object))
  + ### getAntiAliasingHint

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getAntiAliasingHint()

    Return the text anti-aliasing rendering mode hint used in this
    `FontRenderContext`.
    This will be one of the text antialiasing rendering hint values
    defined in [`java.awt.RenderingHints`](../RenderingHints.md "class in java.awt").

    Returns:
    :   text anti-aliasing rendering mode hint used in this
        `FontRenderContext`.

    Since:
    :   1.6
  + ### getFractionalMetricsHint

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getFractionalMetricsHint()

    Return the text fractional metrics rendering mode hint used in this
    `FontRenderContext`.
    This will be one of the text fractional metrics rendering hint values
    defined in [`java.awt.RenderingHints`](../RenderingHints.md "class in java.awt").

    Returns:
    :   the text fractional metrics rendering mode hint used in this
        `FontRenderContext`.

    Since:
    :   1.6
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Return true if obj is an instance of FontRenderContext and has the same
    transform, antialiasing, and fractional metrics values as this.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to test for equality

    Returns:
    :   `true` if the specified object is equal to
        this `FontRenderContext`; `false`
        otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### equals

    public boolean equals([FontRenderContext](FontRenderContext.md "class in java.awt.font") rhs)

    Return true if rhs has the same transform, antialiasing,
    and fractional metrics values as this.

    Parameters:
    :   `rhs` - the `FontRenderContext` to test for equality

    Returns:
    :   `true` if `rhs` is equal to
        this `FontRenderContext`; `false`
        otherwise.

    Since:
    :   1.4
  + ### hashCode

    public int hashCode()

    Return a hashcode for this FontRenderContext.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))