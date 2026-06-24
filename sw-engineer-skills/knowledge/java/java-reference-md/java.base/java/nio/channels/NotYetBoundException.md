Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class NotYetBoundException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

java.nio.channels.NotYetBoundException

All Implemented Interfaces:
:   `Serializable`

---

public class NotYetBoundException
extends [IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to invoke an I/O
operation upon a server socket channel that is not yet bound.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.NotYetBoundException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NotYetBoundException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NotYetBoundException

    public NotYetBoundException()

    Constructs an instance of this class.