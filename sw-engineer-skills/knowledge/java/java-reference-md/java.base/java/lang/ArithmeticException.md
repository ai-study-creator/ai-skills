Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ArithmeticException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.ArithmeticException

All Implemented Interfaces:
:   `Serializable`

---

public class ArithmeticException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown when an exceptional arithmetic condition has occurred. For
example, an integer "divide by zero" throws an
instance of this class.
`ArithmeticException` objects may be constructed by the
virtual machine as if [suppression were disabled and/or the
stack trace was not writable](Throwable.md#%3Cinit%3E(java.lang.String,java.lang.Throwable,boolean,boolean)).

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.ArithmeticException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ArithmeticException()`

  Constructs an `ArithmeticException` with no detail
  message.

  `ArithmeticException(String s)`

  Constructs an `ArithmeticException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ArithmeticException

    public ArithmeticException()

    Constructs an `ArithmeticException` with no detail
    message.
  + ### ArithmeticException

    public ArithmeticException([String](String.md "class in java.lang") s)

    Constructs an `ArithmeticException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.