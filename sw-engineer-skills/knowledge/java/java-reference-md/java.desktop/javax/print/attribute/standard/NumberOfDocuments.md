Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class NumberOfDocuments

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.NumberOfDocuments

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`

---

public final class NumberOfDocuments
extends [IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")
implements [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `NumberOfDocuments` is an integer valued printing attribute that
indicates the number of individual docs the printer has accepted for this
job, regardless of whether the docs' print data has reached the printer or
not.

**IPP Compatibility:** The integer value gives the IPP integer value. The
category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.NumberOfDocuments)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NumberOfDocuments(int value)`

  Construct a new number of documents attribute with the given integer
  value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this number of documents attribute is equivalent to the
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

  + ### NumberOfDocuments

    public NumberOfDocuments(int value)

    Construct a new number of documents attribute with the given integer
    value.

    Parameters:
    :   `value` - Integer value

    Throws:
    :   `IllegalArgumentException` - if `value` is negative
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this number of documents attribute is equivalent to the
    passed in object. To be equivalent, all of the following conditions must
    be true:
    1. `object` is not `null`.+ `object` is an instance of class `NumberOfDocuments`.+ This number of documents attribute's value and `object`'s
           value are equal.

    Overrides:
    :   `equals` in class `IntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this number of
        documents attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `NumberOfDocuments`, the category is class
    `NumberOfDocuments` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `NumberOfDocuments`, the category name is
    `"number-of-documents"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name