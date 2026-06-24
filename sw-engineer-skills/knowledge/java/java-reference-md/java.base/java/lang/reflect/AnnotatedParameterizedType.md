Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface AnnotatedParameterizedType

All Superinterfaces:
:   `AnnotatedElement`, `AnnotatedType`

---

public interface AnnotatedParameterizedType
extends [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")

`AnnotatedParameterizedType` represents the potentially annotated use
of a parameterized type, whose type arguments may themselves represent
annotated uses of types.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AnnotatedType[]`

  `getAnnotatedActualTypeArguments()`

  Returns the potentially annotated actual type arguments of this parameterized type.

  `AnnotatedType`

  `getAnnotatedOwnerType()`

  Returns the potentially annotated type that this type is a member of, if
  this type represents a nested type.

  ### Methods inherited from interface java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

  `getAnnotationsByType, getDeclaredAnnotation, getDeclaredAnnotationsByType, isAnnotationPresent`

  ### Methods inherited from interface java.lang.reflect.[AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")

  `getAnnotation, getAnnotations, getDeclaredAnnotations, getType`

* ## Method Details

  + ### getAnnotatedActualTypeArguments

    [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")[] getAnnotatedActualTypeArguments()

    Returns the potentially annotated actual type arguments of this parameterized type.

    Note that in some cases, the returned array can be empty. This can occur
    if this annotated type represents a non-parameterized type nested within
    a parameterized type.

    Returns:
    :   the potentially annotated actual type arguments of this parameterized type

    See Also:
    :   - [`ParameterizedType.getActualTypeArguments()`](ParameterizedType.md#getActualTypeArguments())
  + ### getAnnotatedOwnerType

    [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect") getAnnotatedOwnerType()

    Returns the potentially annotated type that this type is a member of, if
    this type represents a nested type. For example, if this type is
    `@TA O<T>.I<S>`, return a representation of `@TA O<T>`.

    Returns `null` if this `AnnotatedType` represents a
    top-level class or interface, or a local or anonymous class, or
    a primitive type, or void.

    Specified by:
    :   `getAnnotatedOwnerType` in interface `AnnotatedType`

    Returns:
    :   an `AnnotatedType` object representing the potentially
        annotated type that this type is a member of, or `null`

    Throws:
    :   `TypeNotPresentException` - if the owner type
        refers to a non-existent class or interface declaration
    :   `MalformedParameterizedTypeException` - if the owner type
        refers to a parameterized type that cannot be instantiated
        for any reason

    Since:
    :   9