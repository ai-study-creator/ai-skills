Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ArrayIndexOutOfBoundsException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

[java.lang.IndexOutOfBoundsException](IndexOutOfBoundsException.md "class in java.lang")

java.lang.ArrayIndexOutOfBoundsException

All Implemented Interfaces:
:   `Serializable`

---

public class ArrayIndexOutOfBoundsException
extends [IndexOutOfBoundsException](IndexOutOfBoundsException.md "class in java.lang")

Thrown to indicate that an array has been accessed with an illegal index. The
index is either negative or greater than or equal to the size of the array.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.ArrayIndexOutOfBoundsException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ArrayIndexOutOfBoundsException()`

  Constructs an `ArrayIndexOutOfBoundsException` with no detail
  message.

  `ArrayIndexOutOfBoundsException(int index)`

  Constructs a new `ArrayIndexOutOfBoundsException` class with an
  argument indicating the illegal index.

  `ArrayIndexOutOfBoundsException(String s)`

  Constructs an `ArrayIndexOutOfBoundsException` class with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ArrayIndexOutOfBoundsException

    public ArrayIndexOutOfBoundsException()

    Constructs an `ArrayIndexOutOfBoundsException` with no detail
    message.
  + ### ArrayIndexOutOfBoundsException

    public ArrayIndexOutOfBoundsException([String](String.md "class in java.lang") s)

    Constructs an `ArrayIndexOutOfBoundsException` class with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.
  + ### ArrayIndexOutOfBoundsException

    public ArrayIndexOutOfBoundsException(int index)

    Constructs a new `ArrayIndexOutOfBoundsException` class with an
    argument indicating the illegal index.

    The index is included in this exception's detail message. The
    exact presentation format of the detail message is unspecified.

    Parameters:
    :   `index` - the illegal index.