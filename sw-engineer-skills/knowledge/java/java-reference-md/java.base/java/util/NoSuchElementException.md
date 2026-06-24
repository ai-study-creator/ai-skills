Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class NoSuchElementException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

java.util.NoSuchElementException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `InputMismatchException`

---

public class NoSuchElementException
extends [RuntimeException](../lang/RuntimeException.md "class in java.lang")

Thrown by various accessor methods to indicate that the element being requested
does not exist.

Since:
:   1.0

See Also:
:   * [`Enumeration.nextElement()`](Enumeration.md#nextElement())
    * [`Iterator.next()`](Iterator.md#next())
    * [Serialized Form](../../../serialized-form.md#java.util.NoSuchElementException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchElementException()`

  Constructs a `NoSuchElementException` with `null`
  as its error message string.

  `NoSuchElementException(String s)`

  Constructs a `NoSuchElementException`, saving a reference
  to the error message string `s` for later retrieval by the
  `getMessage` method.

  `NoSuchElementException(String s,
  Throwable cause)`

  Constructs a `NoSuchElementException` with the specified detail
  message and cause.

  `NoSuchElementException(Throwable cause)`

  Constructs a `NoSuchElementException` with the specified cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchElementException

    public NoSuchElementException()

    Constructs a `NoSuchElementException` with `null`
    as its error message string.
  + ### NoSuchElementException

    public NoSuchElementException([String](../lang/String.md "class in java.lang") s,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs a `NoSuchElementException` with the specified detail
    message and cause.

    Parameters:
    :   `s` - the detail message, or null
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method), or null

    Since:
    :   15
  + ### NoSuchElementException

    public NoSuchElementException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs a `NoSuchElementException` with the specified cause.
    The detail message is set to `(cause == null ? null :
    cause.toString())` (which typically contains the class and
    detail message of `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method)

    Since:
    :   15
  + ### NoSuchElementException

    public NoSuchElementException([String](../lang/String.md "class in java.lang") s)

    Constructs a `NoSuchElementException`, saving a reference
    to the error message string `s` for later retrieval by the
    `getMessage` method.

    Parameters:
    :   `s` - the detail message.