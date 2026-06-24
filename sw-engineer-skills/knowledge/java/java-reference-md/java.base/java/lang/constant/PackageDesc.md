Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Interface PackageDesc

---

public sealed interface PackageDesc

A nominal descriptor for a `Package` constant.

To create a [`PackageDesc`](PackageDesc.md "interface in java.lang.constant") for a package,
use the [`of(String)`](#of(java.lang.String)) or [`ofInternalName(String)`](#ofInternalName(java.lang.String)) method.

Since:
:   21

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object o)`

  Compare the specified object with this descriptor for equality.

  `String`

  `internalName()`

  Returns the fully qualified (slash-separated) package name in internal form
  of this [`PackageDesc`](PackageDesc.md "interface in java.lang.constant").

  `default String`

  `name()`

  Returns the fully qualified (dot-separated) package name
  of this [`PackageDesc`](PackageDesc.md "interface in java.lang.constant").

  `static PackageDesc`

  `of(String name)`

  Returns a [`PackageDesc`](PackageDesc.md "interface in java.lang.constant") for a package,
  given the name of the package, such as `"java.lang"`.

  `static PackageDesc`

  `ofInternalName(String name)`

  Returns a [`PackageDesc`](PackageDesc.md "interface in java.lang.constant") for a package,
  given the name of the package in internal form,
  such as `"java/lang"`.

* ## Method Details

  + ### of

    static [PackageDesc](PackageDesc.md "interface in java.lang.constant") of([String](../String.md "class in java.lang") name)

    Returns a [`PackageDesc`](PackageDesc.md "interface in java.lang.constant") for a package,
    given the name of the package, such as `"java.lang"`.

    Parameters:
    :   `name` - the fully qualified (dot-separated) package name

    Returns:
    :   a [`PackageDesc`](PackageDesc.md "interface in java.lang.constant") describing the desired package

    Throws:
    :   `NullPointerException` - if the argument is `null`
    :   `IllegalArgumentException` - if the name string is not in the
        correct format

    See Also:
    :   - [`ofInternalName(String)`](#ofInternalName(java.lang.String))
  + ### ofInternalName

    static [PackageDesc](PackageDesc.md "interface in java.lang.constant") ofInternalName([String](../String.md "class in java.lang") name)

    Returns a [`PackageDesc`](PackageDesc.md "interface in java.lang.constant") for a package,
    given the name of the package in internal form,
    such as `"java/lang"`.

    Parameters:
    :   `name` - the fully qualified package name, in internal
        (slash-separated) form

    Returns:
    :   a [`PackageDesc`](PackageDesc.md "interface in java.lang.constant") describing the desired package

    Throws:
    :   `NullPointerException` - if the argument is `null`
    :   `IllegalArgumentException` - if the name string is not in the
        correct format

    See Also:
    :   - [`of(String)`](#of(java.lang.String))
  + ### internalName

    [String](../String.md "class in java.lang") internalName()

    Returns the fully qualified (slash-separated) package name in internal form
    of this [`PackageDesc`](PackageDesc.md "interface in java.lang.constant").

    Returns:
    :   the package name in internal form, or the empty string for the
        unnamed package

    See Also:
    :   - [`name()`](#name())
  + ### name

    default [String](../String.md "class in java.lang") name()

    Returns the fully qualified (dot-separated) package name
    of this [`PackageDesc`](PackageDesc.md "interface in java.lang.constant").

    Returns:
    :   the package name, or the empty string for the
        unnamed package

    See Also:
    :   - [`internalName()`](#internalName())
  + ### equals

    boolean equals([Object](../Object.md "class in java.lang") o)

    Compare the specified object with this descriptor for equality.
    Returns `true` if and only if the specified object is
    also a [`PackageDesc`](PackageDesc.md "interface in java.lang.constant") and both describe the same package.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the other object

    Returns:
    :   whether this descriptor is equal to the other object

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")