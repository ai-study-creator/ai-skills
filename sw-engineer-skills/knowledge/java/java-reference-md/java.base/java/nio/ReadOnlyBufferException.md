Module [java.base](../../module-summary.md)

Package [java.nio](package-summary.md)

# Class ReadOnlyBufferException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.UnsupportedOperationException](../lang/UnsupportedOperationException.md "class in java.lang")

java.nio.ReadOnlyBufferException

All Implemented Interfaces:
:   `Serializable`

---

public class ReadOnlyBufferException
extends [UnsupportedOperationException](../lang/UnsupportedOperationException.md "class in java.lang")

Unchecked exception thrown when a content-mutation method such as
`put` or `compact` is invoked upon a read-only buffer.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.nio.ReadOnlyBufferException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ReadOnlyBufferException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ReadOnlyBufferException

    public ReadOnlyBufferException()

    Constructs an instance of this class.