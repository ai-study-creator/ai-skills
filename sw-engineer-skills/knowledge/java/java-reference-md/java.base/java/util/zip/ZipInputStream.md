Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class ZipInputStream

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.io.InputStream](../../io/InputStream.md "class in java.io")

[java.io.FilterInputStream](../../io/FilterInputStream.md "class in java.io")

[java.util.zip.InflaterInputStream](InflaterInputStream.md "class in java.util.zip")

java.util.zip.ZipInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

Direct Known Subclasses:
:   `JarInputStream`

---

public class ZipInputStream
extends [InflaterInputStream](InflaterInputStream.md "class in java.util.zip")

An input stream for reading compressed and uncompressed
[ZIP file entries](ZipEntry.md "class in java.util.zip") from a stream of bytes in the ZIP file
format.

## Reading Zip File Entries

The [`getNextEntry()`](#getNextEntry()) method is used to read the next ZIP file entry
(Local file (LOC) header record in the ZIP format) and position the stream at
the entry's file data. The file data may read using one of the
`ZipInputStream` read methods such
as [`read`](#read(byte%5B%5D,int,int)) or [`readAllBytes()`](#readAllBytes()).
For example:

Copy![Copy snippet](../../../../copy.svg)

```
  Path jar = Path.of("foo.jar");
  try (InputStream is = Files.newInputStream(jar);
       ZipInputStream zis = new ZipInputStream(is)) {
      ZipEntry ze;
      while((ze= zis.getNextEntry()) != null) {
         var bytes = zis.readAllBytes();
         System.out.printf("Entry: %s, bytes read: %s%n", ze.getName(),
                 bytes.length);
      }
  }
```

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CENATT`

  Central directory (CEN) header internal file attributes field offset.

  `static final int`

  `CENATX`

  Central directory (CEN) header external file attributes field offset.

  `static final int`

  `CENCOM`

  Central directory (CEN) header comment length field offset.

  `static final int`

  `CENCRC`

  Central directory (CEN) header uncompressed file crc-32 value field offset.

  `static final int`

  `CENDSK`

  Central directory (CEN) header disk number start field offset.

  `static final int`

  `CENEXT`

  Central directory (CEN) header extra field length field offset.

  `static final int`

  `CENFLG`

  Central directory (CEN) header encrypt, decrypt flags field offset.

  `static final int`

  `CENHDR`

  Central directory (CEN) header size in bytes (including signature).

  `static final int`

  `CENHOW`

  Central directory (CEN) header compression method field offset.

  `static final int`

  `CENLEN`

  Central directory (CEN) header uncompressed size field offset.

  `static final int`

  `CENNAM`

  Central directory (CEN) header filename length field offset.

  `static final int`

  `CENOFF`

  Central directory (CEN) header LOC header offset field offset.

  `static final long`

  `CENSIG`

  Central directory (CEN) header signature.

  `static final int`

  `CENSIZ`

  Central directory (CEN) header compressed size field offset.

  `static final int`

  `CENTIM`

  Central directory (CEN) header modification time field offset.

  `static final int`

  `CENVEM`

  Central directory (CEN) header version made by field offset.

  `static final int`

  `CENVER`

  Central directory (CEN) header version needed to extract field offset.

  `static final int`

  `ENDCOM`

  End of central directory (END) header zip file comment length field offset.

  `static final int`

  `ENDHDR`

  End of central directory (END) header size in bytes (including signature).

  `static final int`

  `ENDOFF`

  End of central directory (END) header offset for the first CEN header field offset.

  `static final long`

  `ENDSIG`

  End of central directory (END) header signature.

  `static final int`

  `ENDSIZ`

  End of central directory (END) header central directory size in bytes field offset.

  `static final int`

  `ENDSUB`

  End of central directory (END) header number of entries on this disk field offset.

  `static final int`

  `ENDTOT`

  End of central directory (END) header total number of entries field offset.

  `static final int`

  `EXTCRC`

  Extra local (EXT) header uncompressed file crc-32 value field offset.

  `static final int`

  `EXTHDR`

  Extra local (EXT) header size in bytes (including signature).

  `static final int`

  `EXTLEN`

  Extra local (EXT) header uncompressed size field offset.

  `static final long`

  `EXTSIG`

  Extra local (EXT) header signature.

  `static final int`

  `EXTSIZ`

  Extra local (EXT) header compressed size field offset.

  `static final int`

  `LOCCRC`

  Local file (LOC) header uncompressed file crc-32 value field offset.

  `static final int`

  `LOCEXT`

  Local file (LOC) header extra field length field offset.

  `static final int`

  `LOCFLG`

  Local file (LOC) header general purpose bit flag field offset.

  `static final int`

  `LOCHDR`

  Local file (LOC) header size in bytes (including signature).

  `static final int`

  `LOCHOW`

  Local file (LOC) header compression method field offset.

  `static final int`

  `LOCLEN`

  Local file (LOC) header uncompressed size field offset.

  `static final int`

  `LOCNAM`

  Local file (LOC) header filename length field offset.

  `static final long`

  `LOCSIG`

  Local file (LOC) header signature.

  `static final int`

  `LOCSIZ`

  Local file (LOC) header compressed size field offset.

  `static final int`

  `LOCTIM`

  Local file (LOC) header modification time field offset.

  `static final int`

  `LOCVER`

  Local file (LOC) header version needed to extract field offset.

  ### Fields inherited from class java.util.zip.[InflaterInputStream](InflaterInputStream.md "class in java.util.zip")

  `buf, inf, len`

  ### Fields inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `in`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ZipInputStream(InputStream in)`

  Creates a new ZIP input stream.

  `ZipInputStream(InputStream in,
  Charset charset)`

  Creates a new ZIP input stream.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `available()`

  Returns 0 when end of stream is detected for the current ZIP entry or
  [`closeEntry()`](#closeEntry()) has been called on the current ZIP entry, otherwise
  returns 1.

  `void`

  `close()`

  Closes this input stream and releases any system resources associated
  with the stream.

  `void`

  `closeEntry()`

  Closes the current ZIP entry and positions the stream for reading the
  next entry.

  `protected ZipEntry`

  `createZipEntry(String name)`

  Creates a new `ZipEntry` object for the specified
  entry name.

  `ZipEntry`

  `getNextEntry()`

  Reads the next ZIP file entry and positions the stream at the
  beginning of the entry data.

  `int`

  `read()`

  Reads the next byte of data from the input stream for the current
  ZIP entry.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads the requested number of bytes from the input stream into the given
  byte array for the current ZIP entry returning the number of
  inflated bytes.

  `byte[]`

  `readAllBytes()`

  Reads all remaining bytes from the input stream for the current ZIP entry.

  `int`

  `readNBytes(byte[] b,
  int off,
  int len)`

  Reads the requested number of bytes from the input stream into the given
  byte array for the current ZIP entry returning the number of
  inflated bytes.

  `byte[]`

  `readNBytes(int len)`

  Reads up to a specified number of bytes from the input stream
  for the current ZIP entry.

  `long`

  `skip(long n)`

  Skips over and discards `n` bytes of data from this input stream
  for the current ZIP entry.

  `void`

  `skipNBytes(long n)`

  Skips over and discards exactly `n` bytes of data from this input
  stream for the current ZIP entry.

  `long`

  `transferTo(OutputStream out)`

  Reads all bytes from this input stream for the current ZIP entry
  and writes the bytes to the given output stream in the order that they
  are read.

  ### Methods inherited from class java.util.zip.[InflaterInputStream](InflaterInputStream.md "class in java.util.zip")

  `fill, mark, markSupported, reset`

  ### Methods inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `read`

  ### Methods inherited from class java.io.[InputStream](../../io/InputStream.md "class in java.io")

  `nullInputStream`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### LOCSIG

    static final long LOCSIG

    Local file (LOC) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCSIG)
  + ### EXTSIG

    static final long EXTSIG

    Extra local (EXT) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.EXTSIG)
  + ### CENSIG

    static final long CENSIG

    Central directory (CEN) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENSIG)
  + ### ENDSIG

    static final long ENDSIG

    End of central directory (END) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.ENDSIG)
  + ### LOCHDR

    static final int LOCHDR

    Local file (LOC) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCHDR)
  + ### EXTHDR

    static final int EXTHDR

    Extra local (EXT) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.EXTHDR)
  + ### CENHDR

    static final int CENHDR

    Central directory (CEN) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENHDR)
  + ### ENDHDR

    static final int ENDHDR

    End of central directory (END) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.ENDHDR)
  + ### LOCVER

    static final int LOCVER

    Local file (LOC) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCVER)
  + ### LOCFLG

    static final int LOCFLG

    Local file (LOC) header general purpose bit flag field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCFLG)
  + ### LOCHOW

    static final int LOCHOW

    Local file (LOC) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCHOW)
  + ### LOCTIM

    static final int LOCTIM

    Local file (LOC) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCTIM)
  + ### LOCCRC

    static final int LOCCRC

    Local file (LOC) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCCRC)
  + ### LOCSIZ

    static final int LOCSIZ

    Local file (LOC) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCSIZ)
  + ### LOCLEN

    static final int LOCLEN

    Local file (LOC) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCLEN)
  + ### LOCNAM

    static final int LOCNAM

    Local file (LOC) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCNAM)
  + ### LOCEXT

    static final int LOCEXT

    Local file (LOC) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.LOCEXT)
  + ### EXTCRC

    static final int EXTCRC

    Extra local (EXT) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.EXTCRC)
  + ### EXTSIZ

    static final int EXTSIZ

    Extra local (EXT) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.EXTSIZ)
  + ### EXTLEN

    static final int EXTLEN

    Extra local (EXT) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.EXTLEN)
  + ### CENVEM

    static final int CENVEM

    Central directory (CEN) header version made by field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENVEM)
  + ### CENVER

    static final int CENVER

    Central directory (CEN) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENVER)
  + ### CENFLG

    static final int CENFLG

    Central directory (CEN) header encrypt, decrypt flags field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENFLG)
  + ### CENHOW

    static final int CENHOW

    Central directory (CEN) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENHOW)
  + ### CENTIM

    static final int CENTIM

    Central directory (CEN) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENTIM)
  + ### CENCRC

    static final int CENCRC

    Central directory (CEN) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENCRC)
  + ### CENSIZ

    static final int CENSIZ

    Central directory (CEN) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENSIZ)
  + ### CENLEN

    static final int CENLEN

    Central directory (CEN) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENLEN)
  + ### CENNAM

    static final int CENNAM

    Central directory (CEN) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENNAM)
  + ### CENEXT

    static final int CENEXT

    Central directory (CEN) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENEXT)
  + ### CENCOM

    static final int CENCOM

    Central directory (CEN) header comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENCOM)
  + ### CENDSK

    static final int CENDSK

    Central directory (CEN) header disk number start field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENDSK)
  + ### CENATT

    static final int CENATT

    Central directory (CEN) header internal file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENATT)
  + ### CENATX

    static final int CENATX

    Central directory (CEN) header external file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENATX)
  + ### CENOFF

    static final int CENOFF

    Central directory (CEN) header LOC header offset field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.CENOFF)
  + ### ENDSUB

    static final int ENDSUB

    End of central directory (END) header number of entries on this disk field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.ENDSUB)
  + ### ENDTOT

    static final int ENDTOT

    End of central directory (END) header total number of entries field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.ENDTOT)
  + ### ENDSIZ

    static final int ENDSIZ

    End of central directory (END) header central directory size in bytes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.ENDSIZ)
  + ### ENDOFF

    static final int ENDOFF

    End of central directory (END) header offset for the first CEN header field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.ENDOFF)
  + ### ENDCOM

    static final int ENDCOM

    End of central directory (END) header zip file comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipInputStream.ENDCOM)
