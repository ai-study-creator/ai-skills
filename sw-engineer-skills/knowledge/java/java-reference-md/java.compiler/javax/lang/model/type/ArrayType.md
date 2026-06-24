Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface ArrayType

All Superinterfaces:
:   `AnnotatedConstruct`, `ReferenceType`, `TypeMirror`

---

public interface ArrayType
extends [ReferenceType](ReferenceType.md "interface in javax.lang.model.type")

Represents an array type.
A multidimensional array type is represented as an array type
whose component type is also an array type.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `TypeMirror`

  `getComponentType()`

  Returns the component type of this array type.

  ### Methods inherited from interface javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, hashCode, toString`

* ## Method Details

  + ### getComponentType

    [TypeMirror](TypeMirror.md "interface in javax.lang.model.type") getComponentType()

    Returns the component type of this array type.

    Returns:
    :   the component type of this array type