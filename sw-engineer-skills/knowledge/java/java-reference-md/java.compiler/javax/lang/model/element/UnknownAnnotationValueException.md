Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Class UnknownAnnotationValueException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[javax.lang.model.UnknownEntityException](../UnknownEntityException.md "class in javax.lang.model")

javax.lang.model.element.UnknownAnnotationValueException

All Implemented Interfaces:
:   `Serializable`

---

public class UnknownAnnotationValueException
extends [UnknownEntityException](../UnknownEntityException.md "class in javax.lang.model")

Indicates that an unknown kind of annotation value was encountered.
This can occur if the language evolves and new kinds of annotation
values can be stored in an annotation. May be thrown by an
[annotation value visitor](AnnotationValueVisitor.md "interface in javax.lang.model.element") to
indicate that the visitor was created for a prior version of the
language.

Since:
:   1.6

See Also:
:   * [`AnnotationValueVisitor.visitUnknown(javax.lang.model.element.AnnotationValue, P)`](AnnotationValueVisitor.md#visitUnknown(javax.lang.model.element.AnnotationValue,P))
    * [Serialized Form](../../../../../serialized-form.md#javax.lang.model.element.UnknownAnnotationValueException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnknownAnnotationValueException(AnnotationValue av,
  Object p)`

  Creates a new `UnknownAnnotationValueException`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getArgument()`

  Returns the additional argument.

  `AnnotationValue`

  `getUnknownAnnotationValue()`

  Returns the unknown annotation value.

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnknownAnnotationValueException

    public UnknownAnnotationValueException([AnnotationValue](AnnotationValue.md "interface in javax.lang.model.element") av,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") p)

    Creates a new `UnknownAnnotationValueException`. The
    `p` parameter may be used to pass in an additional
    argument with information about the context in which the
    unknown annotation value was encountered; for example, the
    visit methods of [`AnnotationValueVisitor`](AnnotationValueVisitor.md "interface in javax.lang.model.element") may pass in
    their additional parameter.

    Parameters:
    :   `av` - the unknown annotation value, may be `null`
    :   `p` - an additional parameter, may be `null`
* ## Method Details

  + ### getUnknownAnnotationValue

    public [AnnotationValue](AnnotationValue.md "interface in javax.lang.model.element") getUnknownAnnotationValue()

    Returns the unknown annotation value.
    The value may be unavailable if this exception has been
    serialized and then read back in.

    Returns:
    :   the unknown element, or `null` if unavailable
  + ### getArgument

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getArgument()

    Returns the additional argument.

    Returns:
    :   the additional argument, or `null` if unavailable