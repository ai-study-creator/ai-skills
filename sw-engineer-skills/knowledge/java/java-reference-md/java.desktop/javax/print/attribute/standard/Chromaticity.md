Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class Chromaticity

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.Chromaticity

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class Chromaticity
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [DocAttribute](../DocAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `Chromaticity` is a printing attribute class, an enumeration,
that specifies monochrome or color printing. This is used by a print client
to specify how the print data should be generated or processed. It is not
descriptive of the color capabilities of the device. Query the service's
[`ColorSupported`](ColorSupported.md "class in javax.print.attribute.standard") attribute to determine if the device
can be verified to support color printing.

The table below shows the effects of specifying a Chromaticity attribute of
[`MONOCHROME`](#MONOCHROME) or [`COLOR`](#COLOR) for a monochrome or
color document.

Shows effects of specifying `MONOCHROME` or `COLOR`
Chromaticity attributes

| Chromaticity Attribute Effect on Monochrome Document Effect on Color Document | | |
| --- | --- | --- |
| [`MONOCHROME`](#MONOCHROME) Printed as is, in monochrome Printed in monochrome, with colors converted to shades of gray|  |  |  | | --- | --- | --- | | [`COLOR`](#COLOR) Printed as is, in monochrome Printed as is, in color | | | | | |

**IPP Compatibility:** Chromaticity is not an IPP attribute at present.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.Chromaticity)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Chromaticity`

  `COLOR`

  Color printing.

  `static final Chromaticity`

  `MONOCHROME`

  Monochrome printing.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Chromaticity(int value)`

  Construct a new chromaticity enumeration value with the given integer
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

  Returns the enumeration value table for class `Chromaticity`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `Chromaticity`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### MONOCHROME

    public static final [Chromaticity](Chromaticity.md "class in javax.print.attribute.standard") MONOCHROME

    Monochrome printing.
  + ### COLOR

    public static final [Chromaticity](Chromaticity.md "class in javax.print.attribute.standard") COLOR

    Color printing.
* ## Constructor Details

  + ### Chromaticity

    protected Chromaticity(int value)

    Construct a new chromaticity enumeration value with the given integer
    value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `Chromaticity`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `Chromaticity`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `Chromaticity`, the category is the class
    `Chromaticity` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `Chromaticity`, the category name is
    `"chromaticity"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name