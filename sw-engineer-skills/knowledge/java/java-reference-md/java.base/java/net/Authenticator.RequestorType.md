Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Enum Class Authenticator.RequestorType

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[Authenticator.RequestorType](Authenticator.RequestorType.md "enum class in java.net")>

java.net.Authenticator.RequestorType

All Implemented Interfaces:
:   `Serializable`, `Comparable<Authenticator.RequestorType>`, `Constable`

Enclosing class:
:   `Authenticator`

---

public static enum Authenticator.RequestorType
extends [Enum](../lang/Enum.md "class in java.lang")<[Authenticator.RequestorType](Authenticator.RequestorType.md "enum class in java.net")>

The type of the entity requesting authentication.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `PROXY`

  Entity requesting authentication is a HTTP proxy server.

  `SERVER`

  Entity requesting authentication is a HTTP origin server.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Authenticator.RequestorType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Authenticator.RequestorType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### PROXY

    public static final [Authenticator.RequestorType](Authenticator.RequestorType.md "enum class in java.net") PROXY

    Entity requesting authentication is a HTTP proxy server.
  + ### SERVER

    public static final [Authenticator.RequestorType](Authenticator.RequestorType.md "enum class in java.net") SERVER

    Entity requesting authentication is a HTTP origin server.
* ## Method Details

  + ### values

    public static [Authenticator.RequestorType](Authenticator.RequestorType.md "enum class in java.net")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Authenticator.RequestorType](Authenticator.RequestorType.md "enum class in java.net") valueOf([String](../lang/String.md "class in java.lang") name)

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