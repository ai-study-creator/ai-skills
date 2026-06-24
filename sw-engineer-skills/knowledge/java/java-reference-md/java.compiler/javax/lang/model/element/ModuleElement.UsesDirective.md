Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface ModuleElement.UsesDirective

All Superinterfaces:
:   `ModuleElement.Directive`

Enclosing interface:
:   `ModuleElement`

---

public static interface ModuleElement.UsesDirective
extends [ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

A reference to a service used by a module.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `TypeElement`

  `getService()`

  Returns the service that is used.

  ### Methods inherited from interface javax.lang.model.element.[ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

  `accept, getKind`

* ## Method Details

  + ### getService

    [TypeElement](TypeElement.md "interface in javax.lang.model.element") getService()

    Returns the service that is used.

    Returns:
    :   the service that is used