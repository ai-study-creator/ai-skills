Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Class SimpleFileVisitor<T>

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.file.SimpleFileVisitor<T>

Type Parameters:
:   `T` - The type of reference to the files

All Implemented Interfaces:
:   `FileVisitor<T>`

---

public class SimpleFileVisitor<T>
extends [Object](../../lang/Object.md "class in java.lang")
implements [FileVisitor](FileVisitor.md "interface in java.nio.file")<T>

A simple visitor of files with default behavior to visit all files and to
re-throw I/O errors.

Methods in this class may be overridden subject to their general contract.

Since:
:   1.7

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SimpleFileVisitor()`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `FileVisitResult`

  `postVisitDirectory(T dir,
  IOException exc)`

  Invoked for a directory after entries in the directory, and all of their
  descendants, have been visited.

  `FileVisitResult`

  `preVisitDirectory(T dir,
  BasicFileAttributes attrs)`

  Invoked for a directory before entries in the directory are visited.

  `FileVisitResult`

  `visitFile(T file,
  BasicFileAttributes attrs)`

  Invoked for a file in a directory.

  `FileVisitResult`

  `visitFileFailed(T file,
  IOException exc)`

  Invoked for a file that could not be visited.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleFileVisitor

    protected SimpleFileVisitor()

    Initializes a new instance of this class.
* ## Method Details

  + ### preVisitDirectory

    public [FileVisitResult](FileVisitResult.md "enum class in java.nio.file") preVisitDirectory([T](SimpleFileVisitor.md "type parameter in SimpleFileVisitor") dir,
    [BasicFileAttributes](attribute/BasicFileAttributes.md "interface in java.nio.file.attribute") attrs)
    throws [IOException](../../io/IOException.md "class in java.io")

    Invoked for a directory before entries in the directory are visited.

    Unless overridden, this method returns [`CONTINUE`](FileVisitResult.md#CONTINUE).

    Specified by:
    :   `preVisitDirectory` in interface `FileVisitor<T>`

    Parameters:
    :   `dir` - a reference to the directory
    :   `attrs` - the directory's basic attributes

    Returns:
    :   the visit result

    Throws:
    :   `IOException` - if an I/O error occurs
  + ### visitFile

    public [FileVisitResult](FileVisitResult.md "enum class in java.nio.file") visitFile([T](SimpleFileVisitor.md "type parameter in SimpleFileVisitor") file,
    [BasicFileAttributes](attribute/BasicFileAttributes.md "interface in java.nio.file.attribute") attrs)
    throws [IOException](../../io/IOException.md "class in java.io")

    Invoked for a file in a directory.

    Unless overridden, this method returns [`CONTINUE`](FileVisitResult.md#CONTINUE).

    Specified by:
    :   `visitFile` in interface `FileVisitor<T>`

    Parameters:
    :   `file` - a reference to the file
    :   `attrs` - the file's basic attributes

    Returns:
    :   the visit result

    Throws:
    :   `IOException` - if an I/O error occurs
  + ### visitFileFailed

    public [FileVisitResult](FileVisitResult.md "enum class in java.nio.file") visitFileFailed([T](SimpleFileVisitor.md "type parameter in SimpleFileVisitor") file,
    [IOException](../../io/IOException.md "class in java.io") exc)
    throws [IOException](../../io/IOException.md "class in java.io")

    Invoked for a file that could not be visited.

    Unless overridden, this method re-throws the I/O exception that prevented
    the file from being visited.

    Specified by:
    :   `visitFileFailed` in interface `FileVisitor<T>`

    Parameters:
    :   `file` - a reference to the file
    :   `exc` - the I/O exception that prevented the file from being visited

    Returns:
    :   the visit result

    Throws:
    :   `IOException` - if an I/O error occurs
  + ### postVisitDirectory

    public [FileVisitResult](FileVisitResult.md "enum class in java.nio.file") postVisitDirectory([T](SimpleFileVisitor.md "type parameter in SimpleFileVisitor") dir,
    [IOException](../../io/IOException.md "class in java.io") exc)
    throws [IOException](../../io/IOException.md "class in java.io")

    Invoked for a directory after entries in the directory, and all of their
    descendants, have been visited.

    Unless overridden, this method returns [`CONTINUE`](FileVisitResult.md#CONTINUE) if the directory iteration completes without an I/O exception;
    otherwise this method re-throws the I/O exception that caused the iteration
    of the directory to terminate prematurely.

    Specified by:
    :   `postVisitDirectory` in interface `FileVisitor<T>`

    Parameters:
    :   `dir` - a reference to the directory
    :   `exc` - `null` if the iteration of the directory completes without
        an error; otherwise the I/O exception that caused the iteration
        of the directory to complete prematurely

    Returns:
    :   the visit result

    Throws:
    :   `IOException` - if an I/O error occurs