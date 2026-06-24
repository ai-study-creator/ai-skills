Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class ColorSupported

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.ColorSupported

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintServiceAttribute`

---

public final class ColorSupported
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [PrintServiceAttribute](../PrintServiceAttribute.md "interface in javax.print.attribute")

Class `ColorSupported` is a printing attribute class, an enumeration,
that identifies whether the device is capable of any type of color printing
at all, including highlight color as well as full process color. All document
instructions having to do with color are embedded within the print data (none
are attributes attached to the job outside the print data).

Note: End users are able to determine the nature and details of the color
support by querying the
[`PrinterMoreInfoManufacturer`](PrinterMoreInfoManufacturer.md "class in javax.print.attribute.standard") attribute.

Don't confuse the `ColorSupported` attribute with the
[`Chromaticity`](Chromaticity.md "class in javax.print.attribute.standard") attribute.
[`Chromaticity`](Chromaticity.md "class in javax.print.attribute.standard") is an attribute the client can specify for
a job to tell the printer whether to print a document in monochrome or color,
possibly causing the printer to print a color document in monochrome.
`ColorSupported` is a printer description attribute that tells whether
the printer can print in color regardless of how the client specifies to
print any particular document.

**IPP Compatibility:** The IPP boolean value is "true" for SUPPORTED and
"false" for NOT\_SUPPORTED. The category name returned by `getName()` is
the IPP attribute name. The enumeration's integer value is the IPP enum
value. The `toString()` method returns the IPP string representation of
the attribute value.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.ColorSupported)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ColorSupported`

  `NOT_SUPPORTED`

  The printer is not capable of any type of color printing.

  `static final ColorSupported`

  `SUPPORTED`

  The printer is capable of some type of color printing, such as highlight
  color or full process color.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ColorSupported(int value)`

  Construct a new color supported enumeration value with the given integer
  value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `protected EnumSyntax[]`

  `getEnumValueTable()`

  Returns the enumeration value table for class `ColorSupported`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `ColorSupported`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NOT\_SUPPORTED

    public static final [ColorSupported](ColorSupported.md "class in javax.print.attribute.standard") NOT\_SUPPORTED

    The printer is not capable of any type of color printing.
  + ### SUPPORTED

    public static final [ColorSupported](ColorSupported.md "class in javax.print.attribute.standard") SUPPORTED

    The printer is capable of some type of color printing, such as highlight
    color or full process color.
* ## Constructor Details

  + ### ColorSupported

    protected ColorSupported(int value)

    Construct a new color supported enumeration value with the given integer
    value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `ColorSupported`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `ColorSupported`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `ColorSupported`, the category is class
    `ColorSupported` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `ColorSupported`, the category name is
    `"color-supported"`

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name