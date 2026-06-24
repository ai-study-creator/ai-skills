Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface ErrorType

All Superinterfaces:
:   `AnnotatedConstruct`, `DeclaredType`, `ReferenceType`, `TypeMirror`

---

public interface ErrorType
extends [DeclaredType](DeclaredType.md "interface in javax.lang.model.type")

Represents a class or interface type that cannot be properly modeled.
This may be the result of a processing error,
such as a missing class file or erroneous source code.
Most queries for
information derived from such a type (such as its members or its
supertype) will not, in general, return meaningful results.

Since:
:   1.6

* ## Method Summary

  ### Methods inherited from interface javax.lang.model.type.[DeclaredType](DeclaredType.md "interface in javax.lang.model.type")

  `asElement, getEnclosingType, getTypeArguments`

  ### Methods inherited from interface javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, hashCode, toString`