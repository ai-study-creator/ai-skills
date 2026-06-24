Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class NumberUp

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.NumberUp

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class NumberUp
extends [IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")
implements [DocAttribute](../DocAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `NumberUp` is an integer valued printing attribute class that
specifies the number of print-stream pages to impose upon a single side of an
instance of a selected medium. That is, if the NumberUp value is *n,*
the printer must place *n* print-stream pages on a single side of an
instance of the selected medium. To accomplish this, the printer may add some
sort of translation, scaling, or rotation. This attribute primarily controls
the translation, scaling and rotation of print-stream pages.

The effect of a `NumberUp` attribute on a multidoc print job (a job
with multiple documents) depends on whether all the docs have the same number
up values specified or whether different docs have different number up values
specified, and on the (perhaps defaulted) value of the
[`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") attribute.

* If all the docs have the same number up value *n* specified, then
  any value of [`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard")
  makes sense, and the printer's processing depends on the
  [`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") value:
  + `SINGLE_DOCUMENT` -- All the input docs will be combined
    together into one output document. Each media impression will consist of
    *n*m print-stream pages from the output document.+ `SINGLE_DOCUMENT_NEW_SHEET` -- All the input docs will be
      combined together into one output document. Each media impression will
      consist of *n* print-stream pages from the output document. However,
      the first impression of each input doc will always start on a new media
      sheet; this means the last impression of an input doc may have fewer than
      *n* print-stream pages on it.+ `SEPARATE_DOCUMENTS_UNCOLLATED_COPIES` -- The input docs will
        remain separate. Each media impression will consist of *n*
        print-stream pages from the input doc. Since the input docs are separate,
        the first impression of each input doc will always start on a new media
        sheet; this means the last impression of an input doc may have fewer than
        *n* print-stream pages on it.+ `SEPARATE_DOCUMENTS_COLLATED_COPIES` -- The input docs will
          remain separate. Each media impression will consist of *n*
          print-stream pages from the input doc. Since the input docs are separate,
          the first impression of each input doc will always start on a new media
          sheet; this means the last impression of an input doc may have fewer than
          *n* print-stream pages on it.
  + `SINGLE_DOCUMENT` -- All the input docs will be combined
    together into one output document. Each media impression will consist of
    *ni* print-stream pages from the output document, where
    *i* is the number of the input doc corresponding to that point in
    the output document. When the next input doc has a different number up
    value from the previous input doc, the first print-stream page of the
    next input doc goes at the start of the next media impression, possibly
    leaving fewer than the full number of print-stream pages on the previous
    media impression.+ `SINGLE_DOCUMENT_NEW_SHEET` -- All the input docs will be
      combined together into one output document. Each media impression will
      consist of *n* print-stream pages from the output document. However,
      the first impression of each input doc will always start on a new media
      sheet; this means the last impression of an input doc may have fewer than
      *n* print-stream pages on it.+ `SEPARATE_DOCUMENTS_UNCOLLATED_COPIES` -- The input docs will
        remain separate. For input doc *i,* each media impression will
        consist of *ni* print-stream pages from the input doc.
        Since the input docs are separate, the first impression of each input doc
        will always start on a new media sheet; this means the last impression of
        an input doc may have fewer than *ni* print-stream pages
        on it.+ `SEPARATE_DOCUMENTS_COLLATED_COPIES` -- The input docs will
          remain separate. For input doc *i,* each media impression will
          consist of *ni* print-stream pages from the input doc.
          Since the input docs are separate, the first impression of each input doc
          will always start on a new media sheet; this means the last impression of
          an input doc may have fewer than *ni* print-stream pages
          on it.

**IPP Compatibility:** The integer value gives the IPP integer value. The
category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.NumberUp)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NumberUp(int value)`

  Construct a new number up attribute with the given integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this number up attribute is equivalent to the passed in
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

  + ### NumberUp

    public NumberUp(int value)

    Construct a new number up attribute with the given integer value.

    Parameters:
    :   `value` - Integer value

    Throws:
    :   `IllegalArgumentException` - if `value < 1`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this number up attribute is equivalent to the passed in
    object. To be equivalent, all of the following conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class `NumberUp`.+ This number up attribute's value and `object`'s value are
           equal.

    Overrides:
    :   `equals` in class `IntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this number up
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `NumberUp`, the category is class `NumberUp`
    itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `NumberUp`, the category name is `"number-up"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name