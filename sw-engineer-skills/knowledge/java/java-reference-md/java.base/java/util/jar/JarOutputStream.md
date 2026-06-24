Module [java.base](../../../module-summary.md)

Package [java.util.jar](package-summary.md)

# Class JarOutputStream

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.io.OutputStream](../../io/OutputStream.md "class in java.io")

[java.io.FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

[java.util.zip.DeflaterOutputStream](../zip/DeflaterOutputStream.md "class in java.util.zip")

[java.util.zip.ZipOutputStream](../zip/ZipOutputStream.md "class in java.util.zip")

java.util.jar.JarOutputStream

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `AutoCloseable`

---

public class JarOutputStream
extends [ZipOutputStream](../zip/ZipOutputStream.md "class in java.util.zip")

The `JarOutputStream` class is used to write the contents
of a JAR file to any output stream. It extends the class
`java.util.zip.ZipOutputStream` with support
for writing an optional `Manifest` entry. The
`Manifest` can be used to specify meta-information about
the JAR file and its entries.

Since:
:   1.2

See Also:
:   * [`Manifest`](Manifest.md "class in java.util.jar")
    * [`ZipOutputStream`](../zip/ZipOutputStream.md "class in java.util.zip")

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

  ### Fields inherited from class java.util.zip.[ZipOutputStream](../zip/ZipOutputStream.md "class in java.util.zip")

  `DEFLATED, STORED`

  ### Fields inherited from class java.util.zip.[DeflaterOutputStream](../zip/DeflaterOutputStream.md "class in java.util.zip")

  `buf, def`

  ### Fields inherited from class java.io.[FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

  `out`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JarOutputStream(OutputStream out)`

  Creates a new `JarOutputStream` with no manifest.

  `JarOutputStream(OutputStream out,
  Manifest man)`

  Creates a new `JarOutputStream` with the specified
  `Manifest`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `putNextEntry(ZipEntry ze)`

  Begins writing a new JAR file entry and positions the stream
  to the start of the entry data.

  ### Methods inherited from class java.util.zip.[ZipOutputStream](../zip/ZipOutputStream.md "class in java.util.zip")

  `close, closeEntry, finish, setComment, setLevel, setMethod, write`

  ### Methods inherited from class java.util.zip.[DeflaterOutputStream](../zip/DeflaterOutputStream.md "class in java.util.zip")

  `deflate, flush, write`

  ### Methods inherited from class java.io.[FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")

  `write`

  ### Methods inherited from class java.io.[OutputStream](../../io/OutputStream.md "class in java.io")

  `nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### LOCSIG

    static final long LOCSIG

    Local file (LOC) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCSIG)
  + ### EXTSIG

    static final long EXTSIG

    Extra local (EXT) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.EXTSIG)
  + ### CENSIG

    static final long CENSIG

    Central directory (CEN) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENSIG)
  + ### ENDSIG

    static final long ENDSIG

    End of central directory (END) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.ENDSIG)
  + ### LOCHDR

    static final int LOCHDR

    Local file (LOC) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCHDR)
  + ### EXTHDR

    static final int EXTHDR

    Extra local (EXT) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.EXTHDR)
  + ### CENHDR

    static final int CENHDR

    Central directory (CEN) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENHDR)
  + ### ENDHDR

    static final int ENDHDR

    End of central directory (END) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.ENDHDR)
  + ### LOCVER

    static final int LOCVER

    Local file (LOC) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCVER)
  + ### LOCFLG

    static final int LOCFLG

    Local file (LOC) header general purpose bit flag field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCFLG)
  + ### LOCHOW

    static final int LOCHOW

    Local file (LOC) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCHOW)
  + ### LOCTIM

    static final int LOCTIM

    Local file (LOC) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCTIM)
  + ### LOCCRC

    static final int LOCCRC

    Local file (LOC) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCCRC)
  + ### LOCSIZ

    static final int LOCSIZ

    Local file (LOC) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCSIZ)
  + ### LOCLEN

    static final int LOCLEN

    Local file (LOC) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCLEN)
  + ### LOCNAM

    static final int LOCNAM

    Local file (LOC) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCNAM)
  + ### LOCEXT

    static final int LOCEXT

    Local file (LOC) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.LOCEXT)
  + ### EXTCRC

    static final int EXTCRC

    Extra local (EXT) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.EXTCRC)
  + ### EXTSIZ

    static final int EXTSIZ

    Extra local (EXT) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.EXTSIZ)
  + ### EXTLEN

    static final int EXTLEN

    Extra local (EXT) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.EXTLEN)
  + ### CENVEM

    static final int CENVEM

    Central directory (CEN) header version made by field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENVEM)
  + ### CENVER

    static final int CENVER

    Central directory (CEN) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENVER)
  + ### CENFLG

    static final int CENFLG

    Central directory (CEN) header encrypt, decrypt flags field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENFLG)
  + ### CENHOW

    static final int CENHOW

    Central directory (CEN) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENHOW)
  + ### CENTIM

    static final int CENTIM

    Central directory (CEN) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENTIM)
  + ### CENCRC

    static final int CENCRC

    Central directory (CEN) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENCRC)
  + ### CENSIZ

    static final int CENSIZ

    Central directory (CEN) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENSIZ)
  + ### CENLEN

    static final int CENLEN

    Central directory (CEN) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENLEN)
  + ### CENNAM

    static final int CENNAM

    Central directory (CEN) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENNAM)
  + ### CENEXT

    static final int CENEXT

    Central directory (CEN) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENEXT)
  + ### CENCOM

    static final int CENCOM

    Central directory (CEN) header comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENCOM)
  + ### CENDSK

    static final int CENDSK

    Central directory (CEN) header disk number start field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENDSK)
  + ### CENATT

    static final int CENATT

    Central directory (CEN) header internal file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENATT)
  + ### CENATX

    static final int CENATX

    Central directory (CEN) header external file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENATX)
  + ### CENOFF

    static final int CENOFF

    Central directory (CEN) header LOC header offset field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.CENOFF)
  + ### ENDSUB

    static final int ENDSUB

    End of central directory (END) header number of entries on this disk field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.ENDSUB)
  + ### ENDTOT

    static final int ENDTOT

    End of central directory (END) header total number of entries field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.ENDTOT)
  + ### ENDSIZ

    static final int ENDSIZ

    End of central directory (END) header central directory size in bytes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.ENDSIZ)
  + ### ENDOFF

    static final int ENDOFF

    End of central directory (END) header offset for the first CEN header field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.ENDOFF)
  + ### ENDCOM

    static final int ENDCOM

    End of central directory (END) header zip file comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarOutputStream.ENDCOM)
