Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class DateTimeSyntax

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.attribute.DateTimeSyntax

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `DateTimeAtCompleted`, `DateTimeAtCreation`, `DateTimeAtProcessing`, `JobHoldUntil`

---

public abstract class DateTimeSyntax
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

Class `DateTimeSyntax` is an abstract base class providing the common
implementation of all attributes whose value is a date and time.

Under the hood, a date-time attribute is stored as a value of class
`java.util.Date`. You can get a date-time attribute's `Date`
value by calling [`getValue()`](#getValue()). A date-time attribute's
`Date` value is established when it is constructed (see
[`DateTimeSyntax(Date)`](#%3Cinit%3E(java.util.Date))). Once constructed, a
date-time attribute's value is immutable.

To construct a date-time attribute from separate values of the year, month,
day, hour, minute, and so on, use a `java.util.Calendar` object to
construct a `java.util.Date` object, then use the
`java.util.Date` object to construct the date-time attribute. To
convert a date-time attribute to separate values of the year, month, day,
hour, minute, and so on, create a `java.util.Calendar` object and set
it to the `java.util.Date` from the date-time attribute. Class
`DateTimeSyntax` stores its value in the form of a
`java.util.Date` rather than a `java.util.Calendar` because it
typically takes less memory to store and less time to compare a
`java.util.Date` than a `java.util.Calendar`.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.attribute.DateTimeSyntax)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DateTimeSyntax(Date value)`

  Construct a new date-time attribute with the given `java.util.Date`
  value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this date-time attribute is equivalent to the passed in
  object.

  `Date`

  `getValue()`

  Returns this date-time attribute's `java.util.Date` value.

  `int`

  `hashCode()`

  Returns a hash code value for this date-time attribute.

  `String`

  `toString()`

  Returns a string value corresponding to this date-time attribute.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DateTimeSyntax

    protected DateTimeSyntax([Date](../../../../java.base/java/util/Date.md "class in java.util") value)

    Construct a new date-time attribute with the given `java.util.Date`
    value.

    Parameters:
    :   `value` - `java.util.Date` value

    Throws:
    :   `NullPointerException` - if `value` is `null`
* ## Method Details

  + ### getValue

    public [Date](../../../../java.base/java/util/Date.md "class in java.util") getValue()

    Returns this date-time attribute's `java.util.Date` value.

    Returns:
    :   the `Date`
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this date-time attribute is equivalent to the passed in
    object. To be equivalent, all of the following conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class `DateTimeSyntax`.+ This date-time attribute's `java.util.Date` value and
           `object`'s `java.util.Date` value are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this date-time
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this date-time attribute. The hashcode is
    that of this attribute's `java.util.Date` value.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string value corresponding to this date-time attribute. The
    string value is just this attribute's `java.util.Date` value
    converted to a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.