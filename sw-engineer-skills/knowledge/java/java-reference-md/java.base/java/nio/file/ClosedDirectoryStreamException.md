Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class ClosedDirectoryStreamException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

java.nio.file.ClosedDirectoryStreamException

All Implemented Interfaces:
:   `Serializable`

---

public class ClosedDirectoryStreamException
extends [IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to invoke an operation on
a directory stream that is closed.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.file.ClosedDirectoryStreamException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ClosedDirectoryStreamException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ClosedDirectoryStreamException

    public ClosedDirectoryStreamException()

    Constructs an instance of this class.