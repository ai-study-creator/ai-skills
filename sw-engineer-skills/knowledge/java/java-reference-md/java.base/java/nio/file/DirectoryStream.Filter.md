Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Interface DirectoryStream.Filter<T>

Type Parameters:
:   `T` - the type of the directory entry

Enclosing interface:
:   `DirectoryStream<T>`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public static interface DirectoryStream.Filter<T>

An interface that is implemented by objects that decide if a directory
entry should be accepted or filtered. A `Filter` is passed as the
parameter to the [`Files.newDirectoryStream(Path,DirectoryStream.Filter)`](Files.md#newDirectoryStream(java.nio.file.Path,java.nio.file.DirectoryStream.Filter))
method when opening a directory to iterate over the entries in the
directory.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `accept(T entry)`

  Decides if the given directory entry should be accepted or filtered.

* ## Method Details

  + ### accept

    boolean accept([T](DirectoryStream.Filter.md "type parameter in DirectoryStream.Filter") entry)
    throws [IOException](../../io/IOException.md "class in java.io")

    Decides if the given directory entry should be accepted or filtered.

    Parameters:
    :   `entry` - the directory entry to be tested

    Returns:
    :   `true` if the directory entry should be accepted

    Throws:
    :   `IOException` - If an I/O error occurs