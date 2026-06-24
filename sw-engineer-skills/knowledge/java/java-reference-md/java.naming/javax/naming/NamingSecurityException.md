Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class NamingSecurityException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.NamingSecurityException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AuthenticationException`, `AuthenticationNotSupportedException`, `NoPermissionException`

---

public abstract class NamingSecurityException
extends [NamingException](NamingException.md "class in javax.naming")

This is the superclass of security-related exceptions
thrown by operations in the Context and DirContext interfaces.
The nature of the failure is described by the name of the subclass.

If the program wants to handle this exception in particular, it
should catch NamingSecurityException explicitly before attempting to
catch NamingException. A program might want to do this, for example,
if it wants to treat security-related exceptions specially from
other sorts of naming exception.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.NamingSecurityException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NamingSecurityException()`

  Constructs a new instance of NamingSecurityException.

  `NamingSecurityException(String explanation)`

  Constructs a new instance of NamingSecurityException using the
  explanation supplied.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NamingSecurityException

    public NamingSecurityException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of NamingSecurityException using the
    explanation supplied. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### NamingSecurityException

    public NamingSecurityException()

    Constructs a new instance of NamingSecurityException.
    All fields are initialized to null.