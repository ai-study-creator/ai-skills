Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class AuthenticationNotSupportedException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

[javax.naming.NamingSecurityException](NamingSecurityException.md "class in javax.naming")

javax.naming.AuthenticationNotSupportedException

All Implemented Interfaces:
:   `Serializable`

---

public class AuthenticationNotSupportedException
extends [NamingSecurityException](NamingSecurityException.md "class in javax.naming")

This exception is thrown when
the particular flavor of authentication requested is not supported.
For example, if the program
is attempting to use strong authentication but the directory/naming
supports only simple authentication, this exception would be thrown.
Identification of a particular flavor of authentication is
provider- and server-specific. It may be specified using
specific authentication schemes such
those identified using SASL, or a generic authentication specifier
(such as "simple" and "strong").

If the program wants to handle this exception in particular, it
should catch AuthenticationNotSupportedException explicitly before
attempting to catch NamingException. After catching
`AuthenticationNotSupportedException`, the program could
reattempt the authentication using a different authentication flavor
by updating the resolved context's environment properties accordingly.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.AuthenticationNotSupportedException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AuthenticationNotSupportedException()`

  Constructs a new instance of AuthenticationNotSupportedException
  with all name resolution fields and explanation initialized to null.

  `AuthenticationNotSupportedException(String explanation)`

  Constructs a new instance of AuthenticationNotSupportedException using
  an explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AuthenticationNotSupportedException

    public AuthenticationNotSupportedException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of AuthenticationNotSupportedException using
    an explanation. All other fields default to null.

    Parameters:
    :   `explanation` - A possibly null string containing additional
        detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### AuthenticationNotSupportedException

    public AuthenticationNotSupportedException()

    Constructs a new instance of AuthenticationNotSupportedException
    with all name resolution fields and explanation initialized to null.