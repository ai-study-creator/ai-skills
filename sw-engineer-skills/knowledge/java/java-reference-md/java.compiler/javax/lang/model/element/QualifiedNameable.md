Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface QualifiedNameable

All Superinterfaces:
:   `AnnotatedConstruct`, `Element`

All Known Subinterfaces:
:   `ModuleElement`, `PackageElement`, `TypeElement`

---

public interface QualifiedNameable
extends [Element](Element.md "interface in javax.lang.model.element")

A mixin interface for an element that has a qualified name.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Name`

  `getQualifiedName()`

  Returns the fully qualified name of an element.

  ### Methods inherited from interface javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element")

  `accept, asType, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getEnclosedElements, getEnclosingElement, getKind, getModifiers, getSimpleName, hashCode`

* ## Method Details

  + ### getQualifiedName

    [Name](Name.md "interface in javax.lang.model.element") getQualifiedName()

    Returns the fully qualified name of an element.

    Returns:
    :   the fully qualified name of an element