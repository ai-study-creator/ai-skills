Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class FileSystemAlreadyExistsException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

java.nio.file.FileSystemAlreadyExistsException

All Implemented Interfaces:
:   `Serializable`

---

public class FileSystemAlreadyExistsException
extends [RuntimeException](../../lang/RuntimeException.md "class in java.lang")

Runtime exception thrown when an attempt is made to create a file system that
already exists.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.FileSystemAlreadyExistsException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileSystemAlreadyExistsException()`

  Constructs an instance of this class.

  `FileSystemAlreadyExistsException(String msg)`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FileSystemAlreadyExistsException

    public FileSystemAlreadyExistsException()

    Constructs an instance of this class.
  + ### FileSystemAlreadyExistsException

    public FileSystemAlreadyExistsException([String](../../lang/String.md "class in java.lang") msg)

    Constructs an instance of this class.

    Parameters:
    :   `msg` - the detail message