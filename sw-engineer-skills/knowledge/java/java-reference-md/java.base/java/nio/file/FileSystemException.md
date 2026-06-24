Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class FileSystemException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

java.nio.file.FileSystemException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AccessDeniedException`, `AtomicMoveNotSupportedException`, `DirectoryNotEmptyException`, `FileAlreadyExistsException`, `FileSystemLoopException`, `NoSuchFileException`, `NotDirectoryException`, `NotLinkException`

---

public class FileSystemException
extends [IOException](../../io/IOException.md "class in java.io")

Thrown when a file system operation fails on one or two files. This class is
the general class for file system exceptions.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.FileSystemException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileSystemException(String file)`

  Constructs an instance of this class.

  `FileSystemException(String file,
  String other,
  String reason)`

  Constructs an instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getFile()`

  Returns the file used to create this exception.

  `String`

  `getMessage()`

  Returns the detail message string.

  `String`

  `getOtherFile()`

  Returns the other file used to create this exception.

  `String`

  `getReason()`

  Returns the string explaining why the file system operation failed.

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FileSystemException

    public FileSystemException([String](../../lang/String.md "class in java.lang") file)

    Constructs an instance of this class. This constructor should be used
    when an operation involving one file fails and there isn't any additional
    information to explain the reason.

    Parameters:
    :   `file` - a string identifying the file or `null` if not known.
  + ### FileSystemException

    public FileSystemException([String](../../lang/String.md "class in java.lang") file,
    [String](../../lang/String.md "class in java.lang") other,
    [String](../../lang/String.md "class in java.lang") reason)

    Constructs an instance of this class. This constructor should be used
    when an operation involving two files fails, or there is additional
    information to explain the reason.

    Parameters:
    :   `file` - a string identifying the file or `null` if not known.
    :   `other` - a string identifying the other file or `null` if there
        isn't another file or if not known
    :   `reason` - a reason message with additional information or `null`
* ## Method Details

  + ### getFile

    public [String](../../lang/String.md "class in java.lang") getFile()

    Returns the file used to create this exception.

    Returns:
    :   the file (can be `null`)
  + ### getOtherFile

    public [String](../../lang/String.md "class in java.lang") getOtherFile()

    Returns the other file used to create this exception.

    Returns:
    :   the other file (can be `null`)
  + ### getReason

    public [String](../../lang/String.md "class in java.lang") getReason()

    Returns the string explaining why the file system operation failed.

    Returns:
    :   the string explaining why the file system operation failed
  + ### getMessage

    public [String](../../lang/String.md "class in java.lang") getMessage()

    Returns the detail message string.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).