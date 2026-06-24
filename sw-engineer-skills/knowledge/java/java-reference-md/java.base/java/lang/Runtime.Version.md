Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Runtime.Version

[java.lang.Object](Object.md "class in java.lang")

java.lang.Runtime.Version

All Implemented Interfaces:
:   `Comparable<Runtime.Version>`

Enclosing class:
:   `Runtime`

---

public static final class Runtime.Version
extends [Object](Object.md "class in java.lang")
implements [Comparable](Comparable.md "interface in java.lang")<[Runtime.Version](Runtime.Version.md "class in java.lang")>

A representation of a version string for an implementation of the
Java SE Platform. A version string consists of a version number
optionally followed by pre-release and build information.

## Version numbers

A *version number*, `$VNUM`, is a non-empty sequence of
elements separated by period characters (U+002E). An element is either
zero, or an unsigned integer numeral without leading zeros. The final
element in a version number must not be zero. When an element is
incremented, all subsequent elements are removed. The format is:

> ```
>  [1-9][0-9]*((\.0)*\.[1-9][0-9]*)*
> ```

The sequence may be of arbitrary length but the first four elements
are assigned specific meanings, as follows:

> ```
>  $FEATURE.$INTERIM.$UPDATE.$PATCH
> ```

* `$FEATURE` — The
  feature-release counter, incremented for every feature release
  regardless of release content. Features may be added in a feature
  release; they may also be removed, if advance notice was given at least
  one feature release ahead of time. Incompatible changes may be made
  when justified.
* `$INTERIM` — The
  interim-release counter, incremented for non-feature releases that
  contain compatible bug fixes and enhancements but no incompatible
  changes, no feature removals, and no changes to standard APIs.
* `$UPDATE` — The update-release
  counter, incremented for compatible update releases that fix security
  issues, regressions, and bugs in newer features.
* `$PATCH` — The emergency
  patch-release counter, incremented only when it's necessary to produce
  an emergency release to fix a critical issue.

The fifth and later elements of a version number are free for use by
platform implementors, to identify implementor-specific patch
releases.

A version number never has trailing zero elements. If an element
and all those that follow it logically have the value zero then all of
them are omitted.

The sequence of numerals in a version number is compared to another
such sequence in numerical, pointwise fashion; *e.g.*, `10.0.4` is less than `10.1.2`. If one sequence is shorter than
another then the missing elements of the shorter sequence are considered
to be less than the corresponding elements of the longer sequence;
*e.g.*, `10.0.2` is less than `10.0.2.1`.

## Version strings

A *version string*, `$VSTR`, is a version number `$VNUM`, as described above, optionally followed by pre-release and build
information, in one of the following formats:

> ```
>      $VNUM(-$PRE)?\+$BUILD(-$OPT)?
>      $VNUM-$PRE(-$OPT)?
>      $VNUM(\+-$OPT)?
> ```

where:

* `$PRE`, matching `([a-zA-Z0-9]+)`
  — A pre-release identifier. Typically `ea`, for a
  potentially unstable early-access release under active development, or
  `internal`, for an internal developer build.
* `$BUILD`, matching `(0|[1-9][0-9]*)` — The build number, incremented for each promoted
  build. `$BUILD` is reset to `1` when any portion of `$VNUM` is incremented.
* `$OPT`, matching `([-a-zA-Z0-9.]+)`
  — Additional build information, if desired. In the case of an
  `internal` build this will often contain the date and time of the
  build.

A version string `10-ea` matches `$VNUM = "10"` and
`$PRE = "ea"`. The version string `10+-ea` matches
`$VNUM = "10"` and `$OPT = "ea"`.

