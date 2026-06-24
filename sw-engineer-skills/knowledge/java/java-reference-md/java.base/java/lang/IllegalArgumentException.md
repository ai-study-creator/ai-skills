Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class IllegalArgumentException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.IllegalArgumentException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `IllegalChannelGroupException`, `IllegalCharsetNameException`, `IllegalFormatException`, `IllegalSelectorException`, `IllegalThreadStateException`, `InvalidKeyException`, `InvalidOpenTypeException`, `InvalidParameterException`, `InvalidPathException`, `KeyAlreadyExistsException`, `NumberFormatException`, `PatternSyntaxException`, `ProviderMismatchException`, `UnresolvedAddressException`, `UnsupportedAddressTypeException`, `UnsupportedCharsetException`

---

public class IllegalArgumentException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown to indicate that a method has been passed an illegal or
inappropriate argument.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.IllegalArgumentException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalArgumentException()`

  Constructs an `IllegalArgumentException` with no
  detail message.

  `IllegalArgumentException(String s)`

  Constructs an `IllegalArgumentException` with the
  specified detail message.

  `IllegalArgumentException(String message,
  Throwable cause)`

  Constructs a new exception with the specified detail message and
  cause.

  `IllegalArgumentException(Throwable cause)`

  Constructs a new exception with the specified cause and a detail
  message of `(cause==null ? null : cause.toString())` (which
  typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalArgumentException

    public IllegalArgumentException()

    Constructs an `IllegalArgumentException` with no
    detail message.
  + ### IllegalArgumentException

    public IllegalArgumentException([String](String.md "class in java.lang") s)

    Constructs an `IllegalArgumentException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.
  + ### IllegalArgumentException

    public IllegalArgumentException([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified detail message and
    cause.

    Note that the detail message associated with `cause` is
    *not* automatically incorporated in this exception's detail
    message.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value
        is permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.5
  + ### IllegalArgumentException

    public IllegalArgumentException([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified cause and a detail
    message of `(cause==null ? null : cause.toString())` (which
    typically contains the class and detail message of `cause`).
    This constructor is useful for exceptions that are little more than
    wrappers for other throwables (for example, [`PrivilegedActionException`](../security/PrivilegedActionException.md "class in java.security")).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Since:
    :   1.5