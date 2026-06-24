Module [java.base](../../module-summary.md)

Package [java.nio](package-summary.md)

# Class InvalidMarkException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../lang/IllegalStateException.md "class in java.lang")

java.nio.InvalidMarkException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidMarkException
extends [IllegalStateException](../lang/IllegalStateException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to reset a buffer
when its mark is not defined.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.nio.InvalidMarkException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidMarkException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidMarkException

    public InvalidMarkException()

    Constructs an instance of this class.