Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class IncompatibleClassChangeError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

java.lang.IncompatibleClassChangeError

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AbstractMethodError`, `IllegalAccessError`, `InstantiationError`, `NoSuchFieldError`, `NoSuchMethodError`

---

public class IncompatibleClassChangeError
extends [LinkageError](LinkageError.md "class in java.lang")

Thrown when an incompatible class change has occurred to some class
definition. The definition of some class, on which the currently
executing method depends, has since changed.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.IncompatibleClassChangeError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IncompatibleClassChangeError()`

  Constructs an `IncompatibleClassChangeError` with no
  detail message.

  `IncompatibleClassChangeError(String s)`

  Constructs an `IncompatibleClassChangeError` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IncompatibleClassChangeError

    public IncompatibleClassChangeError()

    Constructs an `IncompatibleClassChangeError` with no
    detail message.
  + ### IncompatibleClassChangeError

    public IncompatibleClassChangeError([String](String.md "class in java.lang") s)

    Constructs an `IncompatibleClassChangeError` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.