Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface TypeParameterElement

All Superinterfaces:
:   `AnnotatedConstruct`, `Element`

---

public interface TypeParameterElement
extends [Element](Element.md "interface in javax.lang.model.element")

Represents a formal type parameter of a generic class, interface, method,
or constructor element.
A type parameter declares a [`TypeVariable`](../type/TypeVariable.md "interface in javax.lang.model.type").

Since:
:   1.6

See Also:
:   * [`TypeVariable`](../type/TypeVariable.md "interface in javax.lang.model.type")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `TypeMirror`

  `asType()`

  Returns the [type variable](../type/TypeVariable.md "interface in javax.lang.model.type")
  corresponding to this type parameter element.

  `List<? extends TypeMirror>`

  `getBounds()`

  Returns the bounds of this type parameter.

  `Element`

  `getEnclosingElement()`

  Returns the [generic element](#getGenericElement()) of this type parameter.

  `Element`

  `getGenericElement()`

  Returns the generic class, interface, method, or constructor that is
  parameterized by this type parameter.

  ### Methods inherited from interface javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getEnclosedElements, getKind, getModifiers, getSimpleName, hashCode`

* ## Method Details

  + ### asType

    [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") asType()

    Returns the [type variable](../type/TypeVariable.md "interface in javax.lang.model.type")
    corresponding to this type parameter element.

    Specified by:
    :   `asType` in interface `Element`

    Returns:
    :   the [type variable](../type/TypeVariable.md "interface in javax.lang.model.type")
        corresponding to this type parameter element

    See Also:
    :   - [`TypeVariable`](../type/TypeVariable.md "interface in javax.lang.model.type")
  + ### getGenericElement

    [Element](Element.md "interface in javax.lang.model.element") getGenericElement()

    Returns the generic class, interface, method, or constructor that is
    parameterized by this type parameter.

    Returns:
    :   the generic class, interface, method, or constructor that is
        parameterized by this type parameter
  + ### getBounds

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type")> getBounds()

    Returns the bounds of this type parameter.
    These are the types given by the `extends` clause
    used to declare this type parameter.
    If no explicit `extends` clause was used,
    then `java.lang.Object` is considered to be the sole bound.

    Returns:
    :   the bounds of this type parameter, or an empty list if
        there are none
  + ### getEnclosingElement

    [Element](Element.md "interface in javax.lang.model.element") getEnclosingElement()

    Returns the [generic element](#getGenericElement()) of this type parameter.

    Specified by:
    :   `getEnclosingElement` in interface `Element`

    Returns:
    :   the [generic element](#getGenericElement()) of this type parameter

    See Also:
    :   - [`Elements.getPackageOf(javax.lang.model.element.Element)`](../util/Elements.md#getPackageOf(javax.lang.model.element.Element))