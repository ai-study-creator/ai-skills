Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class UnknownError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.VirtualMachineError](VirtualMachineError.md "class in java.lang")

java.lang.UnknownError

All Implemented Interfaces:
:   `Serializable`

---

public class UnknownError
extends [VirtualMachineError](VirtualMachineError.md "class in java.lang")

Thrown when an unknown but serious exception has occurred in the
Java Virtual Machine.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.UnknownError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnknownError()`

  Constructs an `UnknownError` with no detail message.

  `UnknownError(String s)`

  Constructs an `UnknownError` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnknownError

    public UnknownError()

    Constructs an `UnknownError` with no detail message.
  + ### UnknownError

    public UnknownError([String](String.md "class in java.lang") s)

    Constructs an `UnknownError` with the specified detail
    message.

    Parameters:
    :   `s` - the detail message.