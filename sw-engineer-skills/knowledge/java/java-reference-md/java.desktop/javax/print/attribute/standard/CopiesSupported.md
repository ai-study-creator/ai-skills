Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class CopiesSupported

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.SetOfIntegerSyntax](../SetOfIntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.CopiesSupported

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `SupportedValuesAttribute`

---

public final class CopiesSupported
extends [SetOfIntegerSyntax](../SetOfIntegerSyntax.md "class in javax.print.attribute")
implements [SupportedValuesAttribute](../SupportedValuesAttribute.md "interface in javax.print.attribute")

Class `CopiesSupported` is a printing attribute class, a set of
integers, that gives the supported values for a [`Copies`](Copies.md "class in javax.print.attribute.standard")
attribute. It is restricted to a single contiguous range of integers;
multiple non-overlapping ranges are not allowed.

**IPP Compatibility:** The CopiesSupported attribute's canonical array
form gives the lower and upper bound for the range of copies to be included
in an IPP "copies-supported" attribute. See class
[`SetOfIntegerSyntax`](../SetOfIntegerSyntax.md "class in javax.print.attribute") for an explanation of canonical
array form. The category name returned by `getName()` gives the IPP
attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.CopiesSupported)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CopiesSupported(int member)`

  Construct a new copies supported attribute containing a single integer.

  `CopiesSupported(int lowerBound,
  int upperBound)`

  Construct a new copies supported attribute containing a single range of
  integers.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this copies supported attribute is equivalent to the
  passed in object.

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

  + ### CopiesSupported

    public CopiesSupported(int member)

    Construct a new copies supported attribute containing a single integer.
    That is, only the one value of `Copies` is supported.

    Parameters:
    :   `member` - set member

    Throws:
    :   `IllegalArgumentException` - if `member < 1`
  + ### CopiesSupported

    public CopiesSupported(int lowerBound,
    int upperBound)

    Construct a new copies supported attribute containing a single range of
    integers. That is, only those values of `Copies` in the one range
    are supported.

    Parameters:
    :   `lowerBound` - Lower bound of the range
    :   `upperBound` - Upper bound of the range

    Throws:
    :   `IllegalArgumentException` - if a `null` range is specified or
        if a `non-null` range is specified with `lowerBound`
        less than 1
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this copies supported attribute is equivalent to the
    passed in object. To be equivalent, all of the following conditions must
    be true:
    1. `object` is not `null`.+ `object` is an instance of class `CopiesSupported`.+ This copies supported attribute's members and `object`'s
           members are the same.

    Overrides:
    :   `equals` in class `SetOfIntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this copies
        supported attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `CopiesSupported`, the category is class
    `CopiesSupported` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `CopiesSupported`, the category name is
    `"copies-supported"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name