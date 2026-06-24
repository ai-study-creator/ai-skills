Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PresentationDirection

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PresentationDirection

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class PresentationDirection
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute")

Class `PresentationDirection` is a printing attribute class, an
enumeration, that is used in conjunction with the [`NumberUp`](NumberUp.md "class in javax.print.attribute.standard")
attribute to indicate the layout of multiple print-stream pages to impose
upon a single side of an instance of a selected medium. This is useful to
mirror the text layout conventions of different scripts. For example, English
is "toright-tobottom", Hebrew is "toleft-tobottom" and Japanese is usually
"tobottom-toleft".

**IPP Compatibility:** This attribute is not an IPP 1.1 attribute; it is
an attribute in the Production Printing Extension
([PDF](ftp://ftp.pwg.org/pub/pwg/standards/temp_archive/pwg5100.3.pdf)) of IPP 1.1. The category name returned by `getName()` is the
IPP attribute name. The enumeration's integer value is the IPP enum value.
The `toString()` method returns the IPP string representation of the
attribute value.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PresentationDirection)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final PresentationDirection`

  `TOBOTTOM_TOLEFT`

  Pages are laid out in columns starting at the top right, proceeding
  towards the bottom & left.

  `static final PresentationDirection`

  `TOBOTTOM_TORIGHT`

  Pages are laid out in columns starting at the top left, proceeding
  towards the bottom & right.

  `static final PresentationDirection`

  `TOLEFT_TOBOTTOM`

  Pages are laid out in rows starting at the top right, proceeding towards
  the left & bottom.

  `static final PresentationDirection`

  `TOLEFT_TOTOP`

  Pages are laid out in rows starting at the bottom right, proceeding
  towards the left & top.

  `static final PresentationDirection`

  `TORIGHT_TOBOTTOM`

  Pages are laid out in rows starting at the top left, proceeding towards
  the right & bottom.

  `static final PresentationDirection`

  `TORIGHT_TOTOP`

  Pages are laid out in rows starting at the bottom left, proceeding
  towards the right & top.

  `static final PresentationDirection`

  `TOTOP_TOLEFT`

  Pages are laid out in columns starting at the bottom right, proceeding
  towards the top & left.

  `static final PresentationDirection`

  `TOTOP_TORIGHT`

  Pages are laid out in columns starting at the bottom left, proceeding
  towards the top & right.
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
  `PresentationDirection`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `PresentationDirection`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### TOBOTTOM\_TORIGHT

    public static final [PresentationDirection](PresentationDirection.md "class in javax.print.attribute.standard") TOBOTTOM\_TORIGHT

    Pages are laid out in columns starting at the top left, proceeding
    towards the bottom & right.
  + ### TOBOTTOM\_TOLEFT

    public static final [PresentationDirection](PresentationDirection.md "class in javax.print.attribute.standard") TOBOTTOM\_TOLEFT

    Pages are laid out in columns starting at the top right, proceeding
    towards the bottom & left.
  + ### TOTOP\_TORIGHT

    public static final [PresentationDirection](PresentationDirection.md "class in javax.print.attribute.standard") TOTOP\_TORIGHT

    Pages are laid out in columns starting at the bottom left, proceeding
    towards the top & right.
  + ### TOTOP\_TOLEFT

    public static final [PresentationDirection](PresentationDirection.md "class in javax.print.attribute.standard") TOTOP\_TOLEFT

    Pages are laid out in columns starting at the bottom right, proceeding
    towards the top & left.
  + ### TORIGHT\_TOBOTTOM

    public static final [PresentationDirection](PresentationDirection.md "class in javax.print.attribute.standard") TORIGHT\_TOBOTTOM

    Pages are laid out in rows starting at the top left, proceeding towards
    the right & bottom.
  + ### TORIGHT\_TOTOP

    public static final [PresentationDirection](PresentationDirection.md "class in javax.print.attribute.standard") TORIGHT\_TOTOP

    Pages are laid out in rows starting at the bottom left, proceeding
    towards the right & top.
  + ### TOLEFT\_TOBOTTOM

    public static final [PresentationDirection](PresentationDirection.md "class in javax.print.attribute.standard") TOLEFT\_TOBOTTOM

    Pages are laid out in rows starting at the top right, proceeding towards
    the left & bottom.
  + ### TOLEFT\_TOTOP

    public static final [PresentationDirection](PresentationDirection.md "class in javax.print.attribute.standard") TOLEFT\_TOTOP

    Pages are laid out in rows starting at the bottom right, proceeding
    towards the left & top.
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `PresentationDirection`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class
    `PresentationDirection`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PresentationDirection` the category is class
    `PresentationDirection` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PresentationDirection` the category name is
    `"presentation-direction"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name