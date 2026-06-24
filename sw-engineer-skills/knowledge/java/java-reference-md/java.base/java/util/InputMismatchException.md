Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class InputMismatchException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.util.NoSuchElementException](NoSuchElementException.md "class in java.util")

java.util.InputMismatchException

All Implemented Interfaces:
:   `Serializable`

---

public class InputMismatchException
extends [NoSuchElementException](NoSuchElementException.md "class in java.util")

Thrown by a `Scanner` to indicate that the token
retrieved does not match the pattern for the expected type, or
that the token is out of range for the expected type.

Since:
:   1.5

See Also:
:   * [`Scanner`](Scanner.md "class in java.util")
    * [Serialized Form](../../../serialized-form.md#java.util.InputMismatchException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InputMismatchException()`

  Constructs an `InputMismatchException` with `null`
  as its error message string.

  `InputMismatchException(String s)`

  Constructs an `InputMismatchException`, saving a reference
  to the error message string `s` for later retrieval by the
  `getMessage` method.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InputMismatchException

    public InputMismatchException()

    Constructs an `InputMismatchException` with `null`
    as its error message string.
  + ### InputMismatchException

    public InputMismatchException([String](../lang/String.md "class in java.lang") s)

    Constructs an `InputMismatchException`, saving a reference
    to the error message string `s` for later retrieval by the
    `getMessage` method.

    Parameters:
    :   `s` - the detail message.