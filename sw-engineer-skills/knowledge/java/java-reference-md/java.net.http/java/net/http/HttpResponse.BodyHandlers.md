Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Class HttpResponse.BodyHandlers

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.net.http.HttpResponse.BodyHandlers

Enclosing interface:
:   `HttpResponse<T>`

---

public static class HttpResponse.BodyHandlers
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Implementations of [`BodyHandler`](HttpResponse.BodyHandler.md "interface in java.net.http") that implement various
useful handlers, such as handling the response body as a String, or
streaming the response body to a file.

These implementations do not examine the status code, meaning the
body is always accepted. They typically return an equivalently named
`BodySubscriber`. Alternatively, a custom handler can be used to
examine the status code and headers, and return a different body
subscriber, of the same type, as appropriate.

The following are examples of using the predefined body handlers to
convert a flow of response body data into common high-level Java objects:

Copy![Copy snippet](../../../../copy.svg)

```
// Receives the response body as a String
HttpResponse<String> response = client
  .send(request, BodyHandlers.ofString());
```

Copy![Copy snippet](../../../../copy.svg)

```
// Receives the response body as a file
HttpResponse<Path> response = client
  .send(request, BodyHandlers.ofFile(Paths.get("example.html")));
```

Copy![Copy snippet](../../../../copy.svg)

```
// Receives the response body as an InputStream
HttpResponse<InputStream> response = client
  .send(request, BodyHandlers.ofInputStream());
```

Copy![Copy snippet](../../../../copy.svg)

```
// Discards the response body
HttpResponse<Void> response = client
  .send(request, BodyHandlers.discarding());
```

