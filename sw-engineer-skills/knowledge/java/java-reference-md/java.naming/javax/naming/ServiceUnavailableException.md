Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class ServiceUnavailableException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.ServiceUnavailableException

All Implemented Interfaces:
:   `Serializable`

---

public class ServiceUnavailableException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when attempting to communicate with a
directory or naming service and that service is not available.
It might be unavailable for different reasons. For example,
the server might be too busy to service the request, or the server
might not be registered to service any requests, etc.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.ServiceUnavailableException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ServiceUnavailableException()`

  Constructs a new instance of ServiceUnavailableException.

  `ServiceUnavailableException(String explanation)`

  Constructs a new instance of ServiceUnavailableException using an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ServiceUnavailableException

    public ServiceUnavailableException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of ServiceUnavailableException using an
    explanation. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### ServiceUnavailableException

    public ServiceUnavailableException()

    Constructs a new instance of ServiceUnavailableException.
    All fields default to null.