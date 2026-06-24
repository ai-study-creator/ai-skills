Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Interface WebSocket.Listener

Enclosing interface:
:   `WebSocket`

---

public static interface WebSocket.Listener

The receiving interface of `WebSocket`.

A `WebSocket` invokes methods of the associated listener
passing itself as an argument. These methods are invoked in a thread-safe
manner, such that the next invocation may start only after the previous
one has finished.

When data has been received, the `WebSocket` invokes a receive
method. Methods `onText`, `onBinary`, `onPing` and
`onPong` must return a `CompletionStage` that completes once
the message has been received by the listener. If a listener's method
returns `null` rather than a `CompletionStage`,
`WebSocket` will behave as if the listener returned a
`CompletionStage` that is already completed normally.

An `IOException` raised in `WebSocket` will result in an
invocation of `onError` with that exception (if the input is not
closed). Unless otherwise stated if the listener's method throws an
exception or a `CompletionStage` returned from a method completes
exceptionally, the WebSocket will invoke `onError` with this
exception.

Since:
:   11

* ## Method Summary

  All MethodsInstance MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default CompletionStage<?>`

  `onBinary(WebSocket webSocket,
  ByteBuffer data,
  boolean last)`

  A binary data has been received.

  `default CompletionStage<?>`

  `onClose(WebSocket webSocket,
  int statusCode,
  String reason)`

  Receives a Close message indicating the WebSocket's input has been
  closed.

  `default void`

  `onError(WebSocket webSocket,
  Throwable error)`

  An error has occurred.

  `default void`

  `onOpen(WebSocket webSocket)`

  A `WebSocket` has been connected.

  `default CompletionStage<?>`

  `onPing(WebSocket webSocket,
  ByteBuffer message)`

  A Ping message has been received.

  `default CompletionStage<?>`

  `onPong(WebSocket webSocket,
  ByteBuffer message)`

  A Pong message has been received.

  `default CompletionStage<?>`

  `onText(WebSocket webSocket,
  CharSequence data,
  boolean last)`

  A textual data has been received.

* ## Method Details

  + ### onOpen

    default void onOpen([WebSocket](WebSocket.md "interface in java.net.http") webSocket)

    A `WebSocket` has been connected.

    This is the initial invocation and it is made once. It is
    typically used to make a request for more invocations.

    Parameters:
    :   `webSocket` - the WebSocket that has been connected
  + ### onText

    default [CompletionStage](../../../../java.base/java/util/concurrent/CompletionStage.md "interface in java.util.concurrent")<?> onText([WebSocket](WebSocket.md "interface in java.net.http") webSocket,
    [CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") data,
    boolean last)

    A textual data has been received.

    Return a `CompletionStage` which will be used by the
    `WebSocket` as an indication it may reclaim the
    `CharSequence`. Do not access the `CharSequence` after
    this `CompletionStage` has completed.

    Parameters:
    :   `webSocket` - the WebSocket on which the data has been received
    :   `data` - the data
    :   `last` - whether this invocation completes the message

    Returns:
    :   a `CompletionStage` which completes when the
        `CharSequence` may be reclaimed; or `null` if it may be
        reclaimed immediately
  + ### onBinary

    default [CompletionStage](../../../../java.base/java/util/concurrent/CompletionStage.md "interface in java.util.concurrent")<?> onBinary([WebSocket](WebSocket.md "interface in java.net.http") webSocket,
    [ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio") data,
    boolean last)

    A binary data has been received.

    This data is located in bytes from the buffer's position to its
    limit.

    Return a `CompletionStage` which will be used by the
    `WebSocket` as an indication it may reclaim the
    `ByteBuffer`. Do not access the `ByteBuffer` after
    this `CompletionStage` has completed.

    Parameters:
    :   `webSocket` - the WebSocket on which the data has been received
    :   `data` - the data
    :   `last` - whether this invocation completes the message

    Returns:
    :   a `CompletionStage` which completes when the
        `ByteBuffer` may be reclaimed; or `null` if it may be
        reclaimed immediately
  + ### onPing

    default [CompletionStage](../../../../java.base/java/util/concurrent/CompletionStage.md "interface in java.util.concurrent")<?> onPing([WebSocket](WebSocket.md "interface in java.net.http") webSocket,
    [ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio") message)

    A Ping message has been received.

    As guaranteed by the WebSocket Protocol, the message consists of
    not more than `125` bytes. These bytes are located from the
    buffer's position to its limit.

    Given that the WebSocket implementation will automatically send a
    reciprocal pong when a ping is received, it is rarely required to
    send a pong message explicitly when a ping is received.

    Return a `CompletionStage` which will be used by the
    `WebSocket` as a signal it may reclaim the
    `ByteBuffer`. Do not access the `ByteBuffer` after
    this `CompletionStage` has completed.

    Parameters:
    :   `webSocket` - the WebSocket on which the message has been received
    :   `message` - the message

    Returns:
    :   a `CompletionStage` which completes when the
        `ByteBuffer` may be reclaimed; or `null` if it may be
        reclaimed immediately
  + ### onPong

    default [CompletionStage](../../../../java.base/java/util/concurrent/CompletionStage.md "interface in java.util.concurrent")<?> onPong([WebSocket](WebSocket.md "interface in java.net.http") webSocket,
    [ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio") message)

    A Pong message has been received.

    As guaranteed by the WebSocket Protocol, the message consists of
    not more than `125` bytes. These bytes are located from the
    buffer's position to its limit.

    Return a `CompletionStage` which will be used by the
    `WebSocket` as a signal it may reclaim the
    `ByteBuffer`. Do not access the `ByteBuffer` after
    this `CompletionStage` has completed.

    Parameters:
    :   `webSocket` - the WebSocket on which the message has been received
    :   `message` - the message

    Returns:
    :   a `CompletionStage` which completes when the
        `ByteBuffer` may be reclaimed; or `null` if it may be
        reclaimed immediately
  + ### onClose

    default [CompletionStage](../../../../java.base/java/util/concurrent/CompletionStage.md "interface in java.util.concurrent")<?> onClose([WebSocket](WebSocket.md "interface in java.net.http") webSocket,
    int statusCode,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") reason)

    Receives a Close message indicating the WebSocket's input has been
    closed.

    This is the last invocation from the specified `WebSocket`.
    By the time this invocation begins the WebSocket's input will have
    been closed.

    A Close message consists of a status code and a reason for
    closing. The status code is an integer from the range
    `1000 <= code <= 65535`. The `reason` is a string which
    has a UTF-8 representation not longer than `123` bytes.

    If the WebSocket's output is not already closed, the
    `CompletionStage` returned by this method will be used as an
    indication that the WebSocket's output may be closed. The WebSocket
    will close its output at the earliest of completion of the returned
    `CompletionStage` or invoking either of the `sendClose`
    or `abort` methods.

    Parameters:
    :   `webSocket` - the WebSocket on which the message has been received
    :   `statusCode` - the status code
    :   `reason` - the reason

    Returns:
    :   a `CompletionStage` which completes when the
        `WebSocket` may be closed; or `null` if it may be
        closed immediately
  + ### onError

    default void onError([WebSocket](WebSocket.md "interface in java.net.http") webSocket,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") error)

    An error has occurred.

    This is the last invocation from the specified WebSocket. By the
    time this invocation begins both the WebSocket's input and output
    will have been closed. A WebSocket may invoke this method on the
    associated listener at any time after it has invoked `onOpen`,
    regardless of whether or not any invocations have been requested from
    the WebSocket.

    If an exception is thrown from this method, resulting behavior is
    undefined.

    Parameters:
    :   `webSocket` - the WebSocket on which the error has occurred
    :   `error` - the error