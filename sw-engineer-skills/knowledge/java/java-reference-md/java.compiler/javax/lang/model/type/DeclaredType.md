Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface DeclaredType

All Superinterfaces:
:   `AnnotatedConstruct`, `ReferenceType`, `TypeMirror`

All Known Subinterfaces:
:   `ErrorType`

---

public interface DeclaredType
extends [ReferenceType](ReferenceType.md "interface in javax.lang.model.type")

Represents a declared type, either a class type or an interface type.
This includes parameterized types such as `java.util.Set<String>`
as well as raw types.

While a `TypeElement` represents a class or interface
*element*, a `DeclaredType` represents a class
or interface *type*, the latter being a use
(or *invocation*) of the former.
See [`TypeElement`](../element/TypeElement.md "interface in javax.lang.model.element") for more on this distinction.

The supertypes (both class and interface types) of a declared
type may be found using the [`Types.directSupertypes(TypeMirror)`](../util/Types.md#directSupertypes(javax.lang.model.type.TypeMirror)) method. This returns the
supertypes with any type arguments substituted in.

Since:
:   1.6

See Also:
:   * [`TypeElement`](../element/TypeElement.md "interface in javax.lang.model.element")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Element`

  `asElement()`

  Returns the element corresponding to this type.

  `TypeMirror`

  `getEnclosingType()`

  Returns the type of the innermost enclosing instance or a
  `NoType` of kind `NONE` if there is no enclosing
  instance.

  `List<? extends TypeMirror>`

  `getTypeArguments()`

  Returns the actual type arguments of this type.

  ### Methods inherited from interface javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, hashCode, toString`

* ## Method Details

  + ### asElement

    [Element](../element/Element.md "interface in javax.lang.model.element") asElement()

    Returns the element corresponding to this type.

    Returns:
    :   the element corresponding to this type
  + ### getEnclosingType

    [TypeMirror](TypeMirror.md "interface in javax.lang.model.type") getEnclosingType()

    Returns the type of the innermost enclosing instance or a
    `NoType` of kind `NONE` if there is no enclosing
    instance. Only types corresponding to inner classes have an
    enclosing instance.

    Returns:
    :   a type mirror for the enclosing type
  + ### getTypeArguments

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")> getTypeArguments()

    Returns the actual type arguments of this type.
    For a type nested within a parameterized type
    (such as `Outer<String>.Inner<Number>`), only the type
    arguments of the innermost type are included.

    Returns:
    :   the actual type arguments of this type, or an empty list
        if none