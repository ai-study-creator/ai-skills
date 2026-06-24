Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class FileDescriptor

[java.lang.Object](../lang/Object.md "class in java.lang")

java.io.FileDescriptor

---

public final class FileDescriptor
extends [Object](../lang/Object.md "class in java.lang")

Instances of the file descriptor class serve as an opaque handle
to the underlying machine-specific structure representing an open
file, an open socket, or another source or sink of bytes.
The main practical use for a file descriptor is to create a
[`FileInputStream`](FileInputStream.md "class in java.io") or [`FileOutputStream`](FileOutputStream.md "class in java.io") to contain it.

Applications should not create their own file descriptors.

Since:
:   1.0

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final FileDescriptor`

  `err`

  A handle to the standard error stream.

  `static final FileDescriptor`

  `in`

  A handle to the standard input stream.

  `static final FileDescriptor`

  `out`

  A handle to the standard output stream.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileDescriptor()`

  Constructs an (invalid) FileDescriptor object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `sync()`

  Force all system buffers to synchronize with the underlying
  device.

  `boolean`

  `valid()`

  Tests if this file descriptor object is valid.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### in

    public static final [FileDescriptor](FileDescriptor.md "class in java.io") in

    A handle to the standard input stream. Usually, this file
    descriptor is not used directly, but rather via the input stream
    known as `System.in`.

    See Also:
    :   - [`System.in`](../lang/System.md#in)
  + ### out

    public static final [FileDescriptor](FileDescriptor.md "class in java.io") out

    A handle to the standard output stream. Usually, this file
    descriptor is not used directly, but rather via the output stream
    known as `System.out`.

    See Also:
    :   - [`System.out`](../lang/System.md#out)
  + ### err

    public static final [FileDescriptor](FileDescriptor.md "class in java.io") err

    A handle to the standard error stream. Usually, this file
    descriptor is not used directly, but rather via the output stream
    known as `System.err`.

    See Also:
    :   - [`System.err`](../lang/System.md#err)
* ## Constructor Details

  + ### FileDescriptor

    public FileDescriptor()

    Constructs an (invalid) FileDescriptor object.
    The fd or handle is set later.
* ## Method Details

  + ### valid

    public boolean valid()

    Tests if this file descriptor object is valid.

    Returns:
    :   `true` if the file descriptor object represents a
        valid, open file, socket, or other active I/O connection;
        `false` otherwise.
  + ### sync

    public void sync()
    throws [SyncFailedException](SyncFailedException.md "class in java.io")

    Force all system buffers to synchronize with the underlying
    device. This method returns after all modified data and
    attributes of this FileDescriptor have been written to the
    relevant device(s). In particular, if this FileDescriptor
    refers to a physical storage medium, such as a file in a file
    system, sync will not return until all in-memory modified copies
    of buffers associated with this FileDescriptor have been
    written to the physical medium.
    sync is meant to be used by code that requires physical
    storage (such as a file) to be in a known state For
    example, a class that provided a simple transaction facility
    might use sync to ensure that all changes to a file caused
    by a given transaction were recorded on a storage medium.
    sync only affects buffers downstream of this FileDescriptor. If
    any in-memory buffering is being done by the application (for
    example, by a BufferedOutputStream object), those buffers must
    be flushed into the FileDescriptor (for example, by invoking
    OutputStream.flush) before that data will be affected by sync.

    Throws:
    :   `SyncFailedException` - Thrown when the buffers cannot be flushed,
        or because the system cannot guarantee that all the
        buffers have been synchronized with physical media.

    Since:
    :   1.1