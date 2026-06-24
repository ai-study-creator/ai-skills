Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.login](package-summary.md)

# Class AccountNotFoundException

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../../../java/security/GeneralSecurityException.md "class in java.security")

[javax.security.auth.login.LoginException](LoginException.md "class in javax.security.auth.login")

[javax.security.auth.login.AccountException](AccountException.md "class in javax.security.auth.login")

javax.security.auth.login.AccountNotFoundException

All Implemented Interfaces:
:   `Serializable`

---

public class AccountNotFoundException
extends [AccountException](AccountException.md "class in javax.security.auth.login")

Signals that an account was not found.

This exception may be thrown by a LoginModule if it is unable
to locate an account necessary to perform authentication.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.login.AccountNotFoundException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccountNotFoundException()`

  Constructs a AccountNotFoundException with no detail message.

  `AccountNotFoundException(String msg)`

  Constructs a AccountNotFoundException with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AccountNotFoundException

    public AccountNotFoundException()

    Constructs a AccountNotFoundException with no detail message.
    A detail message is a String that describes this particular exception.
  + ### AccountNotFoundException

    public AccountNotFoundException([String](../../../../java/lang/String.md "class in java.lang") msg)

    Constructs a AccountNotFoundException with the specified
    detail message. A detail message is a String that describes
    this particular exception.

    Parameters:
    :   `msg` - the detail message.