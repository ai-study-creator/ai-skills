Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.login](package-summary.md)

# Class AccountExpiredException

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../../../java/security/GeneralSecurityException.md "class in java.security")

[javax.security.auth.login.LoginException](LoginException.md "class in javax.security.auth.login")

[javax.security.auth.login.AccountException](AccountException.md "class in javax.security.auth.login")

javax.security.auth.login.AccountExpiredException

All Implemented Interfaces:
:   `Serializable`

---

public class AccountExpiredException
extends [AccountException](AccountException.md "class in javax.security.auth.login")

Signals that a user account has expired.

This exception is thrown by LoginModules when they determine
that an account has expired. For example, a `LoginModule`,
after successfully authenticating a user, may determine that the
user's account has expired. In this case the `LoginModule`
throws this exception to notify the application. The application can
then take the appropriate steps to notify the user.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.login.AccountExpiredException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccountExpiredException()`

  Constructs a AccountExpiredException with no detail message.

  `AccountExpiredException(String msg)`

  Constructs a AccountExpiredException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AccountExpiredException

    public AccountExpiredException()

    Constructs a AccountExpiredException with no detail message. A detail
    message is a String that describes this particular exception.
  + ### AccountExpiredException

    public AccountExpiredException([String](../../../../java/lang/String.md "class in java.lang") msg)

    Constructs a AccountExpiredException with the specified detail
    message. A detail message is a String that describes this particular
    exception.

    Parameters:
    :   `msg` - the detail message.