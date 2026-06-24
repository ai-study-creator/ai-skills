Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class InterruptedIOException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

java.io.InterruptedIOException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `SocketTimeoutException`

---

public class InterruptedIOException
extends [IOException](IOException.md "class in java.io")

Signals that an I/O operation has been interrupted. An
`InterruptedIOException` is thrown to indicate that an
input or output transfer has been terminated because the thread
performing it was interrupted. The field [`bytesTransferred`](#bytesTransferred)
indicates how many bytes were successfully transferred before
the interruption occurred.

Since:
:   1.0

See Also:
:   * [`InputStream`](InputStream.md "class in java.io")
    * [`OutputStream`](OutputStream.md "class in java.io")
    * [`Thread.interrupt()`](../lang/Thread.md#interrupt())
    * [Serialized Form](../../../serialized-form.md#java.io.InterruptedIOException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `int`

  `bytesTransferred`

  Reports how many bytes had been transferred as part of the I/O
  operation before it was interrupted.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InterruptedIOException()`

  Constructs an `InterruptedIOException` with
  `null` as its error detail message.

  `InterruptedIOException(String s)`

  Constructs an `InterruptedIOException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### bytesTransferred

    public int bytesTransferred

    Reports how many bytes had been transferred as part of the I/O
    operation before it was interrupted.
* ## Constructor Details

  + ### InterruptedIOException

    public InterruptedIOException()

    Constructs an `InterruptedIOException` with
    `null` as its error detail message.
  + ### InterruptedIOException

    public InterruptedIOException([String](../lang/String.md "class in java.lang") s)

    Constructs an `InterruptedIOException` with the
    specified detail message. The string `s` can be
    retrieved later by the
    [`Throwable.getMessage()`](../lang/Throwable.md#getMessage())
    method of class `java.lang.Throwable`.

    Parameters:
    :   `s` - the detail message.