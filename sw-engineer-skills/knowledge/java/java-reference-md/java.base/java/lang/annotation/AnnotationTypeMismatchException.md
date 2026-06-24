Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Class AnnotationTypeMismatchException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.RuntimeException](../RuntimeException.md "class in java.lang")

java.lang.annotation.AnnotationTypeMismatchException

All Implemented Interfaces:
:   `Serializable`

---

public class AnnotationTypeMismatchException
extends [RuntimeException](../RuntimeException.md "class in java.lang")

Thrown to indicate that a program has attempted to access an element of
an annotation whose type has changed after the annotation was compiled
(or serialized).
This exception can be thrown by the [API used to read annotations
reflectively](../reflect/AnnotatedElement.md "interface in java.lang.reflect").

Since:
:   1.5

See Also:
:   * [`AnnotatedElement`](../reflect/AnnotatedElement.md "interface in java.lang.reflect")
    * [Serialized Form](../../../../serialized-form.md#java.lang.annotation.AnnotationTypeMismatchException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AnnotationTypeMismatchException(Method element,
  String foundType)`

  Constructs an AnnotationTypeMismatchException for the specified
  annotation type element and found data type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Method`

  `element()`

  Returns the `Method` object for the incorrectly typed element.

  `String`

  `foundType()`

  Returns the type of data found in the incorrectly typed element.

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AnnotationTypeMismatchException

    public AnnotationTypeMismatchException([Method](../reflect/Method.md "class in java.lang.reflect") element,
    [String](../String.md "class in java.lang") foundType)

    Constructs an AnnotationTypeMismatchException for the specified
    annotation type element and found data type.

    Parameters:
    :   `element` - the `Method` object for the annotation
        element, may be `null`
    :   `foundType` - the (erroneous) type of data found in the annotation.
        This string may, but is not required to, contain the value
        as well. The exact format of the string is unspecified,
        may be `null`.
* ## Method Details

  + ### element

    public [Method](../reflect/Method.md "class in java.lang.reflect") element()

    Returns the `Method` object for the incorrectly typed element.
    The value may be unavailable if this exception has been
    serialized and then read back in.

    Returns:
    :   the `Method` object for the incorrectly typed
        element, or `null` if unavailable
  + ### foundType

    public [String](../String.md "class in java.lang") foundType()

    Returns the type of data found in the incorrectly typed element.
    The returned string may, but is not required to, contain the value
    as well. The exact format of the string is unspecified and the string
    may be `null`.

    Returns:
    :   the type of data found in the incorrectly typed element