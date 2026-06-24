Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class OperationNotSupportedException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.OperationNotSupportedException

All Implemented Interfaces:
:   `Serializable`

---

public class OperationNotSupportedException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when a context implementation does not support
the operation being invoked.
For example, if a server does not support the Context.bind() method
it would throw OperationNotSupportedException when the bind() method
is invoked on it.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.OperationNotSupportedException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OperationNotSupportedException()`

  Constructs a new instance of OperationNotSupportedException.

  `OperationNotSupportedException(String explanation)`

  Constructs a new instance of OperationNotSupportedException using an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### OperationNotSupportedException

    public OperationNotSupportedException()

    Constructs a new instance of OperationNotSupportedException.
    All fields default to null.
  + ### OperationNotSupportedException

    public OperationNotSupportedException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of OperationNotSupportedException using an
    explanation. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null additional detail about this exception

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())