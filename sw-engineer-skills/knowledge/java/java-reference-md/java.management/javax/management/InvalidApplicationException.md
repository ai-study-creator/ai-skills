Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class InvalidApplicationException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

javax.management.InvalidApplicationException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidApplicationException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

Thrown when an attempt is made to apply either of the following: A
subquery expression to an MBean or a qualified attribute expression
to an MBean of the wrong class. This exception is used internally
by JMX during the evaluation of a query. User code does not
usually see it.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.InvalidApplicationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidApplicationException(Object val)`

  Constructs an `InvalidApplicationException` with the specified `Object`.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidApplicationException

    public InvalidApplicationException([Object](../../../java.base/java/lang/Object.md "class in java.lang") val)

    Constructs an `InvalidApplicationException` with the specified `Object`.

    Parameters:
    :   `val` - the detail message of this exception.