Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.login](package-summary.md)

# Class CredentialExpiredException

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../../../java/security/GeneralSecurityException.md "class in java.security")

[javax.security.auth.login.LoginException](LoginException.md "class in javax.security.auth.login")

[javax.security.auth.login.CredentialException](CredentialException.md "class in javax.security.auth.login")

javax.security.auth.login.CredentialExpiredException

All Implemented Interfaces:
:   `Serializable`

---

public class CredentialExpiredException
extends [CredentialException](CredentialException.md "class in javax.security.auth.login")

Signals that a `Credential` has expired.

This exception is thrown by LoginModules when they determine
that a `Credential` has expired.
For example, a `LoginModule` authenticating a user
in its `login` method may determine that the user's
password, although entered correctly, has expired. In this case
the `LoginModule` throws this exception to notify
the application. The application can then take the appropriate
steps to assist the user in updating the password.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.login.CredentialExpiredException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CredentialExpiredException()`

  Constructs a CredentialExpiredException with no detail message.

  `CredentialExpiredException(String msg)`

  Constructs a CredentialExpiredException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CredentialExpiredException

    public CredentialExpiredException()

    Constructs a CredentialExpiredException with no detail message. A detail
    message is a String that describes this particular exception.
  + ### CredentialExpiredException

    public CredentialExpiredException([String](../../../../java/lang/String.md "class in java.lang") msg)

    Constructs a CredentialExpiredException with the specified detail
    message. A detail message is a String that describes this particular
    exception.

    Parameters:
    :   `msg` - the detail message.