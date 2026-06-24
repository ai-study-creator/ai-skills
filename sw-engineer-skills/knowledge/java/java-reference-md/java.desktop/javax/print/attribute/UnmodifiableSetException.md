Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class UnmodifiableSetException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

javax.print.attribute.UnmodifiableSetException

All Implemented Interfaces:
:   `Serializable`

---

public class UnmodifiableSetException
extends [RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

Thrown to indicate that the requested operation cannot be performed because
the set is unmodifiable.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.attribute.UnmodifiableSetException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnmodifiableSetException()`

  Constructs an `UnsupportedOperationException` with no detail
  message.

  `UnmodifiableSetException(String message)`

  Constructs an `UnmodifiableSetException` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnmodifiableSetException

    public UnmodifiableSetException()

    Constructs an `UnsupportedOperationException` with no detail
    message.
  + ### UnmodifiableSetException

    public UnmodifiableSetException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs an `UnmodifiableSetException` with the specified detail
    message.

    Parameters:
    :   `message` - the detail message