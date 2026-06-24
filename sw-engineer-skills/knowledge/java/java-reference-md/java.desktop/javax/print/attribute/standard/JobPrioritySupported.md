Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobPrioritySupported

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobPrioritySupported

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `SupportedValuesAttribute`

---

public final class JobPrioritySupported
extends [IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")
implements [SupportedValuesAttribute](../SupportedValuesAttribute.md "interface in javax.print.attribute")

Class `JobPrioritySupported` is an integer valued printing attribute
class that specifies whether a Print Service instance supports the
[`JobPriority`](JobPriority.md "class in javax.print.attribute.standard") attribute and the number of different job
priority levels supported.

The client can always specify any [`JobPriority`](JobPriority.md "class in javax.print.attribute.standard") value from
1 to 100 for a job. However, the Print Service instance may support fewer
than 100 different job priority levels. If this is the case, the Print
Service instance automatically maps the client-specified job priority value
to one of the supported job priority levels, dividing the 100 job priority
values equally among the available job priority levels.

**IPP Compatibility:** The integer value gives the IPP integer value. The
category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobPrioritySupported)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobPrioritySupported(int value)`

  Construct a new job priority supported attribute with the given integer
  value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this job priority supported attribute is equivalent to
  the passed in object.

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

  + ### JobPrioritySupported

    public JobPrioritySupported(int value)

    Construct a new job priority supported attribute with the given integer
    value.

    Parameters:
    :   `value` - number of different job priority levels supported

    Throws:
    :   `IllegalArgumentException` - if `value` is less than 1 or
        greater than 100
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this job priority supported attribute is equivalent to
    the passed in object. To be equivalent, all of the following conditions
    must be true:
    1. `object` is not `null`.+ `object` is an instance of class
         `JobPrioritySupported`.+ This job priority supported attribute's value and `object`'s
           value are equal.

    Overrides:
    :   `equals` in class `IntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this job priority
        supported attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobPrioritySupported`, the category is class
    `JobPrioritySupported` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobPrioritySupported`, the category name is
    `"job-priority-supported"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name