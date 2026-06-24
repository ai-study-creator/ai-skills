Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class NumberFormat.Field

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.text.AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

[java.text.Format.Field](Format.Field.md "class in java.text")

java.text.NumberFormat.Field

All Implemented Interfaces:
:   `Serializable`

Enclosing class:
:   `NumberFormat`

---

public static class NumberFormat.Field
extends [Format.Field](Format.Field.md "class in java.text")

Defines constants that are used as attribute keys in the
`AttributedCharacterIterator` returned
from `NumberFormat.formatToCharacterIterator` and as
field identifiers in `FieldPosition`.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.text.NumberFormat.Field)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final NumberFormat.Field`

  `CURRENCY`

  Constant identifying the currency field.

  `static final NumberFormat.Field`

  `DECIMAL_SEPARATOR`

  Constant identifying the decimal separator field.

  `static final NumberFormat.Field`

  `EXPONENT`

  Constant identifying the exponent field.

  `static final NumberFormat.Field`

  `EXPONENT_SIGN`

  Constant identifying the exponent sign field.

  `static final NumberFormat.Field`

  `EXPONENT_SYMBOL`

  Constant identifying the exponent symbol field.

  `static final NumberFormat.Field`

  `FRACTION`

  Constant identifying the fraction field.

  `static final NumberFormat.Field`

  `GROUPING_SEPARATOR`

  Constant identifying the grouping separator field.

  `static final NumberFormat.Field`

  `INTEGER`

  Constant identifying the integer field.

  `static final NumberFormat.Field`

  `PERCENT`

  Constant identifying the percent field.

  `static final NumberFormat.Field`

  `PERMILLE`

  Constant identifying the permille field.

  `static final NumberFormat.Field`

  `PREFIX`

  Constant identifying the prefix field.

  `static final NumberFormat.Field`

  `SIGN`

  Constant identifying the sign field.

  `static final NumberFormat.Field`

  `SUFFIX`

  Constant identifying the suffix field.

  ### Fields inherited from class java.text.[AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

  `INPUT_METHOD_SEGMENT, LANGUAGE, READING`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Field(String name)`

  Creates a Field instance with the specified
  name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected Object`

  `readResolve()`

  Resolves instances being deserialized to the predefined constants.

  ### Methods inherited from class java.text.[AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

  `equals, getName, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### INTEGER

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") INTEGER

    Constant identifying the integer field.
  + ### FRACTION

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") FRACTION

    Constant identifying the fraction field.
  + ### EXPONENT

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") EXPONENT

    Constant identifying the exponent field.
  + ### DECIMAL\_SEPARATOR

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") DECIMAL\_SEPARATOR

    Constant identifying the decimal separator field.
  + ### SIGN

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") SIGN

    Constant identifying the sign field.
  + ### GROUPING\_SEPARATOR

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") GROUPING\_SEPARATOR

    Constant identifying the grouping separator field.
  + ### EXPONENT\_SYMBOL

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") EXPONENT\_SYMBOL

    Constant identifying the exponent symbol field.
  + ### PERCENT

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") PERCENT

    Constant identifying the percent field.
  + ### PERMILLE

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") PERMILLE

    Constant identifying the permille field.
  + ### CURRENCY

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") CURRENCY

    Constant identifying the currency field.
  + ### EXPONENT\_SIGN

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") EXPONENT\_SIGN

    Constant identifying the exponent sign field.
  + ### PREFIX

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") PREFIX

    Constant identifying the prefix field.

    Since:
    :   12
  + ### SUFFIX

    public static final [NumberFormat.Field](NumberFormat.Field.md "class in java.text") SUFFIX

    Constant identifying the suffix field.

    Since:
    :   12
* ## Constructor Details

  + ### Field

    protected Field([String](../lang/String.md "class in java.lang") name)

    Creates a Field instance with the specified
    name.

    Parameters:
    :   `name` - Name of the attribute
* ## Method Details

  + ### readResolve

    protected [Object](../lang/Object.md "class in java.lang") readResolve()
    throws [InvalidObjectException](../io/InvalidObjectException.md "class in java.io")

    Resolves instances being deserialized to the predefined constants.

    Overrides:
    :   `readResolve` in class `AttributedCharacterIterator.Attribute`

    Returns:
    :   resolved NumberFormat.Field constant

    Throws:
    :   `InvalidObjectException` - if the constant could not be resolved.