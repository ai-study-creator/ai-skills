Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class InterruptedByTimeoutException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

java.nio.channels.InterruptedByTimeoutException

All Implemented Interfaces:
:   `Serializable`

---

public class InterruptedByTimeoutException
extends [IOException](../../io/IOException.md "class in java.io")

Checked exception received by a thread when a timeout elapses before an
asynchronous operation completes.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.InterruptedByTimeoutException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InterruptedByTimeoutException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InterruptedByTimeoutException

    public InterruptedByTimeoutException()

    Constructs an instance of this class.