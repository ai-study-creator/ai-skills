Module [java.security.sasl](../../../module-summary.md)

Package [javax.security.sasl](package-summary.md)

# Class AuthenticationException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

[javax.security.sasl.SaslException](SaslException.md "class in javax.security.sasl")

javax.security.sasl.AuthenticationException

All Implemented Interfaces:
:   `Serializable`

---

public class AuthenticationException
extends [SaslException](SaslException.md "class in javax.security.sasl")

This exception is thrown by a SASL mechanism implementation
to indicate that the SASL
exchange has failed due to reasons related to authentication, such as
an invalid identity, passphrase, or key.

Note that the lack of an AuthenticationException does not mean that
the failure was not due to an authentication error. A SASL mechanism
implementation might throw the more general SaslException instead of
AuthenticationException if it is unable to determine the nature
of the failure, or if does not want to disclose the nature of
the failure, for example, due to security reasons.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.security.sasl.AuthenticationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AuthenticationException()`

  Constructs a new instance of `AuthenticationException`.

  `AuthenticationException(String detail)`

  Constructs a new instance of `AuthenticationException`
  with a detailed message.

  `AuthenticationException(String detail,
  Throwable ex)`

  Constructs a new instance of `AuthenticationException` with a detailed message
  and a root exception.
* ## Method Summary

  ### Methods inherited from class javax.security.sasl.[SaslException](SaslException.md "class in javax.security.sasl")

  `getCause, initCause, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AuthenticationException

    public AuthenticationException()

    Constructs a new instance of `AuthenticationException`.
    The root exception and the detailed message are null.
  + ### AuthenticationException

    public AuthenticationException([String](../../../../java.base/java/lang/String.md "class in java.lang") detail)

    Constructs a new instance of `AuthenticationException`
    with a detailed message.
    The root exception is null.

    Parameters:
    :   `detail` - A possibly null string containing details of the exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
  + ### AuthenticationException

    public AuthenticationException([String](../../../../java.base/java/lang/String.md "class in java.lang") detail,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") ex)

    Constructs a new instance of `AuthenticationException` with a detailed message
    and a root exception.

    Parameters:
    :   `detail` - A possibly null string containing details of the exception.
    :   `ex` - A possibly null root exception that caused this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
        - [`SaslException.getCause()`](SaslException.md#getCause())