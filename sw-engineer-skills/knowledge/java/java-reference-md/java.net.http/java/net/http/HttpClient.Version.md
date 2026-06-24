Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Enum Class HttpClient.Version

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[HttpClient.Version](HttpClient.Version.md "enum class in java.net.http")>

java.net.http.HttpClient.Version

All Implemented Interfaces:
:   `Serializable`, `Comparable<HttpClient.Version>`, `Constable`

Enclosing class:
:   `HttpClient`

---

public static enum HttpClient.Version
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[HttpClient.Version](HttpClient.Version.md "enum class in java.net.http")>

The HTTP protocol version.

Since:
:   11

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `HTTP_1_1`

  HTTP version 1.1

  `HTTP_2`

  HTTP version 2
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static HttpClient.Version`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static HttpClient.Version[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### HTTP\_1\_1

    public static final [HttpClient.Version](HttpClient.Version.md "enum class in java.net.http") HTTP\_1\_1

    HTTP version 1.1
  + ### HTTP\_2

    public static final [HttpClient.Version](HttpClient.Version.md "enum class in java.net.http") HTTP\_2

    HTTP version 2
* ## Method Details

  + ### values

    public static [HttpClient.Version](HttpClient.Version.md "enum class in java.net.http")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [HttpClient.Version](HttpClient.Version.md "enum class in java.net.http") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

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