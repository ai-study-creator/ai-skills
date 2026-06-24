Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class IllegalAccessError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

[java.lang.IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

java.lang.IllegalAccessError

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalAccessError
extends [IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

Thrown if an application attempts to access or modify a field, or
to call a method that it does not have access to.

Normally, this error is caught by the compiler; this error can
only occur at run time if the definition of a class has
incompatibly changed.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.IllegalAccessError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalAccessError()`

  Constructs an `IllegalAccessError` with no detail message.

  `IllegalAccessError(String s)`

  Constructs an `IllegalAccessError` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalAccessError

    public IllegalAccessError()

    Constructs an `IllegalAccessError` with no detail message.
  + ### IllegalAccessError

    public IllegalAccessError([String](String.md "class in java.lang") s)

    Constructs an `IllegalAccessError` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.