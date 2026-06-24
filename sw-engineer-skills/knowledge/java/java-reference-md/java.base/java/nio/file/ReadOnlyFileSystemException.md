Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class ReadOnlyFileSystemException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.UnsupportedOperationException](../../lang/UnsupportedOperationException.md "class in java.lang")

java.nio.file.ReadOnlyFileSystemException

All Implemented Interfaces:
:   `Serializable`

---

public class ReadOnlyFileSystemException
extends [UnsupportedOperationException](../../lang/UnsupportedOperationException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to update an object
associated with a [`read-only`](FileSystem.md#isReadOnly()) `FileSystem`.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.ReadOnlyFileSystemException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ReadOnlyFileSystemException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ReadOnlyFileSystemException

    public ReadOnlyFileSystemException()

    Constructs an instance of this class.