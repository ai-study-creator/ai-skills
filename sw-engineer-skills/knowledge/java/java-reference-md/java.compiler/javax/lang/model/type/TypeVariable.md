Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface TypeVariable

All Superinterfaces:
:   `AnnotatedConstruct`, `ReferenceType`, `TypeMirror`

---

public interface TypeVariable
extends [ReferenceType](ReferenceType.md "interface in javax.lang.model.type")

Represents a type variable.
A type variable may be explicitly declared by a
[type parameter](../element/TypeParameterElement.md "interface in javax.lang.model.element") of a
type, method, or constructor.
A type variable may also be declared implicitly, as by
the capture conversion of a wildcard type argument
(see chapter of
The Java Language Specification).

Since:
:   1.6

See Also:
:   * [`TypeParameterElement`](../element/TypeParameterElement.md "interface in javax.lang.model.element")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Element`

  `asElement()`

  Returns the element corresponding to this type variable.

  `TypeMirror`

  `getLowerBound()`

  Returns the lower bound of this type variable.

  `TypeMirror`

  `getUpperBound()`

  Returns the upper bound of this type variable.

  ### Methods inherited from interface javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, hashCode, toString`

* ## Method Details

  + ### asElement

    [Element](../element/Element.md "interface in javax.lang.model.element") asElement()

    Returns the element corresponding to this type variable.

    Returns:
    :   the element corresponding to this type variable
  + ### getUpperBound

    [TypeMirror](TypeMirror.md "interface in javax.lang.model.type") getUpperBound()

    Returns the upper bound of this type variable.

    If this type variable was declared with no explicit
    upper bounds, the result is `java.lang.Object`.
    If it was declared with multiple upper bounds,
    the result is an [intersection type](IntersectionType.md "interface in javax.lang.model.type");
    individual bounds can be found by examining the result's
    [bounds](IntersectionType.md#getBounds()).

    Returns:
    :   the upper bound of this type variable
  + ### getLowerBound

    [TypeMirror](TypeMirror.md "interface in javax.lang.model.type") getLowerBound()

    Returns the lower bound of this type variable. While a type
    parameter cannot include an explicit lower bound declaration,
    capture conversion can produce a type variable with a
    non-trivial lower bound. Type variables otherwise have a
    lower bound of [`NullType`](NullType.md "interface in javax.lang.model.type").

    Returns:
    :   the lower bound of this type variable