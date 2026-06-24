Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class EmptyStackException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

java.util.EmptyStackException

All Implemented Interfaces:
:   `Serializable`

---

public class EmptyStackException
extends [RuntimeException](../lang/RuntimeException.md "class in java.lang")

Thrown by methods in the `Stack` class to indicate
that the stack is empty.

Since:
:   1.0

See Also:
:   * [`Stack`](Stack.md "class in java.util")
    * [Serialized Form](../../../serialized-form.md#java.util.EmptyStackException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EmptyStackException()`

  Constructs a new `EmptyStackException` with `null`
  as its error message string.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### EmptyStackException

    public EmptyStackException()

    Constructs a new `EmptyStackException` with `null`
    as its error message string.