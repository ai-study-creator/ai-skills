Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class Compression

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.Compression

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`

---

public class Compression
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [DocAttribute](../DocAttribute.md "interface in javax.print.attribute")

Class `Compression` is a printing attribute class, an enumeration, that
specifies how print data is compressed. `Compression` is an attribute
of the print data (the doc), not of the Print Job. If a `Compression`
attribute is not specified for a doc, the printer assumes the doc's print
data is uncompressed (i.e., the default Compression value is always
[`NONE`](#NONE)).

**IPP Compatibility:** The category name returned by `getName()` is
the IPP attribute name. The enumeration's integer value is the IPP enum
value. The `toString()` method returns the IPP string representation of
the attribute value.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.Compression)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Compression`

  `COMPRESS`

  UNIX compression technology.

  `static final Compression`

  `DEFLATE`

  ZIP public domain inflate/deflate compression technology.

  `static final Compression`

  `GZIP`

  GNU zip compression technology described in
  [RFC 1952](http://www.ietf.org/rfc/rfc1952.txt).

  `static final Compression`

  `NONE`

  No compression is used.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Compression(int value)`

  Construct a new compression enumeration value with the given integer
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

  Returns the enumeration value table for class `Compression`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `Compression`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NONE

    public static final [Compression](Compression.md "class in javax.print.attribute.standard") NONE

    No compression is used.
  + ### DEFLATE

    public static final [Compression](Compression.md "class in javax.print.attribute.standard") DEFLATE

    ZIP public domain inflate/deflate compression technology.
  + ### GZIP

    public static final [Compression](Compression.md "class in javax.print.attribute.standard") GZIP

    GNU zip compression technology described in
    [RFC 1952](http://www.ietf.org/rfc/rfc1952.txt).
  + ### COMPRESS

    public static final [Compression](Compression.md "class in javax.print.attribute.standard") COMPRESS

    UNIX compression technology.
* ## Constructor Details

  + ### Compression

    protected Compression(int value)

    Construct a new compression enumeration value with the given integer
    value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `Compression`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `Compression`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `Compression` and any vendor-defined subclasses, the
    category is class `Compression` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `Compression` and any vendor-defined subclasses, the
    category name is `"compression"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name