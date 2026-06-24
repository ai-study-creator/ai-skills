Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class Copies

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.Copies

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class Copies
extends [IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")
implements [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `Copies` is an integer valued printing attribute class that
specifies the number of copies to be printed.

On many devices the supported number of collated copies will be limited by
the number of physical output bins on the device, and may be different from
the number of uncollated copies which can be supported.

The effect of a `Copies` attribute with a value of *n* on a
multidoc print job (a job with multiple documents) depends on the (perhaps
defaulted) value of the
[`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") attribute:

* `SINGLE_DOCUMENT` -- The result will be *n* copies of a
  single output document comprising all the input docs.* `SINGLE_DOCUMENT_NEW_SHEET` -- The result will be *n* copies
    of a single output document comprising all the input docs, and the first
    impression of each input doc will always start on a new media sheet.* `SEPARATE_DOCUMENTS_UNCOLLATED_COPIES` -- The result will be
      *n* copies of the first input document, followed by *n* copies of
      the second input document, . . . followed by *n* copies of the last
      input document.* `SEPARATE_DOCUMENTS_COLLATED_COPIES` -- The result will be the
        first input document, the second input document, . . . the last input
        document, the group of documents being repeated *n* times.

**IPP Compatibility:** The integer value gives the IPP integer value. The
category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.Copies)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Copies(int value)`

  Construct a new copies attribute with the given integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this copies attribute is equivalent to the passed in
  object.

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

  + ### Copies

    public Copies(int value)

    Construct a new copies attribute with the given integer value.

    Parameters:
    :   `value` - Integer value

    Throws:
    :   `IllegalArgumentException` - if `value < 1`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this copies attribute is equivalent to the passed in
    object. To be equivalent, all of the following conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class `Copies`.+ This copies attribute's value and `object`'s value are equal.

    Overrides:
    :   `equals` in class `IntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this copies
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `Copies`, the category is class `Copies` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `Copies`, the category name is `"copies"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name