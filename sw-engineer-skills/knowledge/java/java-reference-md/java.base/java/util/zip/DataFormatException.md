Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class DataFormatException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

java.util.zip.DataFormatException

All Implemented Interfaces:
:   `Serializable`

---

public class DataFormatException
extends [Exception](../../lang/Exception.md "class in java.lang")

Signals that a data format error has occurred.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.zip.DataFormatException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DataFormatException()`

  Constructs a DataFormatException with no detail message.

  `DataFormatException(String s)`

  Constructs a DataFormatException with the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DataFormatException

    public DataFormatException()

    Constructs a DataFormatException with no detail message.
  + ### DataFormatException

    public DataFormatException([String](../../lang/String.md "class in java.lang") s)

    Constructs a DataFormatException with the specified detail message.
    A detail message is a String that describes this particular exception.

    Parameters:
    :   `s` - the String containing a detail message