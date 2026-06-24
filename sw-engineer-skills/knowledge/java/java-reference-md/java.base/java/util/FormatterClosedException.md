Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class FormatterClosedException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../lang/IllegalStateException.md "class in java.lang")

java.util.FormatterClosedException

All Implemented Interfaces:
:   `Serializable`

---

public class FormatterClosedException
extends [IllegalStateException](../lang/IllegalStateException.md "class in java.lang")

Unchecked exception thrown when the formatter has been closed.

Unless otherwise specified, passing a `null` argument to any
method or constructor in this class will cause a [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.FormatterClosedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FormatterClosedException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FormatterClosedException

    public FormatterClosedException()

    Constructs an instance of this class.