Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class MediaTray

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

[javax.print.attribute.standard.Media](Media.md "class in javax.print.attribute.standard")

javax.print.attribute.standard.MediaTray

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public class MediaTray
extends [Media](Media.md "class in javax.print.attribute.standard")
implements [Attribute](../Attribute.md "interface in javax.print.attribute")

Class `MediaTray` is a subclass of `Media`. Class
`MediaTray` is a printing attribute class, an enumeration, that
specifies the media tray or bin for the job. This attribute can be used
instead of specifying `MediaSize` or `MediaName`.

Class `MediaTray` declares keywords for standard media kind values.
Implementation- or site-defined names for a media kind attribute may also be
created by defining a subclass of class `MediaTray`.

**IPP Compatibility:** `MediaTray` is a representation class for
values of the IPP "media" attribute which name paper trays.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.MediaTray)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final MediaTray`

  `BOTTOM`

  The bottom input tray in the printer.

  `static final MediaTray`

  `ENVELOPE`

  The envelope input tray in the printer.

  `static final MediaTray`

  `LARGE_CAPACITY`

  The large capacity input tray in the printer.

  `static final MediaTray`

  `MAIN`

  The main input tray in the printer.

  `static final MediaTray`

  `MANUAL`

  The manual feed input tray in the printer.

  `static final MediaTray`

  `MIDDLE`

  The middle input tray in the printer.

  `static final MediaTray`

  `SIDE`

  The side input tray.

  `static final MediaTray`

  `TOP`

  The top input tray in the printer.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MediaTray(int value)`

  Construct a new media tray enumeration value with the given integer
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

  + ### TOP

    public static final [MediaTray](MediaTray.md "class in javax.print.attribute.standard") TOP

    The top input tray in the printer.
  + ### MIDDLE

    public static final [MediaTray](MediaTray.md "class in javax.print.attribute.standard") MIDDLE

    The middle input tray in the printer.
  + ### BOTTOM

    public static final [MediaTray](MediaTray.md "class in javax.print.attribute.standard") BOTTOM

    The bottom input tray in the printer.
  + ### ENVELOPE

    public static final [MediaTray](MediaTray.md "class in javax.print.attribute.standard") ENVELOPE

    The envelope input tray in the printer.
  + ### MANUAL

    public static final [MediaTray](MediaTray.md "class in javax.print.attribute.standard") MANUAL

    The manual feed input tray in the printer.
  + ### LARGE\_CAPACITY

    public static final [MediaTray](MediaTray.md "class in javax.print.attribute.standard") LARGE\_CAPACITY

    The large capacity input tray in the printer.
  + ### MAIN

    public static final [MediaTray](MediaTray.md "class in javax.print.attribute.standard") MAIN

    The main input tray in the printer.
  + ### SIDE

    public static final [MediaTray](MediaTray.md "class in javax.print.attribute.standard") SIDE

    The side input tray.
* ## Constructor Details

  + ### MediaTray

    protected MediaTray(int value)

    Construct a new media tray enumeration value with the given integer
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
    :   the value table