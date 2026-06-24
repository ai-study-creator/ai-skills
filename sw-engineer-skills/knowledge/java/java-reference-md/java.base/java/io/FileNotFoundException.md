Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class FileNotFoundException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

java.io.FileNotFoundException

All Implemented Interfaces:
:   `Serializable`

---

public class FileNotFoundException
extends [IOException](IOException.md "class in java.io")

Signals that an attempt to open the file denoted by a specified pathname
has failed.

This exception will be thrown by the [`FileInputStream`](FileInputStream.md "class in java.io"), [`FileOutputStream`](FileOutputStream.md "class in java.io"), and [`RandomAccessFile`](RandomAccessFile.md "class in java.io") constructors when a file
with the specified pathname does not exist. It will also be thrown by these
constructors if the file does exist but for some reason is inaccessible, for
example when an attempt is made to open a read-only file for writing.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.FileNotFoundException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileNotFoundException()`

  Constructs a `FileNotFoundException` with
  `null` as its error detail message.

  `FileNotFoundException(String s)`

  Constructs a `FileNotFoundException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FileNotFoundException

    public FileNotFoundException()

    Constructs a `FileNotFoundException` with
    `null` as its error detail message.
  + ### FileNotFoundException

    public FileNotFoundException([String](../lang/String.md "class in java.lang") s)

    Constructs a `FileNotFoundException` with the
    specified detail message. The string `s` can be
    retrieved later by the
    [`Throwable.getMessage()`](../lang/Throwable.md#getMessage())
    method of class `java.lang.Throwable`.

    Parameters:
    :   `s` - the detail message.