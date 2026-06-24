Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class AbstractMethodError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

[java.lang.IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

java.lang.AbstractMethodError

All Implemented Interfaces:
:   `Serializable`

---

public class AbstractMethodError
extends [IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

Thrown when an application tries to call an abstract method.
Normally, this error is caught by the compiler; this error can
only occur at run time if the definition of some class has
incompatibly changed since the currently executing method was last
compiled.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.AbstractMethodError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AbstractMethodError()`

  Constructs an `AbstractMethodError` with no detail message.

  `AbstractMethodError(String s)`

  Constructs an `AbstractMethodError` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AbstractMethodError

    public AbstractMethodError()

    Constructs an `AbstractMethodError` with no detail message.
  + ### AbstractMethodError

    public AbstractMethodError([String](String.md "class in java.lang") s)

    Constructs an `AbstractMethodError` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.