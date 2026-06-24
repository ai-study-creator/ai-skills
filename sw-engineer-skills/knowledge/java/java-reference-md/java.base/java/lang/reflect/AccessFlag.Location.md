Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Enum Class AccessFlag.Location

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect")>

java.lang.reflect.AccessFlag.Location

All Implemented Interfaces:
:   `Serializable`, `Comparable<AccessFlag.Location>`, `Constable`

Enclosing class:
:   `AccessFlag`

---

public static enum AccessFlag.Location
extends [Enum](../Enum.md "class in java.lang")<[AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect")>

A location within a class file where flags can be applied.
Note that since these locations represent class file structures
rather than language structures many language structures, such
as constructors and interfaces, are *not* present.

Since:
:   20

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `CLASS`

  Class location.

  `FIELD`

  Field location.

  `INNER_CLASS`

  Inner class location.

  `METHOD`

  Method location.

  `METHOD_PARAMETER`

  Method parameter location.

  `MODULE`

  Module location

  `MODULE_EXPORTS`

  Module exports location

  `MODULE_OPENS`

  Module opens location

  `MODULE_REQUIRES`

  Module requires location
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static AccessFlag.Location`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static AccessFlag.Location[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### CLASS

    public static final [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") CLASS

    Class location.
  + ### FIELD

    public static final [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") FIELD

    Field location.
  + ### METHOD

    public static final [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") METHOD

    Method location.
  + ### INNER\_CLASS

    public static final [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") INNER\_CLASS

    Inner class location.
  + ### METHOD\_PARAMETER

    public static final [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") METHOD\_PARAMETER

    Method parameter location.
  + ### MODULE

    public static final [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") MODULE

    Module location
  + ### MODULE\_REQUIRES

    public static final [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") MODULE\_REQUIRES

    Module requires location
  + ### MODULE\_EXPORTS

    public static final [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") MODULE\_EXPORTS

    Module exports location
  + ### MODULE\_OPENS

    public static final [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") MODULE\_OPENS

    Module opens location
* ## Method Details

  + ### values

    public static [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") valueOf([String](../String.md "class in java.lang") name)

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