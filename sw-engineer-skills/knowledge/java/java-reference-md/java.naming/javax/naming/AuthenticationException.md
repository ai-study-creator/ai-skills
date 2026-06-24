Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class AuthenticationException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

[javax.naming.NamingSecurityException](NamingSecurityException.md "class in javax.naming")

javax.naming.AuthenticationException

All Implemented Interfaces:
:   `Serializable`

---

public class AuthenticationException
extends [NamingSecurityException](NamingSecurityException.md "class in javax.naming")

This exception is thrown when an authentication error occurs while
accessing the naming or directory service.
An authentication error can happen, for example, when the credentials
supplied by the user program are invalid or otherwise fail to
authenticate the user to the naming/directory service.

If the program wants to handle this exception in particular, it
should catch AuthenticationException explicitly before attempting to
catch NamingException. After catching AuthenticationException, the
program could reattempt the authentication by updating
the resolved context's environment properties with the appropriate
credentials.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.AuthenticationException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AuthenticationException()`

  Constructs a new instance of AuthenticationException.

  `AuthenticationException(String explanation)`

  Constructs a new instance of AuthenticationException using the
  explanation supplied.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AuthenticationException

    public AuthenticationException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of AuthenticationException using the
    explanation supplied. All other fields default to null.

    Parameters:
    :   `explanation` - A possibly null string containing
        additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### AuthenticationException

    public AuthenticationException()

    Constructs a new instance of AuthenticationException.
    All fields are set to null.