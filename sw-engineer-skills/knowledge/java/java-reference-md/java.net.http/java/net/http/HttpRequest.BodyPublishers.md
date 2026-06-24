Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Class HttpRequest.BodyPublishers

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.net.http.HttpRequest.BodyPublishers

Enclosing class:
:   `HttpRequest`

---

public static class HttpRequest.BodyPublishers
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Implementations of [`BodyPublisher`](HttpRequest.BodyPublisher.md "interface in java.net.http") that implement
various useful publishers, such as publishing the request body from a
String, or from a file.

The following are examples of using the predefined body publishers to
convert common high-level Java objects into a flow of data suitable for
sending as a request body:

Copy![Copy snippet](../../../../copy.svg)

```
// Request body from a String
HttpRequest request = HttpRequest.newBuilder()
     .uri(URI.create("https://foo.com/"))
     .header("Content-Type", "text/plain; charset=UTF-8")
     .POST(BodyPublishers.ofString("some body text"))
     .build();
```

Copy![Copy snippet](../../../../copy.svg)

```
// Request body from a File
HttpRequest request = HttpRequest.newBuilder()
     .uri(URI.create("https://foo.com/"))
     .header("Content-Type", "application/json")
     .POST(BodyPublishers.ofFile(Paths.get("file.json")))
     .build();
```

Copy![Copy snippet](../../../../copy.svg)

```
// Request body from a byte array
HttpRequest request = HttpRequest.newBuilder()
     .uri(URI.create("https://foo.com/"))
     .POST(BodyPublishers.ofByteArray(new byte[] { ... }))
     .build();
```

