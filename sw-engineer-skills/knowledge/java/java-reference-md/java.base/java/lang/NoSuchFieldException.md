Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class NoSuchFieldException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

java.lang.NoSuchFieldException

All Implemented Interfaces:
:   `Serializable`

---

public class NoSuchFieldException
extends [ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

Signals that the class doesn't have a field of a specified name.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.NoSuchFieldException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchFieldException()`

  Constructor.

  `NoSuchFieldException(String s)`

  Constructor with a detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchFieldException

    public NoSuchFieldException()

    Constructor.
  + ### NoSuchFieldException

    public NoSuchFieldException([String](String.md "class in java.lang") s)

    Constructor with a detail message.

    Parameters:
    :   `s` - the detail message