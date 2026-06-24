Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface ReferenceType

All Superinterfaces:
:   `AnnotatedConstruct`, `TypeMirror`

All Known Subinterfaces:
:   `ArrayType`, `DeclaredType`, `ErrorType`, `NullType`, `TypeVariable`

---

public interface ReferenceType
extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

Represents a reference type.
These include class and interface types, array types, type variables,
and the null type.

Since:
:   1.6

* ## Method Summary

  ### Methods inherited from interface javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, hashCode, toString`