Since:
:   11

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static <T> HttpResponse.BodyHandler<T>`

  `buffering(HttpResponse.BodyHandler<T> downstreamHandler,
  int bufferSize)`

  Returns a `BodyHandler` which, when invoked, returns a [buffering BodySubscriber](HttpResponse.BodySubscribers.md#buffering(java.net.http.HttpResponse.BodySubscriber,int))
  that buffers data before delivering it to the downstream subscriber.

  `static HttpResponse.BodyHandler<Void>`

  `discarding()`

  Returns a response body handler that discards the response body.

  `static HttpResponse.BodyHandler<Void>`

  `fromLineSubscriber(Flow.Subscriber<? super String> subscriber)`

  Returns a response body handler that returns a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Void>` obtained from [`BodySubscribers.fromLineSubscriber(subscriber, s -> null, charset, null)`](HttpResponse.BodySubscribers.md#fromLineSubscriber(S,java.util.function.Function,java.nio.charset.Charset,java.lang.String)),
  with the given `subscriber`.

  `static <S extends Flow.Subscriber<? super String>,
  T>  
  HttpResponse.BodyHandler<T>`

  `fromLineSubscriber(S subscriber,
  Function<? super S,? extends T> finisher,
  String lineSeparator)`

  Returns a response body handler that returns a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<T>` obtained from [`BodySubscribers.fromLineSubscriber(subscriber, finisher, charset, lineSeparator)`](HttpResponse.BodySubscribers.md#fromLineSubscriber(S,java.util.function.Function,java.nio.charset.Charset,java.lang.String)),
  with the given `subscriber`, `finisher` function, and line separator.

  `static HttpResponse.BodyHandler<Void>`

  `fromSubscriber(Flow.Subscriber<? super List<ByteBuffer>> subscriber)`

  Returns a response body handler that returns a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Void>` obtained from [`HttpResponse.BodySubscribers.fromSubscriber(Subscriber)`](HttpResponse.BodySubscribers.md#fromSubscriber(java.util.concurrent.Flow.Subscriber)), with the given
  `subscriber`.

  `static <S extends Flow.Subscriber<? super List<ByteBuffer>>,
  T>  
  HttpResponse.BodyHandler<T>`

  `fromSubscriber(S subscriber,
  Function<? super S,? extends T> finisher)`

  Returns a response body handler that returns a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<T>` obtained from [`HttpResponse.BodySubscribers.fromSubscriber(Subscriber, Function)`](HttpResponse.BodySubscribers.md#fromSubscriber(S,java.util.function.Function)), with the
  given `subscriber` and `finisher` function.

  `static HttpResponse.BodyHandler<byte[]>`

  `ofByteArray()`

  Returns a `BodyHandler<byte[]>` that returns a
  [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<byte[]>` obtained
  from [`BodySubscribers.ofByteArray()`](HttpResponse.BodySubscribers.md#ofByteArray()).

  `static HttpResponse.BodyHandler<Void>`

  `ofByteArrayConsumer(Consumer<Optional<byte[]>> consumer)`

  Returns a `BodyHandler<Void>` that returns a
  [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Void>` obtained from
  [`BodySubscribers.ofByteArrayConsumer(Consumer)`](HttpResponse.BodySubscribers.md#ofByteArrayConsumer(java.util.function.Consumer)).

  `static HttpResponse.BodyHandler<Path>`

  `ofFile(Path file)`

  Returns a `BodyHandler<Path>` that returns a
  [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Path>`.

  `static HttpResponse.BodyHandler<Path>`

  `ofFile(Path file,
  OpenOption... openOptions)`

  Returns a `BodyHandler<Path>` that returns a
  [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Path>` obtained from
  [`BodySubscribers.ofFile(Path,OpenOption...)`](HttpResponse.BodySubscribers.md#ofFile(java.nio.file.Path,java.nio.file.OpenOption...)).

  `static HttpResponse.BodyHandler<Path>`

  `ofFileDownload(Path directory,
  OpenOption... openOptions)`

  Returns a `BodyHandler<Path>` that returns a
  [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")<[`Path`](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file")>
  where the download directory is specified, but the filename is
  obtained from the `Content-Disposition` response header.

  `static HttpResponse.BodyHandler<InputStream>`

  `ofInputStream()`

  Returns a `BodyHandler<InputStream>` that returns a
  [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<InputStream>` obtained from
  [`BodySubscribers.ofInputStream`](HttpResponse.BodySubscribers.md#ofInputStream()).

  `static HttpResponse.BodyHandler<Stream<String>>`

  `ofLines()`

  Returns a `BodyHandler<Stream<String>>` that returns a
  [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Stream<String>>` obtained
  from [`BodySubscribers.ofLines(charset)`](HttpResponse.BodySubscribers.md#ofLines(java.nio.charset.Charset)).

  `static HttpResponse.BodyHandler<Flow.Publisher<List<ByteBuffer>>>`

  `ofPublisher()`

  Returns a `BodyHandler<Publisher<List<ByteBuffer>>>` that creates a
  [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Publisher<List<ByteBuffer>>>`
  obtained from [`BodySubscribers.ofPublisher()`](HttpResponse.BodySubscribers.md#ofPublisher()).

  `static HttpResponse.BodyHandler<String>`

  `ofString()`

  Returns a `BodyHandler<String>` that returns a
  [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<String>` obtained from
  [`BodySubscribers.ofString(Charset)`](HttpResponse.BodySubscribers.md#ofString(java.nio.charset.Charset)).

  `static HttpResponse.BodyHandler<String>`

  `ofString(Charset charset)`

  Returns a `BodyHandler<String>` that returns a
  [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<String>` obtained from
  [`BodySubscribers.ofString(Charset)`](HttpResponse.BodySubscribers.md#ofString(java.nio.charset.Charset)).

  `static <U> HttpResponse.BodyHandler<U>`

  `replacing(U value)`

  Returns a response body handler that returns the given replacement
  value, after discarding the response body.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### fromSubscriber

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[Void](../../../../java.base/java/lang/Void.md "class in java.lang")> fromSubscriber([Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<? super [List](../../../../java.base/java/util/List.md "interface in java.util")<[ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")>> subscriber)

    Returns a response body handler that returns a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Void>` obtained from [`HttpResponse.BodySubscribers.fromSubscriber(Subscriber)`](HttpResponse.BodySubscribers.md#fromSubscriber(java.util.concurrent.Flow.Subscriber)), with the given
    `subscriber`.

    The response body is not available through this, or the `HttpResponse` API, but instead all response body is forwarded to the
    given `subscriber`, which should make it available, if
    appropriate, through some other mechanism, e.g. an entry in a
    database, etc.

    Parameters:
    :   `subscriber` - the subscriber

    Returns:
    :   a response body handler
  + ### fromSubscriber

    public static <S extends [Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<? super [List](../../../../java.base/java/util/List.md "interface in java.util")<[ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")>>,
    T>
    [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<T> fromSubscriber(S subscriber,
    [Function](../../../../java.base/java/util/function/Function.md "interface in java.util.function")<? super S,? extends T> finisher)

    Returns a response body handler that returns a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<T>` obtained from [`HttpResponse.BodySubscribers.fromSubscriber(Subscriber, Function)`](HttpResponse.BodySubscribers.md#fromSubscriber(S,java.util.function.Function)), with the
    given `subscriber` and `finisher` function.

    The given `finisher` function is applied after the given
    subscriber's `onComplete` has been invoked. The `finisher`
    function is invoked with the given subscriber, and returns a value
    that is set as the response's body.

    Type Parameters:
    :   `S` - the type of the Subscriber
    :   `T` - the type of the response body

    Parameters:
    :   `subscriber` - the subscriber
    :   `finisher` - a function to be applied after the subscriber has completed

    Returns:
    :   a response body handler
  + ### fromLineSubscriber

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[Void](../../../../java.base/java/lang/Void.md "class in java.lang")> fromLineSubscriber([Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<? super [String](../../../../java.base/java/lang/String.md "class in java.lang")> subscriber)

    Returns a response body handler that returns a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Void>` obtained from [`BodySubscribers.fromLineSubscriber(subscriber, s -> null, charset, null)`](HttpResponse.BodySubscribers.md#fromLineSubscriber(S,java.util.function.Function,java.nio.charset.Charset,java.lang.String)),
    with the given `subscriber`.
    The [`charset`](../../../../java.base/java/nio/charset/Charset.md "class in java.nio.charset") used to decode the response body bytes is
    obtained from the HTTP response headers as specified by [`ofString()`](#ofString()),
    and lines are delimited in the manner of [`BufferedReader.readLine()`](../../../../java.base/java/io/BufferedReader.md#readLine()).

    The response body is not available through this, or the `HttpResponse` API, but instead all response body is forwarded to the
    given `subscriber`, which should make it available, if
    appropriate, through some other mechanism, e.g. an entry in a
    database, etc.

    Parameters:
    :   `subscriber` - the subscriber

    Returns:
    :   a response body handler
  + ### fromLineSubscriber

    public static <S extends [Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<? super [String](../../../../java.base/java/lang/String.md "class in java.lang")>,
    T>
    [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<T> fromLineSubscriber(S subscriber,
    [Function](../../../../java.base/java/util/function/Function.md "interface in java.util.function")<? super S,? extends T> finisher,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") lineSeparator)

    Returns a response body handler that returns a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<T>` obtained from [`BodySubscribers.fromLineSubscriber(subscriber, finisher, charset, lineSeparator)`](HttpResponse.BodySubscribers.md#fromLineSubscriber(S,java.util.function.Function,java.nio.charset.Charset,java.lang.String)),
    with the given `subscriber`, `finisher` function, and line separator.
    The [`charset`](../../../../java.base/java/nio/charset/Charset.md "class in java.nio.charset") used to decode the response body bytes is
    obtained from the HTTP response headers as specified by [`ofString()`](#ofString()).

    The given `finisher` function is applied after the given
    subscriber's `onComplete` has been invoked. The `finisher`
    function is invoked with the given subscriber, and returns a value
    that is set as the response's body.

    Type Parameters:
    :   `S` - the type of the Subscriber
    :   `T` - the type of the response body

    Parameters:
    :   `subscriber` - the subscriber
    :   `finisher` - a function to be applied after the subscriber has completed
    :   `lineSeparator` - an optional line separator: can be `null`,
        in which case lines will be delimited in the manner of
        [`BufferedReader.readLine()`](../../../../java.base/java/io/BufferedReader.md#readLine()).

    Returns:
    :   a response body handler

    Throws:
    :   `IllegalArgumentException` - if the supplied `lineSeparator`
        is the empty string
  + ### discarding

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[Void](../../../../java.base/java/lang/Void.md "class in java.lang")> discarding()

    Returns a response body handler that discards the response body.

    Returns:
    :   a response body handler
  + ### replacing

    public static <U> [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<U> replacing(U value)

    Returns a response body handler that returns the given replacement
    value, after discarding the response body.

    Type Parameters:
    :   `U` - the response body type

    Parameters:
    :   `value` - the value of U to return as the body, may be `null`

    Returns:
    :   a response body handler
  + ### ofString

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> ofString([Charset](../../../../java.base/java/nio/charset/Charset.md "class in java.nio.charset") charset)

    Returns a `BodyHandler<String>` that returns a
    [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<String>` obtained from
    [`BodySubscribers.ofString(Charset)`](HttpResponse.BodySubscribers.md#ofString(java.nio.charset.Charset)).
    The body is decoded using the given character set.

    Parameters:
    :   `charset` - the character set to convert the body with

    Returns:
    :   a response body handler
  + ### ofFile

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file")> ofFile([Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file") file,
    [OpenOption](../../../../java.base/java/nio/file/OpenOption.md "interface in java.nio.file")... openOptions)

    Returns a `BodyHandler<Path>` that returns a
    [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Path>` obtained from
    [`BodySubscribers.ofFile(Path,OpenOption...)`](HttpResponse.BodySubscribers.md#ofFile(java.nio.file.Path,java.nio.file.OpenOption...)).

    When the `HttpResponse` object is returned, the body has
    been completely written to the file, and [`HttpResponse.body()`](HttpResponse.md#body()) returns a
    reference to its [`Path`](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file").

    In the case of the default file system provider, security manager
    permission checks are performed in this factory method, when the
    `BodyHandler` is created. Otherwise,
    [permission checks](../../../../java.base/java/nio/channels/FileChannel.md#open(java.nio.file.Path,java.nio.file.OpenOption...))
    may be performed asynchronously against the caller's context
    at file access time.
    Care must be taken that the `BodyHandler` is not shared with
    untrusted code.

    Parameters:
    :   `file` - the file to store the body in
    :   `openOptions` - any options to use when opening/creating the file

    Returns:
    :   a response body handler

    Throws:
    :   `IllegalArgumentException` - if an invalid set of open options
        are specified
    :   `SecurityException` - in the case of the default file system
        provider, and a security manager is installed,
        [`checkWrite`](../../../../java.base/java/lang/SecurityManager.md#checkWrite(java.lang.String))
        is invoked to check write access to the given file
  + ### ofFile

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file")> ofFile([Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file") file)

    Returns a `BodyHandler<Path>` that returns a
    [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Path>`.

    Equivalent to: `ofFile(file, CREATE, WRITE)`

    In the case of the default file system provider, security manager
    permission checks are performed in this factory method, when the
    `BodyHandler` is created. Otherwise,
    [permission checks](../../../../java.base/java/nio/channels/FileChannel.md#open(java.nio.file.Path,java.nio.file.OpenOption...))
    may be performed asynchronously against the caller's context
    at file access time.
    Care must be taken that the `BodyHandler` is not shared with
    untrusted code.

    Parameters:
    :   `file` - the file to store the body in

    Returns:
    :   a response body handler

    Throws:
    :   `SecurityException` - in the case of the default file system
        provider, and a security manager is installed,
        [`checkWrite`](../../../../java.base/java/lang/SecurityManager.md#checkWrite(java.lang.String))
        is invoked to check write access to the given file
  + ### ofFileDownload

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file")> ofFileDownload([Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file") directory,
    [OpenOption](../../../../java.base/java/nio/file/OpenOption.md "interface in java.nio.file")... openOptions)

    Returns a `BodyHandler<Path>` that returns a
    [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")<[`Path`](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file")>
    where the download directory is specified, but the filename is
    obtained from the `Content-Disposition` response header. The
    `Content-Disposition` header must specify the *attachment*
    type and must also contain a *filename* parameter. If the
    filename specifies multiple path components only the final component
    is used as the filename (with the given directory name).

    When the `HttpResponse` object is returned, the body has
    been completely written to the file and [`HttpResponse.body()`](HttpResponse.md#body()) returns a
    `Path` object for the file. The returned `Path` is the
    combination of the supplied directory name and the file name supplied
    by the server. If the destination directory does not exist or cannot
    be written to, then the response will fail with an [`IOException`](../../../../java.base/java/io/IOException.md "class in java.io").

    Security manager permission checks are performed in this factory
    method, when the `BodyHandler` is created. Care must be taken
    that the `BodyHandler` is not shared with untrusted code.

    Parameters:
    :   `directory` - the directory to store the file in
    :   `openOptions` - open options used when opening the file

    Returns:
    :   a response body handler

    Throws:
    :   `IllegalArgumentException` - if the given path does not exist,
        is not of the default file system, is not a directory,
        is not writable, or if an invalid set of open options
        are specified
    :   `SecurityException` - in the case of the default file system
        provider and a security manager has been installed,
        and it denies
        [read access](../../../../java.base/java/lang/SecurityManager.md#checkRead(java.lang.String))
        to the directory, or it denies
        [write access](../../../../java.base/java/lang/SecurityManager.md#checkWrite(java.lang.String))
        to the directory, or it denies
        [write access](../../../../java.base/java/lang/SecurityManager.md#checkWrite(java.lang.String))
        to the files within the directory.
  + ### ofInputStream

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[InputStream](../../../../java.base/java/io/InputStream.md "class in java.io")> ofInputStream()

    Returns a `BodyHandler<InputStream>` that returns a
    [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<InputStream>` obtained from
    [`BodySubscribers.ofInputStream`](HttpResponse.BodySubscribers.md#ofInputStream()).

    When the `HttpResponse` object is returned, the response
    headers will have been completely read, but the body may not have
    been fully received yet. The [`HttpResponse.body()`](HttpResponse.md#body()) method returns an
    [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io") from which the body can be read as it is received.

    Returns:
    :   a response body handler
  + ### ofLines

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[Stream](../../../../java.base/java/util/stream/Stream.md "interface in java.util.stream")<[String](../../../../java.base/java/lang/String.md "class in java.lang")>> ofLines()

    Returns a `BodyHandler<Stream<String>>` that returns a
    [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Stream<String>>` obtained
    from [`BodySubscribers.ofLines(charset)`](HttpResponse.BodySubscribers.md#ofLines(java.nio.charset.Charset)).
    The [`charset`](../../../../java.base/java/nio/charset/Charset.md "class in java.nio.charset") used to decode the response body bytes is
    obtained from the HTTP response headers as specified by [`ofString()`](#ofString()),
    and lines are delimited in the manner of [`BufferedReader.readLine()`](../../../../java.base/java/io/BufferedReader.md#readLine()).

    When the `HttpResponse` object is returned, the body may
    not have been completely received.

    Returns:
    :   a response body handler
  + ### ofByteArrayConsumer

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[Void](../../../../java.base/java/lang/Void.md "class in java.lang")> ofByteArrayConsumer([Consumer](../../../../java.base/java/util/function/Consumer.md "interface in java.util.function")<[Optional](../../../../java.base/java/util/Optional.md "class in java.util")<byte[]>> consumer)

    Returns a `BodyHandler<Void>` that returns a
    [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Void>` obtained from
    [`BodySubscribers.ofByteArrayConsumer(Consumer)`](HttpResponse.BodySubscribers.md#ofByteArrayConsumer(java.util.function.Consumer)).

    When the `HttpResponse` object is returned, the body has
    been completely written to the consumer.

    Parameters:
    :   `consumer` - a Consumer to accept the response body

    Returns:
    :   a response body handler
  + ### ofByteArray

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<byte[]> ofByteArray()

    Returns a `BodyHandler<byte[]>` that returns a
    [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<byte[]>` obtained
    from [`BodySubscribers.ofByteArray()`](HttpResponse.BodySubscribers.md#ofByteArray()).

    When the `HttpResponse` object is returned, the body has
    been completely written to the byte array.

    Returns:
    :   a response body handler
  + ### ofString

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> ofString()

    Returns a `BodyHandler<String>` that returns a
    [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<String>` obtained from
    [`BodySubscribers.ofString(Charset)`](HttpResponse.BodySubscribers.md#ofString(java.nio.charset.Charset)).
    The body is decoded using the character set specified in
    the `Content-Type` response header. If there is no such
    header, or the character set is not supported, then
    [`UTF_8`](../../../../java.base/java/nio/charset/StandardCharsets.md#UTF_8) is used.

    When the `HttpResponse` object is returned, the body has
    been completely written to the string.

    Returns:
    :   a response body handler
  + ### ofPublisher

    public static [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<[Flow.Publisher](../../../../java.base/java/util/concurrent/Flow.Publisher.md "interface in java.util.concurrent")<[List](../../../../java.base/java/util/List.md "interface in java.util")<[ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")>>> ofPublisher()

    Returns a `BodyHandler<Publisher<List<ByteBuffer>>>` that creates a
    [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http")`<Publisher<List<ByteBuffer>>>`
    obtained from [`BodySubscribers.ofPublisher()`](HttpResponse.BodySubscribers.md#ofPublisher()).

    When the `HttpResponse` object is returned, the response
    headers will have been completely read, but the body may not have
    been fully received yet. The [`HttpResponse.body()`](HttpResponse.md#body()) method returns a
    [`Publisher`](../../../../java.base/java/util/concurrent/Flow.Publisher.md "interface in java.util.concurrent")`<List<ByteBuffer>>` from which the body
    response bytes can be obtained as they are received. The publisher
    can and must be subscribed to only once.

    Returns:
    :   a response body handler
  + ### buffering

    public static <T> [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<T> buffering([HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<T> downstreamHandler,
    int bufferSize)

    Returns a `BodyHandler` which, when invoked, returns a [buffering BodySubscriber](HttpResponse.BodySubscribers.md#buffering(java.net.http.HttpResponse.BodySubscriber,int))
    that buffers data before delivering it to the downstream subscriber.
    These `BodySubscriber` instances are created by calling
    [`BodySubscribers.buffering`](HttpResponse.BodySubscribers.md#buffering(java.net.http.HttpResponse.BodySubscriber,int)) with a subscriber obtained from the given
    downstream handler and the `bufferSize` parameter.

    Type Parameters:
    :   `T` - the response body type

    Parameters:
    :   `downstreamHandler` - the downstream handler
    :   `bufferSize` - the buffer size parameter passed to [`BodySubscribers.buffering`](HttpResponse.BodySubscribers.md#buffering(java.net.http.HttpResponse.BodySubscriber,int))

    Returns:
    :   a body handler

    Throws:
    :   `IllegalArgumentException` - if `bufferSize <= 0`