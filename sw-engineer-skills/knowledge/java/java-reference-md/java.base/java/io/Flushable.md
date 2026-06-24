Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Interface Flushable

All Known Subinterfaces:
:   `JavaFileManager`, `StandardJavaFileManager`

All Known Implementing Classes:
:   `BufferedOutputStream`, `BufferedWriter`, `ByteArrayOutputStream`, `CharArrayWriter`, `CheckedOutputStream`, `CipherOutputStream`, `Console`, `DataOutputStream`, `DeflaterOutputStream`, `DigestOutputStream`, `FileOutputStream`, `FileWriter`, `FilterOutputStream`, `FilterWriter`, `Formatter`, `ForwardingJavaFileManager`, `GZIPOutputStream`, `InflaterOutputStream`, `JarOutputStream`, `LogStream`, `ObjectOutputStream`, `OutputStream`, `OutputStreamWriter`, `PipedOutputStream`, `PipedWriter`, `PrintStream`, `PrintWriter`, `StringWriter`, `Writer`, `ZipOutputStream`

---

public interface Flushable

A `Flushable` is a destination of data that can be flushed. The
flush method is invoked to write any buffered output to the underlying
stream.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `flush()`

  Flushes this stream by writing any buffered output to the underlying
  stream.

* ## Method Details

  + ### flush

    void flush()
    throws [IOException](IOException.md "class in java.io")

    Flushes this stream by writing any buffered output to the underlying
    stream.

    Throws:
    :   `IOException` - If an I/O error occurs