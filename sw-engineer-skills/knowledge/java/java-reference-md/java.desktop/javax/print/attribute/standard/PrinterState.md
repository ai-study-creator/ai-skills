Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PrinterState

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PrinterState

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintServiceAttribute`

---

public final class PrinterState
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [PrintServiceAttribute](../PrintServiceAttribute.md "interface in javax.print.attribute")

Class `PrinterState` is a printing attribute class, an enumeration,
that identifies the current state of a printer. Class `PrinterState`
defines standard printer state values. A Print Service implementation only
needs to report those printer states which are appropriate for the particular
implementation; it does not have to report every defined printer state. The
[`PrinterStateReasons`](PrinterStateReasons.md "class in javax.print.attribute.standard") attribute augments the
`PrinterState` attribute to give more detailed information about the
printer in given printer state.

**IPP Compatibility:** The category name returned by `getName()` is
the IPP attribute name. The enumeration's integer value is the IPP enum
value. The `toString()` method returns the IPP string representation of
the attribute value.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PrinterState)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final PrinterState`

  `IDLE`

  Indicates that new jobs can start processing without waiting.

  `static final PrinterState`

  `PROCESSING`

  Indicates that jobs are processing; new jobs will wait before processing.

  `static final PrinterState`

  `STOPPED`

  Indicates that no jobs can be processed and intervention is required.

  `static final PrinterState`

  `UNKNOWN`

  The printer state is unknown.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PrinterState(int value)`

  Construct a new printer state enumeration value with the given integer
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

  Returns the enumeration value table for class `PrinterState`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `PrinterState`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### UNKNOWN

    public static final [PrinterState](PrinterState.md "class in javax.print.attribute.standard") UNKNOWN

    The printer state is unknown.
  + ### IDLE

    public static final [PrinterState](PrinterState.md "class in javax.print.attribute.standard") IDLE

    Indicates that new jobs can start processing without waiting.
  + ### PROCESSING

    public static final [PrinterState](PrinterState.md "class in javax.print.attribute.standard") PROCESSING

    Indicates that jobs are processing; new jobs will wait before processing.
  + ### STOPPED

    public static final [PrinterState](PrinterState.md "class in javax.print.attribute.standard") STOPPED

    Indicates that no jobs can be processed and intervention is required.
* ## Constructor Details

  + ### PrinterState

    protected PrinterState(int value)

    Construct a new printer state enumeration value with the given integer
    value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `PrinterState`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `PrinterState`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PrinterState`, the category is class
    `PrinterState` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PrinterState`, the category name is
    `"printer-state"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name