Since:
:   11

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static HttpRequest.BodyPublisher`

  `concat(HttpRequest.BodyPublisher... publishers)`

  Returns a `BodyPublisher` that publishes a request
  body consisting of the concatenation of the request bodies
  published by a sequence of publishers.

  `static HttpRequest.BodyPublisher`

  `fromPublisher(Flow.Publisher<? extends ByteBuffer> publisher)`

  Returns a request body publisher whose body is retrieved from the
  given `Flow.Publisher`.

  `static HttpRequest.BodyPublisher`

  `fromPublisher(Flow.Publisher<? extends ByteBuffer> publisher,
  long contentLength)`

  Returns a request body publisher whose body is retrieved from the
  given `Flow.Publisher`.

  `static HttpRequest.BodyPublisher`

  `noBody()`

  A request body publisher which sends no request body.

  `static HttpRequest.BodyPublisher`

  `ofByteArray(byte[] buf)`

  Returns a request body publisher whose body is the given byte array.

  `static HttpRequest.BodyPublisher`

  `ofByteArray(byte[] buf,
  int offset,
  int length)`

  Returns a request body publisher whose body is the content of the
  given byte array of `length` bytes starting from the specified
  `offset`.

  `static HttpRequest.BodyPublisher`

  `ofByteArrays(Iterable<byte[]> iter)`

  A request body publisher that takes data from an `Iterable`
  of byte arrays.

  `static HttpRequest.BodyPublisher`

  `ofFile(Path path)`

  A request body publisher that takes data from the contents of a File.

  `static HttpRequest.BodyPublisher`

  `ofInputStream(Supplier<? extends InputStream> streamSupplier)`

  A request body publisher that reads its data from an [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io").

  `static HttpRequest.BodyPublisher`

  `ofString(String body)`

  Returns a request body publisher whose body is the given `String`, converted using the [`UTF_8`](../../../../java.base/java/nio/charset/StandardCharsets.md#UTF_8)
  character set.

  `static HttpRequest.BodyPublisher`

  `ofString(String s,
  Charset charset)`

  Returns a request body publisher whose body is the given `String`, converted using the given character set.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### fromPublisher

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") fromPublisher([Flow.Publisher](../../../../java.base/java/util/concurrent/Flow.Publisher.md "interface in java.util.concurrent")<? extends [ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")> publisher)

    Returns a request body publisher whose body is retrieved from the
    given `Flow.Publisher`. The returned request body publisher
    has an unknown content length.

    Parameters:
    :   `publisher` - the publisher responsible for publishing the body

    Returns:
    :   a BodyPublisher
  + ### fromPublisher

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") fromPublisher([Flow.Publisher](../../../../java.base/java/util/concurrent/Flow.Publisher.md "interface in java.util.concurrent")<? extends [ByteBuffer](../../../../java.base/java/nio/ByteBuffer.md "class in java.nio")> publisher,
    long contentLength)

    Returns a request body publisher whose body is retrieved from the
    given `Flow.Publisher`. The returned request body publisher
    has the given content length.

    The given `contentLength` is a positive number, that
    represents the exact amount of bytes the `publisher` must
    publish.

    Parameters:
    :   `publisher` - the publisher responsible for publishing the body
    :   `contentLength` - a positive number representing the exact
        amount of bytes the publisher will publish

    Returns:
    :   a BodyPublisher

    Throws:
    :   `IllegalArgumentException` - if the content length is
        non-positive
  + ### ofString

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") ofString([String](../../../../java.base/java/lang/String.md "class in java.lang") body)

    Returns a request body publisher whose body is the given `String`, converted using the [`UTF_8`](../../../../java.base/java/nio/charset/StandardCharsets.md#UTF_8)
    character set.

    Parameters:
    :   `body` - the String containing the body

    Returns:
    :   a BodyPublisher
  + ### ofString

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") ofString([String](../../../../java.base/java/lang/String.md "class in java.lang") s,
    [Charset](../../../../java.base/java/nio/charset/Charset.md "class in java.nio.charset") charset)

    Returns a request body publisher whose body is the given `String`, converted using the given character set.

    Parameters:
    :   `s` - the String containing the body
    :   `charset` - the character set to convert the string to bytes

    Returns:
    :   a BodyPublisher
  + ### ofInputStream

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") ofInputStream([Supplier](../../../../java.base/java/util/function/Supplier.md "interface in java.util.function")<? extends [InputStream](../../../../java.base/java/io/InputStream.md "class in java.io")> streamSupplier)

    A request body publisher that reads its data from an [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io"). A [`Supplier`](../../../../java.base/java/util/function/Supplier.md "interface in java.util.function") of `InputStream` is used in
    case the request needs to be repeated, as the content is not buffered.
    The `Supplier` may return `null` on subsequent attempts,
    in which case the request fails.

    Parameters:
    :   `streamSupplier` - a Supplier of open InputStreams

    Returns:
    :   a BodyPublisher
  + ### ofByteArray

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") ofByteArray(byte[] buf)

    Returns a request body publisher whose body is the given byte array.

    Parameters:
    :   `buf` - the byte array containing the body

    Returns:
    :   a BodyPublisher
  + ### ofByteArray

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") ofByteArray(byte[] buf,
    int offset,
    int length)

    Returns a request body publisher whose body is the content of the
    given byte array of `length` bytes starting from the specified
    `offset`.

    Parameters:
    :   `buf` - the byte array containing the body
    :   `offset` - the offset of the first byte
    :   `length` - the number of bytes to use

    Returns:
    :   a BodyPublisher

    Throws:
    :   `IndexOutOfBoundsException` - if the sub-range is defined to be
        out of bounds
  + ### ofFile

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") ofFile([Path](../../../../java.base/java/nio/file/Path.md "interface in java.nio.file") path)
    throws [FileNotFoundException](../../../../java.base/java/io/FileNotFoundException.md "class in java.io")

    A request body publisher that takes data from the contents of a File.

    Security manager permission checks are performed in this factory
    method, when the `BodyPublisher` is created. Care must be taken
    that the `BodyPublisher` is not shared with untrusted code.

    Parameters:
    :   `path` - the path to the file containing the body

    Returns:
    :   a BodyPublisher

    Throws:
    :   `FileNotFoundException` - if the path is not found
    :   `SecurityException` - if
        [opening the file for reading](../../../../java.base/java/nio/file/Files.md#newInputStream(java.nio.file.Path,java.nio.file.OpenOption...)) is denied:
        in the case of the system-default file system provider,
        and a security manager is installed,
        [`checkRead`](../../../../java.base/java/lang/SecurityManager.md#checkRead(java.lang.String))
        is invoked to check read access to the given file
  + ### ofByteArrays

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") ofByteArrays([Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")<byte[]> iter)

    A request body publisher that takes data from an `Iterable`
    of byte arrays. An [`Iterable`](../../../../java.base/java/lang/Iterable.md "interface in java.lang") is provided which supplies
    [`Iterator`](../../../../java.base/java/util/Iterator.md "interface in java.util") instances. Each attempt to send the request results
    in one invocation of the `Iterable`.

    Parameters:
    :   `iter` - an Iterable of byte arrays

    Returns:
    :   a BodyPublisher
  + ### noBody

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") noBody()

    A request body publisher which sends no request body.

    Returns:
    :   a BodyPublisher which completes immediately and sends
        no request body.
  + ### concat

    public static [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") concat([HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http")... publishers)

    Returns a `BodyPublisher` that publishes a request
    body consisting of the concatenation of the request bodies
    published by a sequence of publishers.

    If the sequence is empty an [empty](#noBody()) publisher
    is returned. Otherwise, if the sequence contains a single element,
    that publisher is returned. Otherwise a *concatenation publisher*
    is returned.

    The request body published by a *concatenation publisher*
    is logically equivalent to the request body that would have
    been published by concatenating all the bytes of each publisher
    in sequence.

    Each publisher is lazily subscribed to in turn,
    until all the body bytes are published, an error occurs, or the
    concatenation publisher's subscription is cancelled.
    The concatenation publisher may be subscribed to more than once,
    which in turn may result in the publishers in the sequence being
    subscribed to more than once.

    The concatenation publisher has a known content
    length only if all publishers in the sequence have a known content
    length. The [`contentLength`](HttpRequest.BodyPublisher.md#contentLength())
    reported by the concatenation publisher is computed as follows:
    - If any of the publishers reports an *[unknown](HttpRequest.BodyPublisher.md#contentLength())* content length,
      or if the sum of the known content lengths would exceed
      [`Long.MAX_VALUE`](../../../../java.base/java/lang/Long.md#MAX_VALUE), the resulting
      content length is *unknown*.
    - Otherwise, the resulting content length is the sum of the
      known content lengths, a number between
      `0` and [`Long.MAX_VALUE`](../../../../java.base/java/lang/Long.md#MAX_VALUE), inclusive.

    Parameters:
    :   `publishers` - a sequence of publishers.

    Returns:
    :   An aggregate publisher that publishes a request body
        logically equivalent to the concatenation of all bytes published
        by each publisher in the sequence.

    Since:
    :   16