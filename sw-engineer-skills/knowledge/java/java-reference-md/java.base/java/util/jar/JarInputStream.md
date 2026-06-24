Module [java.base](../../../module-summary.md)

Package [java.util.jar](package-summary.md)

# Class JarInputStream

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.io.InputStream](../../io/InputStream.md "class in java.io")

[java.io.FilterInputStream](../../io/FilterInputStream.md "class in java.io")

[java.util.zip.InflaterInputStream](../zip/InflaterInputStream.md "class in java.util.zip")

[java.util.zip.ZipInputStream](../zip/ZipInputStream.md "class in java.util.zip")

java.util.jar.JarInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class JarInputStream
extends [ZipInputStream](../zip/ZipInputStream.md "class in java.util.zip")

The `JarInputStream` class, which extends [`ZipInputStream`](../zip/ZipInputStream.md "class in java.util.zip"),
is used to read the contents of a JAR file from an input stream.
It provides support for reading an optional
[Manifest](../../../../../specs/jar/jar.md#jar-manifest)
entry. The `Manifest` can be used to store
meta-information about the JAR file and its entries.

## Accessing the Manifest

The [`getManifest`](#getManifest()) method is used to return the
[Manifest](../../../../../specs/jar/jar.md#jar-manifest)
from the entry `META-INF/MANIFEST.MF` when it is the first entry
in the stream (or the second entry if the first entry in the stream is
`META-INF/` and the second entry is `META-INF/MANIFEST.MF`).

The [`getNextJarEntry()`](#getNextJarEntry()) and [`getNextEntry()`](#getNextEntry()) methods are
used to read JAR file entries from the stream. These methods skip over the
Manifest (`META-INF/MANIFEST.MF`) when it is at the beginning of the
stream. In other words, these methods do not return an entry for the Manifest
when the Manifest is the first entry in the stream. If the first entry is
`META-INF/` and the second entry is the Manifest then both are skipped
over by these methods. Whether these methods skip over the Manifest when it
appears later in the stream is not specified.

## Signed JAR Files

A `JarInputStream` verifies the signatures of entries in a
[Signed JAR file](../../../../../specs/jar/jar.md#signed-jar-file)
when:

* The `Manifest` is the first entry in the stream (or the second
  entry if the first entry in the stream is `META-INF/` and the
  second entry is `META-INF/MANIFEST.MF`).
* All signature-related entries immediately follow the `Manifest`

Once the `JarEntry` has been completely verified, which is done by
reading until the end of the entry's input stream,
[`JarEntry.getCertificates()`](JarEntry.md#getCertificates()) may be called to obtain the certificates
for this entry and [`JarEntry.getCodeSigners()`](JarEntry.md#getCodeSigners()) may be called to obtain
the signers.

It is important to note that the verification process does not include validating
the signer's certificate. A caller should inspect the return value of
[`JarEntry.getCodeSigners()`](JarEntry.md#getCodeSigners()) to further determine if the signature
can be trusted.

Since:
:   1.2

See Also:
:   * [`Manifest`](Manifest.md "class in java.util.jar")
    * [`ZipInputStream`](../zip/ZipInputStream.md "class in java.util.zip")

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

  ### Fields inherited from class java.util.zip.[InflaterInputStream](../zip/InflaterInputStream.md "class in java.util.zip")

  `buf, inf, len`

  ### Fields inherited from class java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")

  `in`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JarInputStream(InputStream in)`

  Creates a new `JarInputStream` and reads the optional
  manifest.

  `JarInputStream(InputStream in,
  boolean verify)`

  Creates a new `JarInputStream` and reads the optional
  manifest.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected ZipEntry`

  `createZipEntry(String name)`

  Creates a new `JarEntry` (`ZipEntry`) for the
  specified JAR file entry name.

  `Manifest`

  `getManifest()`

  Returns the `Manifest` for this JAR file when it is the first entry
  in the stream (or the second entry if the first entry in the stream is
  `META-INF/` and the second entry is `META-INF/MANIFEST.MF`), or
  `null` otherwise.

  `ZipEntry`

  `getNextEntry()`

  Reads the next ZIP file entry and positions the stream at the
  beginning of the entry data.

  `JarEntry`

  `getNextJarEntry()`

  Reads the next JAR file entry and positions the stream at the
  beginning of the entry data.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads from the current JAR entry into an array of bytes, returning the number of
  inflated bytes.

  ### Methods inherited from class java.util.zip.[ZipInputStream](../zip/ZipInputStream.md "class in java.util.zip")

  `available, close, closeEntry, read, readAllBytes, readNBytes, readNBytes, skip, skipNBytes, transferTo`

  ### Methods inherited from class java.util.zip.[InflaterInputStream](../zip/InflaterInputStream.md "class in java.util.zip")

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
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCSIG)
  + ### EXTSIG

    static final long EXTSIG

    Extra local (EXT) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.EXTSIG)
  + ### CENSIG

    static final long CENSIG

    Central directory (CEN) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENSIG)
  + ### ENDSIG

    static final long ENDSIG

    End of central directory (END) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.ENDSIG)
  + ### LOCHDR

    static final int LOCHDR

    Local file (LOC) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCHDR)
  + ### EXTHDR

    static final int EXTHDR

    Extra local (EXT) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.EXTHDR)
  + ### CENHDR

    static final int CENHDR

    Central directory (CEN) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENHDR)
  + ### ENDHDR

    static final int ENDHDR

    End of central directory (END) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.ENDHDR)
  + ### LOCVER

    static final int LOCVER

    Local file (LOC) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCVER)
  + ### LOCFLG

    static final int LOCFLG

    Local file (LOC) header general purpose bit flag field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCFLG)
  + ### LOCHOW

    static final int LOCHOW

    Local file (LOC) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCHOW)
  + ### LOCTIM

    static final int LOCTIM

    Local file (LOC) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCTIM)
  + ### LOCCRC

    static final int LOCCRC

    Local file (LOC) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCCRC)
  + ### LOCSIZ

    static final int LOCSIZ

    Local file (LOC) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCSIZ)
  + ### LOCLEN

    static final int LOCLEN

    Local file (LOC) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCLEN)
  + ### LOCNAM

    static final int LOCNAM

    Local file (LOC) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCNAM)
  + ### LOCEXT

    static final int LOCEXT

    Local file (LOC) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.LOCEXT)
  + ### EXTCRC

    static final int EXTCRC

    Extra local (EXT) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.EXTCRC)
  + ### EXTSIZ

    static final int EXTSIZ

    Extra local (EXT) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.EXTSIZ)
  + ### EXTLEN

    static final int EXTLEN

    Extra local (EXT) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.EXTLEN)
  + ### CENVEM

    static final int CENVEM

    Central directory (CEN) header version made by field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENVEM)
  + ### CENVER

    static final int CENVER

    Central directory (CEN) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENVER)
  + ### CENFLG

    static final int CENFLG

    Central directory (CEN) header encrypt, decrypt flags field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENFLG)
  + ### CENHOW

    static final int CENHOW

    Central directory (CEN) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENHOW)
  + ### CENTIM

    static final int CENTIM

    Central directory (CEN) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENTIM)
  + ### CENCRC

    static final int CENCRC

    Central directory (CEN) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENCRC)
  + ### CENSIZ

    static final int CENSIZ

    Central directory (CEN) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENSIZ)
  + ### CENLEN

    static final int CENLEN

    Central directory (CEN) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENLEN)
  + ### CENNAM

    static final int CENNAM

    Central directory (CEN) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENNAM)
  + ### CENEXT

    static final int CENEXT

    Central directory (CEN) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENEXT)
  + ### CENCOM

    static final int CENCOM

    Central directory (CEN) header comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENCOM)
  + ### CENDSK

    static final int CENDSK

    Central directory (CEN) header disk number start field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENDSK)
  + ### CENATT

    static final int CENATT

    Central directory (CEN) header internal file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENATT)
  + ### CENATX

    static final int CENATX

    Central directory (CEN) header external file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENATX)
  + ### CENOFF

    static final int CENOFF

    Central directory (CEN) header LOC header offset field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.CENOFF)
  + ### ENDSUB

    static final int ENDSUB

    End of central directory (END) header number of entries on this disk field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.ENDSUB)
  + ### ENDTOT

    static final int ENDTOT

    End of central directory (END) header total number of entries field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.ENDTOT)
  + ### ENDSIZ

    static final int ENDSIZ

    End of central directory (END) header central directory size in bytes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.ENDSIZ)
  + ### ENDOFF

    static final int ENDOFF

    End of central directory (END) header offset for the first CEN header field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.ENDOFF)
  + ### ENDCOM

    static final int ENDCOM

    End of central directory (END) header zip file comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarInputStream.ENDCOM)
