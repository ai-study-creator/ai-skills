Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PrinterIsAcceptingJobs

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PrinterIsAcceptingJobs

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintServiceAttribute`

---

public final class PrinterIsAcceptingJobs
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [PrintServiceAttribute](../PrintServiceAttribute.md "interface in javax.print.attribute")

Class `PrinterIsAcceptingJobs` is a printing attribute class, an
enumeration, that indicates whether the printer is currently able to accept
jobs. This value is independent of the [`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") and
[`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard") attributes because its value
does not affect the current job; rather it affects future jobs. If the value
is `NOT_ACCEPTING_JOBS`, the printer will reject jobs even when the
[`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") is `IDLE`. If value is
`ACCEPTING_JOBS`, the Printer will accept jobs even when the
[`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") is `STOPPED`.

**IPP Compatibility:** The IPP boolean value is "true" for
`ACCEPTING_JOBS` and "false" for `NOT_ACCEPTING_JOBS`. The
category name returned by `getName()` is the IPP attribute name. The
enumeration's integer value is the IPP enum value. The `toString()`
method returns the IPP string representation of the attribute value.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PrinterIsAcceptingJobs)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final PrinterIsAcceptingJobs`

  `ACCEPTING_JOBS`

  The printer is currently accepting jobs.

  `static final PrinterIsAcceptingJobs`

  `NOT_ACCEPTING_JOBS`

  The printer is currently rejecting any jobs sent to it.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PrinterIsAcceptingJobs(int value)`

  Construct a new printer is accepting jobs enumeration value with the
  given integer value.
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
  `PrinterIsAcceptingJobs`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `PrinterIsAcceptingJobs`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NOT\_ACCEPTING\_JOBS

    public static final [PrinterIsAcceptingJobs](PrinterIsAcceptingJobs.md "class in javax.print.attribute.standard") NOT\_ACCEPTING\_JOBS

    The printer is currently rejecting any jobs sent to it.
  + ### ACCEPTING\_JOBS

    public static final [PrinterIsAcceptingJobs](PrinterIsAcceptingJobs.md "class in javax.print.attribute.standard") ACCEPTING\_JOBS

    The printer is currently accepting jobs.
* ## Constructor Details

  + ### PrinterIsAcceptingJobs

    protected PrinterIsAcceptingJobs(int value)

    Construct a new printer is accepting jobs enumeration value with the
    given integer value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `PrinterIsAcceptingJobs`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class
    `PrinterIsAcceptingJobs`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PrinterIsAcceptingJobs`, the category is class
    `PrinterIsAcceptingJobs` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PrinterIsAcceptingJobs`, the category name is
    `"printer-is-accepting-jobs"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name