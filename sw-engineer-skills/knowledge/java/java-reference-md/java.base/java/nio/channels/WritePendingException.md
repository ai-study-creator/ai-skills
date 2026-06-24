Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class WritePendingException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

java.nio.channels.WritePendingException

All Implemented Interfaces:
:   `Serializable`

---

public class WritePendingException
extends [IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to write to an
asynchronous socket channel and a previous write has not completed.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.WritePendingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `WritePendingException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### WritePendingException

    public WritePendingException()

    Constructs an instance of this class.