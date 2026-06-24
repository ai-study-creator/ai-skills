Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Interface HttpRequest.BodyPublisher

All Superinterfaces:
:   `Flow.Publisher<ByteBuffer>`

Enclosing class:
:   `HttpRequest`

---

public static interface HttpRequest.BodyPublisher
extends [Flow.Publisher](../../../../java.base/java/util/concurrent/Flow.Publisher.md "interface in java.util.concurrent")<[ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")>

A `BodyPublisher` converts high-level Java objects into a flow of
byte buffers suitable for sending as a request body. The class
[`BodyPublishers`](HttpRequest.BodyPublishers.md "class in java.net.http") provides implementations of many
common publishers.

The `BodyPublisher` interface extends [`Flow.Publisher<ByteBuffer>`](../../../../java.base/java/util/concurrent/Flow.Publisher.md "interface in java.util.concurrent"), which means that a `BodyPublisher`
acts as a publisher of [byte buffers](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio").

When sending a request that contains a body, the HTTP Client
subscribes to the request's `BodyPublisher` in order to receive the
flow of outgoing request body data. The normal semantics of [`Flow.Subscriber`](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent") and [`Flow.Publisher`](../../../../java.base/java/util/concurrent/Flow.Publisher.md "interface in java.util.concurrent") are implemented by the HTTP
Client and are expected from `BodyPublisher` implementations. Each
outgoing request results in one HTTP Client `Subscriber`
subscribing to the `BodyPublisher` in order to provide the sequence
of byte buffers containing the request body. Instances of `ByteBuffer` published by the publisher must be allocated by the
publisher, and must not be accessed after being published to the HTTP
Client. These subscriptions complete normally when the request body is
fully sent, and can be canceled or terminated early through error. If a
request needs to be resent for any reason, then a new subscription is
created which is expected to generate the same data as before.

A `BodyPublisher` that reports a [content length](#contentLength()) of `0` may not be subscribed to by the HTTP Client,
as it has effectively no data to publish.

Since:
:   11

See Also:
:   * [`HttpRequest.BodyPublishers`](HttpRequest.BodyPublishers.md "class in java.net.http")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `long`

  `contentLength()`

  Returns the content length for this request body.

  ### Methods inherited from interface java.util.concurrent.[Flow.Publisher](../../../../java.base/java/util/concurrent/Flow.Publisher.md "interface in java.util.concurrent")

  `subscribe`

* ## Method Details

  + ### contentLength

    long contentLength()

    Returns the content length for this request body. May be zero
    if no request body being sent, greater than zero for a fixed
    length content, or less than zero for an unknown content length.

    This method may be invoked before the publisher is subscribed to.
    This method may be invoked more than once by the HTTP client
    implementation, and MUST return the same constant value each time.

    Returns:
    :   the content length for this request body, if known