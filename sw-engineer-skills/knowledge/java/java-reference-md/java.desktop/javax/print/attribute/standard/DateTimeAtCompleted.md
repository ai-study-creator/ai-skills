Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class DateTimeAtCompleted

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.DateTimeSyntax](../DateTimeSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.DateTimeAtCompleted

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`

---

public final class DateTimeAtCompleted
extends [DateTimeSyntax](../DateTimeSyntax.md "class in javax.print.attribute")
implements [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `DateTimeAtCompleted` is a printing attribute class, a date-time
attribute, that indicates the date and time at which the Print Job completed
(or was canceled or aborted).

To construct a `DateTimeAtCompleted` attribute from separate values of
the year, month, day, hour, minute, and so on, use a
[`Calendar`](../../../../../java.base/java/util/Calendar.md "class in java.util") object to construct a [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") object,
then use the [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") object to construct the DateTimeAtCompleted
attribute. To convert a `DateTimeAtCompleted` attribute to separate
values of the year, month, day, hour, minute, and so on, create a
[`Calendar`](../../../../../java.base/java/util/Calendar.md "class in java.util") object and set it to the [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") from the
`DateTimeAtCompleted` attribute.

**IPP Compatibility:** The information needed to construct an IPP
"date-time-at-completed" attribute can be obtained as described above. The
category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.DateTimeAtCompleted)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DateTimeAtCompleted(Date dateTime)`

  Construct a new date-time at completed attribute with the given
  [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this date-time at completed attribute is equivalent to
  the passed in object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[DateTimeSyntax](../DateTimeSyntax.md "class in javax.print.attribute")

  `getValue, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DateTimeAtCompleted

    public DateTimeAtCompleted([Date](../../../../../java.base/java/util/Date.md "class in java.util") dateTime)

    Construct a new date-time at completed attribute with the given
    [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") value.

    Parameters:
    :   `dateTime` - [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") value

    Throws:
    :   `NullPointerException` - if `dateTime` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this date-time at completed attribute is equivalent to
    the passed in object. To be equivalent, all of the following conditions
    must be true:
    1. `object` is not `null`.+ `object` is an instance of class `DateTimeAtCompleted`.+ This date-time at completed attribute's [`Date`](../../../../../java.base/java/util/Date.md "class in java.util")
           value and `object`'s [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") value are equal.

    Overrides:
    :   `equals` in class `DateTimeSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this date-time at
        completed attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `DateTimeAtCompleted`, the category is class
    `DateTimeAtCompleted` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `DateTimeAtCompleted`, the category name is
    `"date-time-at-completed"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name