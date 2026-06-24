Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface ModuleElement.OpensDirective

All Superinterfaces:
:   `ModuleElement.Directive`

Enclosing interface:
:   `ModuleElement`

---

public static interface ModuleElement.OpensDirective
extends [ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

An opened package of a module.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `PackageElement`

  `getPackage()`

  Returns the package being opened.

  `List<? extends ModuleElement>`

  `getTargetModules()`

  Returns the specific modules to which the package is being open
  or `null`, if the package is open all modules which
  have readability to this module.

  ### Methods inherited from interface javax.lang.model.element.[ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")

  `accept, getKind`

* ## Method Details

  + ### getPackage

    [PackageElement](PackageElement.md "interface in javax.lang.model.element") getPackage()

    Returns the package being opened.

    Returns:
    :   the package being opened
  + ### getTargetModules

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [ModuleElement](ModuleElement.md "interface in javax.lang.model.element")> getTargetModules()

    Returns the specific modules to which the package is being open
    or `null`, if the package is open all modules which
    have readability to this module.

    Returns:
    :   the specific modules to which the package is being opened