Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class AsynchronousCloseException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

[java.nio.channels.ClosedChannelException](ClosedChannelException.md "class in java.nio.channels")

java.nio.channels.AsynchronousCloseException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ClosedByInterruptException`

---

public class AsynchronousCloseException
extends [ClosedChannelException](ClosedChannelException.md "class in java.nio.channels")

Checked exception received by a thread when another thread closes the
channel or the part of the channel upon which it is blocked in an I/O
operation.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.AsynchronousCloseException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AsynchronousCloseException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AsynchronousCloseException

    public AsynchronousCloseException()

    Constructs an instance of this class.