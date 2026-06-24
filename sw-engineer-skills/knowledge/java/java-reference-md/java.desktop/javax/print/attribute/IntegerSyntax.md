Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class IntegerSyntax

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.attribute.IntegerSyntax

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `Copies`, `JobImpressions`, `JobImpressionsCompleted`, `JobKOctets`, `JobKOctetsProcessed`, `JobMediaSheets`, `JobMediaSheetsCompleted`, `JobPriority`, `JobPrioritySupported`, `NumberOfDocuments`, `NumberOfInterveningJobs`, `NumberUp`, `PagesPerMinute`, `PagesPerMinuteColor`, `QueuedJobCount`

---

public abstract class IntegerSyntax
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

Class `IntegerSyntax` is an abstract base class providing the common
implementation of all attributes with integer values.

Under the hood, an integer attribute is just an integer. You can get an
integer attribute's integer value by calling [`getValue()`](#getValue()).
An integer attribute's integer value is established when it is constructed
(see [`IntegerSyntax(int)`](#%3Cinit%3E(int))). Once constructed, an
integer attribute's value is immutable.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.attribute.IntegerSyntax)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `IntegerSyntax(int value)`

  Construct a new integer attribute with the given integer value.

  `protected`

  `IntegerSyntax(int value,
  int lowerBound,
  int upperBound)`

  Construct a new integer attribute with the given integer value, which
  must lie within the given range.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this integer attribute is equivalent to the passed in
  object.

  `int`

  `getValue()`

  Returns this integer attribute's integer value.

  `int`

  `hashCode()`

  Returns a hash code value for this integer attribute.

  `String`

  `toString()`

  Returns a string value corresponding to this integer attribute.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IntegerSyntax

    protected IntegerSyntax(int value)

    Construct a new integer attribute with the given integer value.

    Parameters:
    :   `value` - Integer value
  + ### IntegerSyntax

    protected IntegerSyntax(int value,
    int lowerBound,
    int upperBound)

    Construct a new integer attribute with the given integer value, which
    must lie within the given range.

    Parameters:
    :   `value` - Integer value
    :   `lowerBound` - Lower bound
    :   `upperBound` - Upper bound

    Throws:
    :   `IllegalArgumentException` - if `value` is less than
        `lowerBound` or greater than `upperBound`
* ## Method Details

  + ### getValue

    public int getValue()

    Returns this integer attribute's integer value.

    Returns:
    :   the integer value
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this integer attribute is equivalent to the passed in
    object. To be equivalent, all of the following conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class `IntegerSyntax`.+ This integer attribute's value and `object`'s value are
           equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this integer
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this integer attribute. The hash code is
    just this integer attribute's integer value.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string value corresponding to this integer attribute. The
    string value is just this integer attribute's integer value converted to
    a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.