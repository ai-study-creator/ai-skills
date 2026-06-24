Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class StructureViolationException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

java.util.concurrent.StructureViolationException

All Implemented Interfaces:
:   `Serializable`

---

public final class StructureViolationException
extends [RuntimeException](../../lang/RuntimeException.md "class in java.lang")

`StructureViolationException` is a preview API of the Java platform.

Programs can only use `StructureViolationException` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

Thrown when a structure violation is detected.

Since:
:   21

See Also:
:   * [`StructuredTaskScope.close()`](StructuredTaskScope.md#close())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)
    * [Serialized Form](../../../../serialized-form.md#java.util.concurrent.StructureViolationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StructureViolationException()`

  Constructs a `StructureViolationException` with no detail message.

  `StructureViolationException(String message)`

  Constructs a `StructureViolationException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StructureViolationException

    public StructureViolationException()

    Constructs a `StructureViolationException` with no detail message.
  + ### StructureViolationException

    public StructureViolationException([String](../../lang/String.md "class in java.lang") message)

    Constructs a `StructureViolationException` with the specified
    detail message.

    Parameters:
    :   `message` - the detail message, can be null