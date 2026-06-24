Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class NumberUpSupported

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.SetOfIntegerSyntax](../SetOfIntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.NumberUpSupported

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `SupportedValuesAttribute`

---

public final class NumberUpSupported
extends [SetOfIntegerSyntax](../SetOfIntegerSyntax.md "class in javax.print.attribute")
implements [SupportedValuesAttribute](../SupportedValuesAttribute.md "interface in javax.print.attribute")

Class `NumberUpSupported` is a printing attribute class, a set of
integers, that gives the supported values for a [`NumberUp`](NumberUp.md "class in javax.print.attribute.standard")
attribute.

**IPP Compatibility:** The NumberUpSupported attribute's canonical array
form gives the lower and upper bound for each range of number-up to be
included in an IPP "number-up-supported" attribute. See class
[`SetOfIntegerSyntax`](../SetOfIntegerSyntax.md "class in javax.print.attribute") for an explanation of canonical
array form. The category name returned by `getName()` gives the IPP
attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.NumberUpSupported)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NumberUpSupported(int member)`

  Construct a new number up supported attribute containing a single
  integer.

  `NumberUpSupported(int[][] members)`

  Construct a new number up supported attribute with the given members.

  `NumberUpSupported(int lowerBound,
  int upperBound)`

  Construct a new number up supported attribute containing a single range
  of integers.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this number up supported attribute is equivalent to the
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

  + ### NumberUpSupported

    public NumberUpSupported(int[][] members)

    Construct a new number up supported attribute with the given members. The
    supported values for NumberUp are specified in "array form;" see class
    [`SetOfIntegerSyntax`](../SetOfIntegerSyntax.md "class in javax.print.attribute") for
    an explanation of array form.

    Parameters:
    :   `members` - set members in array form

    Throws:
    :   `NullPointerException` - if `members` is `null` or any
        element of `members` is `null`
    :   `IllegalArgumentException` - if any element of `members` is not
        a length-one or length-two array. Also if `members` is a
        zero-length array or if any member of the set is less than 1.
  + ### NumberUpSupported

    public NumberUpSupported(int member)

    Construct a new number up supported attribute containing a single
    integer. That is, only the one value of `NumberUp` is supported.

    Parameters:
    :   `member` - set member

    Throws:
    :   `IllegalArgumentException` - if `member < 1`
  + ### NumberUpSupported

    public NumberUpSupported(int lowerBound,
    int upperBound)

    Construct a new number up supported attribute containing a single range
    of integers. That is, only those values of `NumberUp` in the one
    range are supported.

    Parameters:
    :   `lowerBound` - lower bound of the range
    :   `upperBound` - upper bound of the range

    Throws:
    :   `IllegalArgumentException` - if a `null` range is specified or
        if a `non-null` range is specified with `lowerBound`
        less than 1
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this number up supported attribute is equivalent to the
    passed in object. To be equivalent, all of the following conditions must
    be true:
    1. `object` is not `null`.+ `object` is an instance of class `NumberUpSupported`.+ This number up supported attribute's members and `object`'s
           members are the same.

    Overrides:
    :   `equals` in class `SetOfIntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this number up
        supported attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `NumberUpSupported`, the category is class
    `NumberUpSupported` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `NumberUpSupported`, the category name is
    `"number-up-supported"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name