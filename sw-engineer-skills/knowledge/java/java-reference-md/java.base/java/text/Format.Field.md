Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class Format.Field

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.text.AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

java.text.Format.Field

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `DateFormat.Field`, `MessageFormat.Field`, `NumberFormat.Field`

Enclosing class:
:   `Format`

---

public static class Format.Field
extends [AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

Defines constants that are used as attribute keys in the
`AttributedCharacterIterator` returned
from `Format.formatToCharacterIterator` and as
field identifiers in `FieldPosition`.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.text.Format.Field)

* ## Field Summary

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

  ### Methods inherited from class java.text.[AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

  `equals, getName, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Field

    protected Field([String](../lang/String.md "class in java.lang") name)

    Creates a Field with the specified name.

    Parameters:
    :   `name` - Name of the attribute