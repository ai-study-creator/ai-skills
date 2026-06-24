Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class FileSystemLoopException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

[java.nio.file.FileSystemException](FileSystemException.md "class in java.nio.file")

java.nio.file.FileSystemLoopException

All Implemented Interfaces:
:   `Serializable`

---

public class FileSystemLoopException
extends [FileSystemException](FileSystemException.md "class in java.nio.file")

Checked exception thrown when a file system loop, or cycle, is encountered.

Since:
:   1.7

See Also:
:   * [`Files.walkFileTree(java.nio.file.Path, java.util.Set<java.nio.file.FileVisitOption>, int, java.nio.file.FileVisitor<? super java.nio.file.Path>)`](Files.md#walkFileTree(java.nio.file.Path,java.util.Set,int,java.nio.file.FileVisitor))
    * [Serialized Form](../../../../serialized-form.md#java.nio.file.FileSystemLoopException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileSystemLoopException(String file)`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.nio.file.[FileSystemException](FileSystemException.md "class in java.nio.file")

  `getFile, getMessage, getOtherFile, getReason`

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FileSystemLoopException

    public FileSystemLoopException([String](../../lang/String.md "class in java.lang") file)

    Constructs an instance of this class.

    Parameters:
    :   `file` - a string identifying the file causing the cycle or `null` if
        not known