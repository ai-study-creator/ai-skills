Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class InterruptedNamingException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.InterruptedNamingException

All Implemented Interfaces:
:   `Serializable`

---

public class InterruptedNamingException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when the naming operation
being invoked has been interrupted. For example, an application
might interrupt a thread that is performing a search. If the
search supports being interrupted, it will throw
InterruptedNamingException. Whether an operation is interruptible
and when depends on its implementation (as provided by the
service providers). Different implementations have different ways
of protecting their resources and objects from being damaged
due to unexpected interrupts.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [`Context`](Context.md "interface in javax.naming")
    * [`DirContext`](directory/DirContext.md "interface in javax.naming.directory")
    * [`Thread.interrupt()`](../../../java.base/java/lang/Thread.md#interrupt())
    * [`InterruptedException`](../../../java.base/java/lang/InterruptedException.md "class in java.lang")
    * [Serialized Form](../../../serialized-form.md#javax.naming.InterruptedNamingException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InterruptedNamingException()`

  Constructs an instance of InterruptedNamingException with
  all name resolution fields and explanation initialized to null.

  `InterruptedNamingException(String explanation)`

  Constructs an instance of InterruptedNamingException using an
  explanation of the problem.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InterruptedNamingException

    public InterruptedNamingException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs an instance of InterruptedNamingException using an
    explanation of the problem.
    All name resolution-related fields are initialized to null.

    Parameters:
    :   `explanation` - A possibly null message explaining the problem.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### InterruptedNamingException

    public InterruptedNamingException()

    Constructs an instance of InterruptedNamingException with
    all name resolution fields and explanation initialized to null.