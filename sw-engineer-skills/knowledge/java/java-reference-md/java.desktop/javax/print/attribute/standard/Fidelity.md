Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class Fidelity

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.Fidelity

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class Fidelity
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute")

Class `Fidelity` is a printing attribute class, an enumeration, that
indicates whether total fidelity to client supplied print request attributes
is required. If `FIDELITY_TRUE` is specified and a service cannot print
the job exactly as specified it must reject the job. If
`FIDELITY_FALSE` is specified a reasonable attempt to print the job is
acceptable. If not supplied the default is `FIDELITY_FALSE`.

**IPP Compatibility:** The IPP boolean value is "true" for
`FIDELITY_TRUE` and "false" for `FIDELITY_FALSE`. The category
name returned by `getName()` is the IPP attribute name. The
enumeration's integer value is the IPP enum value. The `toString()`
method returns the IPP string representation of the attribute value. See
[RFC 2911](http://www.ietf.org/rfc/rfc2911.txt) Section 15.1 for a
fuller description of the IPP fidelity attribute.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.Fidelity)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Fidelity`

  `FIDELITY_FALSE`

  The printer should make reasonable attempts to print the job, even if it
  cannot print it exactly as specified.

  `static final Fidelity`

  `FIDELITY_TRUE`

  The job must be printed exactly as specified.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Fidelity(int value)`

  Construct a new fidelity enumeration value with the given integer value.
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

  Returns the enumeration value table for class `Fidelity`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `Fidelity`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### FIDELITY\_TRUE

    public static final [Fidelity](Fidelity.md "class in javax.print.attribute.standard") FIDELITY\_TRUE

    The job must be printed exactly as specified. or else rejected.
  + ### FIDELITY\_FALSE

    public static final [Fidelity](Fidelity.md "class in javax.print.attribute.standard") FIDELITY\_FALSE

    The printer should make reasonable attempts to print the job, even if it
    cannot print it exactly as specified.
* ## Constructor Details

  + ### Fidelity

    protected Fidelity(int value)

    Construct a new fidelity enumeration value with the given integer value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `Fidelity`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `Fidelity`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `Fidelity` the category is class
    `Fidelity` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `Fidelity` the category name is
    `"ipp-attribute-fidelity"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name