Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class DialogTypeSelection

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.DialogTypeSelection

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintRequestAttribute`

---

public final class DialogTypeSelection
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute")

Class `DialogTypeSelection` is a printing attribute class, an
enumeration, that indicates the user dialog type to be used for specifying
printing options. If `NATIVE` is specified, then where available, a
native platform dialog is displayed. If `COMMON` is specified, a
cross-platform print dialog is displayed.

This option to specify a native dialog for use with an IPP attribute set
provides a standard way to reflect back of the setting and option changes
made by a user to the calling application, and integrates the native dialog
into the Java printing APIs. But note that some options and settings in a
native dialog may not necessarily map to IPP attributes as they may be
non-standard platform, or even printer specific options.

**IPP Compatibility:** This is not an IPP attribute.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.DialogTypeSelection)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final DialogTypeSelection`

  `COMMON`

  The cross-platform print dialog should be used.

  `static final DialogTypeSelection`

  `NATIVE`

  The native platform print dialog should be used.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DialogTypeSelection(int value)`

  Constructs a new dialog type selection enumeration value with the given
  integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Class<? extends Attribute>`

  `getCategory()`

  Gets the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `protected EnumSyntax[]`

  `getEnumValueTable()`

  Returns the enumeration value table for class
  `DialogTypeSelection`.

  `final String`

  `getName()`

  Gets the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `DialogTypeSelection`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NATIVE

    public static final [DialogTypeSelection](DialogTypeSelection.md "class in javax.print.attribute.standard") NATIVE

    The native platform print dialog should be used.
  + ### COMMON

    public static final [DialogTypeSelection](DialogTypeSelection.md "class in javax.print.attribute.standard") COMMON

    The cross-platform print dialog should be used.
* ## Constructor Details

  + ### DialogTypeSelection

    protected DialogTypeSelection(int value)

    Constructs a new dialog type selection enumeration value with the given
    integer value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `DialogTypeSelection`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class
    `DialogTypeSelection`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Gets the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `DialogTypeSelection` the category is class
    `DialogTypeSelection` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Gets the name of the category of which this attribute value is an
    instance.

    For class `DialogTypeSelection` the category name is
    `"dialog-type-selection"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name