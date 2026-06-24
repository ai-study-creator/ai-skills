Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Class ModuleDescriptor.Version

[java.lang.Object](../Object.md "class in java.lang")

java.lang.module.ModuleDescriptor.Version

All Implemented Interfaces:
:   `Comparable<ModuleDescriptor.Version>`

Enclosing class:
:   `ModuleDescriptor`

---

public static final class ModuleDescriptor.Version
extends [Object](../Object.md "class in java.lang")
implements [Comparable](../Comparable.md "interface in java.lang")<[ModuleDescriptor.Version](ModuleDescriptor.Version.md "class in java.lang.module")>

A module's version string.

A version string has three components: The version number itself, an
optional pre-release version, and an optional build version. Each
component is a sequence of tokens; each token is either a non-negative
integer or a string. Tokens are separated by the punctuation characters
`'.'`, `'-'`, or `'+'`, or by transitions from a
sequence of digits to a sequence of characters that are neither digits
nor punctuation characters, or vice versa. Consecutive repeated
punctuation characters are treated as a single punctuation character.

* The *version number* is a sequence of tokens separated by
  `'.'` characters, terminated by the first `'-'` or `'+'` character.
* The *pre-release version* is a sequence of tokens separated
  by `'.'` or `'-'` characters, terminated by the first
  `'+'` character.
* The *build version* is a sequence of tokens separated by
  `'.'`, `'-'`, or `'+'` characters.

When comparing two version strings, the elements of their
corresponding components are compared in pointwise fashion. If one
component is longer than the other, but otherwise equal to it, then the
first component is considered the greater of the two; otherwise, if two
corresponding elements are integers then they are compared as such;
otherwise, at least one of the elements is a string, so the other is
converted into a string if it is an integer and the two are compared
lexicographically. Trailing integer elements with the value zero are
ignored.

Given two version strings, if their version numbers differ then the
result of comparing them is the result of comparing their version
numbers; otherwise, if one of them has a pre-release version but the
other does not then the first is considered to precede the second,
otherwise the result of comparing them is the result of comparing their
pre-release versions; otherwise, the result of comparing them is the
result of comparing their build versions.

Since:
:   9

See Also:
:   * [`ModuleDescriptor.version()`](ModuleDescriptor.md#version())

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `compareTo(ModuleDescriptor.Version that)`

  Compares this module version to another module version.

  `boolean`

  `equals(Object ob)`

  Tests this module version for equality with the given object.

  `int`

  `hashCode()`

  Computes a hash code for this module version.

  `static ModuleDescriptor.Version`

  `parse(String v)`

  Parses the given string as a version string.

  `String`

  `toString()`

  Returns the string from which this version was parsed.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### parse

    public static [ModuleDescriptor.Version](ModuleDescriptor.Version.md "class in java.lang.module") parse([String](../String.md "class in java.lang") v)

    Parses the given string as a version string.

    Parameters:
    :   `v` - The string to parse

    Returns:
    :   The resulting `Version`

    Throws:
    :   `IllegalArgumentException` - If `v` is `null`, an empty string, or cannot be
        parsed as a version string
  + ### compareTo

    public int compareTo([ModuleDescriptor.Version](ModuleDescriptor.Version.md "class in java.lang.module") that)

    Compares this module version to another module version. Module
    versions are compared as described in the class description.

    Specified by:
    :   `compareTo` in interface `Comparable<ModuleDescriptor.Version>`

    Parameters:
    :   `that` - The module version to compare

    Returns:
    :   A negative integer, zero, or a positive integer as this
        module version is less than, equal to, or greater than the
        given module version
  + ### equals

    public boolean equals([Object](../Object.md "class in java.lang") ob)

    Tests this module version for equality with the given object.

    If the given object is not a `Version` then this method
    returns `false`. Two module version are equal if their
    corresponding components are equal.

    This method satisfies the general contract of the [`Object.equals`](../Object.md#equals(java.lang.Object)) method.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `ob` - the object to which this object is to be compared

    Returns:
    :   `true` if, and only if, the given object is a module
        reference that is equal to this module reference

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Computes a hash code for this module version.

    The hash code is based upon the components of the version and
    satisfies the general contract of the [`Object.hashCode`](../Object.md#hashCode()) method.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   The hash-code value for this module version

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns the string from which this version was parsed.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   The string from which this version was parsed.