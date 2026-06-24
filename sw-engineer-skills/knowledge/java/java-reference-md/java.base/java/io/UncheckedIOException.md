Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class UncheckedIOException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

java.io.UncheckedIOException

All Implemented Interfaces:
:   `Serializable`

---

public class UncheckedIOException
extends [RuntimeException](../lang/RuntimeException.md "class in java.lang")

Wraps an [`IOException`](IOException.md "class in java.io") with an unchecked exception.

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.UncheckedIOException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UncheckedIOException(IOException cause)`

  Constructs an instance of this class.

  `UncheckedIOException(String message,
  IOException cause)`

  Constructs an instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `IOException`

  `getCause()`

  Returns the cause of this exception.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UncheckedIOException

    public UncheckedIOException([String](../lang/String.md "class in java.lang") message,
    [IOException](IOException.md "class in java.io") cause)

    Constructs an instance of this class.

    Parameters:
    :   `message` - the detail message, can be null
    :   `cause` - the `IOException`

    Throws:
    :   `NullPointerException` - if the cause is `null`
  + ### UncheckedIOException

    public UncheckedIOException([IOException](IOException.md "class in java.io") cause)

    Constructs an instance of this class.

    Parameters:
    :   `cause` - the `IOException`

    Throws:
    :   `NullPointerException` - if the cause is `null`
* ## Method Details

  + ### getCause

    public [IOException](IOException.md "class in java.io") getCause()

    Returns the cause of this exception.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the `IOException` which is the cause of this exception.