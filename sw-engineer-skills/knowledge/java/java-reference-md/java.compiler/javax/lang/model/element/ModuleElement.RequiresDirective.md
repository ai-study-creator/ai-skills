Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface ModuleElement.RequiresDirective

All Superinterfaces:
:   `ModuleElement.Directive`

Enclosing interface:
:   `ModuleElement`

---

public static interface ModuleElement.RequiresDirective
extends [ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

A dependency of a module.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ModuleElement`

  `getDependency()`

  Returns the module that is required.

  `boolean`

  `isStatic()`

  Returns whether or not this is a static dependency.

  `boolean`

  `isTransitive()`

  Returns whether or not this is a transitive dependency.

  ### Methods inherited from interface javax.lang.model.element.[ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

  `accept, getKind`

* ## Method Details

  + ### isStatic

    boolean isStatic()

    Returns whether or not this is a static dependency.

    Returns:
    :   whether or not this is a static dependency
  + ### isTransitive

    boolean isTransitive()

    Returns whether or not this is a transitive dependency.

    Returns:
    :   whether or not this is a transitive dependency
  + ### getDependency

    [ModuleElement](ModuleElement.md "interface in javax.lang.model.element") getDependency()

    Returns the module that is required.

    Returns:
    :   the module that is required