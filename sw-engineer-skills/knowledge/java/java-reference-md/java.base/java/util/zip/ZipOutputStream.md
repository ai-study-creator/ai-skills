Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class ZipOutputStream

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.io.OutputStream](../../io/OutputStream.md "class in java.io")

[java.io.FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

[java.util.zip.DeflaterOutputStream](DeflaterOutputStream.md "class in java.util.zip")

java.util.zip.ZipOutputStream

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `AutoCloseable`

Direct Known Subclasses:
:   `JarOutputStream`

---

public class ZipOutputStream
extends [DeflaterOutputStream](DeflaterOutputStream.md "class in java.util.zip")

This class implements an output stream filter for writing files in the
ZIP file format. Includes support for both compressed and uncompressed
entries.

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

  `DEFLATED`

  Compression method for compressed (DEFLATED) entries.

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

  `static final int`

  `STORED`

  Compression method for uncompressed (STORED) entries.

  ### Fields inherited from class java.util.zip.[DeflaterOutputStream](DeflaterOutputStream.md "class in java.util.zip")

  `buf, def`

  ### Fields inherited from class java.io.[FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

  `out`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ZipOutputStream(OutputStream out)`

  Creates a new ZIP output stream.

  `ZipOutputStream(OutputStream out,
  Charset charset)`

  Creates a new ZIP output stream.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes the ZIP output stream as well as the stream being filtered.

  `void`

  `closeEntry()`

  Closes the current ZIP entry and positions the stream for writing
  the next entry.

  `void`

  `finish()`

  Finishes writing the contents of the ZIP output stream without closing
  the underlying stream.

  `void`

  `putNextEntry(ZipEntry e)`

  Begins writing a new ZIP file entry and positions the stream to the
  start of the entry data.

  `void`

  `setComment(String comment)`

  Sets the ZIP file comment.

  `void`

  `setLevel(int level)`

  Sets the compression level for subsequent entries which are DEFLATED.

  `void`

  `setMethod(int method)`

  Sets the default compression method for subsequent entries.

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Writes an array of bytes to the current ZIP entry data.

  ### Methods inherited from class java.util.zip.[DeflaterOutputStream](DeflaterOutputStream.md "class in java.util.zip")

  `deflate, flush, write`

  ### Methods inherited from class java.io.[FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

  `write`

  ### Methods inherited from class java.io.[OutputStream](../../io/OutputStream.md "class in java.io")

  `nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### STORED

    public static final int STORED

    Compression method for uncompressed (STORED) entries.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.STORED)
  + ### DEFLATED

    public static final int DEFLATED

    Compression method for compressed (DEFLATED) entries.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.DEFLATED)
  + ### LOCSIG

    static final long LOCSIG

    Local file (LOC) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCSIG)
  + ### EXTSIG

    static final long EXTSIG

    Extra local (EXT) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.EXTSIG)
  + ### CENSIG

    static final long CENSIG

    Central directory (CEN) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENSIG)
  + ### ENDSIG

    static final long ENDSIG

    End of central directory (END) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.ENDSIG)
  + ### LOCHDR

    static final int LOCHDR

    Local file (LOC) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCHDR)
  + ### EXTHDR

    static final int EXTHDR

    Extra local (EXT) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.EXTHDR)
  + ### CENHDR

    static final int CENHDR

    Central directory (CEN) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENHDR)
  + ### ENDHDR

    static final int ENDHDR

    End of central directory (END) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.ENDHDR)
  + ### LOCVER

    static final int LOCVER

    Local file (LOC) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCVER)
  + ### LOCFLG

    static final int LOCFLG

    Local file (LOC) header general purpose bit flag field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCFLG)
  + ### LOCHOW

    static final int LOCHOW

    Local file (LOC) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCHOW)
  + ### LOCTIM

    static final int LOCTIM

    Local file (LOC) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCTIM)
  + ### LOCCRC

    static final int LOCCRC

    Local file (LOC) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCCRC)
  + ### LOCSIZ

    static final int LOCSIZ

    Local file (LOC) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCSIZ)
  + ### LOCLEN

    static final int LOCLEN

    Local file (LOC) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCLEN)
  + ### LOCNAM

    static final int LOCNAM

    Local file (LOC) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCNAM)
  + ### LOCEXT

    static final int LOCEXT

    Local file (LOC) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.LOCEXT)
  + ### EXTCRC

    static final int EXTCRC

    Extra local (EXT) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.EXTCRC)
  + ### EXTSIZ

    static final int EXTSIZ

    Extra local (EXT) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.EXTSIZ)
  + ### EXTLEN

    static final int EXTLEN

    Extra local (EXT) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.EXTLEN)
  + ### CENVEM

    static final int CENVEM

    Central directory (CEN) header version made by field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENVEM)
  + ### CENVER

    static final int CENVER

    Central directory (CEN) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENVER)
  + ### CENFLG

    static final int CENFLG

    Central directory (CEN) header encrypt, decrypt flags field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENFLG)
  + ### CENHOW

    static final int CENHOW

    Central directory (CEN) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENHOW)
  + ### CENTIM

    static final int CENTIM

    Central directory (CEN) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENTIM)
  + ### CENCRC

    static final int CENCRC

    Central directory (CEN) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENCRC)
  + ### CENSIZ

    static final int CENSIZ

    Central directory (CEN) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENSIZ)
  + ### CENLEN

    static final int CENLEN

    Central directory (CEN) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENLEN)
  + ### CENNAM

    static final int CENNAM

    Central directory (CEN) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENNAM)
  + ### CENEXT

    static final int CENEXT

    Central directory (CEN) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENEXT)
  + ### CENCOM

    static final int CENCOM

    Central directory (CEN) header comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENCOM)
  + ### CENDSK

    static final int CENDSK

    Central directory (CEN) header disk number start field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENDSK)
  + ### CENATT

    static final int CENATT

    Central directory (CEN) header internal file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENATT)
  + ### CENATX

    static final int CENATX

    Central directory (CEN) header external file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENATX)
  + ### CENOFF

    static final int CENOFF

    Central directory (CEN) header LOC header offset field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.CENOFF)
  + ### ENDSUB

    static final int ENDSUB

    End of central directory (END) header number of entries on this disk field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.ENDSUB)
  + ### ENDTOT

    static final int ENDTOT

    End of central directory (END) header total number of entries field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.ENDTOT)
  + ### ENDSIZ

    static final int ENDSIZ

    End of central directory (END) header central directory size in bytes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.ENDSIZ)
  + ### ENDOFF

    static final int ENDOFF

    End of central directory (END) header offset for the first CEN header field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.ENDOFF)
  + ### ENDCOM

    static final int ENDCOM

    End of central directory (END) header zip file comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipOutputStream.ENDCOM)
