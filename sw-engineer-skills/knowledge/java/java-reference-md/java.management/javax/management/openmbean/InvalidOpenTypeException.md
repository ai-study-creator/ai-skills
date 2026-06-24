Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class InvalidOpenTypeException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

javax.management.openmbean.InvalidOpenTypeException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidOpenTypeException
extends [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

This runtime exception is thrown to indicate that the *open type* of an *open data* value
is not the one expected.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.InvalidOpenTypeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidOpenTypeException()`

  An InvalidOpenTypeException with no detail message.

  `InvalidOpenTypeException(String msg)`

  An InvalidOpenTypeException with a detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidOpenTypeException

    public InvalidOpenTypeException()

    An InvalidOpenTypeException with no detail message.
  + ### InvalidOpenTypeException

    public InvalidOpenTypeException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    An InvalidOpenTypeException with a detail message.

    Parameters:
    :   `msg` - the detail message.