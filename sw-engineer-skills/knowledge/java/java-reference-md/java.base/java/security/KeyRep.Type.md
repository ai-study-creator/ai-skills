Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Enum Class KeyRep.Type

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[KeyRep.Type](KeyRep.Type.md "enum class in java.security")>

java.security.KeyRep.Type

All Implemented Interfaces:
:   `Serializable`, `Comparable<KeyRep.Type>`, `Constable`

Enclosing class:
:   `KeyRep`

---

public static enum KeyRep.Type
extends [Enum](../lang/Enum.md "class in java.lang")<[KeyRep.Type](KeyRep.Type.md "enum class in java.security")>

Key type.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `PRIVATE`

  Type for private keys.

  `PUBLIC`

  Type for public keys.

  `SECRET`

  Type for secret keys.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static KeyRep.Type`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static KeyRep.Type[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### SECRET

    public static final [KeyRep.Type](KeyRep.Type.md "enum class in java.security") SECRET

    Type for secret keys.
  + ### PUBLIC

    public static final [KeyRep.Type](KeyRep.Type.md "enum class in java.security") PUBLIC

    Type for public keys.
  + ### PRIVATE

    public static final [KeyRep.Type](KeyRep.Type.md "enum class in java.security") PRIVATE

    Type for private keys.
* ## Method Details

  + ### values

    public static [KeyRep.Type](KeyRep.Type.md "enum class in java.security")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [KeyRep.Type](KeyRep.Type.md "enum class in java.security") valueOf([String](../lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null