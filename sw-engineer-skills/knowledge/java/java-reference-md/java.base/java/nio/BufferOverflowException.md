Module [java.base](../../module-summary.md)

Package [java.nio](package-summary.md)

# Class BufferOverflowException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

java.nio.BufferOverflowException

All Implemented Interfaces:
:   `Serializable`

---

public class BufferOverflowException
extends [RuntimeException](../lang/RuntimeException.md "class in java.lang")

Unchecked exception thrown when a relative *put* operation reaches
the target buffer's limit.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.nio.BufferOverflowException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BufferOverflowException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BufferOverflowException

    public BufferOverflowException()

    Constructs an instance of this class.