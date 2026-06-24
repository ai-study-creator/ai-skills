Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class NoSuchFieldError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

[java.lang.IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

java.lang.NoSuchFieldError

All Implemented Interfaces:
:   `Serializable`

---

public class NoSuchFieldError
extends [IncompatibleClassChangeError](IncompatibleClassChangeError.md "class in java.lang")

Thrown if an application tries to access or modify a specified
field of an object, and that object no longer has that field.

Normally, this error is caught by the compiler; this error can
only occur at run time if the definition of a class has
incompatibly changed.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.NoSuchFieldError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchFieldError()`

  Constructs a `NoSuchFieldError` with no detail message.

  `NoSuchFieldError(String s)`

  Constructs a `NoSuchFieldError` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchFieldError

    public NoSuchFieldError()

    Constructs a `NoSuchFieldError` with no detail message.
  + ### NoSuchFieldError

    public NoSuchFieldError([String](String.md "class in java.lang") s)

    Constructs a `NoSuchFieldError` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.