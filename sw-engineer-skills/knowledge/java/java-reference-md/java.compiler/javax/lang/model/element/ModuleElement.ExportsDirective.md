Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface ModuleElement.ExportsDirective

All Superinterfaces:
:   `ModuleElement.Directive`

Enclosing interface:
:   `ModuleElement`

---

public static interface ModuleElement.ExportsDirective
extends [ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

An exported package of a module.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `PackageElement`

  `getPackage()`

  Returns the package being exported.

  `List<? extends ModuleElement>`

  `getTargetModules()`

  Returns the specific modules to which the package is being exported,
  or `null`, if the package is exported to all modules which
  have readability to this module.

  ### Methods inherited from interface javax.lang.model.element.[ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

  `accept, getKind`

* ## Method Details

  + ### getPackage

    [PackageElement](PackageElement.md "interface in javax.lang.model.element") getPackage()

    Returns the package being exported.

    Returns:
    :   the package being exported
  + ### getTargetModules

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [ModuleElement](ModuleElement.md "interface in javax.lang.model.element")> getTargetModules()

    Returns the specific modules to which the package is being exported,
    or `null`, if the package is exported to all modules which
    have readability to this module.

    Returns:
    :   the specific modules to which the package is being exported