When comparing two version strings, the value of `$OPT`, if
present, may or may not be significant depending on the chosen
comparison method. The comparison methods [`compareTo()`](#compareTo(java.lang.Runtime.Version)) and [`compareToIgnoreOptional()`](#compareToIgnoreOptional(java.lang.Runtime.Version)) should be used consistently with the
corresponding methods [`equals()`](#equals(java.lang.Object)) and [`equalsIgnoreOptional()`](#equalsIgnoreOptional(java.lang.Object)).

A *short version string*, `$SVSTR`, often useful in
less formal contexts, is a version number optionally followed by a
pre-release identifier:

> ```
>      $VNUM(-$PRE)?
> ```

This is a [value-based](../../../java.base/java/lang/doc-files/ValueBased.md)
class; programmers should treat instances that are
[equal](#equals(java.lang.Object)) as interchangeable and should not
use instances for synchronization, or unpredictable behavior may
occur. For example, in a future release, synchronization may fail.

Since:
:   9

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Optional<Integer>`

  `build()`

  Returns the [build number](#build).

  `int`

  `compareTo(Runtime.Version obj)`

  Compares this version to another.

  `int`

  `compareToIgnoreOptional(Runtime.Version obj)`

  Compares this version to another disregarding optional build
  information.

  `boolean`

  `equals(Object obj)`

  Determines whether this `Version` is equal to another object.

  `boolean`

  `equalsIgnoreOptional(Object obj)`

  Determines whether this `Version` is equal to another
  disregarding optional build information.

  `int`

  `feature()`

  Returns the value of the [feature](#FEATURE) element of
  the version number.

  `int`

  `hashCode()`

  Returns the hash code of this version.

  `int`

  `interim()`

  Returns the value of the [interim](#INTERIM) element of
  the version number, or zero if it is absent.

  `int`

  `major()`

  Deprecated.

  As of Java SE 10, the first element of a version
  number is not the major-release number but the feature-release
  counter, incremented for every time-based release.

  `int`

  `minor()`

  Deprecated.

  As of Java SE 10, the second element of a version
  number is not the minor-release number but the interim-release
  counter, incremented for every interim release.

  `Optional<String>`

  `optional()`

  Returns [optional](#opt) additional identifying build
  information.

  `static Runtime.Version`

  `parse(String s)`

  Parses the given string as a valid
  [version string](#verStr) containing a
  [version number](#verNum) followed by pre-release and
  build information.

  `int`

  `patch()`

  Returns the value of the [patch](#PATCH) element of the
  version number, or zero if it is absent.

  `Optional<String>`

  `pre()`

  Returns the optional [pre-release](#pre) information.

  `int`

  `security()`

  Deprecated.

  As of Java SE 10, the third element of a version
  number is not the security level but the update-release counter,
  incremented for every update release.

  `String`

  `toString()`

  Returns a string representation of this version.

  `int`

  `update()`

  Returns the value of the [update](#UPDATE) element of the
  version number, or zero if it is absent.

  `List<Integer>`

  `version()`

  Returns an unmodifiable [`List`](../util/List.md "interface in java.util") of the integers
  represented in the [version number](#verNum).

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### parse

    public static [Runtime.Version](Runtime.Version.md "class in java.lang") parse([String](String.md "class in java.lang") s)

    Parses the given string as a valid
    [version string](#verStr) containing a
    [version number](#verNum) followed by pre-release and
    build information.

    Parameters:
    :   `s` - A string to interpret as a version

    Returns:
    :   The Version of the given string

    Throws:
    :   `IllegalArgumentException` - If the given string cannot be interpreted as a valid
        version
    :   `NullPointerException` - If the given string is `null`
    :   `NumberFormatException` - If an element of the version number or the build number
        cannot be represented as an [`Integer`](Integer.md "class in java.lang")
  + ### feature

    public int feature()

    Returns the value of the [feature](#FEATURE) element of
    the version number.

    Returns:
    :   The value of the feature element

    Since:
    :   10
  + ### interim

    public int interim()

    Returns the value of the [interim](#INTERIM) element of
    the version number, or zero if it is absent.

    Returns:
    :   The value of the interim element, or zero

    Since:
    :   10
  + ### update

    public int update()

    Returns the value of the [update](#UPDATE) element of the
    version number, or zero if it is absent.

    Returns:
    :   The value of the update element, or zero

    Since:
    :   10
  + ### patch

    public int patch()

    Returns the value of the [patch](#PATCH) element of the
    version number, or zero if it is absent.

    Returns:
    :   The value of the patch element, or zero

    Since:
    :   10
  + ### major

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="10")
    public int major()

    Deprecated.

    As of Java SE 10, the first element of a version
    number is not the major-release number but the feature-release
    counter, incremented for every time-based release. Use the [`feature()`](#feature()) method in preference to this method. For compatibility,
    this method returns the value of the [feature](#FEATURE)
    element.

    Returns the value of the major element of the version number.

    Returns:
    :   The value of the feature element
  + ### minor

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="10")
    public int minor()

    Deprecated.

    As of Java SE 10, the second element of a version
    number is not the minor-release number but the interim-release
    counter, incremented for every interim release. Use the [`interim()`](#interim()) method in preference to this method. For compatibility,
    this method returns the value of the [interim](#INTERIM)
    element, or zero if it is absent.

    Returns the value of the minor element of the version number, or
    zero if it is absent.

    Returns:
    :   The value of the interim element, or zero
  + ### security

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="10")
    public int security()

    Deprecated.

    As of Java SE 10, the third element of a version
    number is not the security level but the update-release counter,
    incremented for every update release. Use the [`update()`](#update())
    method in preference to this method. For compatibility, this method
    returns the value of the [update](#UPDATE) element, or
    zero if it is absent.

    Returns the value of the security element of the version number, or
    zero if it is absent.

    Returns:
    :   The value of the update element, or zero
  + ### version

    public [List](../util/List.md "interface in java.util")<[Integer](Integer.md "class in java.lang")> version()

    Returns an unmodifiable [`List`](../util/List.md "interface in java.util") of the integers
    represented in the [version number](#verNum).
    The `List` always contains at least one element corresponding to
    the [feature version number](#FEATURE).

    Returns:
    :   An unmodifiable list of the integers
        represented in the version number
  + ### pre

    public [Optional](../util/Optional.md "class in java.util")<[String](String.md "class in java.lang")> pre()

    Returns the optional [pre-release](#pre) information.

    Returns:
    :   The optional pre-release information as a String
  + ### build

    public [Optional](../util/Optional.md "class in java.util")<[Integer](Integer.md "class in java.lang")> build()

    Returns the [build number](#build).

    Returns:
    :   The optional build number.
  + ### optional

    public [Optional](../util/Optional.md "class in java.util")<[String](String.md "class in java.lang")> optional()

    Returns [optional](#opt) additional identifying build
    information.

    Returns:
    :   Additional build information as a String
  + ### compareTo

    public int compareTo([Runtime.Version](Runtime.Version.md "class in java.lang") obj)

    Compares this version to another.

    Each of the components in the [version](#verStr) is
    compared in the following order of precedence: version numbers,
    pre-release identifiers, build numbers, optional build information.

    Comparison begins by examining the sequence of version numbers.
    If one sequence is shorter than another, then the missing elements
    of the shorter sequence are considered to be less than the
    corresponding elements of the longer sequence.

    A version with a pre-release identifier is always considered to
    be less than a version without one. Pre-release identifiers are
    compared numerically when they consist only of digits, and
    lexicographically otherwise. Numeric identifiers are considered to
    be less than non-numeric identifiers.

    A version without a build number is always less than one with a
    build number; otherwise build numbers are compared numerically.

    The optional build information is compared lexicographically.
    During this comparison, a version with optional build information is
    considered to be greater than a version without one.

    Specified by:
    :   `compareTo` in interface `Comparable<Runtime.Version>`

    Parameters:
    :   `obj` - The object to be compared

    Returns:
    :   A negative integer, zero, or a positive integer if this
        `Version` is less than, equal to, or greater than the
        given `Version`

    Throws:
    :   `NullPointerException` - If the given object is `null`
  + ### compareToIgnoreOptional

    public int compareToIgnoreOptional([Runtime.Version](Runtime.Version.md "class in java.lang") obj)

    Compares this version to another disregarding optional build
    information.

    Two versions are compared by examining the version string as
    described in [`compareTo(Version)`](#compareTo(java.lang.Runtime.Version)) with the exception that the
    optional build information is always ignored.

    This method provides ordering which is consistent with
    `equalsIgnoreOptional()`.

    Parameters:
    :   `obj` - The object to be compared

    Returns:
    :   A negative integer, zero, or a positive integer if this
        `Version` is less than, equal to, or greater than the
        given `Version`

    Throws:
    :   `NullPointerException` - If the given object is `null`
  + ### toString

    public [String](String.md "class in java.lang") toString()

    Returns a string representation of this version.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   The version string
  + ### equals

    public boolean equals([Object](Object.md "class in java.lang") obj)

    Determines whether this `Version` is equal to another object.

    Two `Version`s are equal if and only if they represent the
    same version string.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - The object to which this `Version` is to be compared

    Returns:
    :   `true` if, and only if, the given object is a `Version` that is identical to this `Version`

    See Also:
    :   - [`Object.hashCode()`](Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### equalsIgnoreOptional

    public boolean equalsIgnoreOptional([Object](Object.md "class in java.lang") obj)

    Determines whether this `Version` is equal to another
    disregarding optional build information.

    Two `Version`s are equal if and only if they represent the
    same version string disregarding the optional build information.

    Parameters:
    :   `obj` - The object to which this `Version` is to be compared

    Returns:
    :   `true` if, and only if, the given object is a `Version` that is identical to this `Version`
        ignoring the optional build information
  + ### hashCode

    public int hashCode()

    Returns the hash code of this version.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   The hashcode of this version

    See Also:
    :   - [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))