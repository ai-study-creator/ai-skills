Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class IllegalCallerException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.IllegalCallerException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalCallerException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown to indicate that a method has been called by an inappropriate caller.

Since:
:   9

See Also:
:   * [`StackWalker.getCallerClass()`](StackWalker.md#getCallerClass())
    * [Serialized Form](../../../serialized-form.md#java.lang.IllegalCallerException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalCallerException()`

  Constructs an IllegalCallerException with no detail message.

  `IllegalCallerException(String s)`

  Constructs an IllegalCallerException with the specified detail
  message.

  `IllegalCallerException(String message,
  Throwable cause)`

  Constructs a new exception with the specified detail message and
  cause.

  `IllegalCallerException(Throwable cause)`

  Constructs a new exception with the specified cause and a detail
  message of `(cause==null ? null : cause.toString())` (which
  typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalCallerException

    public IllegalCallerException()

    Constructs an IllegalCallerException with no detail message.
  + ### IllegalCallerException

    public IllegalCallerException([String](String.md "class in java.lang") s)

    Constructs an IllegalCallerException with the specified detail
    message.

    Parameters:
    :   `s` - the String that contains a detailed message (can be null)
  + ### IllegalCallerException

    public IllegalCallerException([String](String.md "class in java.lang") message,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified detail message and
    cause.

    Parameters:
    :   `message` - the detail message (can be null)
    :   `cause` - the cause (can be null)
  + ### IllegalCallerException

    public IllegalCallerException([Throwable](Throwable.md "class in java.lang") cause)

    Constructs a new exception with the specified cause and a detail
    message of `(cause==null ? null : cause.toString())` (which
    typically contains the class and detail message of `cause`).

    Parameters:
    :   `cause` - the cause (can be null)