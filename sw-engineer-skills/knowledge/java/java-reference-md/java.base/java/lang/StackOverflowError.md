Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class StackOverflowError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.VirtualMachineError](VirtualMachineError.md "class in java.lang")

java.lang.StackOverflowError

All Implemented Interfaces:
:   `Serializable`

---

public class StackOverflowError
extends [VirtualMachineError](VirtualMachineError.md "class in java.lang")

Thrown when a stack overflow occurs because an application
recurses too deeply.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.StackOverflowError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StackOverflowError()`

  Constructs a `StackOverflowError` with no detail message.

  `StackOverflowError(String s)`

  Constructs a `StackOverflowError` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StackOverflowError

    public StackOverflowError()

    Constructs a `StackOverflowError` with no detail message.
  + ### StackOverflowError

    public StackOverflowError([String](String.md "class in java.lang") s)

    Constructs a `StackOverflowError` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.