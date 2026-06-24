Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class NegativeArraySizeException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.NegativeArraySizeException

All Implemented Interfaces:
:   `Serializable`

---

public class NegativeArraySizeException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown if an application tries to create an array with negative size.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.NegativeArraySizeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NegativeArraySizeException()`

  Constructs a `NegativeArraySizeException` with no
  detail message.

  `NegativeArraySizeException(String s)`

  Constructs a `NegativeArraySizeException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NegativeArraySizeException

    public NegativeArraySizeException()

    Constructs a `NegativeArraySizeException` with no
    detail message.
  + ### NegativeArraySizeException

    public NegativeArraySizeException([String](String.md "class in java.lang") s)

    Constructs a `NegativeArraySizeException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.