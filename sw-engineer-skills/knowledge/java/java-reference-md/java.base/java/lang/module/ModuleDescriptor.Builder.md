Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Class ModuleDescriptor.Builder

[java.lang.Object](../Object.md "class in java.lang")

java.lang.module.ModuleDescriptor.Builder

Enclosing class:
:   `ModuleDescriptor`

---

public static final class ModuleDescriptor.Builder
extends [Object](../Object.md "class in java.lang")

A builder for building [`ModuleDescriptor`](ModuleDescriptor.md "class in java.lang.module") objects.

`ModuleDescriptor` defines the [`newModule`](ModuleDescriptor.md#newModule(java.lang.String,java.util.Set)),
[`newOpenModule`](ModuleDescriptor.md#newOpenModule(java.lang.String)), and [`newAutomaticModule`](ModuleDescriptor.md#newAutomaticModule(java.lang.String)) methods to create builders for building
*normal*, open, and automatic modules.

The set of packages in the module are accumulated by the `Builder` as the [`exports`](#exports(java.lang.String)),
[`opens`](#opens(java.lang.String)),
[`packages`](#packages(java.util.Set)),
[`provides`](#provides(java.lang.String,java.util.List)), and
[`mainClass`](#mainClass(java.lang.String)) methods are
invoked.

The module names, package names, and class names that are parameters
specified to the builder methods are the module names, package names,
and qualified names of classes (in named packages) as defined in the
The Java Language Specification.

Example usage:

Copy![Copy snippet](../../../../copy.svg)

```
    ModuleDescriptor descriptor = ModuleDescriptor.newModule("stats.core")
        .requires("java.base")
        .exports("org.acme.stats.core.clustering")
        .exports("org.acme.stats.core.regression")
        .packages(Set.of("org.acme.stats.core.internal"))
        .build();
```

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ModuleDescriptor`

  `build()`

  Builds and returns a `ModuleDescriptor` from its components.

  `ModuleDescriptor.Builder`

  `exports(ModuleDescriptor.Exports e)`

  Adds an exported package.

  `ModuleDescriptor.Builder`

  `exports(String pn)`

  Adds an exported package.

  `ModuleDescriptor.Builder`

  `exports(String pn,
  Set<String> targets)`

  Adds an exported package.

  `ModuleDescriptor.Builder`

  `exports(Set<ModuleDescriptor.Exports.Modifier> ms,
  String pn)`

  Adds an exported package with the given (and possibly empty) set of
  modifiers.

  `ModuleDescriptor.Builder`

  `exports(Set<ModuleDescriptor.Exports.Modifier> ms,
  String pn,
  Set<String> targets)`

  Adds an exported package with the given (and possibly empty) set of
  modifiers.

  `ModuleDescriptor.Builder`

  `mainClass(String mc)`

  Sets the module main class.

  `ModuleDescriptor.Builder`

  `opens(ModuleDescriptor.Opens obj)`

  Adds an open package.

  `ModuleDescriptor.Builder`

  `opens(String pn)`

  Adds an open package.

  `ModuleDescriptor.Builder`

  `opens(String pn,
  Set<String> targets)`

  Adds an open package.

  `ModuleDescriptor.Builder`

  `opens(Set<ModuleDescriptor.Opens.Modifier> ms,
  String pn)`

  Adds an open package with the given (and possibly empty) set of
  modifiers.

  `ModuleDescriptor.Builder`

  `opens(Set<ModuleDescriptor.Opens.Modifier> ms,
  String pn,
  Set<String> targets)`

  Adds an open package with the given (and possibly empty) set of
  modifiers.

  `ModuleDescriptor.Builder`

  `packages(Set<String> pns)`

  Adds packages to the module.

  `ModuleDescriptor.Builder`

  `provides(ModuleDescriptor.Provides p)`

  Provides a service with one or more implementations.

  `ModuleDescriptor.Builder`

  `provides(String service,
  List<String> providers)`

  Provides implementations of a service.

  `ModuleDescriptor.Builder`

  `requires(ModuleDescriptor.Requires req)`

  Adds a dependence on a module.

  `ModuleDescriptor.Builder`

  `requires(String mn)`

  Adds a dependence on a module with an empty set of modifiers.

  `ModuleDescriptor.Builder`

  `requires(Set<ModuleDescriptor.Requires.Modifier> ms,
  String mn)`

  Adds a dependence on a module with the given (and possibly empty)
  set of modifiers.

  `ModuleDescriptor.Builder`

  `requires(Set<ModuleDescriptor.Requires.Modifier> ms,
  String mn,
  ModuleDescriptor.Version compiledVersion)`

  Adds a dependence on a module with the given (and possibly empty)
  set of modifiers.

  `ModuleDescriptor.Builder`

  `uses(String service)`

  Adds a service dependence.

  `ModuleDescriptor.Builder`

  `version(ModuleDescriptor.Version v)`

  Sets the module version.

  `ModuleDescriptor.Builder`

  `version(String vs)`

  Sets the module version.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### requires

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") requires([ModuleDescriptor.Requires](ModuleDescriptor.Requires.md "class in java.lang.module") req)

    Adds a dependence on a module.

    Parameters:
    :   `req` - The dependence

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the dependence is on the module that this builder was
        initialized to build
    :   `IllegalStateException` - If the dependence on the module has already been declared
        or this builder is for an automatic module
  + ### requires

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") requires([Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module")> ms,
    [String](../String.md "class in java.lang") mn,
    [ModuleDescriptor.Version](ModuleDescriptor.Version.md "class in java.lang.module") compiledVersion)

    Adds a dependence on a module with the given (and possibly empty)
    set of modifiers. The dependence includes the version of the
    module that was recorded at compile-time.

    Parameters:
    :   `ms` - The set of modifiers
    :   `mn` - The module name
    :   `compiledVersion` - The version of the module recorded at compile-time

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the module name is `null`, is not a legal module
        name, or is equal to the module name that this builder
        was initialized to build
    :   `IllegalStateException` - If the dependence on the module has already been declared
        or this builder is for an automatic module
  + ### requires

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") requires([Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module")> ms,
    [String](../String.md "class in java.lang") mn)

    Adds a dependence on a module with the given (and possibly empty)
    set of modifiers.

    Parameters:
    :   `ms` - The set of modifiers
    :   `mn` - The module name

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the module name is `null`, is not a legal module
        name, or is equal to the module name that this builder
        was initialized to build
    :   `IllegalStateException` - If the dependence on the module has already been declared
        or this builder is for an automatic module
  + ### requires

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") requires([String](../String.md "class in java.lang") mn)

    Adds a dependence on a module with an empty set of modifiers.

    Parameters:
    :   `mn` - The module name

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the module name is `null`, is not a legal module
        name, or is equal to the module name that this builder
        was initialized to build
    :   `IllegalStateException` - If the dependence on the module has already been declared
        or this builder is for an automatic module
  + ### exports

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") exports([ModuleDescriptor.Exports](ModuleDescriptor.Exports.md "class in java.lang.module") e)

    Adds an exported package.

    Parameters:
    :   `e` - The export

    Returns:
    :   This builder

    Throws:
    :   `IllegalStateException` - If the [`package`](ModuleDescriptor.Exports.md#source()) is already declared as
        exported or this builder is for an automatic module
  + ### exports

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") exports([Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Exports.Modifier](ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module")> ms,
    [String](../String.md "class in java.lang") pn,
    [Set](../../util/Set.md "interface in java.util")<[String](../String.md "class in java.lang")> targets)

    Adds an exported package with the given (and possibly empty) set of
    modifiers. The package is exported to a set of target modules.

    Parameters:
    :   `ms` - The set of modifiers
    :   `pn` - The package name
    :   `targets` - The set of target modules names

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the package name is `null` or is not a legal
        package name, the set of target modules is empty, or the set
        of target modules contains a name that is not a legal module
        name
    :   `IllegalStateException` - If the package is already declared as exported
        or this builder is for an automatic module
  + ### exports

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") exports([Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Exports.Modifier](ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module")> ms,
    [String](../String.md "class in java.lang") pn)

    Adds an exported package with the given (and possibly empty) set of
    modifiers. The package is exported to all modules.

    Parameters:
    :   `ms` - The set of modifiers
    :   `pn` - The package name

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the package name is `null` or is not a legal
        package name
    :   `IllegalStateException` - If the package is already declared as exported
        or this builder is for an automatic module
  + ### exports

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") exports([String](../String.md "class in java.lang") pn,
    [Set](../../util/Set.md "interface in java.util")<[String](../String.md "class in java.lang")> targets)

    Adds an exported package. The package is exported to a set of target
    modules.

    Parameters:
    :   `pn` - The package name
    :   `targets` - The set of target modules names

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the package name is `null` or is not a legal
        package name, the set of target modules is empty, or the set
        of target modules contains a name that is not a legal module
        name
    :   `IllegalStateException` - If the package is already declared as exported
        or this builder is for an automatic module
  + ### exports

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") exports([String](../String.md "class in java.lang") pn)

    Adds an exported package. The package is exported to all modules.

    Parameters:
    :   `pn` - The package name

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the package name is `null` or is not a legal
        package name
    :   `IllegalStateException` - If the package is already declared as exported
        or this builder is for an automatic module
  + ### opens

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") opens([ModuleDescriptor.Opens](ModuleDescriptor.Opens.md "class in java.lang.module") obj)

    Adds an open package.

    Parameters:
    :   `obj` - The `Opens` object

    Returns:
    :   This builder

    Throws:
    :   `IllegalStateException` - If the package is already declared as open, or this is a
        builder for an open module or automatic module
  + ### opens

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") opens([Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Opens.Modifier](ModuleDescriptor.Opens.Modifier.md "enum class in java.lang.module")> ms,
    [String](../String.md "class in java.lang") pn,
    [Set](../../util/Set.md "interface in java.util")<[String](../String.md "class in java.lang")> targets)

    Adds an open package with the given (and possibly empty) set of
    modifiers. The package is open to a set of target modules.

    Parameters:
    :   `ms` - The set of modifiers
    :   `pn` - The package name
    :   `targets` - The set of target modules names

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the package name is `null` or is not a legal
        package name, the set of target modules is empty, or the set
        of target modules contains a name that is not a legal module
        name
    :   `IllegalStateException` - If the package is already declared as open, or this is a
        builder for an open module or automatic module
  + ### opens

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") opens([Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Opens.Modifier](ModuleDescriptor.Opens.Modifier.md "enum class in java.lang.module")> ms,
    [String](../String.md "class in java.lang") pn)

    Adds an open package with the given (and possibly empty) set of
    modifiers. The package is open to all modules.

    Parameters:
    :   `ms` - The set of modifiers
    :   `pn` - The package name

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the package name is `null` or is not a legal
        package name
    :   `IllegalStateException` - If the package is already declared as open, or this is a
        builder for an open module or automatic module
  + ### opens

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") opens([String](../String.md "class in java.lang") pn,
    [Set](../../util/Set.md "interface in java.util")<[String](../String.md "class in java.lang")> targets)

    Adds an open package. The package is open to a set of target modules.

    Parameters:
    :   `pn` - The package name
    :   `targets` - The set of target modules names

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the package name is `null` or is not a legal
        package name, the set of target modules is empty, or the set
        of target modules contains a name that is not a legal module
        name
    :   `IllegalStateException` - If the package is already declared as open, or this is a
        builder for an open module or automatic module
  + ### opens

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") opens([String](../String.md "class in java.lang") pn)

    Adds an open package. The package is open to all modules.

    Parameters:
    :   `pn` - The package name

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the package name is `null` or is not a legal
        package name
    :   `IllegalStateException` - If the package is already declared as open, or this is a
        builder for an open module or automatic module
  + ### uses

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") uses([String](../String.md "class in java.lang") service)

    Adds a service dependence.

    Parameters:
    :   `service` - The service type

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the service type is `null` or not a qualified name of
        a class in a named package
    :   `IllegalStateException` - If a dependency on the service type has already been declared
        or this is a builder for an automatic module
  + ### provides

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") provides([ModuleDescriptor.Provides](ModuleDescriptor.Provides.md "class in java.lang.module") p)

    Provides a service with one or more implementations. The package for
    each `provider` (or provider factory) is
    added to the module if not already added.

    Parameters:
    :   `p` - The provides

    Returns:
    :   This builder

    Throws:
    :   `IllegalStateException` - If the providers for the service type have already been
        declared
  + ### provides

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") provides([String](../String.md "class in java.lang") service,
    [List](../../util/List.md "interface in java.util")<[String](../String.md "class in java.lang")> providers)

    Provides implementations of a service. The package for each provider
    (or provider factory) is added to the module if not already added.

    Parameters:
    :   `service` - The service type
    :   `providers` - The list of provider or provider factory class names

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If the service type or any of the provider class names is
        `null` or not a qualified name of a class in a named
        package, or the list of provider class names is empty
    :   `IllegalStateException` - If the providers for the service type have already been
        declared
  + ### packages

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") packages([Set](../../util/Set.md "interface in java.util")<[String](../String.md "class in java.lang")> pns)

    Adds packages to the module. All packages in the set of package names
    that are not in the module are added to module.

    Parameters:
    :   `pns` - The (possibly empty) set of package names

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If any of the package names is `null` or is not a
        legal package name
  + ### version

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") version([ModuleDescriptor.Version](ModuleDescriptor.Version.md "class in java.lang.module") v)

    Sets the module version.

    Parameters:
    :   `v` - The version

    Returns:
    :   This builder
  + ### version

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") version([String](../String.md "class in java.lang") vs)

    Sets the module version.

    Parameters:
    :   `vs` - The version string to parse

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If `vs` is `null` or cannot be parsed as a
        version string

    See Also:
    :   - [`ModuleDescriptor.Version.parse(String)`](ModuleDescriptor.Version.md#parse(java.lang.String))
  + ### mainClass

    public [ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module") mainClass([String](../String.md "class in java.lang") mc)

    Sets the module main class. The package for the main class is added
    to the module if not already added. In other words, this method is
    equivalent to first invoking this builder's [`packages`](#packages(java.util.Set)) method to add the package name of the main class.

    Parameters:
    :   `mc` - The module main class

    Returns:
    :   This builder

    Throws:
    :   `IllegalArgumentException` - If `mainClass` is `null` or not a qualified
        name of a class in a named package
  + ### build

    public [ModuleDescriptor](ModuleDescriptor.md "class in java.lang.module") build()

    Builds and returns a `ModuleDescriptor` from its components.

    The module will require "`java.base`" even if the dependence
    has not been declared (the exception is when building a module named
    "`java.base`" as it cannot require itself). The dependence on
    "`java.base`" will have the [`MANDATED`](ModuleDescriptor.Requires.Modifier.md#MANDATED)
    modifier if the dependence was not declared.

    Returns:
    :   The module descriptor