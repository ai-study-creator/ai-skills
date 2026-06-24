Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class InvalidPropertiesFormatException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

java.util.InvalidPropertiesFormatException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidPropertiesFormatException
extends [IOException](../io/IOException.md "class in java.io")

Thrown to indicate that an operation could not complete because
the input did not conform to the appropriate XML document type
for a collection of properties, as per the [`Properties`](Properties.md "class in java.util")
specification.

Note, that although InvalidPropertiesFormatException inherits Serializable
interface from Exception, it is not intended to be Serializable. Appropriate
serialization methods are implemented to throw NotSerializableException.

Since:
:   1.5

See Also:
:   * [`Properties`](Properties.md "class in java.util")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidPropertiesFormatException(String message)`

  Constructs an InvalidPropertiesFormatException with the specified
  detail message.

  `InvalidPropertiesFormatException(Throwable cause)`

  Constructs an InvalidPropertiesFormatException with the specified
  cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidPropertiesFormatException

    public InvalidPropertiesFormatException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs an InvalidPropertiesFormatException with the specified
    cause.

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method).
  + ### InvalidPropertiesFormatException

    public InvalidPropertiesFormatException([String](../lang/String.md "class in java.lang") message)

    Constructs an InvalidPropertiesFormatException with the specified
    detail message.

    Parameters:
    :   `message` - the detail message. The detail message is saved for
        later retrieval by the [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method.