Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Enum Class HttpClient.Redirect

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http")>

java.net.http.HttpClient.Redirect

All Implemented Interfaces:
:   `Serializable`, `Comparable<HttpClient.Redirect>`, `Constable`

Enclosing class:
:   `HttpClient`

---

public static enum HttpClient.Redirect
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http")>

Defines the automatic redirection policy.

The automatic redirection policy is checked whenever a `3XX`
response code is received. If redirection does not happen automatically,
then the response, containing the `3XX` response code, is returned,
where it can be handled manually.

`Redirect` policy is set through the [Builder.followRedirects](HttpClient.Builder.md#followRedirects(java.net.http.HttpClient.Redirect))
method.

Since:
:   11

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ALWAYS`

  Always redirect.

  `NEVER`

  Never redirect.

  `NORMAL`

  Always redirect, except from HTTPS URLs to HTTP URLs.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static HttpClient.Redirect`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static HttpClient.Redirect[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NEVER

    public static final [HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http") NEVER

    Never redirect.
  + ### ALWAYS

    public static final [HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http") ALWAYS

    Always redirect.
  + ### NORMAL

    public static final [HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http") NORMAL

    Always redirect, except from HTTPS URLs to HTTP URLs.
* ## Method Details

  + ### values

    public static [HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

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