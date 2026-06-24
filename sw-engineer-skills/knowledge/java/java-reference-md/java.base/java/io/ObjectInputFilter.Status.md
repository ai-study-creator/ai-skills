Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Enum Class ObjectInputFilter.Status

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io")>

java.io.ObjectInputFilter.Status

All Implemented Interfaces:
:   `Serializable`, `Comparable<ObjectInputFilter.Status>`, `Constable`

Enclosing interface:
:   `ObjectInputFilter`

---

public static enum ObjectInputFilter.Status
extends [Enum](../lang/Enum.md "class in java.lang")<[ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io")>

The status of a check on the class, array length, number of references,
depth, and stream size.

Since:
:   9

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ALLOWED`

  The status is allowed.

  `REJECTED`

  The status is rejected.

  `UNDECIDED`

  The status is undecided, not allowed and not rejected.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ObjectInputFilter.Status`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ObjectInputFilter.Status[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### UNDECIDED

    public static final [ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io") UNDECIDED

    The status is undecided, not allowed and not rejected.
  + ### ALLOWED

    public static final [ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io") ALLOWED

    The status is allowed.
  + ### REJECTED

    public static final [ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io") REJECTED

    The status is rejected.
* ## Method Details

  + ### values

    public static [ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io") valueOf([String](../lang/String.md "class in java.lang") name)

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