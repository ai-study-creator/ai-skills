Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class GenericSignatureFormatError

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Error](../Error.md "class in java.lang")

[java.lang.LinkageError](../LinkageError.md "class in java.lang")

[java.lang.ClassFormatError](../ClassFormatError.md "class in java.lang")

java.lang.reflect.GenericSignatureFormatError

All Implemented Interfaces:
:   `Serializable`

---

public class GenericSignatureFormatError
extends [ClassFormatError](../ClassFormatError.md "class in java.lang")

Thrown when a syntactically malformed signature attribute is
encountered by a reflective method that needs to interpret the generic
signature information for a class or interface, method or constructor.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.lang.reflect.GenericSignatureFormatError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GenericSignatureFormatError()`

  Constructs a new `GenericSignatureFormatError`.

  `GenericSignatureFormatError(String message)`

  Constructs a new `GenericSignatureFormatError` with the
  specified message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### GenericSignatureFormatError

    public GenericSignatureFormatError()

    Constructs a new `GenericSignatureFormatError`.
  + ### GenericSignatureFormatError

    public GenericSignatureFormatError([String](../String.md "class in java.lang") message)

    Constructs a new `GenericSignatureFormatError` with the
    specified message.

    Parameters:
    :   `message` - the detail message, may be `null`