Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Interface StandardJavaFileManager.PathFactory

Enclosing interface:
:   `StandardJavaFileManager`

---

public static interface StandardJavaFileManager.PathFactory

Factory to create `Path` objects from strings.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Path`

  `getPath(String first,
  String... more)`

  Converts a path string, or a sequence of strings that when joined form a path string, to a Path.

* ## Method Details

  + ### getPath

    [Path](../../../java.base/java/nio/file/Path.md "interface in java.nio.file") getPath([String](../../../java.base/java/lang/String.md "class in java.lang") first,
    [String](../../../java.base/java/lang/String.md "class in java.lang")... more)

    Converts a path string, or a sequence of strings that when joined form a path string, to a Path.

    Parameters:
    :   `first` - the path string or initial part of the path string
    :   `more` - additional strings to be joined to form the path string

    Returns:
    :   the resulting `Path`