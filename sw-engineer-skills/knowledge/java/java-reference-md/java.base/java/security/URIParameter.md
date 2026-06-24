Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class URIParameter

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.URIParameter

All Implemented Interfaces:
:   `Policy.Parameters`, `Configuration.Parameters`

---

public class URIParameter
extends [Object](../lang/Object.md "class in java.lang")
implements [Policy.Parameters](Policy.Parameters.md "interface in java.security"), [Configuration.Parameters](../../javax/security/auth/login/Configuration.Parameters.md "interface in javax.security.auth.login")

A parameter that contains a URI pointing to data intended for a
PolicySpi or ConfigurationSpi implementation.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `URIParameter(URI uri)`

  Constructs a `URIParameter` with the URI pointing to
  data intended for an SPI implementation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `URI`

  `getURI()`

  Returns the URI.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### URIParameter

    public URIParameter([URI](../net/URI.md "class in java.net") uri)

    Constructs a `URIParameter` with the URI pointing to
    data intended for an SPI implementation.

    Parameters:
    :   `uri` - the URI pointing to the data.

    Throws:
    :   `NullPointerException` - if the specified URI is `null`.
* ## Method Details

  + ### getURI

    public [URI](../net/URI.md "class in java.net") getURI()

    Returns the URI.

    Returns:
    :   uri the URI.