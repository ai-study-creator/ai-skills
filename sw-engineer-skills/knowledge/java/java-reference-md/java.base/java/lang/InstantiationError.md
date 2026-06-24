Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class InstantiationError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

[java.lang.IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

java.lang.InstantiationError

All Implemented Interfaces:
:   `Serializable`

---

public class InstantiationError
extends [IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

Thrown when an application tries to use the Java `new`
construct to instantiate an abstract class or an interface.

Normally, this error is caught by the compiler; this error can
only occur at run time if the definition of a class has
incompatibly changed.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.InstantiationError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InstantiationError()`

  Constructs an `InstantiationError` with no detail message.

  `InstantiationError(String s)`

  Constructs an `InstantiationError` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InstantiationError

    public InstantiationError()

    Constructs an `InstantiationError` with no detail message.
  + ### InstantiationError

    public InstantiationError([String](String.md "class in java.lang") s)

    Constructs an `InstantiationError` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.