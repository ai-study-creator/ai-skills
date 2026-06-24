Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class DisplayMode

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.DisplayMode

---

public final class DisplayMode
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The `DisplayMode` class encapsulates the bit depth, height,
width, and refresh rate of a `GraphicsDevice`. The ability to
change graphics device's display mode is platform- and
configuration-dependent and may not always be available
(see [`GraphicsDevice.isDisplayChangeSupported()`](GraphicsDevice.md#isDisplayChangeSupported())).

For more information on full-screen exclusive mode API, see the
[Full-Screen Exclusive Mode API Tutorial](https://docs.oracle.com/javase/tutorial/extra/fullscreen/index.html).

Since:
:   1.4

See Also:
:   * [`GraphicsDevice`](GraphicsDevice.md "class in java.awt")
    * [`GraphicsDevice.isDisplayChangeSupported()`](GraphicsDevice.md#isDisplayChangeSupported())
    * [`GraphicsDevice.getDisplayModes()`](GraphicsDevice.md#getDisplayModes())
    * [`GraphicsDevice.setDisplayMode(java.awt.DisplayMode)`](GraphicsDevice.md#setDisplayMode(java.awt.DisplayMode))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `BIT_DEPTH_MULTI`

  Value of the bit depth if multiple bit depths are supported in this
  display mode.

  `static final int`

  `REFRESH_RATE_UNKNOWN`

  Value of the refresh rate if not known.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DisplayMode(int width,
  int height,
  int bitDepth,
  int refreshRate)`

  Create a new display mode object with the supplied parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(DisplayMode dm)`

  Returns whether the two display modes are equal.

  `boolean`

  `equals(Object dm)`

  Indicates whether some other object is "equal to" this one.

  `int`

  `getBitDepth()`

  Returns the bit depth of the display, in bits per pixel.

  `int`

  `getHeight()`

  Returns the height of the display, in pixels.

  `int`

  `getRefreshRate()`

  Returns the refresh rate of the display, in hertz.

  `int`

  `getWidth()`

  Returns the width of the display, in pixels.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### BIT\_DEPTH\_MULTI

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int BIT\_DEPTH\_MULTI

    Value of the bit depth if multiple bit depths are supported in this
    display mode.

    See Also:
    :   - [`getBitDepth()`](#getBitDepth())
        - [Constant Field Values](../../../constant-values.md#java.awt.DisplayMode.BIT_DEPTH_MULTI)
  + ### REFRESH\_RATE\_UNKNOWN

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int REFRESH\_RATE\_UNKNOWN

    Value of the refresh rate if not known.

    See Also:
    :   - [`getRefreshRate()`](#getRefreshRate())
        - [Constant Field Values](../../../constant-values.md#java.awt.DisplayMode.REFRESH_RATE_UNKNOWN)
* ## Constructor Details

  + ### DisplayMode

    public DisplayMode(int width,
    int height,
    int bitDepth,
    int refreshRate)

    Create a new display mode object with the supplied parameters.

    Parameters:
    :   `width` - the width of the display, in pixels
    :   `height` - the height of the display, in pixels
    :   `bitDepth` - the bit depth of the display, in bits per
        pixel. This can be `BIT_DEPTH_MULTI` if multiple
        bit depths are available.
    :   `refreshRate` - the refresh rate of the display, in hertz.
        This can be `REFRESH_RATE_UNKNOWN` if the
        information is not available.

    See Also:
    :   - [`BIT_DEPTH_MULTI`](#BIT_DEPTH_MULTI)
        - [`REFRESH_RATE_UNKNOWN`](#REFRESH_RATE_UNKNOWN)
* ## Method Details

  + ### getHeight

    public int getHeight()

    Returns the height of the display, in pixels.

    Returns:
    :   the height of the display, in pixels
  + ### getWidth

    public int getWidth()

    Returns the width of the display, in pixels.

    Returns:
    :   the width of the display, in pixels
  + ### getBitDepth

    public int getBitDepth()

    Returns the bit depth of the display, in bits per pixel. This may be
    `BIT_DEPTH_MULTI` if multiple bit depths are supported in
    this display mode.

    Returns:
    :   the bit depth of the display, in bits per pixel.

    See Also:
    :   - [`BIT_DEPTH_MULTI`](#BIT_DEPTH_MULTI)
  + ### getRefreshRate

    public int getRefreshRate()

    Returns the refresh rate of the display, in hertz. This may be
    `REFRESH_RATE_UNKNOWN` if the information is not available.

    Returns:
    :   the refresh rate of the display, in hertz.

    See Also:
    :   - [`REFRESH_RATE_UNKNOWN`](#REFRESH_RATE_UNKNOWN)
  + ### equals

    public boolean equals([DisplayMode](DisplayMode.md "class in java.awt") dm)

    Returns whether the two display modes are equal.

    Parameters:
    :   `dm` - the display mode to compare to

    Returns:
    :   whether the two display modes are equal
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") dm)

    Indicates whether some other object is "equal to" this one.

    The `equals` method implements an equivalence relation
    on non-null object references:
    - It is *reflexive*: for any non-null reference value
      `x`, `x.equals(x)` should return
      `true`.- It is *symmetric*: for any non-null reference values
        `x` and `y`, `x.equals(y)`
        should return `true` if and only if
        `y.equals(x)` returns `true`.- It is *transitive*: for any non-null reference values
          `x`, `y`, and `z`, if
          `x.equals(y)` returns `true` and
          `y.equals(z)` returns `true`, then
          `x.equals(z)` should return `true`.- It is *consistent*: for any non-null reference values
            `x` and `y`, multiple invocations of
            `x.equals(y)` consistently return `true`
            or consistently return `false`, provided no
            information used in `equals` comparisons on the
            objects is modified.- For any non-null reference value `x`,
              `x.equals(null)` should return `false`.

    An equivalence relation partitions the elements it operates on
    into *equivalence classes*; all the members of an
    equivalence class are equal to each other. Members of an
    equivalence class are substitutable for each other, at least
    for some purposes.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `dm` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.