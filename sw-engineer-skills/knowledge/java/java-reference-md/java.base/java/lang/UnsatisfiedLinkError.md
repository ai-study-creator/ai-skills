Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class UnsatisfiedLinkError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

java.lang.UnsatisfiedLinkError

All Implemented Interfaces:
:   `Serializable`

---

public class UnsatisfiedLinkError
extends [LinkageError](LinkageError.md "class in java.lang")

Thrown if the Java Virtual Machine cannot find an appropriate
native-language definition of a method declared `native`.

Since:
:   1.0

See Also:
:   * [`Runtime`](Runtime.md "class in java.lang")
    * [Serialized Form](../../../serialized-form.md#java.lang.UnsatisfiedLinkError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsatisfiedLinkError()`

  Constructs an `UnsatisfiedLinkError` with no detail message.

  `UnsatisfiedLinkError(String s)`

  Constructs an `UnsatisfiedLinkError` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsatisfiedLinkError

    public UnsatisfiedLinkError()

    Constructs an `UnsatisfiedLinkError` with no detail message.
  + ### UnsatisfiedLinkError

    public UnsatisfiedLinkError([String](String.md "class in java.lang") s)

    Constructs an `UnsatisfiedLinkError` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.