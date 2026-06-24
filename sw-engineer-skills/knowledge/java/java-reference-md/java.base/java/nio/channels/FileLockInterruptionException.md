Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class FileLockInterruptionException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

java.nio.channels.FileLockInterruptionException

All Implemented Interfaces:
:   `Serializable`

---

public class FileLockInterruptionException
extends [IOException](../../io/IOException.md "class in java.io")

Checked exception received by a thread when another thread interrupts it
while it is waiting to acquire a file lock. Before this exception is thrown
the interrupt status of the previously-blocked thread will have been set.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.FileLockInterruptionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileLockInterruptionException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FileLockInterruptionException

    public FileLockInterruptionException()

    Constructs an instance of this class.