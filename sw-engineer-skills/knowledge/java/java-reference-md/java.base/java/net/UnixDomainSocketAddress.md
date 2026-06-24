Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class UnixDomainSocketAddress

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.net.SocketAddress](SocketAddress.md "class in java.net")

java.net.UnixDomainSocketAddress

All Implemented Interfaces:
:   `Serializable`

---

public final class UnixDomainSocketAddress
extends [SocketAddress](SocketAddress.md "class in java.net")

A Unix domain socket address.
A Unix domain socket address encapsulates a file-system path that Unix domain sockets
bind or connect to.

An *unnamed* `UnixDomainSocketAddress` has
an empty path. The local address of a [`SocketChannel`](../nio/channels/SocketChannel.md "class in java.nio.channels") to a Unix domain socket
that is *automatically* or *implicitly* bound will be unnamed.

[`Path`](../nio/file/Path.md "interface in java.nio.file") objects used to create instances of this class must be obtained
from the [system-default](../nio/file/FileSystems.md#getDefault()) file system.

Since:
:   16

See Also:
:   * [`SocketChannel`](../nio/channels/SocketChannel.md "class in java.nio.channels")
    * [`ServerSocketChannel`](../nio/channels/ServerSocketChannel.md "class in java.nio.channels")
    * [Serialized Form](../../../serialized-form.md#java.net.UnixDomainSocketAddress)

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object o)`

  Compares this address with another object.

  `Path`

  `getPath()`

  Returns this address's path.

  `int`

  `hashCode()`

  Returns the hash code of this `UnixDomainSocketAddress`

  `static UnixDomainSocketAddress`

  `of(String pathname)`

  Creates a UnixDomainSocketAddress from the given path string.

  `static UnixDomainSocketAddress`

  `of(Path path)`

  Creates a UnixDomainSocketAddress for the given path.

  `String`

  `toString()`

  Returns a string representation of this `UnixDomainSocketAddress`.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### of

    public static [UnixDomainSocketAddress](UnixDomainSocketAddress.md "class in java.net") of([String](../lang/String.md "class in java.lang") pathname)

    Creates a UnixDomainSocketAddress from the given path string.

    Parameters:
    :   `pathname` - The path string, which can be empty

    Returns:
    :   A UnixDomainSocketAddress

    Throws:
    :   `InvalidPathException` - If the path cannot be converted to a Path
    :   `NullPointerException` - if pathname is `null`
  + ### of

    public static [UnixDomainSocketAddress](UnixDomainSocketAddress.md "class in java.net") of([Path](../nio/file/Path.md "interface in java.nio.file") path)

    Creates a UnixDomainSocketAddress for the given path.

    Parameters:
    :   `path` - The path to the socket, which can be empty

    Returns:
    :   A UnixDomainSocketAddress

    Throws:
    :   `IllegalArgumentException` - If the path is not associated with the default file system
    :   `NullPointerException` - if path is `null`
  + ### getPath

    public [Path](../nio/file/Path.md "interface in java.nio.file") getPath()

    Returns this address's path.

    Returns:
    :   this address's path
  + ### hashCode

    public int hashCode()

    Returns the hash code of this `UnixDomainSocketAddress`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") o)

    Compares this address with another object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the reference object with which to compare.

    Returns:
    :   true if the path fields are equal

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a string representation of this `UnixDomainSocketAddress`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   this address's path which may be empty for an unnamed address