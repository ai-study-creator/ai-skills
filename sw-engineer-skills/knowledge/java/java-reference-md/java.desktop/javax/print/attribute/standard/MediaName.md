Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class MediaName

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

[javax.print.attribute.standard.Media](Media.md "class in javax.print.attribute.standard")

javax.print.attribute.standard.MediaName

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public class MediaName
extends [Media](Media.md "class in javax.print.attribute.standard")
implements [Attribute](../Attribute.md "interface in javax.print.attribute")

Class `MediaName` is a subclass of `Media`, a printing attribute
class (an enumeration) that specifies the media for a print job as a name.

This attribute can be used instead of specifying `MediaSize` or
`MediaTray`.

Class `MediaName` currently declares a few standard media names.
Implementation- or site-defined names for a media name attribute may also be
created by defining a subclass of class `MediaName`.

**IPP Compatibility:** `MediaName` is a representation class for
values of the IPP "media" attribute which names media.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.MediaName)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final MediaName`

  `ISO_A4_TRANSPARENT`

  A4 transparency.

  `static final MediaName`

  `ISO_A4_WHITE`

  white A4 paper.

  `static final MediaName`

  `NA_LETTER_TRANSPARENT`

  letter transparency.

  `static final MediaName`

  `NA_LETTER_WHITE`

  white letter paper.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MediaName(int value)`

  Constructs a new media name enumeration value with the given integer
  value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected EnumSyntax[]`

  `getEnumValueTable()`

  Returns the enumeration value table for class `MediaTray`.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `MediaTray`.

  ### Methods inherited from class javax.print.attribute.standard.[Media](Media.md "class in javax.print.attribute.standard")

  `equals, getCategory, getName`

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface javax.print.attribute.[Attribute](../Attribute.md "interface in javax.print.attribute")

  `getCategory, getName`

* ## Field Details

  + ### NA\_LETTER\_WHITE

    public static final [MediaName](MediaName.md "class in javax.print.attribute.standard") NA\_LETTER\_WHITE

    white letter paper.
  + ### NA\_LETTER\_TRANSPARENT

    public static final [MediaName](MediaName.md "class in javax.print.attribute.standard") NA\_LETTER\_TRANSPARENT

    letter transparency.
  + ### ISO\_A4\_WHITE

    public static final [MediaName](MediaName.md "class in javax.print.attribute.standard") ISO\_A4\_WHITE

    white A4 paper.
  + ### ISO\_A4\_TRANSPARENT

    public static final [MediaName](MediaName.md "class in javax.print.attribute.standard") ISO\_A4\_TRANSPARENT

    A4 transparency.
* ## Constructor Details

  + ### MediaName

    protected MediaName(int value)

    Constructs a new media name enumeration value with the given integer
    value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `MediaTray`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `MediaTray`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the enumeration value table