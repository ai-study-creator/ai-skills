Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Enum Class StandardProtocolFamily

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[StandardProtocolFamily](StandardProtocolFamily.md "enum class in java.net")>

java.net.StandardProtocolFamily

All Implemented Interfaces:
:   `Serializable`, `Comparable<StandardProtocolFamily>`, `Constable`, `ProtocolFamily`

---

public enum StandardProtocolFamily
extends [Enum](../lang/Enum.md "class in java.lang")<[StandardProtocolFamily](StandardProtocolFamily.md "enum class in java.net")>
implements [ProtocolFamily](ProtocolFamily.md "interface in java.net")

Defines the standard families of communication protocols.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `INET`

  Internet Protocol Version 4 (IPv4)

  `INET6`

  Internet Protocol Version 6 (IPv6)

  `UNIX`

  Unix domain (Local) interprocess communication.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static StandardProtocolFamily`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static StandardProtocolFamily[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.net.[ProtocolFamily](ProtocolFamily.md "interface in java.net")

  `name`

* ## Enum Constant Details

  + ### INET

    public static final [StandardProtocolFamily](StandardProtocolFamily.md "enum class in java.net") INET

    Internet Protocol Version 4 (IPv4)
  + ### INET6

    public static final [StandardProtocolFamily](StandardProtocolFamily.md "enum class in java.net") INET6

    Internet Protocol Version 6 (IPv6)
  + ### UNIX

    public static final [StandardProtocolFamily](StandardProtocolFamily.md "enum class in java.net") UNIX

    Unix domain (Local) interprocess communication.

    Since:
    :   16
* ## Method Details

  + ### values

    public static [StandardProtocolFamily](StandardProtocolFamily.md "enum class in java.net")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [StandardProtocolFamily](StandardProtocolFamily.md "enum class in java.net") valueOf([String](../lang/String.md "class in java.lang") name)

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