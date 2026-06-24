Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface IntersectionType

All Superinterfaces:
:   `AnnotatedConstruct`, `TypeMirror`

---

public interface IntersectionType
extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

Represents an intersection type.

An intersection type can be either implicitly or explicitly
declared in a program. For example, the bound of the type parameter
`<T extends Number & Runnable>` is an (implicit) intersection
type. This is represented by an `IntersectionType` with
`Number` and `Runnable` as its bounds.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<? extends TypeMirror>`

  `getBounds()`

  Returns the bounds comprising this intersection type.

  ### Methods inherited from interface javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, hashCode, toString`

* ## Method Details

  + ### getBounds

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")> getBounds()

    Returns the bounds comprising this intersection type.

    Returns:
    :   the bounds comprising this intersection type