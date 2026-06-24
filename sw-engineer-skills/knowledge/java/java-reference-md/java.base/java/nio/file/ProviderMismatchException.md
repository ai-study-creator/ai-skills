Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class ProviderMismatchException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

java.nio.file.ProviderMismatchException

All Implemented Interfaces:
:   `Serializable`

---

public class ProviderMismatchException
extends [IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to invoke a method on an
object created by one file system provider with a parameter created by a
different file system provider.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.ProviderMismatchException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ProviderMismatchException()`

  Constructs an instance of this class.

  `ProviderMismatchException(String msg)`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ProviderMismatchException

    public ProviderMismatchException()

    Constructs an instance of this class.
  + ### ProviderMismatchException

    public ProviderMismatchException([String](../../lang/String.md "class in java.lang") msg)

    Constructs an instance of this class.

    Parameters:
    :   `msg` - the detail message