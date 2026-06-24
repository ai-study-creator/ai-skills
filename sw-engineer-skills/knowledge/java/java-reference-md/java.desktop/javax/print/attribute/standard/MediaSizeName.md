Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class MediaSizeName

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

[javax.print.attribute.standard.Media](Media.md "class in javax.print.attribute.standard")

javax.print.attribute.standard.MediaSizeName

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public class MediaSizeName
extends [Media](Media.md "class in javax.print.attribute.standard")

Class `MediaSizeName` is a subclass of `Media`.

This attribute can be used instead of specifying `MediaName` or
`MediaTray`.

Class `MediaSizeName` currently declares a few standard media name
values.

**IPP Compatibility:** `MediaSizeName` is a representation class for
values of the IPP "media" attribute which names media sizes. The names of the
media sizes correspond to those in the IPP 1.1 RFC
[RFC 2911](http://www.ietf.org/rfc/rfc2911.txt)

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.MediaSizeName)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final MediaSizeName`

  `A`

  A size.

  `static final MediaSizeName`

  `B`

  B size.

  `static final MediaSizeName`

  `C`

  C size.

  `static final MediaSizeName`

  `D`

  D size.

  `static final MediaSizeName`

  `E`

  E size.

  `static final MediaSizeName`

  `EXECUTIVE`

  executive size.

  `static final MediaSizeName`

  `FOLIO`

  folio size.

  `static final MediaSizeName`

  `INVOICE`

  invoice size.

  `static final MediaSizeName`

  `ISO_A0`

  A0 size.

  `static final MediaSizeName`

  `ISO_A1`

  A1 size.

  `static final MediaSizeName`

  `ISO_A10`

  A10 size.

  `static final MediaSizeName`

  `ISO_A2`

  A2 size.

  `static final MediaSizeName`

  `ISO_A3`

  A3 size.

  `static final MediaSizeName`

  `ISO_A4`

  A4 size.

  `static final MediaSizeName`

  `ISO_A5`

  A5 size.

  `static final MediaSizeName`

  `ISO_A6`

  A6 size.

  `static final MediaSizeName`

  `ISO_A7`

  A7 size.

  `static final MediaSizeName`

  `ISO_A8`

  A8 size.

  `static final MediaSizeName`

  `ISO_A9`

  A9 size.

  `static final MediaSizeName`

  `ISO_B0`

  ISO B0 size.

  `static final MediaSizeName`

  `ISO_B1`

  ISO B1 size.

  `static final MediaSizeName`

  `ISO_B10`

  ISO B10 size.

  `static final MediaSizeName`

  `ISO_B2`

  ISO B2 size.

  `static final MediaSizeName`

  `ISO_B3`

  ISO B3 size.

  `static final MediaSizeName`

  `ISO_B4`

  ISO B4 size.

  `static final MediaSizeName`

  `ISO_B5`

  ISO B5 size.

  `static final MediaSizeName`

  `ISO_B6`

  ISO B6 size.

  `static final MediaSizeName`

  `ISO_B7`

  ISO B7 size.

  `static final MediaSizeName`

  `ISO_B8`

  ISO B8 size.

  `static final MediaSizeName`

  `ISO_B9`

  ISO B9 size.

  `static final MediaSizeName`

  `ISO_C0`

  ISO C0 size.

  `static final MediaSizeName`

  `ISO_C1`

  ISO C1 size.

  `static final MediaSizeName`

  `ISO_C2`

  ISO C2 size.

  `static final MediaSizeName`

  `ISO_C3`

  ISO C3 size.

  `static final MediaSizeName`

  `ISO_C4`

  ISO C4 size.

  `static final MediaSizeName`

  `ISO_C5`

  ISO C5 size.

  `static final MediaSizeName`

  `ISO_C6`

  letter size.

  `static final MediaSizeName`

  `ISO_DESIGNATED_LONG`

  ISO designated long size.

  `static final MediaSizeName`

  `ITALY_ENVELOPE`

  Italy envelope size.

  `static final MediaSizeName`

  `JAPANESE_DOUBLE_POSTCARD`

  Japanese Double Postcard size.

  `static final MediaSizeName`

  `JAPANESE_POSTCARD`

  Japanese Postcard size.

  `static final MediaSizeName`

  `JIS_B0`

  JIS B0 size.

  `static final MediaSizeName`

  `JIS_B1`

  JIS B1 size.

  `static final MediaSizeName`

  `JIS_B10`

  JIS B10 size.

  `static final MediaSizeName`

  `JIS_B2`

  JIS B2 size.

  `static final MediaSizeName`

  `JIS_B3`

  JIS B3 size.

  `static final MediaSizeName`

  `JIS_B4`

  JIS B4 size.

  `static final MediaSizeName`

  `JIS_B5`

  JIS B5 size.

  `static final MediaSizeName`

  `JIS_B6`

  JIS B6 size.

  `static final MediaSizeName`

  `JIS_B7`

  JIS B7 size.

  `static final MediaSizeName`

  `JIS_B8`

  JIS B8 size.

  `static final MediaSizeName`

  `JIS_B9`

  JIS B9 size.

  `static final MediaSizeName`

  `LEDGER`

  ledger size.

  `static final MediaSizeName`

  `MONARCH_ENVELOPE`

  monarch envelope size.

  `static final MediaSizeName`

  `NA_10X13_ENVELOPE`

  10x13 North American envelope size.

  `static final MediaSizeName`

  `NA_10X14_ENVELOPE`

  10x14North American envelope size.

  `static final MediaSizeName`

  `NA_10X15_ENVELOPE`

  10x15 North American envelope size.

  `static final MediaSizeName`

  `NA_5X7`

  5x7 North American paper.

  `static final MediaSizeName`

  `NA_6X9_ENVELOPE`

  6x9 North American envelope size.

  `static final MediaSizeName`

  `NA_7X9_ENVELOPE`

  7x9 North American envelope size.

  `static final MediaSizeName`

  `NA_8X10`

  8x10 North American paper.

  `static final MediaSizeName`

  `NA_9X11_ENVELOPE`

  9x11 North American envelope size.

  `static final MediaSizeName`

  `NA_9X12_ENVELOPE`

  9x12 North American envelope size.

  `static final MediaSizeName`

  `NA_LEGAL`

  legal size.

  `static final MediaSizeName`

  `NA_LETTER`

  letter size.

  `static final MediaSizeName`

  `NA_NUMBER_10_ENVELOPE`

  number 10 envelope size.

  `static final MediaSizeName`

  `NA_NUMBER_11_ENVELOPE`

  number 11 envelope size.

  `static final MediaSizeName`

  `NA_NUMBER_12_ENVELOPE`

  number 12 envelope size.

  `static final MediaSizeName`

  `NA_NUMBER_14_ENVELOPE`

  number 14 envelope size.

  `static final MediaSizeName`

  `NA_NUMBER_9_ENVELOPE`

  number 9 envelope size.

  `static final MediaSizeName`

  `PERSONAL_ENVELOPE`

  personal envelope size.

  `static final MediaSizeName`

  `QUARTO`

  quarto size.

  `static final MediaSizeName`

  `TABLOID`

  tabloid size.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MediaSizeName(int value)`

  Construct a new media size enumeration value with the given integer
  value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected EnumSyntax[]`

  `getEnumValueTable()`

  Returns the enumeration value table for class `MediaSizeName`.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `MediaSizeName`.

  ### Methods inherited from class javax.print.attribute.standard.[Media](Media.md "class in javax.print.attribute.standard")

  `equals, getCategory, getName`

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ISO\_A0

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A0

    A0 size.
  + ### ISO\_A1

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A1

    A1 size.
  + ### ISO\_A2

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A2

    A2 size.
  + ### ISO\_A3

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A3

    A3 size.
  + ### ISO\_A4

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A4

    A4 size.
  + ### ISO\_A5

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A5

    A5 size.
  + ### ISO\_A6

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A6

    A6 size.
  + ### ISO\_A7

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A7

    A7 size.
  + ### ISO\_A8

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A8

    A8 size.
  + ### ISO\_A9

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A9

    A9 size.
  + ### ISO\_A10

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_A10

    A10 size.
  + ### ISO\_B0

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B0

    ISO B0 size.
  + ### ISO\_B1

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B1

    ISO B1 size.
  + ### ISO\_B2

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B2

    ISO B2 size.
  + ### ISO\_B3

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B3

    ISO B3 size.
  + ### ISO\_B4

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B4

    ISO B4 size.
  + ### ISO\_B5

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B5

    ISO B5 size.
  + ### ISO\_B6

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B6

    ISO B6 size.
  + ### ISO\_B7

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B7

    ISO B7 size.
  + ### ISO\_B8

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B8

    ISO B8 size.
  + ### ISO\_B9

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B9

    ISO B9 size.
  + ### ISO\_B10

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_B10

    ISO B10 size.
  + ### JIS\_B0

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B0

    JIS B0 size.
  + ### JIS\_B1

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B1

    JIS B1 size.
  + ### JIS\_B2

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B2

    JIS B2 size.
  + ### JIS\_B3

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B3

    JIS B3 size.
  + ### JIS\_B4

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B4

    JIS B4 size.
  + ### JIS\_B5

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B5

    JIS B5 size.
  + ### JIS\_B6

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B6

    JIS B6 size.
  + ### JIS\_B7

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B7

    JIS B7 size.
  + ### JIS\_B8

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B8

    JIS B8 size.
  + ### JIS\_B9

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B9

    JIS B9 size.
  + ### JIS\_B10

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JIS\_B10

    JIS B10 size.
  + ### ISO\_C0

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_C0

    ISO C0 size.
  + ### ISO\_C1

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_C1

    ISO C1 size.
  + ### ISO\_C2

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_C2

    ISO C2 size.
  + ### ISO\_C3

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_C3

    ISO C3 size.
  + ### ISO\_C4

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_C4

    ISO C4 size.
  + ### ISO\_C5

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_C5

    ISO C5 size.
  + ### ISO\_C6

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_C6

    letter size.
  + ### NA\_LETTER

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_LETTER

    letter size.
  + ### NA\_LEGAL

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_LEGAL

    legal size.
  + ### EXECUTIVE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") EXECUTIVE

    executive size.
  + ### LEDGER

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") LEDGER

    ledger size.
  + ### TABLOID

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") TABLOID

    tabloid size.
  + ### INVOICE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") INVOICE

    invoice size.
  + ### FOLIO

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") FOLIO

    folio size.
  + ### QUARTO

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") QUARTO

    quarto size.
  + ### JAPANESE\_POSTCARD

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JAPANESE\_POSTCARD

    Japanese Postcard size.
  + ### JAPANESE\_DOUBLE\_POSTCARD

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") JAPANESE\_DOUBLE\_POSTCARD

    Japanese Double Postcard size.
  + ### A

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") A

    A size.
  + ### B

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") B

    B size.
  + ### C

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") C

    C size.
  + ### D

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") D

    D size.
  + ### E

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") E

    E size.
  + ### ISO\_DESIGNATED\_LONG

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ISO\_DESIGNATED\_LONG

    ISO designated long size.
  + ### ITALY\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") ITALY\_ENVELOPE

    Italy envelope size.
  + ### MONARCH\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") MONARCH\_ENVELOPE

    monarch envelope size.
  + ### PERSONAL\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") PERSONAL\_ENVELOPE

    personal envelope size.
  + ### NA\_NUMBER\_9\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_NUMBER\_9\_ENVELOPE

    number 9 envelope size.
  + ### NA\_NUMBER\_10\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_NUMBER\_10\_ENVELOPE

    number 10 envelope size.
  + ### NA\_NUMBER\_11\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_NUMBER\_11\_ENVELOPE

    number 11 envelope size.
  + ### NA\_NUMBER\_12\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_NUMBER\_12\_ENVELOPE

    number 12 envelope size.
  + ### NA\_NUMBER\_14\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_NUMBER\_14\_ENVELOPE

    number 14 envelope size.
  + ### NA\_6X9\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_6X9\_ENVELOPE

    6x9 North American envelope size.
  + ### NA\_7X9\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_7X9\_ENVELOPE

    7x9 North American envelope size.
  + ### NA\_9X11\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_9X11\_ENVELOPE

    9x11 North American envelope size.
  + ### NA\_9X12\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_9X12\_ENVELOPE

    9x12 North American envelope size.
  + ### NA\_10X13\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_10X13\_ENVELOPE

    10x13 North American envelope size.
  + ### NA\_10X14\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_10X14\_ENVELOPE

    10x14North American envelope size.
  + ### NA\_10X15\_ENVELOPE

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_10X15\_ENVELOPE

    10x15 North American envelope size.
  + ### NA\_5X7

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_5X7

    5x7 North American paper.
  + ### NA\_8X10

    public static final [MediaSizeName](MediaSizeName.md "class in javax.print.attribute.standard") NA\_8X10

    8x10 North American paper.
* ## Constructor Details

  + ### MediaSizeName

    protected MediaSizeName(int value)

    Construct a new media size enumeration value with the given integer
    value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `MediaSizeName`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `MediaSizeName`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table