Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class NumberFormatException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](IllegalArgumentException.md "class in java.lang")

java.lang.NumberFormatException

All Implemented Interfaces:
:   `Serializable`

---

public class NumberFormatException
extends [IllegalArgumentException](IllegalArgumentException.md "class in java.lang")

Thrown to indicate that the application has attempted to convert
a string to one of the numeric types, but that the string does not
have the appropriate format.

Since:
:   1.0

See Also:
:   * [`Integer.parseInt(String)`](Integer.md#parseInt(java.lang.String))
    * [Serialized Form](../../../serialized-form.md#java.lang.NumberFormatException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NumberFormatException()`

  Constructs a `NumberFormatException` with no detail message.

  `NumberFormatException(String s)`

  Constructs a `NumberFormatException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NumberFormatException

    public NumberFormatException()

    Constructs a `NumberFormatException` with no detail message.
  + ### NumberFormatException

    public NumberFormatException([String](String.md "class in java.lang") s)

    Constructs a `NumberFormatException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.