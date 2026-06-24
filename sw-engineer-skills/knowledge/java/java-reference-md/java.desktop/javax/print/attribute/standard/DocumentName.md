Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class DocumentName

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.TextSyntax](../TextSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.DocumentName

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`

---

public final class DocumentName
extends [TextSyntax](../TextSyntax.md "class in javax.print.attribute")
implements [DocAttribute](../DocAttribute.md "interface in javax.print.attribute")

Class `DocumentName` is a printing attribute class, a text attribute,
that specifies the name of a document. `DocumentName` is an attribute
of the print data (the doc), not of the Print Job. A document's name is an
arbitrary string defined by the client. However if a JobName is not
specified, the `DocumentName` should be used instead, which implies
that supporting specification of `DocumentName` requires reporting of
JobName and vice versa. See [`JobName`](JobName.md "class in javax.print.attribute.standard") for more information.

**IPP Compatibility:** The string value gives the IPP name value. The
locale gives the IPP natural language. The category name returned by
`getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.DocumentName)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DocumentName(String documentName,
  Locale locale)`

  Constructs a new document name attribute with the given document name and
  locale.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this document name attribute is equivalent to the passed
  in object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[TextSyntax](../TextSyntax.md "class in javax.print.attribute")

  `getLocale, getValue, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DocumentName

    public DocumentName([String](../../../../../java.base/java/lang/String.md "class in java.lang") documentName,
    [Locale](../../../../../java.base/java/util/Locale.md "class in java.util") locale)

    Constructs a new document name attribute with the given document name and
    locale.

    Parameters:
    :   `documentName` - document name
    :   `locale` - natural language of the text string. `null` is
        interpreted to mean the default locale as returned by
        `Locale.getDefault()`

    Throws:
    :   `NullPointerException` - if `documentName` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this document name attribute is equivalent to the passed
    in object. To be equivalent, all of the following conditions must be
    true:
    1. `object` is not `null`.+ `object` is an instance of class `DocumentName`.+ This document name attribute's underlying string and
           `object`'s underlying string are equal.+ This document name attribute's locale and `object`'s locale
             are equal.

    Overrides:
    :   `equals` in class `TextSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this document
        name attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `DocumentName`, the category is class
    `DocumentName` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `DocumentName`, the category name is
    `"document-name"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name