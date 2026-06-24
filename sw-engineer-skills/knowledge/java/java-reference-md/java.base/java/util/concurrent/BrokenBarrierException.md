Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class BrokenBarrierException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

java.util.concurrent.BrokenBarrierException

All Implemented Interfaces:
:   `Serializable`

---

public class BrokenBarrierException
extends [Exception](../../lang/Exception.md "class in java.lang")

Exception thrown when a thread tries to wait upon a barrier that is
in a broken state, or which enters the broken state while the thread
is waiting.

Since:
:   1.5

See Also:
:   * [`CyclicBarrier`](CyclicBarrier.md "class in java.util.concurrent")
    * [Serialized Form](../../../../serialized-form.md#java.util.concurrent.BrokenBarrierException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BrokenBarrierException()`

  Constructs a `BrokenBarrierException` with no specified detail
  message.

  `BrokenBarrierException(String message)`

  Constructs a `BrokenBarrierException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BrokenBarrierException

    public BrokenBarrierException()

    Constructs a `BrokenBarrierException` with no specified detail
    message.
  + ### BrokenBarrierException

    public BrokenBarrierException([String](../../lang/String.md "class in java.lang") message)

    Constructs a `BrokenBarrierException` with the specified
    detail message.

    Parameters:
    :   `message` - the detail message