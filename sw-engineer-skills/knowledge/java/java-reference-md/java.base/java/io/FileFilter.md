Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Interface FileFilter

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface FileFilter

A filter for abstract pathnames.

Instances of this interface may be passed to the
[`listFiles(FileFilter)`](File.md#listFiles(java.io.FileFilter)) method
of the [`File`](File.md "class in java.io") class.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `accept(File pathname)`

  Tests whether or not the specified abstract pathname should be
  included in a pathname list.

* ## Method Details

  + ### accept

    boolean accept([File](File.md "class in java.io") pathname)

    Tests whether or not the specified abstract pathname should be
    included in a pathname list.

    Parameters:
    :   `pathname` - The abstract pathname to be tested

    Returns:
    :   `true` if and only if `pathname`
        should be included