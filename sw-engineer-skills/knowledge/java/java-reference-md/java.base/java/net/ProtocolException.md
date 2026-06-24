Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class ProtocolException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

java.net.ProtocolException

All Implemented Interfaces:
:   `Serializable`

---

public class ProtocolException
extends [IOException](../io/IOException.md "class in java.io")

Thrown to indicate that there is an error in the underlying
protocol, such as a TCP error.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.ProtocolException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ProtocolException()`

  Constructs a new `ProtocolException` with no detail message.

  `ProtocolException(String message)`

  Constructs a new `ProtocolException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ProtocolException

    public ProtocolException([String](../lang/String.md "class in java.lang") message)

    Constructs a new `ProtocolException` with the
    specified detail message.

    Parameters:
    :   `message` - the detail message.
  + ### ProtocolException

    public ProtocolException()

    Constructs a new `ProtocolException` with no detail message.