Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Class TransformAttribute

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.font.TransformAttribute

All Implemented Interfaces:
:   `Serializable`

---

public final class TransformAttribute
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `TransformAttribute` class provides an immutable
wrapper for a transform so that it is safe to use as an attribute.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.font.TransformAttribute)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final TransformAttribute`

  `IDENTITY`

  A `TransformAttribute` representing the identity transform.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TransformAttribute(AffineTransform transform)`

  Wraps the specified transform.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object rhs)`

  Returns `true` if rhs is a `TransformAttribute`
  whose transform is equal to this `TransformAttribute`'s
  transform.

  `AffineTransform`

  `getTransform()`

  Returns a copy of the wrapped transform.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `boolean`

  `isIdentity()`

  Returns `true` if the wrapped transform is
  an identity transform.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### IDENTITY

    public static final [TransformAttribute](TransformAttribute.md "class in java.awt.font") IDENTITY

    A `TransformAttribute` representing the identity transform.

    Since:
    :   1.6
* ## Constructor Details

  + ### TransformAttribute

    public TransformAttribute([AffineTransform](../geom/AffineTransform.md "class in java.awt.geom") transform)

    Wraps the specified transform. The transform is cloned and a
    reference to the clone is kept. The original transform is unchanged.
    If null is passed as the argument, this constructor behaves as though
    it were the identity transform. (Note that it is preferable to use
    [`IDENTITY`](#IDENTITY) in this case.)

    Parameters:
    :   `transform` - the specified [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom") to be wrapped,
        or null.
* ## Method Details

  + ### getTransform

    public [AffineTransform](../geom/AffineTransform.md "class in java.awt.geom") getTransform()

    Returns a copy of the wrapped transform.

    Returns:
    :   an `AffineTransform` that is a copy of the wrapped
        transform of this `TransformAttribute`.
  + ### isIdentity

    public boolean isIdentity()

    Returns `true` if the wrapped transform is
    an identity transform.

    Returns:
    :   `true` if the wrapped transform is
        an identity transform; `false` otherwise.

    Since:
    :   1.4
  + ### hashCode

    public int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    Since:
    :   1.6

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") rhs)

    Returns `true` if rhs is a `TransformAttribute`
    whose transform is equal to this `TransformAttribute`'s
    transform.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `rhs` - the object to compare to

    Returns:
    :   `true` if the argument is a `TransformAttribute`
        whose transform is equal to this `TransformAttribute`'s
        transform.

    Since:
    :   1.6

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")