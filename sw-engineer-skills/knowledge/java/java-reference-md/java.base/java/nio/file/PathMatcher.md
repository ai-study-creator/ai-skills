Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Interface PathMatcher

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface PathMatcher

An interface that is implemented by objects that perform match operations on
paths.

Since:
:   1.7

See Also:
:   * [`FileSystem.getPathMatcher(java.lang.String)`](FileSystem.md#getPathMatcher(java.lang.String))
    * [`Files.newDirectoryStream(Path,String)`](Files.md#newDirectoryStream(java.nio.file.Path,java.lang.String))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `matches(Path path)`

  Tells if given path matches this matcher's pattern.

* ## Method Details

  + ### matches

    boolean matches([Path](Path.md "interface in java.nio.file") path)

    Tells if given path matches this matcher's pattern.

    Parameters:
    :   `path` - the path to match

    Returns:
    :   `true` if, and only if, the path matches this
        matcher's pattern