* ## Constructor Details

  + ### JarInputStream

    public JarInputStream([InputStream](../../io/InputStream.md "class in java.io") in)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates a new `JarInputStream` and reads the optional
    manifest. If a manifest is present, also attempts to verify
    the signatures if the JarInputStream is signed.

    Parameters:
    :   `in` - the actual input stream

    Throws:
    :   `IOException` - if an I/O error has occurred
  + ### JarInputStream

    public JarInputStream([InputStream](../../io/InputStream.md "class in java.io") in,
    boolean verify)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates a new `JarInputStream` and reads the optional
    manifest. If a manifest is present and verify is true, also attempts
    to verify the signatures if the JarInputStream is signed.

    Parameters:
    :   `in` - the actual input stream
    :   `verify` - whether or not to verify the JarInputStream if
        it is signed.

    Throws:
    :   `IOException` - if an I/O error has occurred
* ## Method Details

  + ### getManifest

    public [Manifest](Manifest.md "class in java.util.jar") getManifest()

    Returns the `Manifest` for this JAR file when it is the first entry
    in the stream (or the second entry if the first entry in the stream is
    `META-INF/` and the second entry is `META-INF/MANIFEST.MF`), or
    `null` otherwise.

    Returns:
    :   the `Manifest` for this JAR file, or
        `null` otherwise.
  + ### getNextEntry

    public [ZipEntry](../zip/ZipEntry.md "class in java.util.zip") getNextEntry()
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads the next ZIP file entry and positions the stream at the
    beginning of the entry data. If verification has been enabled,
    any invalid signature detected while positioning the stream for
    the next entry will result in an exception.

    Overrides:
    :   `getNextEntry` in class `ZipInputStream`

    Returns:
    :   the next ZIP file entry, or null if there are no more entries

    Throws:
    :   `ZipException` - if a ZIP file error has occurred
    :   `IOException` - if an I/O error has occurred
    :   `SecurityException` - if any of the jar file entries
        are incorrectly signed.
  + ### getNextJarEntry

    public [JarEntry](JarEntry.md "class in java.util.jar") getNextJarEntry()
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads the next JAR file entry and positions the stream at the
    beginning of the entry data. If verification has been enabled,
    any invalid signature detected while positioning the stream for
    the next entry will result in an exception.

    Returns:
    :   the next JAR file entry, or null if there are no more entries

    Throws:
    :   `ZipException` - if a ZIP file error has occurred
    :   `IOException` - if an I/O error has occurred
    :   `SecurityException` - if any of the jar file entries
        are incorrectly signed.
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads from the current JAR entry into an array of bytes, returning the number of
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

    If verification has been enabled, any invalid signature
    on the current entry will be reported at some point before the
    end of the entry is reached.

    Overrides:
    :   `read` in class `ZipInputStream`

    Parameters:
    :   `b` - the buffer into which the data is read
    :   `off` - the start offset in the destination array `b`
    :   `len` - the maximum number of bytes to read

    Returns:
    :   the actual number of bytes read, or -1 if the end of the
        entry is reached

    Throws:
    :   `NullPointerException` - If `b` is `null`.
    :   `IndexOutOfBoundsException` - If `off` is negative,
        `len` is negative, or `len` is greater than
        `b.length - off`
    :   `ZipException` - if a ZIP file error has occurred
    :   `IOException` - if an I/O error has occurred
    :   `SecurityException` - if any of the jar file entries
        are incorrectly signed.

    See Also:
    :   - [`FilterInputStream.in`](../../io/FilterInputStream.md#in)
  + ### createZipEntry

    protected [ZipEntry](../zip/ZipEntry.md "class in java.util.zip") createZipEntry([String](../../lang/String.md "class in java.lang") name)

    Creates a new `JarEntry` (`ZipEntry`) for the
    specified JAR file entry name. The manifest attributes of
    the specified JAR file entry name will be copied to the new
    `JarEntry`.

    Overrides:
    :   `createZipEntry` in class `ZipInputStream`

    Parameters:
    :   `name` - the name of the JAR/ZIP file entry

    Returns:
    :   the `JarEntry` object just created