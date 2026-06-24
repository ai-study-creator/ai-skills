Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class AtomicMoveNotSupportedException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

[java.nio.file.FileSystemException](FileSystemException.md "class in java.nio.file")

java.nio.file.AtomicMoveNotSupportedException

All Implemented Interfaces:
:   `Serializable`

---

public class AtomicMoveNotSupportedException
extends [FileSystemException](FileSystemException.md "class in java.nio.file")

Checked exception thrown when a file cannot be moved as an atomic file system
operation.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.AtomicMoveNotSupportedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AtomicMoveNotSupportedException(String source,
  String target,
  String reason)`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.nio.file.[FileSystemException](FileSystemException.md "class in java.nio.file")

  `getFile, getMessage, getOtherFile, getReason`

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AtomicMoveNotSupportedException

    public AtomicMoveNotSupportedException([String](../../lang/String.md "class in java.lang") source,
    [String](../../lang/String.md "class in java.lang") target,
    [String](../../lang/String.md "class in java.lang") reason)

    Constructs an instance of this class.

    Parameters:
    :   `source` - a string identifying the source file or `null` if not known
    :   `target` - a string identifying the target file or `null` if not known
    :   `reason` - a reason message with additional information or `null`