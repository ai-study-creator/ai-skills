Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PDLOverrideSupported

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PDLOverrideSupported

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintServiceAttribute`

---

public class PDLOverrideSupported
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [PrintServiceAttribute](../PrintServiceAttribute.md "interface in javax.print.attribute")

Class `PDLOverrideSupported` is a printing attribute class, an
enumeration, that expresses the printer's ability to attempt to override
processing instructions embedded in documents' print data with processing
instructions specified as attributes outside the print data.

**IPP Compatibility:** The category name returned by `getName()` is
the IPP attribute name. The enumeration's integer value is the IPP enum
value. The `toString()` method returns the IPP string representation of
the attribute value.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PDLOverrideSupported)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final PDLOverrideSupported`

  `ATTEMPTED`

  The printer attempts to make the external job attribute values take
  precedence over embedded instructions in the documents' print data,
  however there is no guarantee.

  `static final PDLOverrideSupported`

  `NOT_ATTEMPTED`

  The printer makes no attempt to make the external job attribute values
  take precedence over embedded instructions in the documents' print data.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PDLOverrideSupported(int value)`

  Construct a new PDL override supported enumeration value with the given
  integer value.
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

  Returns the enumeration value table for class
  `PDLOverrideSupported`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `PDLOverrideSupported`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NOT\_ATTEMPTED

    public static final [PDLOverrideSupported](PDLOverrideSupported.md "class in javax.print.attribute.standard") NOT\_ATTEMPTED

    The printer makes no attempt to make the external job attribute values
    take precedence over embedded instructions in the documents' print data.
  + ### ATTEMPTED

    public static final [PDLOverrideSupported](PDLOverrideSupported.md "class in javax.print.attribute.standard") ATTEMPTED

    The printer attempts to make the external job attribute values take
    precedence over embedded instructions in the documents' print data,
    however there is no guarantee.
* ## Constructor Details

  + ### PDLOverrideSupported

    protected PDLOverrideSupported(int value)

    Construct a new PDL override supported enumeration value with the given
    integer value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `PDLOverrideSupported`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class
    `PDLOverrideSupported`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PDLOverrideSupported` and any vendor-defined subclasses,
    the category is class `PDLOverrideSupported` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PDLOverrideSupported` and any vendor-defined subclasses,
    the category name is `"pdl-override-supported"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name