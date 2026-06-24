Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class StringIndexOutOfBoundsException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

[java.lang.IndexOutOfBoundsException](IndexOutOfBoundsException.md "class in java.lang")

java.lang.StringIndexOutOfBoundsException

All Implemented Interfaces:
:   `Serializable`

---

public class StringIndexOutOfBoundsException
extends [IndexOutOfBoundsException](IndexOutOfBoundsException.md "class in java.lang")

Thrown by `String` methods to indicate that an index is either negative
or greater than the size of the string. For some methods such as the
[`charAt`](String.md#charAt(int)) method, this exception also is thrown when the
index is equal to the size of the string.

Since:
:   1.0

See Also:
:   * [`String.charAt(int)`](String.md#charAt(int))
    * [Serialized Form](../../../serialized-form.md#java.lang.StringIndexOutOfBoundsException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringIndexOutOfBoundsException()`

  Constructs a `StringIndexOutOfBoundsException` with no detail
  message.

  `StringIndexOutOfBoundsException(int index)`

  Constructs a new `StringIndexOutOfBoundsException` class with an
  argument indicating the illegal index.

  `StringIndexOutOfBoundsException(String s)`

  Constructs a `StringIndexOutOfBoundsException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StringIndexOutOfBoundsException

    public StringIndexOutOfBoundsException()

    Constructs a `StringIndexOutOfBoundsException` with no detail
    message.
  + ### StringIndexOutOfBoundsException

    public StringIndexOutOfBoundsException([String](String.md "class in java.lang") s)

    Constructs a `StringIndexOutOfBoundsException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.
  + ### StringIndexOutOfBoundsException

    public StringIndexOutOfBoundsException(int index)

    Constructs a new `StringIndexOutOfBoundsException` class with an
    argument indicating the illegal index.

    The index is included in this exception's detail message. The
    exact presentation format of the detail message is unspecified.

    Parameters:
    :   `index` - the illegal index.