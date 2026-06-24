Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class IllegalThreadStateException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](IllegalArgumentException.md "class in java.lang")

java.lang.IllegalThreadStateException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalThreadStateException
extends [IllegalArgumentException](IllegalArgumentException.md "class in java.lang")

Thrown to indicate that a thread is not in an appropriate state
for the requested operation.

Since:
:   1.0

See Also:
:   * [`Thread.start()`](Thread.md#start())
    * [Serialized Form](../../../serialized-form.md#java.lang.IllegalThreadStateException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalThreadStateException()`

  Constructs an `IllegalThreadStateException` with no
  detail message.

  `IllegalThreadStateException(String s)`

  Constructs an `IllegalThreadStateException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalThreadStateException

    public IllegalThreadStateException()

    Constructs an `IllegalThreadStateException` with no
    detail message.
  + ### IllegalThreadStateException

    public IllegalThreadStateException([String](String.md "class in java.lang") s)

    Constructs an `IllegalThreadStateException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.