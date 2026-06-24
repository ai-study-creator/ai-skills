Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class OutOfMemoryError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.VirtualMachineError](VirtualMachineError.md "class in java.lang")

java.lang.OutOfMemoryError

All Implemented Interfaces:
:   `Serializable`

---

public class OutOfMemoryError
extends [VirtualMachineError](VirtualMachineError.md "class in java.lang")

Thrown when the Java Virtual Machine cannot allocate an object
because it is out of memory, and no more memory could be made
available by the garbage collector.
`OutOfMemoryError` objects may be constructed by the virtual
machine as if [suppression were disabled and/or the stack trace was not
writable](Throwable.md#%3Cinit%3E(java.lang.String,java.lang.Throwable,boolean,boolean)).

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.OutOfMemoryError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OutOfMemoryError()`

  Constructs an `OutOfMemoryError` with no detail message.

  `OutOfMemoryError(String s)`

  Constructs an `OutOfMemoryError` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### OutOfMemoryError

    public OutOfMemoryError()

    Constructs an `OutOfMemoryError` with no detail message.
  + ### OutOfMemoryError

    public OutOfMemoryError([String](String.md "class in java.lang") s)

    Constructs an `OutOfMemoryError` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.