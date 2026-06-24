Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface ModuleElement.ProvidesDirective

All Superinterfaces:
:   `ModuleElement.Directive`

Enclosing interface:
:   `ModuleElement`

---

public static interface ModuleElement.ProvidesDirective
extends [ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

An implementation of a service provided by a module.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<? extends TypeElement>`

  `getImplementations()`

  Returns the implementations of the service being provided.

  `TypeElement`

  `getService()`

  Returns the service being provided.

  ### Methods inherited from interface javax.lang.model.element.[ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

  `accept, getKind`

* ## Method Details

  + ### getService

    [TypeElement](TypeElement.md "interface in javax.lang.model.element") getService()

    Returns the service being provided.

    Returns:
    :   the service being provided
  + ### getImplementations

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeElement](TypeElement.md "interface in javax.lang.model.element")> getImplementations()

    Returns the implementations of the service being provided.

    Returns:
    :   the implementations of the service being provided