Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.login](package-summary.md)

# Class FailedLoginException

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../../../java/security/GeneralSecurityException.md "class in java.security")

[javax.security.auth.login.LoginException](LoginException.md "class in javax.security.auth.login")

javax.security.auth.login.FailedLoginException

All Implemented Interfaces:
:   `Serializable`

---

public class FailedLoginException
extends [LoginException](LoginException.md "class in javax.security.auth.login")

Signals that user authentication failed.

This exception is thrown by LoginModules if authentication failed.
For example, a `LoginModule` throws this exception if
the user entered an incorrect password.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.login.FailedLoginException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FailedLoginException()`

  Constructs a FailedLoginException with no detail message.

  `FailedLoginException(String msg)`

  Constructs a FailedLoginException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FailedLoginException

    public FailedLoginException()

    Constructs a FailedLoginException with no detail message. A detail
    message is a String that describes this particular exception.
  + ### FailedLoginException

    public FailedLoginException([String](../../../../java/lang/String.md "class in java.lang") msg)

    Constructs a FailedLoginException with the specified detail
    message. A detail message is a String that describes this particular
    exception.

    Parameters:
    :   `msg` - the detail message.