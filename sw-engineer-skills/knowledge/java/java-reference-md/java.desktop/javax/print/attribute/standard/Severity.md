Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class Severity

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.Severity

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`

---

public final class Severity
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [Attribute](../Attribute.md "interface in javax.print.attribute")

Class `Severity` is a printing attribute class, an enumeration, that
denotes the severity of a [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard")
attribute.

Instances of `Severity` do not appear in a Print Service's attribute
set directly. Rather, a [`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard")
attribute appears in the Print Service's attribute set.
The [`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard") attribute contains zero,
one, or more than one [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") objects
which pertain to the Print Service's status, and each
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") object is associated with a
Severity level of `REPORT` (least severe), `WARNING`, or
`ERROR` (most severe). The printer adds a
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") object to the Print Service's
[`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard") attribute when the
corresponding condition becomes true of the printer, and the printer removes
the [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") object again when the
corresponding condition becomes false, regardless of whether the Print
Service's overall [`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") also changed.

**IPP Compatibility:** `Severity.toString()` returns either "error",
"warning", or "report". The string values returned by each individual
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") and associated [`Severity`](Severity.md "class in javax.print.attribute.standard") object's
`toString()` methods, concatenated together with a hyphen (`"-"`)
in between, gives the IPP keyword value for a [`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard").
The category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.Severity)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Severity`

  `ERROR`

  Indicates that the [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") is an
  "error" (most severe).

  `static final Severity`

  `REPORT`

  Indicates that the [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") is a
  "report" (least severe).

  `static final Severity`

  `WARNING`

  Indicates that the [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") is a
  "warning." An implementation may choose to omit some or all warnings.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Severity(int value)`

  Construct a new severity enumeration value with the given integer value.
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

  Returns the enumeration value table for class `Severity`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `Severity`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### REPORT

    public static final [Severity](Severity.md "class in javax.print.attribute.standard") REPORT

    Indicates that the [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") is a
    "report" (least severe). An implementation may choose to omit some or all
    reports. Some reports specify finer granularity about the printer state;
    others serve as a precursor to a warning. A report must contain nothing
    that could affect the printed output.
  + ### WARNING

    public static final [Severity](Severity.md "class in javax.print.attribute.standard") WARNING

    Indicates that the [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") is a
    "warning." An implementation may choose to omit some or all warnings.
    Warnings serve as a precursor to an error. A warning must contain nothing
    that prevents a job from completing, though in some cases the output may
    be of lower quality.
  + ### ERROR

    public static final [Severity](Severity.md "class in javax.print.attribute.standard") ERROR

    Indicates that the [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") is an
    "error" (most severe). An implementation must include all errors. If this
    attribute contains one or more errors, the printer's
    [`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") must be `STOPPED`.
* ## Constructor Details

  + ### Severity

    protected Severity(int value)

    Construct a new severity enumeration value with the given integer value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `Severity`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `Severity`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `Severity`, the category is class
    `Severity` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `Severity`, the category name is `"severity"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name