Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Interface SocketOption<T>

Type Parameters:
:   `T` - The type of the socket option value.

---

public interface SocketOption<T>

A socket option associated with a socket.

In the [`channels`](../nio/channels/package-summary.md) package, the [`NetworkChannel`](../nio/channels/NetworkChannel.md "interface in java.nio.channels") interface defines the [`setOption`](../nio/channels/NetworkChannel.md#setOption(java.net.SocketOption,T))
and [`getOption`](../nio/channels/NetworkChannel.md#getOption(java.net.SocketOption))
methods to set and query the channel's socket options.

Since:
:   1.7

See Also:
:   * [`StandardSocketOptions`](StandardSocketOptions.md "class in java.net")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `name()`

  Returns the name of the socket option.

  `Class<T>`

  `type()`

  Returns the type of the socket option value.

* ## Method Details

  + ### name

    [String](../lang/String.md "class in java.lang") name()

    Returns the name of the socket option.

    Returns:
    :   the name of the socket option
  + ### type

    [Class](../lang/Class.md "class in java.lang")<[T](SocketOption.md "type parameter in SocketOption")> type()

    Returns the type of the socket option value.

    Returns:
    :   the type of the socket option value