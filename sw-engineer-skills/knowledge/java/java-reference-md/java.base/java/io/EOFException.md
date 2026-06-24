Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class EOFException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

java.io.EOFException

All Implemented Interfaces:
:   `Serializable`

---

public class EOFException
extends [IOException](IOException.md "class in java.io")

Signals that an end of file or end of stream has been reached
unexpectedly during input.

This exception is mainly used by data input streams to signal end of
stream. Note that many other input operations return a special value on
end of stream rather than throwing an exception.

Since:
:   1.0

See Also:
:   * [`DataInputStream`](DataInputStream.md "class in java.io")
    * [`IOException`](IOException.md "class in java.io")
    * [Serialized Form](../../../serialized-form.md#java.io.EOFException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EOFException()`

  Constructs an `EOFException` with `null`
  as its error detail message.

  `EOFException(String s)`

  Constructs an `EOFException` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### EOFException

    public EOFException()

    Constructs an `EOFException` with `null`
    as its error detail message.
  + ### EOFException

    public EOFException([String](../lang/String.md "class in java.lang") s)

    Constructs an `EOFException` with the specified detail
    message. The string `s` may later be retrieved by the
    [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method of class
    `java.lang.Throwable`.

    Parameters:
    :   `s` - the detail message.