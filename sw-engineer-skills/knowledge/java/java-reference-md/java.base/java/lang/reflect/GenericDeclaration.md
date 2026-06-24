Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface GenericDeclaration

All Superinterfaces:
:   `AnnotatedElement`

All Known Implementing Classes:
:   `Class`, `Constructor`, `Executable`, `Method`

---

public interface GenericDeclaration
extends [AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

A common interface for all entities that declare type variables.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `TypeVariable<?>[]`

  `getTypeParameters()`

  Returns an array of `TypeVariable` objects that
  represent the type variables declared by the generic
  declaration represented by this `GenericDeclaration`
  object, in declaration order.

  ### Methods inherited from interface java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")

  `getAnnotation, getAnnotations, getAnnotationsByType, getDeclaredAnnotation, getDeclaredAnnotations, getDeclaredAnnotationsByType, isAnnotationPresent`

* ## Method Details

  + ### getTypeParameters

    [TypeVariable](TypeVariable.md "interface in java.lang.reflect")<?>[] getTypeParameters()

    Returns an array of `TypeVariable` objects that
    represent the type variables declared by the generic
    declaration represented by this `GenericDeclaration`
    object, in declaration order. Returns an array of length 0 if
    the underlying generic declaration declares no type variables.

    Returns:
    :   an array of `TypeVariable` objects that represent
        the type variables declared by this generic declaration

    Throws:
    :   `GenericSignatureFormatError` - if the generic
        signature of this generic declaration does not conform to
        the format specified in
        The Java Virtual Machine Specification