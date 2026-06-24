Module [java.desktop](../../module-summary.md)

Package [javax.imageio](package-summary.md)

# Class IIOException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

javax.imageio.IIOException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `IIOInvalidTreeException`

---

public class IIOException
extends [IOException](../../../java.base/java/io/IOException.md "class in java.io")

An exception class used for signaling run-time failure of reading
and writing operations.

In addition to a message string, a reference to another
`Throwable` (`Error` or
`Exception`) is maintained. This reference, if
non-`null`, refers to the event that caused this
exception to occur. For example, an `IOException` while
reading from a `File` would be stored there.

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.imageio.IIOException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IIOException(String message)`

  Constructs an `IIOException` with a given message
  `String`.

  `IIOException(String message,
  Throwable cause)`

  Constructs an `IIOException` with a given message
  `String` and a `Throwable` that was its
  underlying cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IIOException

    public IIOException([String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs an `IIOException` with a given message
    `String`. No underlying cause is set;
    `getCause` will return `null`.

    Parameters:
    :   `message` - the error message.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### IIOException

    public IIOException([String](../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs an `IIOException` with a given message
    `String` and a `Throwable` that was its
    underlying cause.

    Parameters:
    :   `message` - the error message.
    :   `cause` - the `Throwable` (`Error` or
        `Exception`) that caused this exception to occur.

    See Also:
    :   - [`Throwable.getCause()`](../../../java.base/java/lang/Throwable.md#getCause())
        - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())