Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Class AnnotationFormatError

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Error](../Error.md "class in java.lang")

java.lang.annotation.AnnotationFormatError

All Implemented Interfaces:
:   `Serializable`

---

public class AnnotationFormatError
extends [Error](../Error.md "class in java.lang")

Thrown when the annotation parser attempts to read an annotation
from a class file and determines that the annotation is malformed.
This error can be thrown by the [API used to read annotations
reflectively](../reflect/AnnotatedElement.md "interface in java.lang.reflect").

Since:
:   1.5

See Also:
:   * [`AnnotatedElement`](../reflect/AnnotatedElement.md "interface in java.lang.reflect")
    * [Serialized Form](../../../../serialized-form.md#java.lang.annotation.AnnotationFormatError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AnnotationFormatError(String message)`

  Constructs a new `AnnotationFormatError` with the specified
  detail message.

  `AnnotationFormatError(String message,
  Throwable cause)`

  Constructs a new `AnnotationFormatError` with the specified
  detail message and cause.

  `AnnotationFormatError(Throwable cause)`

  Constructs a new `AnnotationFormatError` with the specified
  cause and a detail message of
  `(cause == null ? null : cause.toString())` (which
  typically contains the class and detail message of `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AnnotationFormatError

    public AnnotationFormatError([String](../String.md "class in java.lang") message)

    Constructs a new `AnnotationFormatError` with the specified
    detail message.

    Parameters:
    :   `message` - the detail message.
  + ### AnnotationFormatError

    public AnnotationFormatError([String](../String.md "class in java.lang") message,
    [Throwable](../Throwable.md "class in java.lang") cause)

    Constructs a new `AnnotationFormatError` with the specified
    detail message and cause. Note that the detail message associated
    with `cause` is *not* automatically incorporated in
    this error's detail message.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)
  + ### AnnotationFormatError

    public AnnotationFormatError([Throwable](../Throwable.md "class in java.lang") cause)

    Constructs a new `AnnotationFormatError` with the specified
    cause and a detail message of
    `(cause == null ? null : cause.toString())` (which
    typically contains the class and detail message of `cause`).

    Parameters:
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)