Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class NoPermissionException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

[javax.naming.NamingSecurityException](NamingSecurityException.md "class in javax.naming")

javax.naming.NoPermissionException

All Implemented Interfaces:
:   `Serializable`

---

public class NoPermissionException
extends [NamingSecurityException](NamingSecurityException.md "class in javax.naming")

This exception is thrown when attempting to perform an operation
for which the client has no permission. The access control/permission
model is dictated by the directory/naming server.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.NoPermissionException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoPermissionException()`

  Constructs a new instance of NoPermissionException.

  `NoPermissionException(String explanation)`

  Constructs a new instance of NoPermissionException using an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoPermissionException

    public NoPermissionException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of NoPermissionException using an
    explanation. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null additional detail about this exception.
  + ### NoPermissionException

    public NoPermissionException()

    Constructs a new instance of NoPermissionException.
    All fields are initialized to null.