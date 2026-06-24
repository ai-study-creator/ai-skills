Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Class ModuleDescriptor.Exports

[java.lang.Object](../Object.md "class in java.lang")

java.lang.module.ModuleDescriptor.Exports

All Implemented Interfaces:
:   `Comparable<ModuleDescriptor.Exports>`

Enclosing class:
:   `ModuleDescriptor`

---

public static final class ModuleDescriptor.Exports
extends [Object](../Object.md "class in java.lang")
implements [Comparable](../Comparable.md "interface in java.lang")<[ModuleDescriptor.Exports](ModuleDescriptor.Exports.md "class in java.lang.module")>

A package exported by a module, may be qualified or unqualified.

Since:
:   9

See Also:
:   * [`ModuleDescriptor.exports()`](ModuleDescriptor.md#exports())

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `ModuleDescriptor.Exports.Modifier`

  A modifier on an exported package.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Set<AccessFlag>`

  `accessFlags()`

  Returns the set of the module [export flags](../reflect/AccessFlag.md "enum class in java.lang.reflect") for this module descriptor.

  `int`

  `compareTo(ModuleDescriptor.Exports that)`

  Compares this module export to another.

  `boolean`

  `equals(Object ob)`

  Tests this module export for equality with the given object.

  `int`

  `hashCode()`

  Computes a hash code for this module export.

  `boolean`

  `isQualified()`

  Returns `true` if this is a qualified export.

  `Set<ModuleDescriptor.Exports.Modifier>`

  `modifiers()`

  Returns the set of modifiers.

  `String`

  `source()`

  Returns the package name.

  `Set<String>`

  `targets()`

  For a qualified export, returns the non-empty and immutable set
  of the module names to which the package is exported.

  `String`

  `toString()`

  Returns a string describing the exported package.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### modifiers

    public [Set](../../util/Set.md "interface in java.util")<[ModuleDescriptor.Exports.Modifier](ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module")> modifiers()

    Returns the set of modifiers.

    Returns:
    :   A possibly-empty unmodifiable set of modifiers
  + ### accessFlags

    public [Set](../../util/Set.md "interface in java.util")<[AccessFlag](../reflect/AccessFlag.md "enum class in java.lang.reflect")> accessFlags()

    Returns the set of the module [export flags](../reflect/AccessFlag.md "enum class in java.lang.reflect") for this module descriptor.

    Returns:
    :   A possibly-empty unmodifiable set of export flags

    Since:
    :   20

    See Also:
    :   - [`modifiers()`](#modifiers())
  + ### isQualified

    public boolean isQualified()

    Returns `true` if this is a qualified export.

    Returns:
    :   `true` if this is a qualified export
  + ### source

    public [String](../String.md "class in java.lang") source()

    Returns the package name.

    Returns:
    :   The package name
  + ### targets

    public [Set](../../util/Set.md "interface in java.util")<[String](../String.md "class in java.lang")> targets()

    For a qualified export, returns the non-empty and immutable set
    of the module names to which the package is exported. For an
    unqualified export, returns an empty set.

    Returns:
    :   The set of target module names or for an unqualified
        export, an empty set
  + ### compareTo

    public int compareTo([ModuleDescriptor.Exports](ModuleDescriptor.Exports.md "class in java.lang.module") that)

    Compares this module export to another.

    Two `Exports` objects are compared by comparing the package
    names lexicographically. Where the packages names are equal then the
    sets of modifiers are compared in the same way that module modifiers
    are compared (see [`ModuleDescriptor.compareTo`](ModuleDescriptor.md#compareTo(java.lang.module.ModuleDescriptor))). Where the package names are equal and
    the set of modifiers are equal then the set of target modules are
    compared. This is done by sorting the names of the target modules
    in ascending order, and according to their natural ordering, and then
    comparing the corresponding elements lexicographically. Where the
    sets differ in size, and the larger set contains all elements of the
    smaller set, then the larger set is considered to succeed the smaller
    set.

    Specified by:
    :   `compareTo` in interface `Comparable<ModuleDescriptor.Exports>`

    Parameters:
    :   `that` - The module export to compare

    Returns:
    :   A negative integer, zero, or a positive integer if this module
        export is less than, equal to, or greater than the given
        export dependence
  + ### hashCode

    public int hashCode()

    Computes a hash code for this module export.

    The hash code is based upon the modifiers, the package name,
    and for a qualified export, the set of modules names to which the
    package is exported. It satisfies the general contract of the
    [`Object.hashCode`](../Object.md#hashCode()) method.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   The hash-code value for this module export

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../Object.md "class in java.lang") ob)

    Tests this module export for equality with the given object.

    If the given object is not an `Exports` then this method
    returns `false`. Two module exports objects are equal if their
    set of modifiers is equal, the package names are equal and the set
    of target module names is equal.

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
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a string describing the exported package.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A string describing the exported package