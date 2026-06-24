Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class ConnectionPendingException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

java.nio.channels.ConnectionPendingException

All Implemented Interfaces:
:   `Serializable`

---

public class ConnectionPendingException
extends [IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to connect a [`SocketChannel`](SocketChannel.md "class in java.nio.channels") for which a non-blocking connection operation is already in
progress.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.ConnectionPendingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ConnectionPendingException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ConnectionPendingException

    public ConnectionPendingException()

    Constructs an instance of this class.