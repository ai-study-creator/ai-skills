Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobImpressionsSupported

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.SetOfIntegerSyntax](../SetOfIntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobImpressionsSupported

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `SupportedValuesAttribute`

---

public final class JobImpressionsSupported
extends [SetOfIntegerSyntax](../SetOfIntegerSyntax.md "class in javax.print.attribute")
implements [SupportedValuesAttribute](../SupportedValuesAttribute.md "interface in javax.print.attribute")

Class `JobImpressionsSupported` is a printing attribute class, a set of
integers, that gives the supported values for a
[`JobImpressions`](JobImpressions.md "class in javax.print.attribute.standard") attribute. It is restricted to a single
contiguous range of integers; multiple non-overlapping ranges are not
allowed. This gives the lower and upper bounds of the total sizes of print
jobs in number of impressions that the printer will accept.

**IPP Compatibility:** The `JobImpressionsSupported` attribute's
canonical array form gives the lower and upper bound for the range of values
to be included in an IPP "job-impressions-supported" attribute. See class
[`SetOfIntegerSyntax`](../SetOfIntegerSyntax.md "class in javax.print.attribute") for an explanation of canonical
array form. The category name returned by `getName()` gives the IPP
attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobImpressionsSupported)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobImpressionsSupported(int lowerBound,
  int upperBound)`

  Construct a new job impressions supported attribute containing a single
  range of integers.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this job impressions supported attribute is equivalent to
  the passed in object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[SetOfIntegerSyntax](../SetOfIntegerSyntax.md "class in javax.print.attribute")

  `contains, contains, getMembers, hashCode, next, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JobImpressionsSupported

    public JobImpressionsSupported(int lowerBound,
    int upperBound)

    Construct a new job impressions supported attribute containing a single
    range of integers. That is, only those values of `JobImpressions`
    in the one range are supported.

    Parameters:
    :   `lowerBound` - lower bound of the range
    :   `upperBound` - upper bound of the range

    Throws:
    :   `IllegalArgumentException` - if a `null` range is specified or
        if a `non-null` range is specified with `lowerBound`
        less than zero
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this job impressions supported attribute is equivalent to
    the passed in object. To be equivalent, all of the following conditions
    must be true:
    1. `object` is not `null`.+ `object` is an instance of class
         `JobImpressionsSupported`.+ This job impressions supported attribute's members and
           `object`'s members are the same.

    Overrides:
    :   `equals` in class `SetOfIntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this job
        impressions supported attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobImpressionsSupported`, the category is class
    `JobImpressionsSupported` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobImpressionsSupported`, the category name is
    `"job-impressions-supported"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name