Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class WrongMethodTypeException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.RuntimeException](../RuntimeException.md "class in java.lang")

java.lang.invoke.WrongMethodTypeException

All Implemented Interfaces:
:   `Serializable`

---

public class WrongMethodTypeException
extends [RuntimeException](../RuntimeException.md "class in java.lang")

Thrown to indicate that code has attempted to call a method handle
via the wrong method type. As with the bytecode representation of
normal Java method calls, method handle calls are strongly typed
to a specific type descriptor associated with a call site.

This exception may also be thrown when two method handles are
composed, and the system detects that their types cannot be
matched up correctly. This amounts to an early evaluation
of the type mismatch, at method handle construction time,
instead of when the mismatched method handle is called.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.lang.invoke.WrongMethodTypeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `WrongMethodTypeException()`

  Constructs a `WrongMethodTypeException` with no detail message.

  `WrongMethodTypeException(String s)`

  Constructs a `WrongMethodTypeException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### WrongMethodTypeException

    public WrongMethodTypeException()

    Constructs a `WrongMethodTypeException` with no detail message.
  + ### WrongMethodTypeException

    public WrongMethodTypeException([String](../String.md "class in java.lang") s)

    Constructs a `WrongMethodTypeException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.