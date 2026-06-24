Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class MessageFormat.Field

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.text.AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

[java.text.Format.Field](Format.Field.md "class in java.text")

java.text.MessageFormat.Field

All Implemented Interfaces:
:   `Serializable`

Enclosing class:
:   `MessageFormat`

---

public static class MessageFormat.Field
extends [Format.Field](Format.Field.md "class in java.text")

Defines constants that are used as attribute keys in the
`AttributedCharacterIterator` returned
from `MessageFormat.formatToCharacterIterator`.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.text.MessageFormat.Field)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final MessageFormat.Field`

  `ARGUMENT`

  Constant identifying a portion of a message that was generated
  from an argument passed into `formatToCharacterIterator`.

  ### Fields inherited from class java.text.[AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

  `INPUT_METHOD_SEGMENT, LANGUAGE, READING`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Field(String name)`

  Creates a Field with the specified name.
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

  + ### ARGUMENT

    public static final [MessageFormat.Field](MessageFormat.Field.md "class in java.text") ARGUMENT

    Constant identifying a portion of a message that was generated
    from an argument passed into `formatToCharacterIterator`.
    The value associated with the key will be an `Integer`
    indicating the index in the `arguments` array of the
    argument from which the text was generated.
* ## Constructor Details

  + ### Field

    protected Field([String](../lang/String.md "class in java.lang") name)

    Creates a Field with the specified name.

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
    :   resolved MessageFormat.Field constant

    Throws:
    :   `InvalidObjectException` - if the constant could not be
        resolved.