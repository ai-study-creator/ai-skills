Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class InaccessibleObjectException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.RuntimeException](../RuntimeException.md "class in java.lang")

java.lang.reflect.InaccessibleObjectException

All Implemented Interfaces:
:   `Serializable`

---

public class InaccessibleObjectException
extends [RuntimeException](../RuntimeException.md "class in java.lang")

Thrown when Java language access checks cannot be suppressed.

Since:
:   9

See Also:
:   * [`AccessibleObject.setAccessible(boolean)`](AccessibleObject.md#setAccessible(boolean))
    * [Serialized Form](../../../../serialized-form.md#java.lang.reflect.InaccessibleObjectException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InaccessibleObjectException()`

  Constructs an `InaccessibleObjectException` with no detail message.

  `InaccessibleObjectException(String msg)`

  Constructs an `InaccessibleObjectException` with the given detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InaccessibleObjectException

    public InaccessibleObjectException()

    Constructs an `InaccessibleObjectException` with no detail message.
  + ### InaccessibleObjectException

    public InaccessibleObjectException([String](../String.md "class in java.lang") msg)

    Constructs an `InaccessibleObjectException` with the given detail
    message.

    Parameters:
    :   `msg` - The detail message