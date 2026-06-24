Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ClassFormatError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

java.lang.ClassFormatError

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `GenericSignatureFormatError`, `UnsupportedClassVersionError`

---

public class ClassFormatError
extends [LinkageError](LinkageError.md "class in java.lang")

Thrown when the Java Virtual Machine attempts to read a class
file and determines that the file is malformed or otherwise cannot
be interpreted as a class file.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.ClassFormatError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ClassFormatError()`

  Constructs a `ClassFormatError` with no detail message.

  `ClassFormatError(String s)`

  Constructs a `ClassFormatError` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ClassFormatError

    public ClassFormatError()

    Constructs a `ClassFormatError` with no detail message.
  + ### ClassFormatError

    public ClassFormatError([String](String.md "class in java.lang") s)

    Constructs a `ClassFormatError` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.