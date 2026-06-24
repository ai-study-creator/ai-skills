Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ProcessBuilder.Redirect

[java.lang.Object](Object.md "class in java.lang")

java.lang.ProcessBuilder.Redirect

Enclosing class:
:   `ProcessBuilder`

---

public abstract static class ProcessBuilder.Redirect
extends [Object](Object.md "class in java.lang")

Represents a source of subprocess input or a destination of
subprocess output.
Each `Redirect` instance is one of the following:

* the special value [`Redirect.PIPE`](#PIPE)* the special value [`Redirect.INHERIT`](#INHERIT)* the special value [`Redirect.DISCARD`](#DISCARD)* a redirection to read from a file, created by an invocation of
        [`Redirect.from(File)`](#from(java.io.File))* a redirection to write to a file, created by an invocation of
          [`Redirect.to(File)`](#to(java.io.File))* a redirection to append to a file, created by an invocation of
            [`Redirect.appendTo(File)`](#appendTo(java.io.File))

Each of the above categories has an associated unique
[`Type`](ProcessBuilder.Redirect.Type.md "enum class in java.lang").

Since:
:   1.7

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `ProcessBuilder.Redirect.Type`

  The type of a [`ProcessBuilder.Redirect`](ProcessBuilder.Redirect.md "class in java.lang").
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ProcessBuilder.Redirect`

  `DISCARD`

  Indicates that subprocess output will be discarded.

  `static final ProcessBuilder.Redirect`

  `INHERIT`

  Indicates that subprocess I/O source or destination will be the
  same as those of the current process.

  `static final ProcessBuilder.Redirect`

  `PIPE`

  Indicates that subprocess I/O will be connected to the
  current Java process over a pipe.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ProcessBuilder.Redirect`

  `appendTo(File file)`

  Returns a redirect to append to the specified file.

  `boolean`

  `equals(Object obj)`

  Compares the specified object with this `Redirect` for
  equality.

  `File`

  `file()`

  Returns the [`File`](../io/File.md "class in java.io") source or destination associated
  with this redirect, or `null` if there is no such file.

  `static ProcessBuilder.Redirect`

  `from(File file)`

  Returns a redirect to read from the specified file.

  `int`

  `hashCode()`

  Returns a hash code value for this `Redirect`.

  `static ProcessBuilder.Redirect`

  `to(File file)`

  Returns a redirect to write to the specified file.

  `abstract ProcessBuilder.Redirect.Type`

  `type()`

  Returns the type of this `Redirect`.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### PIPE

    public static final [ProcessBuilder.Redirect](ProcessBuilder.Redirect.md "class in java.lang") PIPE

    Indicates that subprocess I/O will be connected to the
    current Java process over a pipe.
    This is the default handling of subprocess standard I/O.

    It will always be true that

    ```
     Redirect.PIPE.file() == null &&
     Redirect.PIPE.type() == Redirect.Type.PIPE
    ```
  + ### INHERIT

    public static final [ProcessBuilder.Redirect](ProcessBuilder.Redirect.md "class in java.lang") INHERIT

    Indicates that subprocess I/O source or destination will be the
    same as those of the current process. This is the normal
    behavior of most operating system command interpreters (shells).

    It will always be true that

    ```
     Redirect.INHERIT.file() == null &&
     Redirect.INHERIT.type() == Redirect.Type.INHERIT
    ```
  + ### DISCARD

    public static final [ProcessBuilder.Redirect](ProcessBuilder.Redirect.md "class in java.lang") DISCARD

    Indicates that subprocess output will be discarded.
    A typical implementation discards the output by writing to
    an operating system specific "null file".

    It will always be true that

    ```
     Redirect.DISCARD.file() is the filename appropriate for the operating system
     and may be null &&
     Redirect.DISCARD.type() == Redirect.Type.WRITE
    ```

    Since:
    :   9
* ## Method Details

  + ### type

    public abstract [ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang") type()

    Returns the type of this `Redirect`.

    Returns:
    :   the type of this `Redirect`
  + ### file

    public [File](../io/File.md "class in java.io") file()

    Returns the [`File`](../io/File.md "class in java.io") source or destination associated
    with this redirect, or `null` if there is no such file.

    Returns:
    :   the file associated with this redirect,
        or `null` if there is no such file
  + ### from

    public static [ProcessBuilder.Redirect](ProcessBuilder.Redirect.md "class in java.lang") from([File](../io/File.md "class in java.io") file)

    Returns a redirect to read from the specified file.

    It will always be true that

    ```
     Redirect.from(file).file() == file &&
     Redirect.from(file).type() == Redirect.Type.READ
    ```

    Parameters:
    :   `file` - The `File` for the `Redirect`.

    Returns:
    :   a redirect to read from the specified file
  + ### to

    public static [ProcessBuilder.Redirect](ProcessBuilder.Redirect.md "class in java.lang") to([File](../io/File.md "class in java.io") file)

    Returns a redirect to write to the specified file.
    If the specified file exists when the subprocess is started,
    its previous contents will be discarded.

    It will always be true that

    ```
     Redirect.to(file).file() == file &&
     Redirect.to(file).type() == Redirect.Type.WRITE
    ```

    Parameters:
    :   `file` - The `File` for the `Redirect`.

    Returns:
    :   a redirect to write to the specified file
  + ### appendTo

    public static [ProcessBuilder.Redirect](ProcessBuilder.Redirect.md "class in java.lang") appendTo([File](../io/File.md "class in java.io") file)

    Returns a redirect to append to the specified file.
    Each write operation first advances the position to the
    end of the file and then writes the requested data.
    Whether the advancement of the position and the writing
    of the data are done in a single atomic operation is
    system-dependent and therefore unspecified.

    It will always be true that

    ```
     Redirect.appendTo(file).file() == file &&
     Redirect.appendTo(file).type() == Redirect.Type.APPEND
    ```

    Parameters:
    :   `file` - The `File` for the `Redirect`.

    Returns:
    :   a redirect to append to the specified file
  + ### equals

    public boolean equals([Object](Object.md "class in java.lang") obj)

    Compares the specified object with this `Redirect` for
    equality. Returns `true` if and only if the two
    objects are identical or both objects are `Redirect`
    instances of the same type associated with non-null equal
    `File` instances.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this `Redirect`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this `Redirect`

    See Also:
    :   - [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))