Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.login](package-summary.md)

# Class AccountException

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../../../java/security/GeneralSecurityException.md "class in java.security")

[javax.security.auth.login.LoginException](LoginException.md "class in javax.security.auth.login")

javax.security.auth.login.AccountException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AccountExpiredException`, `AccountLockedException`, `AccountNotFoundException`

---

public class AccountException
extends [LoginException](LoginException.md "class in javax.security.auth.login")

A generic account exception.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.login.AccountException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccountException()`

  Constructs a AccountException with no detail message.

  `AccountException(String msg)`

  Constructs a AccountException with the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AccountException

    public AccountException()

    Constructs a AccountException with no detail message. A detail
    message is a String that describes this particular exception.
  + ### AccountException

    public AccountException([String](../../../../java/lang/String.md "class in java.lang") msg)

    Constructs a AccountException with the specified detail message.
    A detail message is a String that describes this particular
    exception.

    Parameters:
    :   `msg` - the detail message.