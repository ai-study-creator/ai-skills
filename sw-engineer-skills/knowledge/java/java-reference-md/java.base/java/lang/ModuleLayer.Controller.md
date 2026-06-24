Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ModuleLayer.Controller

[java.lang.Object](Object.md "class in java.lang")

java.lang.ModuleLayer.Controller

Enclosing class:
:   `ModuleLayer`

---

public static final class ModuleLayer.Controller
extends [Object](Object.md "class in java.lang")

Controls a module layer. The static methods defined by [`ModuleLayer`](ModuleLayer.md "class in java.lang")
to create module layers return a `Controller` that can be used to
control modules in the layer.

Unless otherwise specified, passing a `null` argument to a
method in this class causes a [`NullPointerException`](NullPointerException.md "class in java.lang") to be thrown.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ModuleLayer.Controller`

  `addExports(Module source,
  String pn,
  Module target)`

  Updates module `source` in the layer to export a package to
  module `target`.

  `ModuleLayer.Controller`

  `addOpens(Module source,
  String pn,
  Module target)`

  Updates module `source` in the layer to open a package to
  module `target`.

  `ModuleLayer.Controller`

  `addReads(Module source,
  Module target)`

  Updates module `source` in the layer to read module
  `target`.

  `ModuleLayer.Controller`

  `enableNativeAccess(Module target)`

  Preview.

  Enables native access for a module in the layer if the caller's module
  has native access.

  `ModuleLayer`

  `layer()`

  Returns the layer that this object controls.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### layer

    public [ModuleLayer](ModuleLayer.md "class in java.lang") layer()

    Returns the layer that this object controls.

    Returns:
    :   the module layer
  + ### addReads

    public [ModuleLayer.Controller](ModuleLayer.Controller.md "class in java.lang") addReads([Module](Module.md "class in java.lang") source,
    [Module](Module.md "class in java.lang") target)

    Updates module `source` in the layer to read module
    `target`. This method is a no-op if `source` already
    reads `target`.

    Parameters:
    :   `source` - The source module
    :   `target` - The target module to read

    Returns:
    :   This controller

    Throws:
    :   `IllegalArgumentException` - If `source` is not in the module layer

    See Also:
    :   - [`Module.addReads(java.lang.Module)`](Module.md#addReads(java.lang.Module))
  + ### addExports

    public [ModuleLayer.Controller](ModuleLayer.Controller.md "class in java.lang") addExports([Module](Module.md "class in java.lang") source,
    [String](String.md "class in java.lang") pn,
    [Module](Module.md "class in java.lang") target)

    Updates module `source` in the layer to export a package to
    module `target`. This method is a no-op if `source`
    already exports the package to at least `target`.

    Parameters:
    :   `source` - The source module
    :   `pn` - The package name
    :   `target` - The target module

    Returns:
    :   This controller

    Throws:
    :   `IllegalArgumentException` - If `source` is not in the module layer or the package
        is not in the source module

    See Also:
    :   - [`Module.addExports(java.lang.String, java.lang.Module)`](Module.md#addExports(java.lang.String,java.lang.Module))
  + ### addOpens

    public [ModuleLayer.Controller](ModuleLayer.Controller.md "class in java.lang") addOpens([Module](Module.md "class in java.lang") source,
    [String](String.md "class in java.lang") pn,
    [Module](Module.md "class in java.lang") target)

    Updates module `source` in the layer to open a package to
    module `target`. This method is a no-op if `source`
    already opens the package to at least `target`.

    Parameters:
    :   `source` - The source module
    :   `pn` - The package name
    :   `target` - The target module

    Returns:
    :   This controller

    Throws:
    :   `IllegalArgumentException` - If `source` is not in the module layer or the package
        is not in the source module

    See Also:
    :   - [`Module.addOpens(java.lang.String, java.lang.Module)`](Module.md#addOpens(java.lang.String,java.lang.Module))
  + ### enableNativeAccess

    public [ModuleLayer.Controller](ModuleLayer.Controller.md "class in java.lang") enableNativeAccess([Module](Module.md "class in java.lang") target)

    `enableNativeAccess` is a preview API of the Java platform.

    Programs can only use `enableNativeAccess` when preview features are enabled.

    Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

    Enables native access for a module in the layer if the caller's module
    has native access.

    This method is [*restricted*](foreign/package-summary.md#restricted).
    Restricted methods are unsafe, and, if used incorrectly, their use might crash
    the JVM or, worse, silently result in memory corruption. Thus, clients should refrain
    from depending on restricted methods, and use safe and supported functionalities,
    where possible.

    Parameters:
    :   `target` - The module to update

    Returns:
    :   This controller

    Throws:
    :   `IllegalArgumentException` - If `target` is not in the module layer
    :   `IllegalCallerException` - If the caller is in a module that does not have native access enabled

    Since:
    :   20