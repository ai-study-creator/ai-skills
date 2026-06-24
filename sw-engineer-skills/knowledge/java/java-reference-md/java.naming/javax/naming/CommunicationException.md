Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class CommunicationException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.CommunicationException

All Implemented Interfaces:
:   `Serializable`

---

public class CommunicationException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when the client is
unable to communicate with the directory or naming service.
The inability to communicate with the service might be a result
of many factors, such as network partitioning, hardware or interface problems,
failures on either the client or server side.
This exception is meant to be used to capture such communication problems.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.CommunicationException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CommunicationException()`

  Constructs a new instance of CommunicationException.

  `CommunicationException(String explanation)`

  Constructs a new instance of CommunicationException using the
  arguments supplied.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CommunicationException

    public CommunicationException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of CommunicationException using the
    arguments supplied.

    Parameters:
    :   `explanation` - Additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### CommunicationException

    public CommunicationException()

    Constructs a new instance of CommunicationException.