* ## Constructor Details

  + ### ZipOutputStream

    public ZipOutputStream([OutputStream](../../io/OutputStream.md "class in java.io") out)

    Creates a new ZIP output stream.

    The UTF-8 [`charset`](../../nio/charset/Charset.md "class in java.nio.charset") is used
    to encode the entry names and comments.

    Parameters:
    :   `out` - the actual output stream
  + ### ZipOutputStream

    public ZipOutputStream([OutputStream](../../io/OutputStream.md "class in java.io") out,
    [Charset](../../nio/charset/Charset.md "class in java.nio.charset") charset)

    Creates a new ZIP output stream.

    Parameters:
    :   `out` - the actual output stream
    :   `charset` - the [charset](../../nio/charset/Charset.md "class in java.nio.charset")
        to be used to encode the entry names and comments

    Since:
    :   1.7
* ## Method Details

  + ### setComment

    public void setComment([String](../../lang/String.md "class in java.lang") comment)

    Sets the ZIP file comment.

    Parameters:
    :   `comment` - the comment string

    Throws:
    :   `IllegalArgumentException` - if the length of the specified
        ZIP file comment is greater than 0xFFFF bytes
  + ### setMethod

    public void setMethod(int method)

    Sets the default compression method for subsequent entries. This
    default will be used whenever the compression method is not specified
    for an individual ZIP file entry, and is initially set to DEFLATED.

    Parameters:
    :   `method` - the default compression method

    Throws:
    :   `IllegalArgumentException` - if the specified compression method
        is invalid
  + ### setLevel

    public void setLevel(int level)

    Sets the compression level for subsequent entries which are DEFLATED.
    The default setting is DEFAULT\_COMPRESSION.

    Parameters:
    :   `level` - the compression level (0-9)

    Throws:
    :   `IllegalArgumentException` - if the compression level is invalid
  + ### putNextEntry

    public void putNextEntry([ZipEntry](ZipEntry.md "class in java.util.zip") e)
    throws [IOException](../../io/IOException.md "class in java.io")

    Begins writing a new ZIP file entry and positions the stream to the
    start of the entry data. Closes the current entry if still active.

    The default compression method will be used if no compression method
    was specified for the entry. When writing a compressed (DEFLATED)
    entry, and the compressed size has not been explicitly set with the
    [`ZipEntry.setCompressedSize(long)`](ZipEntry.md#setCompressedSize(long)) method, then the compressed
    size will be set to the actual compressed size after deflation.

    The current time will be used if the entry has no set modification time.

    Parameters:
    :   `e` - the ZIP entry to be written

    Throws:
    :   `ZipException` - if a ZIP format error has occurred
    :   `IOException` - if an I/O error has occurred
  + ### closeEntry

    public void closeEntry()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes the current ZIP entry and positions the stream for writing
    the next entry.

    Throws:
    :   `ZipException` - if a ZIP format error has occurred
    :   `IOException` - if an I/O error has occurred
  + ### write

    public void write(byte[] b,
    int off,
    int len)
    throws [IOException](../../io/IOException.md "class in java.io")

    Writes an array of bytes to the current ZIP entry data. This method
    will block until all the bytes are written.

    Overrides:
    :   `write` in class `DeflaterOutputStream`

    Parameters:
    :   `b` - the data to be written
    :   `off` - the start offset in the data
    :   `len` - the number of bytes that are written

    Throws:
    :   `ZipException` - if a ZIP file error has occurred
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterOutputStream.write(int)`](../../io/FilterOutputStream.md#write(int))
  + ### finish

    public void finish()
    throws [IOException](../../io/IOException.md "class in java.io")

    Finishes writing the contents of the ZIP output stream without closing
    the underlying stream. Use this method when applying multiple filters
    in succession to the same output stream.

    Overrides:
    :   `finish` in class `DeflaterOutputStream`

    Throws:
    :   `ZipException` - if a ZIP file error has occurred
    :   `IOException` - if an I/O exception has occurred
  + ### close

    public void close()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes the ZIP output stream as well as the stream being filtered.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `DeflaterOutputStream`

    Throws:
    :   `ZipException` - if a ZIP file error has occurred
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`FilterOutputStream.flush()`](../../io/FilterOutputStream.md#flush())
        - [`FilterOutputStream.out`](../../io/FilterOutputStream.md#out)