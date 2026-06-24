Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface UnionType

All Superinterfaces:
:   `AnnotatedConstruct`, `TypeMirror`

---

public interface UnionType
extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

Represents a union type.
Union types can appear as the type of a multi-catch exception
parameter.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<? extends TypeMirror>`

  `getAlternatives()`

  Returns the alternatives comprising this union type.

  ### Methods inherited from interface javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, hashCode, toString`

* ## Method Details

  + ### getAlternatives

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")> getAlternatives()

    Returns the alternatives comprising this union type.

    Returns:
    :   the alternatives comprising this union type