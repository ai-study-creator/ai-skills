Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface NoType

All Superinterfaces:
:   `AnnotatedConstruct`, `TypeMirror`

---

public interface NoType
extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

A pseudo-type used where no actual type is appropriate.
The kinds of `NoType` are:

* [`VOID`](TypeKind.md#VOID) - corresponds to the keyword `void`.* [`PACKAGE`](TypeKind.md#PACKAGE) - the pseudo-type of a package element.* [`MODULE`](TypeKind.md#MODULE) - the pseudo-type of a module element.* [`NONE`](TypeKind.md#NONE) - used in other cases
        where no actual type is appropriate; for example, the superclass
        of `java.lang.Object`.

Since:
:   1.6

See Also:
:   * [`ExecutableElement.getReturnType()`](../element/ExecutableElement.md#getReturnType())
    * [`Types.getNoType(TypeKind)`](../util/Types.md#getNoType(javax.lang.model.type.TypeKind))

* ## Method Summary

  ### Methods inherited from interface javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, hashCode, toString`