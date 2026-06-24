Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Insets

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.Insets

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `InsetsUIResource`

---

public class Insets
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

An `Insets` object is a representation of the borders
of a container. It specifies the space that a container must leave
at each of its edges. The space can be a border, a blank space, or
a title.

Since:
:   1.0

See Also:
:   * [`LayoutManager`](LayoutManager.md "interface in java.awt")
    * [`Container`](Container.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.Insets)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `int`

  `bottom`

  The inset from the bottom.

  `int`

  `left`

  The inset from the left.

  `int`

  `right`

  The inset from the right.

  `int`

  `top`

  The inset from the top.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Insets(int top,
  int left,
  int bottom,
  int right)`

  Creates and initializes a new `Insets` object with the
  specified top, left, bottom, and right insets.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Create a copy of this object.

  `boolean`

  `equals(Object obj)`

  Checks whether two insets objects are equal.

  `int`

  `hashCode()`

  Returns the hash code for this Insets.

  `void`

  `set(int top,
  int left,
  int bottom,
  int right)`

  Set top, left, bottom, and right to the specified values

  `String`

  `toString()`

  Returns a string representation of this `Insets` object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### top

    public int top

    The inset from the top.
    This value is added to the Top of the rectangle
    to yield a new location for the Top.

    See Also:
    :   - [`clone()`](#clone())
  + ### left

    public int left

    The inset from the left.
    This value is added to the Left of the rectangle
    to yield a new location for the Left edge.

    See Also:
    :   - [`clone()`](#clone())
  + ### bottom

    public int bottom

    The inset from the bottom.
    This value is subtracted from the Bottom of the rectangle
    to yield a new location for the Bottom.

    See Also:
    :   - [`clone()`](#clone())
  + ### right

    public int right

    The inset from the right.
    This value is subtracted from the Right of the rectangle
    to yield a new location for the Right edge.

    See Also:
    :   - [`clone()`](#clone())
* ## Constructor Details

  + ### Insets

    public Insets(int top,
    int left,
    int bottom,
    int right)

    Creates and initializes a new `Insets` object with the
    specified top, left, bottom, and right insets.

    Parameters:
    :   `top` - the inset from the top.
    :   `left` - the inset from the left.
    :   `bottom` - the inset from the bottom.
    :   `right` - the inset from the right.
* ## Method Details

  + ### set

    public void set(int top,
    int left,
    int bottom,
    int right)

    Set top, left, bottom, and right to the specified values

    Parameters:
    :   `top` - the inset from the top.
    :   `left` - the inset from the left.
    :   `bottom` - the inset from the bottom.
    :   `right` - the inset from the right.

    Since:
    :   1.5
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Checks whether two insets objects are equal. Two instances
    of `Insets` are equal if the four integer values
    of the fields `top`, `left`,
    `bottom`, and `right` are all equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if the two insets are equal;
        otherwise `false`.

    Since:
    :   1.1

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code for this Insets.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this Insets.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `Insets` object.
    This method is intended to be used only for debugging purposes, and
    the content and format of the returned string may vary between
    implementations. The returned string may be empty but may not be
    `null`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `Insets` object.
  + ### clone

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Create a copy of this object.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a copy of this `Insets` object.

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")