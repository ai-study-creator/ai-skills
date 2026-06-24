Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.login](package-summary.md)

# Class LoginException

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../../../java/security/GeneralSecurityException.md "class in java.security")

javax.security.auth.login.LoginException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AccountException`, `CredentialException`, `FailedLoginException`

---

public class LoginException
extends [GeneralSecurityException](../../../../java/security/GeneralSecurityException.md "class in java.security")

This is the basic login exception.

Since:
:   1.4

See Also:
:   * [`LoginContext`](LoginContext.md "class in javax.security.auth.login")
    * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.login.LoginException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LoginException()`

  Constructs a LoginException with no detail message.

  `LoginException(String msg)`

  Constructs a LoginException with the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LoginException

    public LoginException()

    Constructs a LoginException with no detail message. A detail
    message is a String that describes this particular exception.
  + ### LoginException

    public LoginException([String](../../../../java/lang/String.md "class in java.lang") msg)

    Constructs a LoginException with the specified detail message.
    A detail message is a String that describes this particular
    exception.

    Parameters:
    :   `msg` - the detail message.