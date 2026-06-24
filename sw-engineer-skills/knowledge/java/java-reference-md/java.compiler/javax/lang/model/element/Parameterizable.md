Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface Parameterizable

All Superinterfaces:
:   `AnnotatedConstruct`, `Element`

All Known Subinterfaces:
:   `ExecutableElement`, `TypeElement`

---

public interface Parameterizable
extends [Element](Element.md "interface in javax.lang.model.element")

A mixin interface for an element that has type parameters.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<? extends TypeParameterElement>`

  `getTypeParameters()`

  Returns the formal type parameters of an element in
  declaration order.

  ### Methods inherited from interface javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element")

  `accept, asType, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getEnclosedElements, getEnclosingElement, getKind, getModifiers, getSimpleName, hashCode`

* ## Method Details

  + ### getTypeParameters

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeParameterElement](TypeParameterElement.md "interface in javax.lang.model.element")> getTypeParameters()

    Returns the formal type parameters of an element in
    declaration order.

    Returns:
    :   the formal type parameters, or an empty list
        if there are none