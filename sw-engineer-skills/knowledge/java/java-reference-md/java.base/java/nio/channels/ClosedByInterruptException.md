Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class ClosedByInterruptException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

[java.nio.channels.ClosedChannelException](ClosedChannelException.md "class in java.nio.channels")

[java.nio.channels.AsynchronousCloseException](AsynchronousCloseException.md "class in java.nio.channels")

java.nio.channels.ClosedByInterruptException

All Implemented Interfaces:
:   `Serializable`

---

public class ClosedByInterruptException
extends [AsynchronousCloseException](AsynchronousCloseException.md "class in java.nio.channels")

Checked exception received by a thread when another thread interrupts it
while it is blocked in an I/O operation upon a channel. Before this
exception is thrown the channel will have been closed and the interrupt
status of the previously-blocked thread will have been set.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.ClosedByInterruptException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ClosedByInterruptException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ClosedByInterruptException

    public ClosedByInterruptException()

    Constructs an instance of this class.