* ## Constructor Details

  + ### ZipInputStream

    public ZipInputStream([InputStream](../../io/InputStream.md "class in java.io") in)

    Creates a new ZIP input stream.

    The UTF-8 [`charset`](../../nio/charset/Charset.md "class in java.nio.charset") is used to
    decode the entry names.

    Parameters:
    :   `in` - the actual input stream
  + ### ZipInputStream

    public ZipInputStream([InputStream](../../io/InputStream.md "class in java.io") in,
    [Charset](../../nio/charset/Charset.md "class in java.nio.charset") charset)

    Creates a new ZIP input stream.

    Parameters:
    :   `in` - the actual input stream
    :   `charset` - The [charset](../../nio/charset/Charset.md "class in java.nio.charset") to be
        used to decode the ZIP entry name (ignored if the
         [language
        encoding bit](package-summary.md#lang_encoding) of the ZIP entry's general purpose bit
        flag is set).

    Since:
    :   1.7
* ## Method Details

  + ### getNextEntry

    public [ZipEntry](ZipEntry.md "class in java.util.zip") getNextEntry()
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads the next ZIP file entry and positions the stream at the
    beginning of the entry data.

    Returns:
    :   the next ZIP file entry, or null if there are no more entries

    Throws:
    :   `ZipException` - if a ZIP file error has occurred
    :   `IOException` - if an I/O error has occurred
  + ### closeEntry

    public void closeEntry()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes the current ZIP entry and positions the stream for reading the
    next entry.

    Throws:
    :   `ZipException` - if a ZIP file error has occurred
    :   `IOException` - if an I/O error has occurred
  + ### available

    public int available()
    throws [IOException](../../io/IOException.md "class in java.io")

    Returns 0 when end of stream is detected for the current ZIP entry or
    [`closeEntry()`](#closeEntry()) has been called on the current ZIP entry, otherwise
    returns 1.

    Programs should not count on this method to return the actual number
    of bytes that could be read without blocking.

    Overrides:
    :   `available` in class `InflaterInputStream`

    Returns:
    :   0 when end of stream is detected for the current ZIP entry or
        [`closeEntry()`](#closeEntry()) has been called on the current ZIP entry, otherwise 1.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### read

    public int read()
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads the next byte of data from the input stream for the current
    ZIP entry. This method will block until enough input is available for
    decompression.

    Overrides:
    :   `read` in class `InflaterInputStream`

    Returns:
    :   the byte read, or -1 if the end of the stream is reached

    Throws:
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### readAllBytes

    public byte[] readAllBytes()
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads all remaining bytes from the input stream for the current ZIP entry.
    This method blocks until all remaining bytes have been read and end of
    stream is detected, or an exception is thrown. This method does not close
    the input stream.

    When this stream reaches end of stream, further invocations of this
    method will return an empty byte array.

    Note that this method is intended for simple cases where it is
    convenient to read all bytes into a byte array. It is not intended for
    reading input streams with large amounts of data.

    If an I/O error occurs reading from the input stream, then it may do
    so after some, but not all, bytes have been read. Consequently, the input
    stream may not be at end of stream and may be in an inconsistent state.
    It is strongly recommended that the stream be promptly closed if an I/O
    error occurs.

    Overrides:
    :   `readAllBytes` in class `InputStream`

    Returns:
    :   a byte array containing the bytes read from this input stream

    Throws:
    :   `OutOfMemoryError` - if an array of the required size cannot be
        allocated.
    :   `IOException` - if an I/O error occurs

    Since:
    :   9
  + ### readNBytes

    public byte[] readNBytes(int len)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads up to a specified number of bytes from the input stream
    for the current ZIP entry. This method blocks until the requested number
    of bytes has been read, end of stream is detected, or an exception
    is thrown. This method does not close the input stream.

    The length of the returned array equals the number of bytes read
    from the stream. If `len` is zero, then no bytes are read and
    an empty byte array is returned. Otherwise, up to `len` bytes
    are read from the stream. Fewer than `len` bytes may be read if
    end of stream is encountered.

    When this stream reaches end of stream, further invocations of this
    method will return an empty byte array.

    Note that this method is intended for simple cases where it is
    convenient to read the specified number of bytes into a byte array. The
    total amount of memory allocated by this method is proportional to the
    number of bytes read from the stream which is bounded by `len`.
    Therefore, the method may be safely called with very large values of
    `len` provided sufficient memory is available.

    If an I/O error occurs reading from the input stream, then it may do
    so after some, but not all, bytes have been read. Consequently, the input
    stream may not be at end of stream and may be in an inconsistent state.
    It is strongly recommended that the stream be promptly closed if an I/O
    error occurs.

    Overrides:
    :   `readNBytes` in class `InputStream`

    Parameters:
    :   `len` - the maximum number of bytes to read

    Returns:
    :   a byte array containing the bytes read from this input stream

    Throws:
    :   `OutOfMemoryError` - if an array of the required size cannot be
        allocated.
    :   `IOException` - if an I/O error occurs

    Since:
    :   11
  + ### readNBytes

    public int readNBytes(byte[] b,
    int off,
    int len)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads the requested number of bytes from the input stream into the given
    byte array for the current ZIP entry returning the number of
    inflated bytes.
    This method blocks until `len` bytes of input data have
    been read, end of stream is detected, or an exception is thrown. The
    number of bytes actually read, possibly zero, is returned. This method
    does not close the input stream.

    In the case where end of stream is reached before `len` bytes
    have been read, then the actual number of bytes read will be returned.
    When this stream reaches end of stream, further invocations of this
    method will return zero.

    If `len` is zero, then no bytes are read and `0` is
    returned; otherwise, there is an attempt to read up to `len` bytes.

    The first byte read is stored into element `b[off]`, the next
    one in to `b[off+1]`, and so on. The number of bytes read is, at
    most, equal to `len`. Let *k* be the number of bytes actually
    read; these bytes will be stored in elements `b[off]` through
    `b[off+`*k*`-1]`, leaving elements `b[off+`*k*
    `]` through `b[off+len-1]` unaffected.

    If an I/O error occurs reading from the input stream, then it may do
    so after some, but not all, bytes of `b` have been updated with
    data from the input stream. Consequently, the input stream and `b`
    may be in an inconsistent state. It is strongly recommended that the
    stream be promptly closed if an I/O error occurs.

    Overrides:
    :   `readNBytes` in class `InputStream`

    Parameters:
    :   `b` - the byte array into which the data is read
    :   `off` - the start offset in `b` at which the data is written
    :   `len` - the maximum number of bytes to read

    Returns:
    :   the actual number of bytes read into the buffer

    Throws:
    :   `NullPointerException` - if `b` is `null`
    :   `IndexOutOfBoundsException` - If `off` is negative, `len`
        is negative, or `len` is greater than `b.length - off`
    :   `IOException` - if an I/O error occurs

    Since:
    :   9
  + ### skipNBytes

    public void skipNBytes(long n)
    throws [IOException](../../io/IOException.md "class in java.io")

    Skips over and discards exactly `n` bytes of data from this input
    stream for the current ZIP entry.
    If `n` is zero, then no bytes are skipped.
    If `n` is negative, then no bytes are skipped.
    Subclasses may handle the negative value differently.

    This method blocks until the requested number of bytes has been
    skipped, end of file is reached, or an exception is thrown.

    If end of stream is reached before the stream is at the desired
    position, then an `EOFException` is thrown.

    If an I/O error occurs, then the input stream may be
    in an inconsistent state. It is strongly recommended that the
    stream be promptly closed if an I/O error occurs.

    Overrides:
    :   `skipNBytes` in class `InputStream`

    Parameters:
    :   `n` - the number of bytes to be skipped.

    Throws:
    :   `IOException` - if the stream cannot be positioned properly or
        if an I/O error occurs.

    Since:
    :   12

    See Also:
    :   - [`InputStream.skip(long)`](../../io/InputStream.md#skip(long))
  + ### transferTo

    public long transferTo([OutputStream](../../io/OutputStream.md "class in java.io") out)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads all bytes from this input stream for the current ZIP entry
    and writes the bytes to the given output stream in the order that they
    are read. On return, this input stream will be at end of stream.
    This method does not close either stream.

    This method may block indefinitely reading from the input stream, or
    writing to the output stream. The behavior for the case where the input
    and/or output stream is *asynchronously closed*, or the thread
    interrupted during the transfer, is highly input and output stream
    specific, and therefore not specified.

    If the total number of bytes transferred is greater than [Long.MAX\_VALUE](../../lang/Long.md#MAX_VALUE), then `Long.MAX_VALUE` will be returned.

    If an I/O error occurs reading from the input stream or writing to the
    output stream, then it may do so after some bytes have been read or
    written. Consequently, the input stream may not be at end of stream and
    one, or both, streams may be in an inconsistent state. It is strongly
    recommended that both streams be promptly closed if an I/O error occurs.

    Overrides:
    :   `transferTo` in class `InputStream`

    Parameters:
    :   `out` - the output stream, non-null

    Returns:
    :   the number of bytes transferred

    Throws:
    :   `NullPointerException` - if `out` is `null`
    :   `IOException` - if an I/O error occurs when reading or writing

    Since:
    :   9
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads the requested number of bytes from the input stream into the given
    byte array for the current ZIP entry returning the number of
    inflated bytes. If `len` is not zero, the method blocks until some input is
    available; otherwise, no bytes are read and `0` is returned.

    If the current entry is compressed and this method returns a nonzero
    integer *n* then `buf[off]`
    through `buf[off+`*n*`-1]` contain the uncompressed
    data. The content of elements `buf[off+`*n*`]` through
    `buf[off+`*len*`-1]` is undefined, contrary to the
    specification of the [`InputStream`](../../io/InputStream.md "class in java.io") superclass,
    so an implementation is free to modify these elements during the inflate
    operation. If this method returns `-1` or throws an exception then
    the content of `buf[off]` through `buf[off+`*len*`-1]` is undefined.

    Overrides:
    :   `read` in class `InflaterInputStream`

    Parameters:
    :   `b` - the buffer into which the data is read
    :   `off` - the start offset in the destination array `b`
    :   `len` - the maximum number of bytes read

    Returns:
    :   the actual number of bytes read, or -1 if the end of the
        entry is reached

    Throws:
    :   `NullPointerException` - if `b` is `null`.
    :   `IndexOutOfBoundsException` - if `off` is negative,
        `len` is negative, or `len` is greater than
        `b.length - off`
    :   `ZipException` - if a ZIP file error has occurred
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### skip

    public long skip(long n)
    throws [IOException](../../io/IOException.md "class in java.io")

    Skips over and discards `n` bytes of data from this input stream
    for the current ZIP entry.

    Overrides:
    :   `skip` in class `InflaterInputStream`

    Parameters:
    :   `n` - the number of bytes to skip

    Returns:
    :   the actual number of bytes skipped

    Throws:
    :   `ZipException` - if a ZIP file error has occurred
    :   `IOException` - if an I/O error has occurred
    :   `IllegalArgumentException` - if `n < 0`

    See Also:
    :   - [`InputStream.skipNBytes(long)`](../../io/InputStream.md#skipNBytes(long))
  + ### close

    public void close()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes this input stream and releases any system resources associated
    with the stream.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `InflaterInputStream`

    Throws:
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### createZipEntry

    protected [ZipEntry](ZipEntry.md "class in java.util.zip") createZipEntry([String](../../lang/String.md "class in java.lang") name)

    Creates a new `ZipEntry` object for the specified
    entry name.

    Parameters:
    :   `name` - the ZIP file entry name

    Returns:
    :   the ZipEntry just created