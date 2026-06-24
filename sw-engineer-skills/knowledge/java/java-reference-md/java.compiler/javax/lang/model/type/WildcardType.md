Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface WildcardType

All Superinterfaces:
:   `AnnotatedConstruct`, `TypeMirror`

---

public interface WildcardType
extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

Represents a wildcard type argument.
Examples include:

```
   ?
   ? extends Number
   ? super T
```

A wildcard may have its upper bound explicitly set by an
`extends` clause, its lower bound explicitly set by a
`super` clause, or neither (but not both).

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `TypeMirror`

  `getExtendsBound()`

  Returns the upper bound of this wildcard.

  `TypeMirror`

  `getSuperBound()`

  Returns the lower bound of this wildcard.

  ### Methods inherited from interface javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, hashCode, toString`

* ## Method Details

  + ### getExtendsBound

    [TypeMirror](TypeMirror.md "interface in javax.lang.model.type") getExtendsBound()

    Returns the upper bound of this wildcard.
    If no upper bound is explicitly declared,
    `null` is returned.

    Returns:
    :   the upper bound of this wildcard
  + ### getSuperBound

    [TypeMirror](TypeMirror.md "interface in javax.lang.model.type") getSuperBound()

    Returns the lower bound of this wildcard.
    If no lower bound is explicitly declared,
    `null` is returned.

    Returns:
    :   the lower bound of this wildcard