* ## Constructor Details

  + ### JarOutputStream

    public JarOutputStream([OutputStream](../../io/OutputStream.md "class in java.io") out,
    [Manifest](Manifest.md "class in java.util.jar") man)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates a new `JarOutputStream` with the specified
    `Manifest`. The manifest is written as the first
    entry to the output stream.

    Parameters:
    :   `out` - the actual output stream
    :   `man` - the optional `Manifest`

    Throws:
    :   `IOException` - if an I/O error has occurred
  + ### JarOutputStream

    public JarOutputStream([OutputStream](../../io/OutputStream.md "class in java.io") out)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates a new `JarOutputStream` with no manifest.

    Parameters:
    :   `out` - the actual output stream

    Throws:
    :   `IOException` - if an I/O error has occurred
* ## Method Details

  + ### putNextEntry

    public void putNextEntry([ZipEntry](../zip/ZipEntry.md "class in java.util.zip") ze)
    throws [IOException](../../io/IOException.md "class in java.io")

    Begins writing a new JAR file entry and positions the stream
    to the start of the entry data. This method will also close
    any previous entry.

    The default compression method will be used if no compression
    method was specified for the entry. When writing a compressed
    (DEFLATED) entry, and the compressed size has not been explicitly
    set with the [`ZipEntry.setCompressedSize(long)`](../zip/ZipEntry.md#setCompressedSize(long)) method,
    then the compressed size will be set to the actual compressed
    size after deflation.

    The current time will be used if the entry has no set modification
    time.

    Overrides:
    :   `putNextEntry` in class `ZipOutputStream`

    Parameters:
    :   `ze` - the ZIP/JAR entry to be written

    Throws:
    :   `ZipException` - if a ZIP error has occurred
    :   `IOException` - if an I/O error has occurred