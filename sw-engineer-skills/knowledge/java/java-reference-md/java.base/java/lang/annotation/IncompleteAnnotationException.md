Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Class IncompleteAnnotationException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.RuntimeException](../RuntimeException.md "class in java.lang")

java.lang.annotation.IncompleteAnnotationException

All Implemented Interfaces:
:   `Serializable`

---

public class IncompleteAnnotationException
extends [RuntimeException](../RuntimeException.md "class in java.lang")

Thrown to indicate that a program has attempted to access an element of
an annotation interface that was added to the annotation interface definition
after the annotation was compiled (or serialized). This exception will not be
thrown if the new element has a default value.
This exception can be thrown by the [API used to read annotations
reflectively](../reflect/AnnotatedElement.md "interface in java.lang.reflect").

Since:
:   1.5

See Also:
:   * [`AnnotatedElement`](../reflect/AnnotatedElement.md "interface in java.lang.reflect")
    * [Serialized Form](../../../../serialized-form.md#java.lang.annotation.IncompleteAnnotationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IncompleteAnnotationException(Class<? extends Annotation> annotationType,
  String elementName)`

  Constructs an IncompleteAnnotationException to indicate that
  the named element was missing from the specified annotation interface.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Class<? extends Annotation>`

  `annotationType()`

  Returns the Class object for the annotation interface with the
  missing element.

  `String`

  `elementName()`

  Returns the name of the missing element.

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IncompleteAnnotationException

    public IncompleteAnnotationException([Class](../Class.md "class in java.lang")<? extends [Annotation](Annotation.md "interface in java.lang.annotation")> annotationType,
    [String](../String.md "class in java.lang") elementName)

    Constructs an IncompleteAnnotationException to indicate that
    the named element was missing from the specified annotation interface.

    Parameters:
    :   `annotationType` - the Class object for the annotation interface
    :   `elementName` - the name of the missing element

    Throws:
    :   `NullPointerException` - if either parameter is `null`
* ## Method Details

  + ### annotationType

    public [Class](../Class.md "class in java.lang")<? extends [Annotation](Annotation.md "interface in java.lang.annotation")> annotationType()

    Returns the Class object for the annotation interface with the
    missing element.

    Returns:
    :   the Class object for the annotation interface with the
        missing element
  + ### elementName

    public [String](../String.md "class in java.lang") elementName()

    Returns the name of the missing element.

    Returns:
    :   the name of the missing element