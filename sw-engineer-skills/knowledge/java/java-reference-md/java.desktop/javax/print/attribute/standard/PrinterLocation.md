Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PrinterLocation

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.TextSyntax](../TextSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PrinterLocation

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintServiceAttribute`

---

public final class PrinterLocation
extends [TextSyntax](../TextSyntax.md "class in javax.print.attribute")
implements [PrintServiceAttribute](../PrintServiceAttribute.md "interface in javax.print.attribute")

Class `PrinterLocation` is a printing attribute class, a text
attribute, that identifies the location of the device. This could include
things like: `"in Room 123A, second floor of building XYZ"`.

**IPP Compatibility:** The string value gives the IPP name value. The
locale gives the IPP natural language. The category name returned by
`getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PrinterLocation)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrinterLocation(String location,
  Locale locale)`

  Constructs a new printer location attribute with the given location and
  locale.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this printer location attribute is equivalent to the
  passed in object.

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

  + ### PrinterLocation

    public PrinterLocation([String](../../../../../java.base/java/lang/String.md "class in java.lang") location,
    [Locale](../../../../../java.base/java/util/Locale.md "class in java.util") locale)

    Constructs a new printer location attribute with the given location and
    locale.

    Parameters:
    :   `location` - printer location
    :   `locale` - natural language of the text string. `null` is
        interpreted to mean the default locale as returned by
        `Locale.getDefault()`

    Throws:
    :   `NullPointerException` - if `location` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this printer location attribute is equivalent to the
    passed in object. To be equivalent, all of the following conditions must
    be true:
    1. `object` is not `null`.+ `object` is an instance of class `PrinterLocation`.+ This printer location attribute's underlying string and
           `object`'s underlying string are equal.+ This printer location attribute's locale and `object`'s
             locale are equal.

    Overrides:
    :   `equals` in class `TextSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this printer
        location attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PrinterLocation`, the category is class
    `PrinterLocation` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PrinterLocation`, the category name is
    `"printer-location"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name