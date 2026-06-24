Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PrintQuality

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PrintQuality

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public class PrintQuality
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [DocAttribute](../DocAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `PrintQuality` is a printing attribute class, an enumeration,
that specifies the print quality that the printer uses for the job.

**IPP Compatibility:** The category name returned by `getName()` is
the IPP attribute name. The enumeration's integer value is the IPP enum
value. The `toString()` method returns the IPP string representation of
the attribute value.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PrintQuality)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final PrintQuality`

  `DRAFT`

  Lowest quality available on the printer.

  `static final PrintQuality`

  `HIGH`

  Highest quality available on the printer.

  `static final PrintQuality`

  `NORMAL`

  Normal or intermediate quality on the printer.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PrintQuality(int value)`

  Construct a new print quality enumeration value with the given integer
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

  Returns the enumeration value table for class `PrintQuality`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected int`

  `getOffset()`

  Returns the lowest integer value used by class `PrintQuality`.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `PrintQuality`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### DRAFT

    public static final [PrintQuality](PrintQuality.md "class in javax.print.attribute.standard") DRAFT

    Lowest quality available on the printer.
  + ### NORMAL

    public static final [PrintQuality](PrintQuality.md "class in javax.print.attribute.standard") NORMAL

    Normal or intermediate quality on the printer.
  + ### HIGH

    public static final [PrintQuality](PrintQuality.md "class in javax.print.attribute.standard") HIGH

    Highest quality available on the printer.
* ## Constructor Details

  + ### PrintQuality

    protected PrintQuality(int value)

    Construct a new print quality enumeration value with the given integer
    value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `PrintQuality`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `PrintQuality`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getOffset

    protected int getOffset()

    Returns the lowest integer value used by class `PrintQuality`.

    Overrides:
    :   `getOffset` in class `EnumSyntax`

    Returns:
    :   the offset of the lowest enumeration value
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PrintQuality` and any vendor-defined subclasses, the
    category is class `PrintQuality` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PrintQuality` and any vendor-defined subclasses, the
    category name is `"print-quality"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name