Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Class ModuleDescriptor.Requires

[java.lang.Object](../Object.md "class in java.lang")

java.lang.module.ModuleDescriptor.Requires

All Implemented Interfaces:
:   `Comparable<ModuleDescriptor.Requires>`

Enclosing class:
:   `ModuleDescriptor`

---

public static final class ModuleDescriptor.Requires
extends [Object](../Object.md "class in java.lang")
implements [Comparable](../Comparable.md "interface in java.lang")<[ModuleDescriptor.Requires](ModuleDescriptor.Requires.md "class in java.lang.module")>

A dependence upon a module.

Since:
:   9

See Also:
:   * [`ModuleDescriptor.requires()`](ModuleDescriptor.md#requires())

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `ModuleDescriptor.Requires.Modifier`

  A modifier on a module dependence.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Set<AccessFlag>`

  `accessFlags()`

  Returns the set of the module [requires flags](../reflect/AccessFlag.md "enum class in java.lang.reflect").

  `int`

  `compareTo(ModuleDescriptor.Requires that)`

  Compares this module dependence to another.

  `Optional<ModuleDescriptor.Version>`

  `compiledVersion()`

  Returns the version of the module if recorded at compile-time.

  `boolean`

  `equals(Object ob)`

  Tests this module dependence for equality with the given object.

  `int`

  `hashCode()`

  Computes a hash code for this module dependence.

  `Set<ModuleDescriptor.Requires.Modifier>`

  `modifiers()`

  Returns the set of modifiers.

  `String`

  `name()`

  Return the module name.

  `Optional<String>`

  `rawCompiledVersion()`

  Returns the string with the possibly-unparseable version of the module
  if recorded at compile-time.

  `String`

  `toString()`

  Returns a string describing this module dependence.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### modifiers

    public [Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module")> modifiers()

    Returns the set of modifiers.

    Returns:
    :   A possibly-empty unmodifiable set of modifiers
  + ### accessFlags

    public [Set](../../util/Set.md "interface in java.util")<[AccessFlag](../reflect/AccessFlag.md "enum class in java.lang.reflect")> accessFlags()

    Returns the set of the module [requires flags](../reflect/AccessFlag.md "enum class in java.lang.reflect").

    Returns:
    :   A possibly-empty unmodifiable set of requires flags

    Since:
    :   20

    See Also:
    :   - [`modifiers()`](#modifiers())
  + ### name

    public [String](../String.md "class in java.lang") name()

    Return the module name.

    Returns:
    :   The module name
  + ### compiledVersion

    public [Optional](../../util/Optional.md "class in java.util")<[ModuleDescriptor.Version](ModuleDescriptor.Version.md "class in java.lang.module")> compiledVersion()

    Returns the version of the module if recorded at compile-time.

    Returns:
    :   The version of the module if recorded at compile-time,
        or an empty `Optional` if no version was recorded or
        the version string recorded is [unparseable](ModuleDescriptor.Version.md#parse(java.lang.String))
  + ### rawCompiledVersion

    public [Optional](../../util/Optional.md "class in java.util")<[String](../String.md "class in java.lang")> rawCompiledVersion()

    Returns the string with the possibly-unparseable version of the module
    if recorded at compile-time.

    Returns:
    :   The string containing the version of the module if recorded
        at compile-time, or an empty `Optional` if no version
        was recorded

    See Also:
    :   - [`compiledVersion()`](#compiledVersion())
  + ### compareTo

    public int compareTo([ModuleDescriptor.Requires](ModuleDescriptor.Requires.md "class in java.lang.module") that)

    Compares this module dependence to another.

    Two `Requires` objects are compared by comparing their
    module names lexicographically. Where the module names are equal
    then the sets of modifiers are compared in the same way that
    module modifiers are compared (see [`ModuleDescriptor.compareTo`](ModuleDescriptor.md#compareTo(java.lang.module.ModuleDescriptor))). Where the module names are equal and
    the set of modifiers are equal then the version of the modules
    recorded at compile-time are compared. When comparing the versions
    recorded at compile-time then a dependence that has a recorded
    version is considered to succeed a dependence that does not have a
    recorded version. If both recorded versions are [unparseable](ModuleDescriptor.Version.md#parse(java.lang.String)) then the [raw version strings](#rawCompiledVersion()) are compared
    lexicographically.

    Specified by:
    :   `compareTo` in interface `Comparable<ModuleDescriptor.Requires>`

    Parameters:
    :   `that` - The module dependence to compare

    Returns:
    :   A negative integer, zero, or a positive integer if this module
        dependence is less than, equal to, or greater than the given
        module dependence
  + ### equals

    public boolean equals([Object](../Object.md "class in java.lang") ob)

    Tests this module dependence for equality with the given object.

    If the given object is not a `Requires` then this method
    returns `false`. Two module dependence objects are equal if
    the module names are equal, set of modifiers are equal, and the
    compiled version of both modules is equal or not recorded for
    both modules.

    This method satisfies the general contract of the [`Object.equals`](../Object.md#equals(java.lang.Object)) method.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `ob` - the object to which this object is to be compared

    Returns:
    :   `true` if, and only if, the given object is a module
        dependence that is equal to this module dependence

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Computes a hash code for this module dependence.

    The hash code is based upon the module name, modifiers, and the
    module version if recorded at compile time. It satisfies the general
    contract of the [`Object.hashCode`](../Object.md#hashCode()) method.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   The hash-code value for this module dependence

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a string describing this module dependence.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A string describing this module dependence