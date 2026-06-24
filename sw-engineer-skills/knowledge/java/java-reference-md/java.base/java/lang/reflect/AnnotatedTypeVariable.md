Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface AnnotatedTypeVariable

All Superinterfaces:
:   `AnnotatedElement`, `AnnotatedType`

---

public interface AnnotatedTypeVariable
extends [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")

`AnnotatedTypeVariable` represents the potentially annotated use of a
type variable, whose declaration may have bounds which themselves represent
annotated uses of types.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AnnotatedType[]`

  `getAnnotatedBounds()`

  Returns the potentially annotated bounds of this type variable.

  `AnnotatedType`

  `getAnnotatedOwnerType()`

  Returns the potentially annotated type that this type is a member of, if
  this type represents a nested type.

  ### Methods inherited from interface java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

  `getAnnotationsByType, getDeclaredAnnotation, getDeclaredAnnotationsByType, isAnnotationPresent`

  ### Methods inherited from interface java.lang.reflect.[AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")

  `getAnnotation, getAnnotations, getDeclaredAnnotations, getType`

* ## Method Details

  + ### getAnnotatedBounds

    [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")[] getAnnotatedBounds()

    Returns the potentially annotated bounds of this type variable.
    If no bound is explicitly declared, the bound is unannotated
    `Object`.

    Returns:
    :   the potentially annotated bounds of this type variable

    See Also:
    :   - [`TypeVariable.getBounds()`](TypeVariable.md#getBounds())
  + ### getAnnotatedOwnerType

    [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect") getAnnotatedOwnerType()

    Returns the potentially annotated type that this type is a member of, if
    this type represents a nested type. For example, if this type is
    `@TA O<T>.I<S>`, return a representation of `@TA O<T>`.

    Returns `null` for an `AnnotatedType` that is an instance
    of `AnnotatedTypeVariable`.

    Specified by:
    :   `getAnnotatedOwnerType` in interface `AnnotatedType`

    Returns:
    :   `null`

    Since:
    :   9