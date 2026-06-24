Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ClassCircularityError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

java.lang.ClassCircularityError

All Implemented Interfaces:
:   `Serializable`

---

public class ClassCircularityError
extends [LinkageError](LinkageError.md "class in java.lang")

Thrown when the Java Virtual Machine detects a circularity in the
superclass hierarchy of a class being loaded.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.ClassCircularityError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ClassCircularityError()`

  Constructs a `ClassCircularityError` with no detail message.

  `ClassCircularityError(String s)`

  Constructs a `ClassCircularityError` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ClassCircularityError

    public ClassCircularityError()

    Constructs a `ClassCircularityError` with no detail message.
  + ### ClassCircularityError

    public ClassCircularityError([String](String.md "class in java.lang") s)

    Constructs a `ClassCircularityError` with the specified detail
    message.

    Parameters:
    :   `s` - The detail message