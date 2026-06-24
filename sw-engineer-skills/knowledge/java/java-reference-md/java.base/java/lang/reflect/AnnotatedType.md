Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface AnnotatedType

All Superinterfaces:
:   `AnnotatedElement`

All Known Subinterfaces:
:   `AnnotatedArrayType`, `AnnotatedParameterizedType`, `AnnotatedTypeVariable`, `AnnotatedWildcardType`

---

public interface AnnotatedType
extends [AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

`AnnotatedType` represents the potentially annotated use of a type in
the program currently running in this VM. The use may be of any type in the
Java programming language, including an array type, a parameterized type, a
type variable, or a wildcard type.
Note that any annotations returned by methods on this interface are
*type annotations* (JLS ) as the entity being
potentially annotated is a type.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default AnnotatedType`

  `getAnnotatedOwnerType()`

  Returns the potentially annotated type that this type is a member of, if
  this type represents a nested type.

  `<T extends Annotation>  
  T`

  `getAnnotation(Class<T> annotationClass)`

  Returns this element's annotation for the specified type if
  such an annotation is *present*, else null.

  `Annotation[]`

  `getAnnotations()`

  Returns annotations that are *present* on this element.

  `Annotation[]`

  `getDeclaredAnnotations()`

  Returns annotations that are *directly present* on this element.

  `Type`

  `getType()`

  Returns the underlying type that this annotated type represents.

  ### Methods inherited from interface java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

  `getAnnotationsByType, getDeclaredAnnotation, getDeclaredAnnotationsByType, isAnnotationPresent`

* ## Method Details

  + ### getAnnotatedOwnerType

    default [AnnotatedType](AnnotatedType.md "interface in java.lang.reflect") getAnnotatedOwnerType()

    Returns the potentially annotated type that this type is a member of, if
    this type represents a nested type. For example, if this type is
    `@TA O<T>.I<S>`, return a representation of `@TA O<T>`.

    Returns `null` if this `AnnotatedType` represents a
    top-level class or interface, or a local or anonymous class, or
    a primitive type, or void.

    Returns `null` if this `AnnotatedType` is an instance of
    `AnnotatedArrayType`, `AnnotatedTypeVariable`, or
    `AnnotatedWildcardType`.

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
  + ### getType

    [Type](Type.md "interface in java.lang.reflect") getType()

    Returns the underlying type that this annotated type represents.

    Returns:
    :   the type this annotated type represents
  + ### getAnnotation

    <T extends [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")> T getAnnotation([Class](../Class.md "class in java.lang")<T> annotationClass)

    Returns this element's annotation for the specified type if
    such an annotation is *present*, else null.

    Note that any annotation returned by this method is a type
    annotation.

    Specified by:
    :   `getAnnotation` in interface `AnnotatedElement`

    Type Parameters:
    :   `T` - the type of the annotation to query for and return if present

    Parameters:
    :   `annotationClass` - the Class object corresponding to the
        annotation type

    Returns:
    :   this element's annotation for the specified annotation type if
        present on this element, else null

    Throws:
    :   `NullPointerException` - if the given annotation class is null
  + ### getAnnotations

    [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")[] getAnnotations()

    Returns annotations that are *present* on this element.
    If there are no annotations *present* on this element, the return
    value is an array of length 0.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are type
    annotations.

    Specified by:
    :   `getAnnotations` in interface `AnnotatedElement`

    Returns:
    :   annotations present on this element
  + ### getDeclaredAnnotations

    [Annotation](../annotation/Annotation.md "interface in java.lang.annotation")[] getDeclaredAnnotations()

    Returns annotations that are *directly present* on this element.
    This method ignores inherited annotations.
    If there are no annotations *directly present* on this element,
    the return value is an array of length 0.
    The caller of this method is free to modify the returned array; it will
    have no effect on the arrays returned to other callers.

    Note that any annotations returned by this method are type
    annotations.

    Specified by:
    :   `getDeclaredAnnotations` in interface `AnnotatedElement`

    Returns:
    :   annotations directly present on this element