Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class InsufficientResourcesException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.InsufficientResourcesException

All Implemented Interfaces:
:   `Serializable`

---

public class InsufficientResourcesException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when resources are not available to complete
the requested operation. This might due to a lack of resources on
the server or on the client. There are no restrictions to resource types,
as different services might make use of different resources. Such
restrictions might be due to physical limits and/or administrative quotas.
Examples of limited resources are internal buffers, memory, network bandwidth.

InsufficientResourcesException is different from LimitExceededException in that
the latter is due to user/system specified limits. See LimitExceededException
for details.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.InsufficientResourcesException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InsufficientResourcesException()`

  Constructs a new instance of InsufficientResourcesException with
  all name resolution fields and explanation initialized to null.

  `InsufficientResourcesException(String explanation)`

  Constructs a new instance of InsufficientResourcesException using an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InsufficientResourcesException

    public InsufficientResourcesException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of InsufficientResourcesException using an
    explanation. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### InsufficientResourcesException

    public InsufficientResourcesException()

    Constructs a new instance of InsufficientResourcesException with
    all name resolution fields and explanation initialized to null.