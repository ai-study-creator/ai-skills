Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class ClosedChannelException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

java.nio.channels.ClosedChannelException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AsynchronousCloseException`

---

public class ClosedChannelException
extends [IOException](../../io/IOException.md "class in java.io")

Checked exception thrown when an attempt is made to invoke or complete an
I/O operation upon channel that is closed, or at least closed to that
operation. That this exception is thrown does not necessarily imply that
the channel is completely closed. A socket channel whose write half has
been shut down, for example, may still be open for reading.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.ClosedChannelException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ClosedChannelException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ClosedChannelException

    public ClosedChannelException()

    Constructs an instance of this class.