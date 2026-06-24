Module [java.base](../../../module-summary.md)

Package [java.lang.module](package-summary.md)

# Interface ModuleReader

All Superinterfaces:
:   `AutoCloseable`, `Closeable`

---

public interface ModuleReader
extends [Closeable](../../io/Closeable.md "interface in java.io")

Provides access to the content of a module.

A module reader is intended for cases where access to the resources in a
module is required, regardless of whether the module has been loaded.
A framework that scans a collection of packaged modules on the file system,
for example, may use a module reader to access a specific resource in each
module. A module reader is also intended to be used by `ClassLoader`
implementations that load classes and resources from modules.

A resource in a module is identified by an abstract name that is a
'`/`'-separated path string. For example, module `java.base` may
have a resource "`java/lang/Object.class`" that, by convention, is the
class file for `java.lang.Object`. A module reader may treat
directories in the module content as resources (whether it does or not is
module reader specific). Where the module content contains a directory
that can be located as a resource then its name ends with a slash ('/'). The
directory can also be located with a name that drops the trailing slash.

A `ModuleReader` is [open](ModuleReference.md#open()) upon
creation and is closed by invoking the [`close`](#close()) method. Failure
to close a module reader may result in a resource leak. The `try-with-resources` statement provides a useful construct to ensure that
module readers are closed.

A `ModuleReader` implementation may require permissions to access
resources in the module. Consequently the [`find`](#find(java.lang.String)), [`open`](#open(java.lang.String)), [`read`](#read(java.lang.String)), and [`list`](#list()) methods may throw `SecurityException` if access is denied by the security manager.

Since:
:   9

See Also:
:   * [`ModuleReference`](ModuleReference.md "class in java.lang.module")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes the module reader.

  `Optional<URI>`

  `find(String name)`

  Finds a resource, returning a URI to the resource in the module.

  `Stream<String>`

  `list()`

  Lists the contents of the module, returning a stream of elements that
  are the names of all resources in the module.

  `default Optional<InputStream>`

  `open(String name)`

  Opens a resource, returning an input stream to read the resource in
  the module.

  `default Optional<ByteBuffer>`

  `read(String name)`

  Reads a resource, returning a byte buffer with the contents of the
  resource.

  `default void`

  `release(ByteBuffer bb)`

  Releases a byte buffer.

* ## Method Details

  + ### find

    [Optional](../../util/Optional.md "class in java.util")<[URI](../../net/URI.md "class in java.net")> find([String](../String.md "class in java.lang") name)
    throws [IOException](../../io/IOException.md "class in java.io")

    Finds a resource, returning a URI to the resource in the module.

    If the module reader can determine that the name locates a directory
    then the resulting URI will end with a slash ('/').

    Parameters:
    :   `name` - The name of the resource to open for reading

    Returns:
    :   A URI to the resource; an empty `Optional` if the resource
        is not found or a URI cannot be constructed to locate the
        resource

    Throws:
    :   `IOException` - If an I/O error occurs or the module reader is closed
    :   `SecurityException` - If denied by the security manager

    See Also:
    :   - [`ClassLoader.getResource(String)`](../ClassLoader.md#getResource(java.lang.String))
  + ### open

    default [Optional](../../util/Optional.md "class in java.util")<[InputStream](../../io/InputStream.md "class in java.io")> open([String](../String.md "class in java.lang") name)
    throws [IOException](../../io/IOException.md "class in java.io")

    Opens a resource, returning an input stream to read the resource in
    the module.

    The behavior of the input stream when used after the module reader
    is closed is implementation specific and therefore not specified.

    Parameters:
    :   `name` - The name of the resource to open for reading

    Returns:
    :   An input stream to read the resource or an empty
        `Optional` if not found

    Throws:
    :   `IOException` - If an I/O error occurs or the module reader is closed
    :   `SecurityException` - If denied by the security manager
  + ### read

    default [Optional](../../util/Optional.md "class in java.util")<[ByteBuffer](../../nio/ByteBuffer.md "class in java.nio")> read([String](../String.md "class in java.lang") name)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads a resource, returning a byte buffer with the contents of the
    resource.
    The element at the returned buffer's position is the first byte of the
    resource, the element at the buffer's limit is the last byte of the
    resource. Once consumed, the [`release`](#release(java.nio.ByteBuffer)) method
    must be invoked. Failure to invoke the `release` method may result
    in a resource leak.

    Parameters:
    :   `name` - The name of the resource to read

    Returns:
    :   A byte buffer containing the contents of the resource or an
        empty `Optional` if not found

    Throws:
    :   `IOException` - If an I/O error occurs or the module reader is closed
    :   `SecurityException` - If denied by the security manager
    :   `OutOfMemoryError` - If the resource is larger than `Integer.MAX_VALUE`,
        the maximum capacity of a byte buffer

    See Also:
    :   - [`ClassLoader.defineClass(String, ByteBuffer, java.security.ProtectionDomain)`](../ClassLoader.md#defineClass(java.lang.String,java.nio.ByteBuffer,java.security.ProtectionDomain))
  + ### release

    default void release([ByteBuffer](../../nio/ByteBuffer.md "class in java.nio") bb)

    Releases a byte buffer. This method should be invoked after consuming
    the contents of the buffer returned by the `read` method.
    The behavior of this method when invoked to release a buffer that has
    already been released, or the behavior when invoked to release a buffer
    after a `ModuleReader` is closed is implementation specific and
    therefore not specified.

    Parameters:
    :   `bb` - The byte buffer to release
  + ### list

    [Stream](../../util/stream/Stream.md "interface in java.util.stream")<[String](../String.md "class in java.lang")> list()
    throws [IOException](../../io/IOException.md "class in java.io")

    Lists the contents of the module, returning a stream of elements that
    are the names of all resources in the module. Whether the stream of
    elements includes names corresponding to directories in the module is
    module reader specific.

    In lazy implementations then an `IOException` may be thrown
    when using the stream to list the module contents. If this occurs then
    the `IOException` will be wrapped in an [`UncheckedIOException`](../../io/UncheckedIOException.md "class in java.io") and thrown from the method that caused the
    access to be attempted. `SecurityException` may also be thrown
    when using the stream to list the module contents and access is denied
    by the security manager.

    The returned stream may contain references to one or more open directories
    in the module. The directories are closed by closing the stream.

    The behavior of the stream when used after the module reader is
    closed is implementation specific and therefore not specified.

    Returns:
    :   A stream of elements that are the names of all resources
        in the module

    Throws:
    :   `IOException` - If an I/O error occurs or the module reader is closed
    :   `SecurityException` - If denied by the security manager
  + ### close

    void close()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes the module reader. Once closed then subsequent calls to locate or
    read a resource will fail by throwing `IOException`.

    A module reader is not required to be asynchronously closeable. If a
    thread is reading a resource and another thread invokes the close method,
    then the second thread may block until the read operation is complete.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Throws:
    :   `IOException` - if an I/O error occurs