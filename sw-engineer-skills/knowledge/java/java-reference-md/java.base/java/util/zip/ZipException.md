Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class ZipException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

java.util.zip.ZipException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `JarException`

---

public class ZipException
extends [IOException](../../io/IOException.md "class in java.io")

Signals that a Zip exception of some sort has occurred.

Since:
:   1.1

See Also:
:   * [`IOException`](../../io/IOException.md "class in java.io")
    * [Serialized Form](../../../../serialized-form.md#java.util.zip.ZipException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ZipException()`

  Constructs a `ZipException` with `null`
  as its error detail message.

  `ZipException(String s)`

  Constructs a `ZipException` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ZipException

    public ZipException()

    Constructs a `ZipException` with `null`
    as its error detail message.
  + ### ZipException

    public ZipException([String](../../lang/String.md "class in java.lang") s)

    Constructs a `ZipException` with the specified detail
    message.

    Parameters:
    :   `s` - the detail message.