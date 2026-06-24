Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.login](package-summary.md)

# Class AccountLockedException

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../../../java/security/GeneralSecurityException.md "class in java.security")

[javax.security.auth.login.LoginException](LoginException.md "class in javax.security.auth.login")

[javax.security.auth.login.AccountException](AccountException.md "class in javax.security.auth.login")

javax.security.auth.login.AccountLockedException

All Implemented Interfaces:
:   `Serializable`

---

public class AccountLockedException
extends [AccountException](AccountException.md "class in javax.security.auth.login")

Signals that an account was locked.

This exception may be thrown by a LoginModule if it
determines that authentication is being attempted on a
locked account.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.login.AccountLockedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccountLockedException()`

  Constructs a AccountLockedException with no detail message.

  `AccountLockedException(String msg)`

  Constructs a AccountLockedException with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AccountLockedException

    public AccountLockedException()

    Constructs a AccountLockedException with no detail message.
    A detail message is a String that describes this particular exception.
  + ### AccountLockedException

    public AccountLockedException([String](../../../../java/lang/String.md "class in java.lang") msg)

    Constructs a AccountLockedException with the specified
    detail message. A detail message is a String that describes
    this particular exception.

    Parameters:
    :   `msg` - the detail message.