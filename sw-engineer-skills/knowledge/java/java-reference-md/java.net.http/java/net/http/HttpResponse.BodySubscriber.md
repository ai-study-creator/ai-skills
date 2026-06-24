Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Interface HttpResponse.BodySubscriber<T>

Type Parameters:
:   `T` - the response body type

All Superinterfaces:
:   `Flow.Subscriber<List<ByteBuffer>>`

Enclosing interface:
:   `HttpResponse<T>`

---

public static interface HttpResponse.BodySubscriber<T>
extends [Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<[List](../../../../java.base/java/util/List.md "interface in java.util")<[ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")>>

A `BodySubscriber` consumes response body bytes and converts them
into a higher-level Java type. The class [`BodySubscribers`](HttpResponse.BodySubscribers.md "class in java.net.http") provides implementations of many common body subscribers.

The object acts as a [`Flow.Subscriber`](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<[`List`](../../../../java.base/java/util/List.md "interface in java.util")<[`ByteBuffer`](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")>> to the HTTP Client implementation, which publishes
lists of ByteBuffers containing the response body. The Flow of data, as
well as the order of ByteBuffers in the Flow lists, is a strictly ordered
representation of the response body. Both the Lists and the ByteBuffers,
once passed to the subscriber, are no longer used by the HTTP Client. The
subscriber converts the incoming buffers of data to some higher-level
Java type `T`.

The [`getBody()`](#getBody()) method returns a
[`CompletionStage`](../../../../java.base/java/util/concurrent/CompletionStage.md "interface in java.util.concurrent")`<T>` that provides the response body
object. The `CompletionStage` must be obtainable at any time. When
it completes depends on the nature of type `T`. In many cases,
when `T` represents the entire body after being consumed then
the `CompletionStage` completes after the body has been consumed.
If `T` is a streaming type, such as [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io"), then it completes before the body has been read, because
the calling code uses the `InputStream` to consume the data.

Since:
:   11

See Also:
:   * [`HttpResponse.BodySubscribers`](HttpResponse.BodySubscribers.md "class in java.net.http")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `CompletionStage<T>`

  `getBody()`

  Returns a `CompletionStage` which when completed will return
  the response body object.

  ### Methods inherited from interface java.util.concurrent.[Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")

  `onComplete, onError, onNext, onSubscribe`

* ## Method Details

  + ### getBody

    [CompletionStage](../../../../java.base/java/util/concurrent/CompletionStage.md "interface in java.util.concurrent")<[T](HttpResponse.BodySubscriber.md "type parameter in HttpResponse.BodySubscriber")> getBody()

    Returns a `CompletionStage` which when completed will return
    the response body object. This method can be called at any time
    relative to the other [`Flow.Subscriber`](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent") methods and is invoked
    using the client's [`executor`](HttpClient.md#executor()).

    Returns:
    :   a CompletionStage for the response body