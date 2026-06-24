Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class ObjectStreamException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

java.io.ObjectStreamException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `InvalidClassException`, `InvalidObjectException`, `NotActiveException`, `NotSerializableException`, `OptionalDataException`, `StreamCorruptedException`, `WriteAbortedException`

---

public abstract class ObjectStreamException
extends [IOException](IOException.md "class in java.io")

Superclass of all exceptions specific to Object Stream classes.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.ObjectStreamException)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ObjectStreamException()`

  Create an ObjectStreamException.

  `protected`

  `ObjectStreamException(String message)`

  Create an ObjectStreamException with the specified argument.

  `protected`

  `ObjectStreamException(String message,
  Throwable cause)`

  Create an ObjectStreamException with the specified message and
  cause.

  `protected`

  `ObjectStreamException(Throwable cause)`

  Create an ObjectStreamException with the specified cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ObjectStreamException

    protected ObjectStreamException([String](../lang/String.md "class in java.lang") message)

    Create an ObjectStreamException with the specified argument.

    Parameters:
    :   `message` - the detailed message for the exception
  + ### ObjectStreamException

    protected ObjectStreamException([String](../lang/String.md "class in java.lang") message,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Create an ObjectStreamException with the specified message and
    cause.

    Parameters:
    :   `message` - the detailed message for the exception
    :   `cause` - the cause

    Since:
    :   19
  + ### ObjectStreamException

    protected ObjectStreamException()

    Create an ObjectStreamException.
  + ### ObjectStreamException

    protected ObjectStreamException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Create an ObjectStreamException with the specified cause.

    Parameters:
    :   `cause` - the cause

    Since:
    :   19