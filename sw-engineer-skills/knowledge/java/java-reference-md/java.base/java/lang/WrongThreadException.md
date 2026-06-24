Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class WrongThreadException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.WrongThreadException

All Implemented Interfaces:
:   `Serializable`

---

public final class WrongThreadException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown to indicate that a method has been called on the wrong thread.

Since:
:   19

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.WrongThreadException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `WrongThreadException()`

  Constructs a WrongThreadException with no detail message.

  `WrongThreadException(String s)`

  Constructs a WrongThreadException with the given detail message.

  `WrongThreadException(String message,
  Throwable cause)`

  Constructs a WrongThreadException with the given detail message and cause.

  `WrongThreadException(Throwable cause)`

  Constructs a WrongThreadException with the given cause and a detail
  message of `(cause==null ? null : cause.toString())` (which
  typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### WrongThreadException

    public WrongThreadException()

    Constructs a WrongThreadException with no detail message.
  + ### WrongThreadException

    public WrongThreadException([String](String.md "class in java.lang") s)

    Constructs a WrongThreadException with the given detail message.

    Parameters:
    :   `s` - the String that contains a detailed message, can be null
  + ### WrongThreadException

    public WrongThreadException([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a WrongThreadException with the given detail message and cause.

    Parameters:
    :   `message` - the detail message, can be null
    :   `cause` - the cause, can be null
  + ### WrongThreadException

    public WrongThreadException([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a WrongThreadException with the given cause and a detail
    message of `(cause==null ? null : cause.toString())` (which
    typically contains the class and detail message of `cause`).

    Parameters:
    :   `cause` - the cause, can be null