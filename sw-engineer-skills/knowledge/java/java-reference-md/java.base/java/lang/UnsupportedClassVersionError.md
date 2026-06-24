Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class UnsupportedClassVersionError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

[java.lang.ClassFormatError](ClassFormatError.md "class in java.lang")

java.lang.UnsupportedClassVersionError

All Implemented Interfaces:
:   `Serializable`

---

public class UnsupportedClassVersionError
extends [ClassFormatError](ClassFormatError.md "class in java.lang")

Thrown when the Java Virtual Machine attempts to read a class
file and determines that the major and minor version numbers
in the file are not supported.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.UnsupportedClassVersionError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsupportedClassVersionError()`

  Constructs a `UnsupportedClassVersionError`
  with no detail message.

  `UnsupportedClassVersionError(String s)`

  Constructs a `UnsupportedClassVersionError` with
  the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsupportedClassVersionError

    public UnsupportedClassVersionError()

    Constructs a `UnsupportedClassVersionError`
    with no detail message.
  + ### UnsupportedClassVersionError

    public UnsupportedClassVersionError([String](String.md "class in java.lang") s)

    Constructs a `UnsupportedClassVersionError` with
    the specified detail message.

    Parameters:
    :   `s` - the detail message.