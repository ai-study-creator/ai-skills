Module [java.base](../../../module-summary.md)

Package [java.util.jar](package-summary.md)

# Class JarEntry

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.zip.ZipEntry](../zip/ZipEntry.md "class in java.util.zip")

java.util.jar.JarEntry

All Implemented Interfaces:
:   `Cloneable`

---

public class JarEntry
extends [ZipEntry](../zip/ZipEntry.md "class in java.util.zip")

This class is used to represent a JAR file entry.

Since:
:   1.2

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

  ### Fields inherited from class java.util.zip.[ZipEntry](../zip/ZipEntry.md "class in java.util.zip")

  `DEFLATED, STORED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JarEntry(String name)`

  Creates a new `JarEntry` for the specified JAR file
  entry name.

  `JarEntry(JarEntry je)`

  Creates a new `JarEntry` with fields taken from the
  specified `JarEntry` object.

  `JarEntry(ZipEntry ze)`

  Creates a new `JarEntry` with fields taken from the
  specified `ZipEntry` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Attributes`

  `getAttributes()`

  Returns the `Manifest` `Attributes` for this
  entry, or `null` if none.

  `Certificate[]`

  `getCertificates()`

  Returns the `Certificate` objects for this entry, or
  `null` if none.

  `CodeSigner[]`

  `getCodeSigners()`

  Returns the `CodeSigner` objects for this entry, or
  `null` if none.

  `String`

  `getRealName()`

  Returns the real name of this `JarEntry`.

  ### Methods inherited from class java.util.zip.[ZipEntry](../zip/ZipEntry.md "class in java.util.zip")

  `clone, getComment, getCompressedSize, getCrc, getCreationTime, getExtra, getLastAccessTime, getLastModifiedTime, getMethod, getName, getSize, getTime, getTimeLocal, hashCode, isDirectory, setComment, setCompressedSize, setCrc, setCreationTime, setExtra, setLastAccessTime, setLastModifiedTime, setMethod, setSize, setTime, setTimeLocal, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### LOCSIG

    static final long LOCSIG

    Local file (LOC) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCSIG)
  + ### EXTSIG

    static final long EXTSIG

    Extra local (EXT) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.EXTSIG)
  + ### CENSIG

    static final long CENSIG

    Central directory (CEN) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENSIG)
  + ### ENDSIG

    static final long ENDSIG

    End of central directory (END) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.ENDSIG)
  + ### LOCHDR

    static final int LOCHDR

    Local file (LOC) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCHDR)
  + ### EXTHDR

    static final int EXTHDR

    Extra local (EXT) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.EXTHDR)
  + ### CENHDR

    static final int CENHDR

    Central directory (CEN) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENHDR)
  + ### ENDHDR

    static final int ENDHDR

    End of central directory (END) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.ENDHDR)
  + ### LOCVER

    static final int LOCVER

    Local file (LOC) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCVER)
  + ### LOCFLG

    static final int LOCFLG

    Local file (LOC) header general purpose bit flag field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCFLG)
  + ### LOCHOW

    static final int LOCHOW

    Local file (LOC) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCHOW)
  + ### LOCTIM

    static final int LOCTIM

    Local file (LOC) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCTIM)
  + ### LOCCRC

    static final int LOCCRC

    Local file (LOC) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCCRC)
  + ### LOCSIZ

    static final int LOCSIZ

    Local file (LOC) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCSIZ)
  + ### LOCLEN

    static final int LOCLEN

    Local file (LOC) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCLEN)
  + ### LOCNAM

    static final int LOCNAM

    Local file (LOC) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCNAM)
  + ### LOCEXT

    static final int LOCEXT

    Local file (LOC) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.LOCEXT)
  + ### EXTCRC

    static final int EXTCRC

    Extra local (EXT) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.EXTCRC)
  + ### EXTSIZ

    static final int EXTSIZ

    Extra local (EXT) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.EXTSIZ)
  + ### EXTLEN

    static final int EXTLEN

    Extra local (EXT) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.EXTLEN)
  + ### CENVEM

    static final int CENVEM

    Central directory (CEN) header version made by field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENVEM)
  + ### CENVER

    static final int CENVER

    Central directory (CEN) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENVER)
  + ### CENFLG

    static final int CENFLG

    Central directory (CEN) header encrypt, decrypt flags field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENFLG)
  + ### CENHOW

    static final int CENHOW

    Central directory (CEN) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENHOW)
  + ### CENTIM

    static final int CENTIM

    Central directory (CEN) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENTIM)
  + ### CENCRC

    static final int CENCRC

    Central directory (CEN) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENCRC)
  + ### CENSIZ

    static final int CENSIZ

    Central directory (CEN) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENSIZ)
  + ### CENLEN

    static final int CENLEN

    Central directory (CEN) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENLEN)
  + ### CENNAM

    static final int CENNAM

    Central directory (CEN) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENNAM)
  + ### CENEXT

    static final int CENEXT

    Central directory (CEN) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENEXT)
  + ### CENCOM

    static final int CENCOM

    Central directory (CEN) header comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENCOM)
  + ### CENDSK

    static final int CENDSK

    Central directory (CEN) header disk number start field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENDSK)
  + ### CENATT

    static final int CENATT

    Central directory (CEN) header internal file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENATT)
  + ### CENATX

    static final int CENATX

    Central directory (CEN) header external file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENATX)
  + ### CENOFF

    static final int CENOFF

    Central directory (CEN) header LOC header offset field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.CENOFF)
  + ### ENDSUB

    static final int ENDSUB

    End of central directory (END) header number of entries on this disk field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.ENDSUB)
  + ### ENDTOT

    static final int ENDTOT

    End of central directory (END) header total number of entries field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.ENDTOT)
  + ### ENDSIZ

    static final int ENDSIZ

    End of central directory (END) header central directory size in bytes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.ENDSIZ)
  + ### ENDOFF

    static final int ENDOFF

    End of central directory (END) header offset for the first CEN header field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.ENDOFF)
  + ### ENDCOM

    static final int ENDCOM

    End of central directory (END) header zip file comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.jar.JarEntry.ENDCOM)
