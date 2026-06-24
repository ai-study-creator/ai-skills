Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class NoSuchMethodException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

java.lang.NoSuchMethodException

All Implemented Interfaces:
:   `Serializable`

---

public class NoSuchMethodException
extends [ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

Thrown when a particular method cannot be found.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.NoSuchMethodException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchMethodException()`

  Constructs a `NoSuchMethodException` without a detail message.

  `NoSuchMethodException(String s)`

  Constructs a `NoSuchMethodException` with a detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchMethodException

    public NoSuchMethodException()

    Constructs a `NoSuchMethodException` without a detail message.
  + ### NoSuchMethodException

    public NoSuchMethodException([String](String.md "class in java.lang") s)

    Constructs a `NoSuchMethodException` with a detail message.

    Parameters:
    :   `s` - the detail message.