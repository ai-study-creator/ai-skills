Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class QueuedJobCount

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.QueuedJobCount

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintServiceAttribute`

---

public final class QueuedJobCount
extends [IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")
implements [PrintServiceAttribute](../PrintServiceAttribute.md "interface in javax.print.attribute")

Class `QueuedJobCount` is an integer valued printing attribute that
indicates the number of jobs in the printer whose [`JobState`](JobState.md "class in javax.print.attribute.standard")
is either `PENDING`, `PENDING_HELD`, `PROCESSING`, or
`PROCESSING_STOPPED`.

**IPP Compatibility:** The integer value gives the IPP integer value. The
category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.QueuedJobCount)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `QueuedJobCount(int value)`

  Construct a new queued job count attribute with the given integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this queued job count attribute is equivalent to the
  passed in object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

  `getValue, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### QueuedJobCount

    public QueuedJobCount(int value)

    Construct a new queued job count attribute with the given integer value.

    Parameters:
    :   `value` - Integer value

    Throws:
    :   `IllegalArgumentException` - if `value` is negative
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this queued job count attribute is equivalent to the
    passed in object. To be equivalent, all of the following conditions mus
    be true:
    1. `object` is not `null`.+ `object` is an instance of class `QueuedJobCount`.+ This queued job count attribute's value and `object`'s value
           are equal.

    Overrides:
    :   `equals` in class `IntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this queued job
        count attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `QueuedJobCount`, the category is class
    `QueuedJobCount` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `QueuedJobCount`, the category name is
    `"queued-job-count"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name