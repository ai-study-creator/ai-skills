Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface AnnotationMirror

---

public interface AnnotationMirror

Represents an annotation. An annotation associates a value with
each element of an annotation interface.

Annotations should be compared using the `equals`
method. There is no guarantee that any particular annotation will
always be represented by the same object.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `DeclaredType`

  `getAnnotationType()`

  Returns the type of this annotation.

  `Map<? extends ExecutableElement,? extends AnnotationValue>`

  `getElementValues()`

  Returns the values of this annotation's elements.

* ## Method Details

  + ### getAnnotationType

    [DeclaredType](../type/DeclaredType.md "interface in javax.lang.model.type") getAnnotationType()

    Returns the type of this annotation.

    Returns:
    :   the type of this annotation
  + ### getElementValues

    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<? extends [ExecutableElement](ExecutableElement.md "interface in javax.lang.model.element"),? extends [AnnotationValue](AnnotationValue.md "interface in javax.lang.model.element")> getElementValues()

    Returns the values of this annotation's elements.
    This is returned in the form of a map that associates elements
    with their corresponding values.
    Only those elements with values explicitly present in the
    annotation are included, not those that are implicitly assuming
    their default values.
    The order of the map matches the order in which the
    values appear in the annotation's source.

    Returns:
    :   the values of this annotation's elements,
        or an empty map if there are none