Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class IndexOutOfBoundsException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.IndexOutOfBoundsException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ArrayIndexOutOfBoundsException`, `StringIndexOutOfBoundsException`

---

public class IndexOutOfBoundsException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown to indicate that an index of some sort (such as to an array, to a
string, or to a vector) is out of range.

Applications can subclass this class to indicate similar exceptions.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.IndexOutOfBoundsException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IndexOutOfBoundsException()`

  Constructs an `IndexOutOfBoundsException` with no detail message.

  `IndexOutOfBoundsException(int index)`

  Constructs a new `IndexOutOfBoundsException` class with an
  argument indicating the illegal index.

  `IndexOutOfBoundsException(long index)`

  Constructs a new `IndexOutOfBoundsException` class with an
  argument indicating the illegal index.

  `IndexOutOfBoundsException(String s)`

  Constructs an `IndexOutOfBoundsException` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IndexOutOfBoundsException

    public IndexOutOfBoundsException()

    Constructs an `IndexOutOfBoundsException` with no detail message.
  + ### IndexOutOfBoundsException

    public IndexOutOfBoundsException([String](String.md "class in java.lang") s)

    Constructs an `IndexOutOfBoundsException` with the specified detail
    message.

    Parameters:
    :   `s` - the detail message
  + ### IndexOutOfBoundsException

    public IndexOutOfBoundsException(int index)

    Constructs a new `IndexOutOfBoundsException` class with an
    argument indicating the illegal index.

    The index is included in this exception's detail message. The
    exact presentation format of the detail message is unspecified.

    Parameters:
    :   `index` - the illegal index.

    Since:
    :   9
  + ### IndexOutOfBoundsException

    public IndexOutOfBoundsException(long index)

    Constructs a new `IndexOutOfBoundsException` class with an
    argument indicating the illegal index.

    The index is included in this exception's detail message. The
    exact presentation format of the detail message is unspecified.

    Parameters:
    :   `index` - the illegal index.

    Since:
    :   16