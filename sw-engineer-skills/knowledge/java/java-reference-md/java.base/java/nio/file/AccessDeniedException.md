Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class AccessDeniedException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

[java.nio.file.FileSystemException](FileSystemException.md "class in java.nio.file")

java.nio.file.AccessDeniedException

All Implemented Interfaces:
:   `Serializable`

---

public class AccessDeniedException
extends [FileSystemException](FileSystemException.md "class in java.nio.file")

Checked exception thrown when a file system operation is denied, typically
due to a file permission or other access check.

This exception is not related to the [`AccessControlException`](../../security/AccessControlException.md "class in java.security") or [`SecurityException`](../../lang/SecurityException.md "class in java.lang") thrown by access controllers or security managers when
access to a file is denied.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.AccessDeniedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessDeniedException(String file)`

  Constructs an instance of this class.

  `AccessDeniedException(String file,
  String other,
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

  + ### AccessDeniedException

    public AccessDeniedException([String](../../lang/String.md "class in java.lang") file)

    Constructs an instance of this class.

    Parameters:
    :   `file` - a string identifying the file or `null` if not known
  + ### AccessDeniedException

    public AccessDeniedException([String](../../lang/String.md "class in java.lang") file,
    [String](../../lang/String.md "class in java.lang") other,
    [String](../../lang/String.md "class in java.lang") reason)

    Constructs an instance of this class.

    Parameters:
    :   `file` - a string identifying the file or `null` if not known
    :   `other` - a string identifying the other file or `null` if not known
    :   `reason` - a reason message with additional information or `null`