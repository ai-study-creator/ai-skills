Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface AnnotatedWildcardType

All Superinterfaces:
:   `AnnotatedElement`, `AnnotatedType`

---

public interface AnnotatedWildcardType
extends [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")

`AnnotatedWildcardType` represents the potentially annotated use of a
wildcard type argument, whose upper or lower bounds may themselves represent
annotated uses of types.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AnnotatedType[]`

  `getAnnotatedLowerBounds()`

  Returns the potentially annotated lower bounds of this wildcard type.

  `AnnotatedType`

  `getAnnotatedOwnerType()`

  Returns the potentially annotated type that this type is a member of, if
  this type represents a nested type.

  `AnnotatedType[]`

  `getAnnotatedUpperBounds()`

  Returns the potentially annotated upper bounds of this wildcard type.

  ### Methods inherited from interface java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

  `getAnnotationsByType, getDeclaredAnnotation, getDeclaredAnnotationsByType, isAnnotationPresent`

  ### Methods inherited from interface java.lang.reflect.[AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")

  `getAnnotation, getAnnotations, getDeclaredAnnotations, getType`

* ## Method Details

  + ### getAnnotatedLowerBounds

    [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")[] getAnnotatedLowerBounds()

    Returns the potentially annotated lower bounds of this wildcard type.
    If no lower bound is explicitly declared, the lower bound is the
    type of null. In this case, a zero length array is returned.

    Returns:
    :   the potentially annotated lower bounds of this wildcard type or
        an empty array if no lower bound is explicitly declared.

    See Also:
    :   - [`WildcardType.getLowerBounds()`](WildcardType.md#getLowerBounds())
  + ### getAnnotatedUpperBounds

    [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")[] getAnnotatedUpperBounds()

    Returns the potentially annotated upper bounds of this wildcard type.
    If no upper bound is explicitly declared, the upper bound is
    unannotated `Object`

    Returns:
    :   the potentially annotated upper bounds of this wildcard type

    See Also:
    :   - [`WildcardType.getUpperBounds()`](WildcardType.md#getUpperBounds())
  + ### getAnnotatedOwnerType

    [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect") getAnnotatedOwnerType()

    Returns the potentially annotated type that this type is a member of, if
    this type represents a nested type. For example, if this type is
    `@TA O<T>.I<S>`, return a representation of `@TA O<T>`.

    Returns `null` for an `AnnotatedType` that is an instance
    of `AnnotatedWildcardType`.

    Specified by:
    :   `getAnnotatedOwnerType` in interface `AnnotatedType`

    Returns:
    :   `null`

    Since:
    :   9