Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Interface URLStreamHandlerFactory

All Known Implementing Classes:
:   `URLStreamHandlerProvider`

---

public interface URLStreamHandlerFactory

This interface defines a factory for `URL` stream
protocol handlers.

A URL stream handler factory is used as specified in the
[URL constructor](URL.md#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String)).

Since:
:   1.0

See Also:
:   * [`URL`](URL.md "class in java.net")
    * [`URLStreamHandler`](URLStreamHandler.md "class in java.net")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `URLStreamHandler`

  `createURLStreamHandler(String protocol)`

  Creates a new `URLStreamHandler` instance with the specified
  protocol.

* ## Method Details

  + ### createURLStreamHandler

    [URLStreamHandler](URLStreamHandler.md "class in java.net") createURLStreamHandler([String](../lang/String.md "class in java.lang") protocol)

    Creates a new `URLStreamHandler` instance with the specified
    protocol.

    Parameters:
    :   `protocol` - the protocol ("`ftp`",
        "`http`", "`nntp`", etc.).

    Returns:
    :   a `URLStreamHandler` for the specific protocol, or `null` if this factory cannot create a handler for the specific
        protocol

    See Also:
    :   - [`URLStreamHandler`](URLStreamHandler.md "class in java.net")