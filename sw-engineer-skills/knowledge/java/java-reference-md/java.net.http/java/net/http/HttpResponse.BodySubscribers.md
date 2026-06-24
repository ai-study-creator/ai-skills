Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Class HttpResponse.BodySubscribers

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.net.http.HttpResponse.BodySubscribers

Enclosing interface:
:   `HttpResponse<T>`

---

public static class HttpResponse.BodySubscribers
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Implementations of [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http") that implement
various useful subscribers, such as converting the response body bytes
into a String, or streaming the bytes to a file.

The following are examples of using the predefined body subscribers
to convert a flow of response body data into common high-level Java
objects:

Copy![Copy snippet](../../../../copy.svg)

```
// Streams the response body to a File
HttpResponse<Path> response = client
  .send(request, responseInfo -> BodySubscribers.ofFile(Paths.get("example.html"));
```

Copy![Copy snippet](../../../../copy.svg)

```
// Accumulates the response body and returns it as a byte[]
HttpResponse<byte[]> response = client
  .send(request, responseInfo -> BodySubscribers.ofByteArray());
```

Copy![Copy snippet](../../../../copy.svg)

```
// Discards the response body
HttpResponse<Void> response = client
  .send(request, responseInfo -> BodySubscribers.discarding());
```

Copy![Copy snippet](../../../../copy.svg)

```
// Accumulates the response body as a String then maps it to its bytes
HttpResponse<byte[]> response = client
  .send(request, responseInfo ->
     BodySubscribers.mapping(BodySubscribers.ofString(UTF_8), String::getBytes));
```

Since:
:   11

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static <T> HttpResponse.BodySubscriber<T>`

  `buffering(HttpResponse.BodySubscriber<T> downstream,
  int bufferSize)`

  Returns a `BodySubscriber` which buffers data before delivering
  it to the given downstream subscriber.

  `static HttpResponse.BodySubscriber<Void>`

  `discarding()`

  Returns a response subscriber which discards the response body.

  `static HttpResponse.BodySubscriber<Void>`

  `fromLineSubscriber(Flow.Subscriber<? super String> subscriber)`

  Returns a body subscriber that forwards all response body to the
  given `Flow.Subscriber`, line by line.

  `static <S extends Flow.Subscriber<? super String>,
  T>  
  HttpResponse.BodySubscriber<T>`

  `fromLineSubscriber(S subscriber,
  Function<? super S,? extends T> finisher,
  Charset charset,
  String lineSeparator)`

  Returns a body subscriber that forwards all response body to the
  given `Flow.Subscriber`, line by line.

  `static HttpResponse.BodySubscriber<Void>`

  `fromSubscriber(Flow.Subscriber<? super List<ByteBuffer>> subscriber)`

  Returns a body subscriber that forwards all response body to the
  given `Flow.Subscriber`.

  `static <S extends Flow.Subscriber<? super List<ByteBuffer>>,
  T>  
  HttpResponse.BodySubscriber<T>`

  `fromSubscriber(S subscriber,
  Function<? super S,? extends T> finisher)`

  Returns a body subscriber that forwards all response body to the
  given `Flow.Subscriber`.

  `static <T,
  U> HttpResponse.BodySubscriber<U>`

  `mapping(HttpResponse.BodySubscriber<T> upstream,
  Function<? super T,? extends U> mapper)`

  Returns a `BodySubscriber` whose response body value is that of
  the result of applying the given function to the body object of the
  given `upstream` `BodySubscriber`.

  `static HttpResponse.BodySubscriber<byte[]>`

  `ofByteArray()`

  Returns a `BodySubscriber` which stores the response body as a
  byte array.

  `static HttpResponse.BodySubscriber<Void>`

  `ofByteArrayConsumer(Consumer<Optional<byte[]>> consumer)`

  Returns a `BodySubscriber` which provides the incoming body
  data to the provided Consumer of `Optional<byte[]>`.

  `static HttpResponse.BodySubscriber<Path>`

  `ofFile(Path file)`

  Returns a `BodySubscriber` which stores the response body in a
  file opened with the given name.

  `static HttpResponse.BodySubscriber<Path>`

  `ofFile(Path file,
  OpenOption... openOptions)`

  Returns a `BodySubscriber` which stores the response body in a
  file opened with the given options and name.

  `static HttpResponse.BodySubscriber<InputStream>`

  `ofInputStream()`

  Returns a `BodySubscriber` which streams the response body as
  an [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io").

  `static HttpResponse.BodySubscriber<Stream<String>>`

  `ofLines(Charset charset)`

  Returns a `BodySubscriber` which streams the response body as
  a [`Stream`](../../../../java.base/java/util/stream/Stream.md "interface in java.util.stream")`<String>`, where each string in the stream
  corresponds to a line as defined by [`BufferedReader.lines()`](../../../../java.base/java/io/BufferedReader.md#lines()).

  `static HttpResponse.BodySubscriber<Flow.Publisher<List<ByteBuffer>>>`

  `ofPublisher()`

  Returns a response subscriber which publishes the response body
  through a `Publisher<List<ByteBuffer>>`.

  `static HttpResponse.BodySubscriber<String>`

  `ofString(Charset charset)`

  Returns a body subscriber which stores the response body as a `String` converted using the given `Charset`.

  `static <U> HttpResponse.BodySubscriber<U>`

  `replacing(U value)`

  Returns a response subscriber which discards the response body.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### fromSubscriber

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[Void](../../../../java.base/java/lang/Void.md "class in java.lang")> fromSubscriber([Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<? super [List](../../../../java.base/java/util/List.md "interface in java.util")<[ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")>> subscriber)

    Returns a body subscriber that forwards all response body to the
    given `Flow.Subscriber`. The [completion stage](HttpResponse.BodySubscriber.md#getBody()) of the returned body subscriber completes after one
    of the given subscribers `onComplete` or `onError` has
    been invoked.

    Parameters:
    :   `subscriber` - the subscriber

    Returns:
    :   a body subscriber
  + ### fromSubscriber

    public static <S extends [Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<? super [List](../../../../java.base/java/util/List.md "interface in java.util")<[ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")>>,
    T>
    [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<T> fromSubscriber(S subscriber,
    [Function](../../../../java.base/java/util/function/Function.md "interface in java.util.function")<? super S,? extends T> finisher)

    Returns a body subscriber that forwards all response body to the
    given `Flow.Subscriber`. The [completion stage](HttpResponse.BodySubscriber.md#getBody()) of the returned body subscriber completes after one
    of the given subscribers `onComplete` or `onError` has
    been invoked.

    The given `finisher` function is applied after the given
    subscriber's `onComplete` has been invoked. The `finisher`
    function is invoked with the given subscriber, and returns a value
    that is set as the response's body.

    Type Parameters:
    :   `S` - the type of the Subscriber
    :   `T` - the type of the response body

    Parameters:
    :   `subscriber` - the subscriber
    :   `finisher` - a function to be applied after the subscriber has
        completed

    Returns:
    :   a body subscriber
  + ### fromLineSubscriber

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[Void](../../../../java.base/java/lang/Void.md "class in java.lang")> fromLineSubscriber([Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<? super [String](../../../../java.base/java/lang/String.md "class in java.lang")> subscriber)

    Returns a body subscriber that forwards all response body to the
    given `Flow.Subscriber`, line by line.
    The [completion
    stage](HttpResponse.BodySubscriber.md#getBody()) of the returned body subscriber completes after one of the
    given subscribers `onComplete` or `onError` has been
    invoked.
    Bytes are decoded using the [`UTF-8`](../../../../java.base/java/nio/charset/StandardCharsets.md#UTF_8) charset, and lines are delimited in the manner of
    [`BufferedReader.readLine()`](../../../../java.base/java/io/BufferedReader.md#readLine()).

    Parameters:
    :   `subscriber` - the subscriber

    Returns:
    :   a body subscriber
  + ### fromLineSubscriber

    public static <S extends [Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<? super [String](../../../../java.base/java/lang/String.md "class in java.lang")>,
    T>
    [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<T> fromLineSubscriber(S subscriber,
    [Function](../../../../java.base/java/util/function/Function.md "interface in java.util.function")<? super S,? extends T> finisher,
    [Charset](../../../../java.base/java/nio/charset/Charset.md "class in java.nio.charset") charset,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") lineSeparator)

    Returns a body subscriber that forwards all response body to the
    given `Flow.Subscriber`, line by line. The [completion stage](HttpResponse.BodySubscriber.md#getBody()) of the returned body
    subscriber completes after one of the given subscribers
    `onComplete` or `onError` has been invoked.

    The given `finisher` function is applied after the given
    subscriber's `onComplete` has been invoked. The `finisher`
    function is invoked with the given subscriber, and returns a value
    that is set as the response's body.

    Type Parameters:
    :   `S` - the type of the Subscriber
    :   `T` - the type of the response body

    Parameters:
    :   `subscriber` - the subscriber
    :   `finisher` - a function to be applied after the subscriber has
        completed
    :   `charset` - a [`Charset`](../../../../java.base/java/nio/charset/Charset.md "class in java.nio.charset") to decode the bytes
    :   `lineSeparator` - an optional line separator: can be `null`,
        in which case lines will be delimited in the manner of
        [`BufferedReader.readLine()`](../../../../java.base/java/io/BufferedReader.md#readLine()).

    Returns:
    :   a body subscriber

    Throws:
    :   `IllegalArgumentException` - if the supplied `lineSeparator`
        is the empty string
  + ### ofString

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> ofString([Charset](../../../../java.base/java/nio/charset/Charset.md "class in java.nio.charset") charset)

    Returns a body subscriber which stores the response body as a `String` converted using the given `Charset`.

    The [`HttpResponse`](HttpResponse.md "interface in java.net.http") using this subscriber is available after
    the entire response has been read.

    Parameters:
    :   `charset` - the character set to convert the String with

    Returns:
    :   a body subscriber
  + ### ofByteArray

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<byte[]> ofByteArray()

    Returns a `BodySubscriber` which stores the response body as a
    byte array.

    The [`HttpResponse`](HttpResponse.md "interface in java.net.http") using this subscriber is available after
    the entire response has been read.

    Returns:
    :   a body subscriber
  + ### ofFile

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file")> ofFile([Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file") file,
    [OpenOption](../../../../java.base/java/nio/file/OpenOption.md "interface in java.nio.file")... openOptions)

    Returns a `BodySubscriber` which stores the response body in a
    file opened with the given options and name. The file will be opened
    with the given options using [`FileChannel.open`](../../../../java.base/java/nio/channels/FileChannel.md#open(java.nio.file.Path,java.nio.file.OpenOption...)) just before the body is read. Any exception thrown
    will be returned or thrown from [`HttpClient::send`](HttpClient.md#send(java.net.http.HttpRequest,java.net.http.HttpResponse.BodyHandler)) or [`HttpClient::sendAsync`](HttpClient.md#sendAsync(java.net.http.HttpRequest,java.net.http.HttpResponse.BodyHandler)) as appropriate.

    The [`HttpResponse`](HttpResponse.md "interface in java.net.http") using this subscriber is available after
    the entire response has been read.

    In the case of the default file system provider, security manager
    permission checks are performed in this factory method, when the
    `BodySubscriber` is created. Otherwise,
    [permission checks](../../../../java.base/java/nio/channels/FileChannel.md#open(java.nio.file.Path,java.nio.file.OpenOption...))
    may be performed asynchronously against the caller's context
    at file access time.
    Care must be taken that the `BodySubscriber` is not shared with
    untrusted code.

    Parameters:
    :   `file` - the file to store the body in
    :   `openOptions` - the list of options to open the file with

    Returns:
    :   a body subscriber

    Throws:
    :   `IllegalArgumentException` - if an invalid set of open options
        are specified
    :   `SecurityException` - in the case of the default file system
        provider, and a security manager is installed,
        [`checkWrite`](../../../../java.base/java/lang/SecurityManager.md#checkWrite(java.lang.String))
        is invoked to check write access to the given file
  + ### ofFile

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file")> ofFile([Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file") file)

    Returns a `BodySubscriber` which stores the response body in a
    file opened with the given name.

    Equivalent to: `ofFile(file, CREATE, WRITE)`

    In the case of the default file system provider, security manager
    permission checks are performed in this factory method, when the
    `BodySubscriber` is created. Otherwise,
    [permission checks](../../../../java.base/java/nio/channels/FileChannel.md#open(java.nio.file.Path,java.nio.file.OpenOption...))
    may be performed asynchronously against the caller's context
    at file access time.
    Care must be taken that the `BodySubscriber` is not shared with
    untrusted code.

    Parameters:
    :   `file` - the file to store the body in

    Returns:
    :   a body subscriber

    Throws:
    :   `SecurityException` - in the case of the default file system
        provider, and a security manager is installed,
        [`checkWrite`](../../../../java.base/java/lang/SecurityManager.md#checkWrite(java.lang.String))
        is invoked to check write access to the given file
  + ### ofByteArrayConsumer

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[Void](../../../../java.base/java/lang/Void.md "class in java.lang")> ofByteArrayConsumer([Consumer](../../../../java.base/java/util/function/Consumer.md "interface in java.util.function")<[Optional](../../../../java.base/java/util/Optional.md "class in java.util")<byte[]>> consumer)

    Returns a `BodySubscriber` which provides the incoming body
    data to the provided Consumer of `Optional<byte[]>`. Each
    call to [`Consumer.accept()`](../../../../java.base/java/util/function/Consumer.md#accept(T))
    will contain a non empty `Optional`, except for the final
    invocation after all body data has been read, when the `Optional` will be empty.

    The [`HttpResponse`](HttpResponse.md "interface in java.net.http") using this subscriber is available after
    the entire response has been read.

    Parameters:
    :   `consumer` - a Consumer of byte arrays

    Returns:
    :   a BodySubscriber
  + ### ofInputStream

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[InputStream](../../../../java.base/java/io/InputStream.md "class in java.io")> ofInputStream()

    Returns a `BodySubscriber` which streams the response body as
    an [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io").

    The [`HttpResponse`](HttpResponse.md "interface in java.net.http") using this subscriber is available
    immediately after the response headers have been read, without
    requiring to wait for the entire body to be processed. The response
    body can then be read directly from the [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io").

    Returns:
    :   a body subscriber that streams the response body as an
        [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io").
  + ### ofLines

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[Stream](../../../../java.base/java/util/stream/Stream.md "interface in java.util.stream")<[String](../../../../java.base/java/lang/String.md "class in java.lang")>> ofLines([Charset](../../../../java.base/java/nio/charset/Charset.md "class in java.nio.charset") charset)

    Returns a `BodySubscriber` which streams the response body as
    a [`Stream`](../../../../java.base/java/util/stream/Stream.md "interface in java.util.stream")`<String>`, where each string in the stream
    corresponds to a line as defined by [`BufferedReader.lines()`](../../../../java.base/java/io/BufferedReader.md#lines()).

    The [`HttpResponse`](HttpResponse.md "interface in java.net.http") using this subscriber is available
    immediately after the response headers have been read, without
    requiring to wait for the entire body to be processed. The response
    body can then be read directly from the [`Stream`](../../../../java.base/java/util/stream/Stream.md "interface in java.util.stream").

    Parameters:
    :   `charset` - the character set to use when converting bytes to characters

    Returns:
    :   a body subscriber that streams the response body as a
        [`Stream`](../../../../java.base/java/util/stream/Stream.md "interface in java.util.stream")`<String>`.

    See Also:
    :   - [`BufferedReader.lines()`](../../../../java.base/java/io/BufferedReader.md#lines())
  + ### ofPublisher

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[Flow.Publisher](../../../../java.base/java/util/concurrent/Flow.Publisher.md "interface in java.util.concurrent")<[List](../../../../java.base/java/util/List.md "interface in java.util")<[ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")>>> ofPublisher()

    Returns a response subscriber which publishes the response body
    through a `Publisher<List<ByteBuffer>>`.

    The [`HttpResponse`](HttpResponse.md "interface in java.net.http") using this subscriber is available
    immediately after the response headers have been read, without
    requiring to wait for the entire body to be processed. The response
    body bytes can then be obtained by subscribing to the publisher
    returned by the `HttpResponse` [`body`](HttpResponse.md#body())
    method.

    The publisher returned by the [`body`](HttpResponse.md#body())
    method can be subscribed to only once. The first subscriber will
    receive the body response bytes if successfully subscribed, or will
    cause the subscription to be cancelled otherwise.
    If more subscriptions are attempted, the subsequent subscribers will
    be immediately subscribed with an empty subscription and their
    [`onError`](../../../../java.base/java/util/concurrent/Flow.Subscriber.md#onError(java.lang.Throwable)) method
    will be invoked with an `IllegalStateException`.

    Returns:
    :   A `BodySubscriber` which publishes the response body
        through a `Publisher<List<ByteBuffer>>`.
  + ### replacing

    public static <U> [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<U> replacing(U value)

    Returns a response subscriber which discards the response body. The
    supplied value is the value that will be returned from
    [`HttpResponse.body()`](HttpResponse.md#body()).

    Type Parameters:
    :   `U` - the type of the response body

    Parameters:
    :   `value` - the value to return from HttpResponse.body(), may be `null`

    Returns:
    :   a `BodySubscriber`
  + ### discarding

    public static [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[Void](../../../../java.base/java/lang/Void.md "class in java.lang")> discarding()

    Returns a response subscriber which discards the response body.

    Returns:
    :   a response body subscriber
  + ### buffering

    public static <T> [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<T> buffering([HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<T> downstream,
    int bufferSize)

    Returns a `BodySubscriber` which buffers data before delivering
    it to the given downstream subscriber. The subscriber guarantees to
    deliver `bufferSize` bytes of data to each invocation of the
    downstream's [`onNext`](../../../../java.base/java/util/concurrent/Flow.Subscriber.md#onNext(T)) method,
    except for the final invocation, just before
    [`onComplete`](../../../../java.base/java/util/concurrent/Flow.Subscriber.md#onComplete()) is invoked. The final
    invocation of `onNext` may contain fewer than `bufferSize`
    bytes.

    The returned subscriber delegates its [`getBody()`](HttpResponse.BodySubscriber.md#getBody()) method to the downstream subscriber.

    Type Parameters:
    :   `T` - the type of the response body

    Parameters:
    :   `downstream` - the downstream subscriber
    :   `bufferSize` - the buffer size

    Returns:
    :   a buffering body subscriber

    Throws:
    :   `IllegalArgumentException` - if `bufferSize <= 0`
  + ### mapping

    public static <T,
    U> [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<U> mapping([HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<T> upstream,
    [Function](../../../../java.base/java/util/function/Function.md "interface in java.util.function")<? super T,? extends U> mapper)

    Returns a `BodySubscriber` whose response body value is that of
    the result of applying the given function to the body object of the
    given `upstream` `BodySubscriber`.

    The mapping function is executed using the client's [executor](HttpClient.md#executor()), and can therefore be used to map any
    response body type, including blocking [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io").
    However, performing any blocking operation in the mapper function
    runs the risk of blocking the executor's thread for an unknown
    amount of time (at least until the blocking operation finishes),
    which may end up starving the executor of available threads.
    Therefore, in the case where mapping to the desired type might
    block (e.g. by reading on the `InputStream`), then mapping
    to a [`Supplier`](../../../../java.base/java/util/function/Supplier.md "interface in java.util.function") of the desired
    type and deferring the blocking operation until [`Supplier::get`](../../../../java.base/java/util/function/Supplier.md#get()) is invoked by the caller's thread should be preferred,
    as shown in the following example which uses a well-known JSON parser to
    convert an `InputStream` into any annotated Java type.

    For example:

    Copy![Copy snippet](../../../../copy.svg)

    ```
     public static <W> BodySubscriber<Supplier<W>> asJSON(Class<W> targetType) {
       BodySubscriber<InputStream> upstream = BodySubscribers.ofInputStream();

       BodySubscriber<Supplier<W>> downstream = BodySubscribers.mapping(
             upstream,
             (InputStream is) -> () -> {
                 try (InputStream stream = is) {
                     ObjectMapper objectMapper = new ObjectMapper();
                     return objectMapper.readValue(stream, targetType);
                 } catch (IOException e) {
                     throw new UncheckedIOException(e);
                 }
             });
      return downstream;
    }
    ```

    Type Parameters:
    :   `T` - the upstream body type
    :   `U` - the type of the body subscriber returned

    Parameters:
    :   `upstream` - the body subscriber to be mapped
    :   `mapper` - the mapping function

    Returns:
    :   a mapping body subscriber