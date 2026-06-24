Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class NotDirectoryException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

[java.nio.file.FileSystemException](FileSystemException.md "class in java.nio.file")

java.nio.file.NotDirectoryException

All Implemented Interfaces:
:   `Serializable`

---

public class NotDirectoryException
extends [FileSystemException](FileSystemException.md "class in java.nio.file")

Checked exception thrown when a file system operation, intended for a
directory, fails because the file is not a directory.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.NotDirectoryException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NotDirectoryException(String file)`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.nio.file.[FileSystemException](FileSystemException.md "class in java.nio.file")

  `getFile, getMessage, getOtherFile, getReason`

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NotDirectoryException

    public NotDirectoryException([String](../../lang/String.md "class in java.lang") file)

    Constructs an instance of this class.

    Parameters:
    :   `file` - a string identifying the file or `null` if not known