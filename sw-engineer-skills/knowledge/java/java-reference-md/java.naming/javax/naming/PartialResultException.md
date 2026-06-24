Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class PartialResultException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.PartialResultException

All Implemented Interfaces:
:   `Serializable`

---

public class PartialResultException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown to indicate that the result being returned
or returned so far is partial, and that the operation cannot
be completed. For example, when listing a context, this exception
indicates that returned results only represents some of the bindings
in the context.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.PartialResultException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PartialResultException()`

  Constructs a new instance of PartialResultException.

  `PartialResultException(String explanation)`

  Constructs a new instance of the exception using the explanation
  message specified.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PartialResultException

    public PartialResultException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of the exception using the explanation
    message specified. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null detail explaining the exception.
  + ### PartialResultException

    public PartialResultException()

    Constructs a new instance of PartialResultException.
    All fields default to null.