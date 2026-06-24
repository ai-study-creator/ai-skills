Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Enum Class Proxy.Type

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[Proxy.Type](Proxy.Type.md "enum class in java.net")>

java.net.Proxy.Type

All Implemented Interfaces:
:   `Serializable`, `Comparable<Proxy.Type>`, `Constable`

Enclosing class:
:   `Proxy`

---

public static enum Proxy.Type
extends [Enum](../lang/Enum.md "class in java.lang")<[Proxy.Type](Proxy.Type.md "enum class in java.net")>

Represents the proxy type.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `DIRECT`

  Represents a direct connection, or the absence of a proxy.

  `HTTP`

  Represents proxy for high level protocols such as HTTP or FTP.

  `SOCKS`

  Represents a SOCKS (V4 or V5) proxy.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Proxy.Type`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Proxy.Type[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### DIRECT

    public static final [Proxy.Type](Proxy.Type.md "enum class in java.net") DIRECT

    Represents a direct connection, or the absence of a proxy.
  + ### HTTP

    public static final [Proxy.Type](Proxy.Type.md "enum class in java.net") HTTP

    Represents proxy for high level protocols such as HTTP or FTP.
  + ### SOCKS

    public static final [Proxy.Type](Proxy.Type.md "enum class in java.net") SOCKS

    Represents a SOCKS (V4 or V5) proxy.
* ## Method Details

  + ### values

    public static [Proxy.Type](Proxy.Type.md "enum class in java.net")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Proxy.Type](Proxy.Type.md "enum class in java.net") valueOf([String](../lang/String.md "class in java.lang") name)

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