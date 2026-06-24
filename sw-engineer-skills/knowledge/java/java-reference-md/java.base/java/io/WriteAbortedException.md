Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class WriteAbortedException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

[java.io.ObjectStreamException](ObjectStreamException.md "class in java.io")

java.io.WriteAbortedException

All Implemented Interfaces:
:   `Serializable`

---

public class WriteAbortedException
extends [ObjectStreamException](ObjectStreamException.md "class in java.io")

Signals that one of the ObjectStreamExceptions was thrown during a
write operation. Thrown during a read operation when one of the
ObjectStreamExceptions was thrown during a write operation. The
exception that terminated the write can be found in the detail
field. The stream is reset to its initial state and all references
to objects already deserialized are discarded.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.WriteAbortedException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `Exception`

  `detail`

  Deprecated.

  This field predates the general-purpose exception
  chaining facility.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `WriteAbortedException(String s,
  Exception ex)`

  Constructs a WriteAbortedException with a string describing
  the exception and the exception causing the abort.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the exception that terminated the operation (the *cause*).

  `String`

  `getMessage()`

  Produce the message and include the message from the nested
  exception, if there is one.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### detail

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="17")
    public [Exception](../lang/Exception.md "class in java.lang") detail

    Deprecated.

    This field predates the general-purpose exception
    chaining facility. The [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method is
    now the preferred means of obtaining this information.

    Exception that was caught while writing the ObjectStream.
* ## Constructor Details

  + ### WriteAbortedException

    public WriteAbortedException([String](../lang/String.md "class in java.lang") s,
    [Exception](../lang/Exception.md "class in java.lang") ex)

    Constructs a WriteAbortedException with a string describing
    the exception and the exception causing the abort.

    Parameters:
    :   `s` - String describing the exception.
    :   `ex` - Exception causing the abort.
* ## Method Details

  + ### getMessage

    public [String](../lang/String.md "class in java.lang") getMessage()

    Produce the message and include the message from the nested
    exception, if there is one.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).
  + ### getCause

    public [Throwable](../lang/Throwable.md "class in java.lang") getCause()

    Returns the exception that terminated the operation (the *cause*).

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the exception that terminated the operation (the *cause*),
        which may be null.

    Since:
    :   1.4