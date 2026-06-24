Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class DirectoryNotEmptyException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

[java.nio.file.FileSystemException](FileSystemException.md "class in java.nio.file")

java.nio.file.DirectoryNotEmptyException

All Implemented Interfaces:
:   `Serializable`

---

public class DirectoryNotEmptyException
extends [FileSystemException](FileSystemException.md "class in java.nio.file")

Checked exception thrown when a file system operation fails because a
directory is not empty.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.DirectoryNotEmptyException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DirectoryNotEmptyException(String dir)`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.nio.file.[FileSystemException](FileSystemException.md "class in java.nio.file")

  `getFile, getMessage, getOtherFile, getReason`

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DirectoryNotEmptyException

    public DirectoryNotEmptyException([String](../../lang/String.md "class in java.lang") dir)

    Constructs an instance of this class.

    Parameters:
    :   `dir` - a string identifying the directory or `null` if not known