* ## Constructor Details

  + ### JarEntry

    public JarEntry([String](../../lang/String.md "class in java.lang") name)

    Creates a new `JarEntry` for the specified JAR file
    entry name.

    Parameters:
    :   `name` - the JAR file entry name

    Throws:
    :   `NullPointerException` - if the entry name is `null`
    :   `IllegalArgumentException` - if the entry name is longer than
        0xFFFF bytes.
  + ### JarEntry

    public JarEntry([ZipEntry](../zip/ZipEntry.md "class in java.util.zip") ze)

    Creates a new `JarEntry` with fields taken from the
    specified `ZipEntry` object.

    Parameters:
    :   `ze` - the `ZipEntry` object to create the
        `JarEntry` from
  + ### JarEntry

    public JarEntry([JarEntry](JarEntry.md "class in java.util.jar") je)

    Creates a new `JarEntry` with fields taken from the
    specified `JarEntry` object.

    Parameters:
    :   `je` - the `JarEntry` to copy
* ## Method Details

  + ### getAttributes

    public [Attributes](Attributes.md "class in java.util.jar") getAttributes()
    throws [IOException](../../io/IOException.md "class in java.io")

    Returns the `Manifest` `Attributes` for this
    entry, or `null` if none.

    Returns:
    :   the `Manifest` `Attributes` for this
        entry, or `null` if none

    Throws:
    :   `IOException` - if an I/O error has occurred
  + ### getCertificates

    public [Certificate](../../security/cert/Certificate.md "class in java.security.cert")[] getCertificates()

    Returns the `Certificate` objects for this entry, or
    `null` if none. This method can only be called once
    the `JarEntry` has been completely verified by reading
    from the entry input stream until the end of the stream has been
    reached. Otherwise, this method will return `null`.

    The returned certificate array comprises all the signer certificates
    that were used to verify this entry. Each signer certificate is
    followed by its supporting certificate chain (which may be empty).
    Each signer certificate and its supporting certificate chain are ordered
    bottom-to-top (i.e., with the signer certificate first and the (root)
    certificate authority last).

    Returns:
    :   the `Certificate` objects for this entry, or
        `null` if none.
  + ### getCodeSigners

    public [CodeSigner](../../security/CodeSigner.md "class in java.security")[] getCodeSigners()

    Returns the `CodeSigner` objects for this entry, or
    `null` if none. This method can only be called once
    the `JarEntry` has been completely verified by reading
    from the entry input stream until the end of the stream has been
    reached. Otherwise, this method will return `null`.

    The returned array comprises all the code signers that have signed
    this entry.

    Returns:
    :   the `CodeSigner` objects for this entry, or
        `null` if none.

    Since:
    :   1.5
  + ### getRealName

    public [String](../../lang/String.md "class in java.lang") getRealName()

    Returns the real name of this `JarEntry`.
    If this `JarEntry` is an entry of a
    [multi-release jar file](JarFile.md#multirelease) and the
    `JarFile` is configured to be processed as such, the name returned
    by this method is the path name of the versioned entry that the
    `JarEntry` represents, rather than the path name of the base entry
    that [`ZipEntry.getName()`](../zip/ZipEntry.md#getName()) returns. If the `JarEntry` does not represent
    a versioned entry of a multi-release `JarFile` or the `JarFile`
    is not configured for processing a multi-release jar file, this method
    returns the same name that [`ZipEntry.getName()`](../zip/ZipEntry.md#getName()) returns.

    Returns:
    :   the real name of the JarEntry

    Since:
    :   10