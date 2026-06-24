Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobSheets

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobSheets

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public class JobSheets
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `JobSheets` is a printing attribute class, an enumeration, that
determines which job start and end sheets, if any, must be printed with a
job. Class `JobSheets` declares keywords for standard job sheets
values. Implementation- or site-defined names for a job sheets attribute may
also be created by defining a subclass of class `JobSheets`.

The effect of a `JobSheets` attribute on multidoc print jobs (jobs with
multiple documents) may be affected by the
[`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") job attribute,
depending on the meaning of the particular `JobSheets` value.

**IPP Compatibility:** The category name returned by `getName()` is
the IPP attribute name. The enumeration's integer value is the IPP enum
value. The `toString()` method returns the IPP string representation of
the attribute value. For a subclass, the attribute value must be localized to
give the IPP name and natural language values.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobSheets)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final JobSheets`

  `NONE`

  No job sheets are printed.

  `static final JobSheets`

  `STANDARD`

  One or more site specific standard job sheets are printed.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `JobSheets(int value)`

  Construct a new job sheets enumeration value with the given integer
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

  Returns the enumeration value table for class `JobSheets`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `JobSheets`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NONE

    public static final [JobSheets](JobSheets.md "class in javax.print.attribute.standard") NONE

    No job sheets are printed.
  + ### STANDARD

    public static final [JobSheets](JobSheets.md "class in javax.print.attribute.standard") STANDARD

    One or more site specific standard job sheets are printed. e.g. a single
    start sheet is printed, or both start and end sheets are printed.
* ## Constructor Details

  + ### JobSheets

    protected JobSheets(int value)

    Construct a new job sheets enumeration value with the given integer
    value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `JobSheets`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `JobSheets`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobSheets` and any vendor-defined subclasses, the
    category is class `JobSheets` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobSheets` and any vendor-defined subclasses, the
    category name is `"job-sheets"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name