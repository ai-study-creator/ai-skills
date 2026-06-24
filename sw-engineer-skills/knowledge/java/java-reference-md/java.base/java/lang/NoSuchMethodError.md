Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class NoSuchMethodError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

[java.lang.IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

java.lang.NoSuchMethodError

All Implemented Interfaces:
:   `Serializable`

---

public class NoSuchMethodError
extends [IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

Thrown if an application tries to call a specified method of a
class (either static or instance), and that class no longer has a
definition of that method.

Normally, this error is caught by the compiler; this error can
only occur at run time if the definition of a class has
incompatibly changed.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.NoSuchMethodError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchMethodError()`

  Constructs a `NoSuchMethodError` with no detail message.

  `NoSuchMethodError(String s)`

  Constructs a `NoSuchMethodError` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchMethodError

    public NoSuchMethodError()

    Constructs a `NoSuchMethodError` with no detail message.
  + ### NoSuchMethodError

    public NoSuchMethodError([String](String.md "class in java.lang") s)

    Constructs a `NoSuchMethodError` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.