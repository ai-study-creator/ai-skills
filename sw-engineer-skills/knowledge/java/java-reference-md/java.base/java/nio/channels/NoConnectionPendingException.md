Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class NoConnectionPendingException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

java.nio.channels.NoConnectionPendingException

All Implemented Interfaces:
:   `Serializable`

---

public class NoConnectionPendingException
extends [IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

Unchecked exception thrown when the [`finishConnect`](SocketChannel.md#finishConnect()) method of a [`SocketChannel`](SocketChannel.md "class in java.nio.channels") is invoked without first
successfully invoking its [`connect`](SocketChannel.md#connect(java.net.SocketAddress)) method.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.NoConnectionPendingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoConnectionPendingException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoConnectionPendingException

    public NoConnectionPendingException()

    Constructs an instance of this class.