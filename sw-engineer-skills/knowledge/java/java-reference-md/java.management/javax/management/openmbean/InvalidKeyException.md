Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class InvalidKeyException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

javax.management.openmbean.InvalidKeyException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidKeyException
extends [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

This runtime exception is thrown to indicate that a method parameter which was expected to be
an item name of a *composite data* or a row index of a *tabular data* is not valid.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.InvalidKeyException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidKeyException()`

  An InvalidKeyException with no detail message.

  `InvalidKeyException(String msg)`

  An InvalidKeyException with a detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidKeyException

    public InvalidKeyException()

    An InvalidKeyException with no detail message.
  + ### InvalidKeyException

    public InvalidKeyException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    An InvalidKeyException with a detail message.

    Parameters:
    :   `msg` - the detail message.