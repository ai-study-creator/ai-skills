Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class Paths

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.file.Paths

---

public final class Paths
extends [Object](../../lang/Object.md "class in java.lang")

This class consists exclusively of static methods that return a [`Path`](Path.md "interface in java.nio.file")
by converting a path string or [`URI`](../../net/URI.md "class in java.net").

Since:
:   1.7

See Also:
:   * [`Path`](Path.md "interface in java.nio.file")

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Path`

  `get(String first,
  String... more)`

  Converts a path string, or a sequence of strings that when joined form
  a path string, to a `Path`.

  `static Path`

  `get(URI uri)`

  Converts the given URI to a [`Path`](Path.md "interface in java.nio.file") object.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### get

    public static [Path](Path.md "interface in java.nio.file") get([String](../../lang/String.md "class in java.lang") first,
    [String](../../lang/String.md "class in java.lang")... more)

    Converts a path string, or a sequence of strings that when joined form
    a path string, to a `Path`.

    Parameters:
    :   `first` - the path string or initial part of the path string
    :   `more` - additional strings to be joined to form the path string

    Returns:
    :   the resulting `Path`

    Throws:
    :   `InvalidPathException` - if the path string cannot be converted to a `Path`

    See Also:
    :   - [`FileSystem.getPath(java.lang.String, java.lang.String...)`](FileSystem.md#getPath(java.lang.String,java.lang.String...))
        - [`Path.of(String,String...)`](Path.md#of(java.lang.String,java.lang.String...))
  + ### get

    public static [Path](Path.md "interface in java.nio.file") get([URI](../../net/URI.md "class in java.net") uri)

    Converts the given URI to a [`Path`](Path.md "interface in java.nio.file") object.

    Parameters:
    :   `uri` - the URI to convert

    Returns:
    :   the resulting `Path`

    Throws:
    :   `IllegalArgumentException` - if preconditions on the `uri` parameter do not hold. The
        format of the URI is provider specific.
    :   `FileSystemNotFoundException` - The file system, identified by the URI, does not exist and
        cannot be created automatically, or the provider identified by
        the URI's scheme component is not installed
    :   `SecurityException` - if a security manager is installed and it denies an unspecified
        permission to access the file system

    See Also:
    :   - [`Path.of(URI)`](Path.md#of(java.net.URI))