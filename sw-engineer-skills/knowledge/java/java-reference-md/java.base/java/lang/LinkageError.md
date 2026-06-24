Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class LinkageError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

java.lang.LinkageError

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `BootstrapMethodError`, `ClassCircularityError`, `ClassFormatError`, `ExceptionInInitializerError`, `IncompatibleClassChangeError`, `NoClassDefFoundError`, `UnsatisfiedLinkError`, `VerifyError`

---

public class LinkageError
extends [Error](Error.md "class in java.lang")

Subclasses of `LinkageError` indicate that a class has
some dependency on another class; however, the latter class has
incompatibly changed after the compilation of the former class.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.LinkageError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LinkageError()`

  Constructs a `LinkageError` with no detail message.

  `LinkageError(String s)`

  Constructs a `LinkageError` with the specified detail
  message.

  `LinkageError(String s,
  Throwable cause)`

  Constructs a `LinkageError` with the specified detail
  message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LinkageError

    public LinkageError()

    Constructs a `LinkageError` with no detail message.
  + ### LinkageError

    public LinkageError([String](String.md "class in java.lang") s)

    Constructs a `LinkageError` with the specified detail
    message.

    Parameters:
    :   `s` - the detail message.
  + ### LinkageError

    public LinkageError([String](String.md "class in java.lang") s,
    [Throwable](Throwable.md "class in java.lang") cause)

    Constructs a `LinkageError` with the specified detail
    message and cause.

    Parameters:
    :   `s` - the detail message.
    :   `cause` - the cause, may be `null`

    Since:
    :   1.7