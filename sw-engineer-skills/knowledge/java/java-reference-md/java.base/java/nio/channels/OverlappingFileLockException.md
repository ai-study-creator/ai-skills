Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class OverlappingFileLockException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

java.nio.channels.OverlappingFileLockException

All Implemented Interfaces:
:   `Serializable`

---

public class OverlappingFileLockException
extends [IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to acquire a lock on a
region of a file that overlaps a region already locked by the same Java
virtual machine, or when another thread is already waiting to lock an
overlapping region of the same file.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.OverlappingFileLockException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OverlappingFileLockException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### OverlappingFileLockException

    public OverlappingFileLockException()

    Constructs an instance of this class.