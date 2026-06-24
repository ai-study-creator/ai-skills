Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface AnnotatedArrayType

All Superinterfaces:
:   `AnnotatedElement`, `AnnotatedType`

---

public interface AnnotatedArrayType
extends [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")

`AnnotatedArrayType` represents the potentially annotated use of an
array type, whose component type may itself represent the annotated use of a
type.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AnnotatedType`

  `getAnnotatedGenericComponentType()`

  Returns the potentially annotated generic component type of this array type.

  `AnnotatedType`

  `getAnnotatedOwnerType()`

  Returns the potentially annotated type that this type is a member of, if
  this type represents a nested class or interface.

  ### Methods inherited from interface java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

  `getAnnotationsByType, getDeclaredAnnotation, getDeclaredAnnotationsByType, isAnnotationPresent`

  ### Methods inherited from interface java.lang.reflect.[AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")

  `getAnnotation, getAnnotations, getDeclaredAnnotations, getType`

* ## Method Details

  + ### getAnnotatedGenericComponentType

    [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect") getAnnotatedGenericComponentType()

    Returns the potentially annotated generic component type of this array type.

    Returns:
    :   the potentially annotated generic component type of this array type

    See Also:
    :   - [`GenericArrayType.getGenericComponentType()`](GenericArrayType.md#getGenericComponentType())
  + ### getAnnotatedOwnerType

    [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect") getAnnotatedOwnerType()

    Returns the potentially annotated type that this type is a member of, if
    this type represents a nested class or interface. For example, if this
    type is `@TA O<T>.I<S>`, return a representation of `@TA O<T>`.

    Returns `null` for an `AnnotatedType` that is an instance
    of `AnnotatedArrayType`.

    Specified by:
    :   `getAnnotatedOwnerType` in interface `AnnotatedType`

    Returns:
    :   `null`

    Since:
    :   9