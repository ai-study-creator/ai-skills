Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class ZipFile

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.zip.ZipFile

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

Direct Known Subclasses:
:   `JarFile`

---

public class ZipFile
extends [Object](../../lang/Object.md "class in java.lang")
implements [Closeable](../../io/Closeable.md "interface in java.io")

This class is used to read entries from a zip file.

Unless otherwise noted, passing a `null` argument to a constructor
or method in this class will cause a [`NullPointerException`](../../lang/NullPointerException.md "class in java.lang") to be
thrown.

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

  `static final int`

  `OPEN_DELETE`

  Mode flag to open a zip file and mark it for deletion.

  `static final int`

  `OPEN_READ`

  Mode flag to open a zip file for reading.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ZipFile(File file)`

  Opens a ZIP file for reading given the specified File object.

  `ZipFile(File file,
  int mode)`

  Opens a new `ZipFile` to read from the specified
  `File` object in the specified mode.

  `ZipFile(File file,
  int mode,
  Charset charset)`

  Opens a new `ZipFile` to read from the specified
  `File` object in the specified mode.

  `ZipFile(File file,
  Charset charset)`

  Opens a ZIP file for reading given the specified File object.

  `ZipFile(String name)`

  Opens a zip file for reading.

  `ZipFile(String name,
  Charset charset)`

  Opens a zip file for reading.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes the ZIP file.

  `Enumeration<? extends ZipEntry>`

  `entries()`

  Returns an enumeration of the ZIP file entries.

  `String`

  `getComment()`

  Returns the zip file comment, or null if none.

  `ZipEntry`

  `getEntry(String name)`

  Returns the zip file entry for the specified name, or null
  if not found.

  `InputStream`

  `getInputStream(ZipEntry entry)`

  Returns an input stream for reading the contents of the specified
  zip file entry.

  `String`

  `getName()`

  Returns the path name of the ZIP file.

  `int`

  `size()`

  Returns the number of entries in the ZIP file.

  `Stream<? extends ZipEntry>`

  `stream()`

  Returns an ordered `Stream` over the ZIP file entries.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OPEN\_READ

    public static final int OPEN\_READ

    Mode flag to open a zip file for reading.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.OPEN_READ)
  + ### OPEN\_DELETE

    public static final int OPEN\_DELETE

    Mode flag to open a zip file and mark it for deletion. The file will be
    deleted some time between the moment that it is opened and the moment
    that it is closed, but its contents will remain accessible via the
    `ZipFile` object until either the close method is invoked or the
    virtual machine exits.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.OPEN_DELETE)
  + ### LOCSIG

    static final long LOCSIG

    Local file (LOC) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCSIG)
  + ### EXTSIG

    static final long EXTSIG

    Extra local (EXT) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.EXTSIG)
  + ### CENSIG

    static final long CENSIG

    Central directory (CEN) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENSIG)
  + ### ENDSIG

    static final long ENDSIG

    End of central directory (END) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.ENDSIG)
  + ### LOCHDR

    static final int LOCHDR

    Local file (LOC) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCHDR)
  + ### EXTHDR

    static final int EXTHDR

    Extra local (EXT) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.EXTHDR)
  + ### CENHDR

    static final int CENHDR

    Central directory (CEN) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENHDR)
  + ### ENDHDR

    static final int ENDHDR

    End of central directory (END) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.ENDHDR)
  + ### LOCVER

    static final int LOCVER

    Local file (LOC) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCVER)
  + ### LOCFLG

    static final int LOCFLG

    Local file (LOC) header general purpose bit flag field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCFLG)
  + ### LOCHOW

    static final int LOCHOW

    Local file (LOC) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCHOW)
  + ### LOCTIM

    static final int LOCTIM

    Local file (LOC) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCTIM)
  + ### LOCCRC

    static final int LOCCRC

    Local file (LOC) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCCRC)
  + ### LOCSIZ

    static final int LOCSIZ

    Local file (LOC) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCSIZ)
  + ### LOCLEN

    static final int LOCLEN

    Local file (LOC) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCLEN)
  + ### LOCNAM

    static final int LOCNAM

    Local file (LOC) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCNAM)
  + ### LOCEXT

    static final int LOCEXT

    Local file (LOC) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.LOCEXT)
  + ### EXTCRC

    static final int EXTCRC

    Extra local (EXT) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.EXTCRC)
  + ### EXTSIZ

    static final int EXTSIZ

    Extra local (EXT) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.EXTSIZ)
  + ### EXTLEN

    static final int EXTLEN

    Extra local (EXT) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.EXTLEN)
  + ### CENVEM

    static final int CENVEM

    Central directory (CEN) header version made by field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENVEM)
  + ### CENVER

    static final int CENVER

    Central directory (CEN) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENVER)
  + ### CENFLG

    static final int CENFLG

    Central directory (CEN) header encrypt, decrypt flags field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENFLG)
  + ### CENHOW

    static final int CENHOW

    Central directory (CEN) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENHOW)
  + ### CENTIM

    static final int CENTIM

    Central directory (CEN) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENTIM)
  + ### CENCRC

    static final int CENCRC

    Central directory (CEN) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENCRC)
  + ### CENSIZ

    static final int CENSIZ

    Central directory (CEN) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENSIZ)
  + ### CENLEN

    static final int CENLEN

    Central directory (CEN) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENLEN)
  + ### CENNAM

    static final int CENNAM

    Central directory (CEN) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENNAM)
  + ### CENEXT

    static final int CENEXT

    Central directory (CEN) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENEXT)
  + ### CENCOM

    static final int CENCOM

    Central directory (CEN) header comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENCOM)
  + ### CENDSK

    static final int CENDSK

    Central directory (CEN) header disk number start field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENDSK)
  + ### CENATT

    static final int CENATT

    Central directory (CEN) header internal file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENATT)
  + ### CENATX

    static final int CENATX

    Central directory (CEN) header external file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENATX)
  + ### CENOFF

    static final int CENOFF

    Central directory (CEN) header LOC header offset field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.CENOFF)
  + ### ENDSUB

    static final int ENDSUB

    End of central directory (END) header number of entries on this disk field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.ENDSUB)
  + ### ENDTOT

    static final int ENDTOT

    End of central directory (END) header total number of entries field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.ENDTOT)
  + ### ENDSIZ

    static final int ENDSIZ

    End of central directory (END) header central directory size in bytes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.ENDSIZ)
  + ### ENDOFF

    static final int ENDOFF

    End of central directory (END) header offset for the first CEN header field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.ENDOFF)
  + ### ENDCOM

    static final int ENDCOM

    End of central directory (END) header zip file comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipFile.ENDCOM)
* ## Constructor Details

  + ### ZipFile

    public ZipFile([String](../../lang/String.md "class in java.lang") name)
    throws [IOException](../../io/IOException.md "class in java.io")

    Opens a zip file for reading.

    First, if there is a security manager, its `checkRead`
    method is called with the `name` argument as its argument
    to ensure the read is allowed.

    The UTF-8 [`charset`](../../nio/charset/Charset.md "class in java.nio.charset") is used to
    decode the entry names and comments.

    Parameters:
    :   `name` - the name of the zip file

    Throws:
    :   `ZipException` - if a ZIP format error has occurred
    :   `IOException` - if an I/O error has occurred
    :   `SecurityException` - if a security manager exists and its
        `checkRead` method doesn't allow read access to the file.

    See Also:
    :   - [`SecurityManager.checkRead(java.lang.String)`](../../lang/SecurityManager.md#checkRead(java.lang.String))
  + ### ZipFile

    public ZipFile([File](../../io/File.md "class in java.io") file,
    int mode)
    throws [IOException](../../io/IOException.md "class in java.io")

    Opens a new `ZipFile` to read from the specified
    `File` object in the specified mode. The mode argument
    must be either `OPEN_READ` or `OPEN_READ | OPEN_DELETE`.

    First, if there is a security manager, its `checkRead`
    method is called with the `name` argument as its argument to
    ensure the read is allowed.

    The UTF-8 [`charset`](../../nio/charset/Charset.md "class in java.nio.charset") is used to
    decode the entry names and comments

    Parameters:
    :   `file` - the ZIP file to be opened for reading
    :   `mode` - the mode in which the file is to be opened

    Throws:
    :   `ZipException` - if a ZIP format error has occurred
    :   `IOException` - if an I/O error has occurred
    :   `SecurityException` - if a security manager exists and
        its `checkRead` method
        doesn't allow read access to the file,
        or its `checkDelete` method doesn't allow deleting
        the file when the `OPEN_DELETE` flag is set.
    :   `IllegalArgumentException` - if the `mode` argument is invalid

    Since:
    :   1.3

    See Also:
    :   - [`SecurityManager.checkRead(java.lang.String)`](../../lang/SecurityManager.md#checkRead(java.lang.String))
  + ### ZipFile

    public ZipFile([File](../../io/File.md "class in java.io") file)
    throws [ZipException](ZipException.md "class in java.util.zip"),
    [IOException](../../io/IOException.md "class in java.io")

    Opens a ZIP file for reading given the specified File object.

    The UTF-8 [`charset`](../../nio/charset/Charset.md "class in java.nio.charset") is used to
    decode the entry names and comments.

    Parameters:
    :   `file` - the ZIP file to be opened for reading

    Throws:
    :   `ZipException` - if a ZIP format error has occurred
    :   `IOException` - if an I/O error has occurred
  + ### ZipFile

    public ZipFile([File](../../io/File.md "class in java.io") file,
    int mode,
    [Charset](../../nio/charset/Charset.md "class in java.nio.charset") charset)
    throws [IOException](../../io/IOException.md "class in java.io")

    Opens a new `ZipFile` to read from the specified
    `File` object in the specified mode. The mode argument
    must be either `OPEN_READ` or `OPEN_READ | OPEN_DELETE`.

    First, if there is a security manager, its `checkRead`
    method is called with the `name` argument as its argument to
    ensure the read is allowed.

    Parameters:
    :   `file` - the ZIP file to be opened for reading
    :   `mode` - the mode in which the file is to be opened
    :   `charset` - the [charset](../../nio/charset/Charset.md "class in java.nio.charset") to
        be used to decode the ZIP entry name and comment that are not
        encoded by using UTF-8 encoding (indicated by entry's general
        purpose flag).

    Throws:
    :   `ZipException` - if a ZIP format error has occurred
    :   `IOException` - if an I/O error has occurred
    :   `SecurityException` - if a security manager exists and its `checkRead`
        method doesn't allow read access to the file, or its
        `checkDelete` method doesn't allow deleting the
        file when the `OPEN_DELETE` flag is set
    :   `IllegalArgumentException` - if the `mode` argument is invalid

    Since:
    :   1.7

    See Also:
    :   - [`SecurityManager.checkRead(java.lang.String)`](../../lang/SecurityManager.md#checkRead(java.lang.String))
  + ### ZipFile

    public ZipFile([String](../../lang/String.md "class in java.lang") name,
    [Charset](../../nio/charset/Charset.md "class in java.nio.charset") charset)
    throws [IOException](../../io/IOException.md "class in java.io")

    Opens a zip file for reading.

    First, if there is a security manager, its `checkRead`
    method is called with the `name` argument as its argument
    to ensure the read is allowed.

    Parameters:
    :   `name` - the name of the zip file
    :   `charset` - the [charset](../../nio/charset/Charset.md "class in java.nio.charset") to
        be used to decode the ZIP entry name and comment that are not
        encoded by using UTF-8 encoding (indicated by entry's general
        purpose flag).

    Throws:
    :   `ZipException` - if a ZIP format error has occurred
    :   `IOException` - if an I/O error has occurred
    :   `SecurityException` - if a security manager exists and its `checkRead`
        method doesn't allow read access to the file

    Since:
    :   1.7

    See Also:
    :   - [`SecurityManager.checkRead(java.lang.String)`](../../lang/SecurityManager.md#checkRead(java.lang.String))
  + ### ZipFile

    public ZipFile([File](../../io/File.md "class in java.io") file,
    [Charset](../../nio/charset/Charset.md "class in java.nio.charset") charset)
    throws [IOException](../../io/IOException.md "class in java.io")

    Opens a ZIP file for reading given the specified File object.

    Parameters:
    :   `file` - the ZIP file to be opened for reading
    :   `charset` - The [charset](../../nio/charset/Charset.md "class in java.nio.charset") to be
        used to decode the ZIP entry name and comment (ignored if
        the  [language
        encoding bit](package-summary.md#lang_encoding) of the ZIP entry's general purpose bit
        flag is set).

    Throws:
    :   `ZipException` - if a ZIP format error has occurred
    :   `IOException` - if an I/O error has occurred

    Since:
    :   1.7
* ## Method Details

  + ### getComment

    public [String](../../lang/String.md "class in java.lang") getComment()

    Returns the zip file comment, or null if none.

    Returns:
    :   the comment string for the zip file, or null if none

    Throws:
    :   `IllegalStateException` - if the zip file has been closed

    Since:
    :   1.7
  + ### getEntry

    public [ZipEntry](ZipEntry.md "class in java.util.zip") getEntry([String](../../lang/String.md "class in java.lang") name)

    Returns the zip file entry for the specified name, or null
    if not found.

    Parameters:
    :   `name` - the name of the entry

    Returns:
    :   the zip file entry, or null if not found

    Throws:
    :   `IllegalStateException` - if the zip file has been closed
  + ### getInputStream

    public [InputStream](../../io/InputStream.md "class in java.io") getInputStream([ZipEntry](ZipEntry.md "class in java.util.zip") entry)
    throws [IOException](../../io/IOException.md "class in java.io")

    Returns an input stream for reading the contents of the specified
    zip file entry.

    Closing this ZIP file will, in turn, close all input streams that
    have been returned by invocations of this method.

    Parameters:
    :   `entry` - the zip file entry

    Returns:
    :   the input stream for reading the contents of the specified
        zip file entry or null if the zip file entry does not exist
        within the zip file.

    Throws:
    :   `ZipException` - if a ZIP format error has occurred
    :   `IOException` - if an I/O error has occurred
    :   `IllegalStateException` - if the zip file has been closed
  + ### getName

    public [String](../../lang/String.md "class in java.lang") getName()

    Returns the path name of the ZIP file.

    Returns:
    :   the path name of the ZIP file
  + ### entries

    public [Enumeration](../Enumeration.md "interface in java.util")<? extends [ZipEntry](ZipEntry.md "class in java.util.zip")> entries()

    Returns an enumeration of the ZIP file entries.

    Returns:
    :   an enumeration of the ZIP file entries

    Throws:
    :   `IllegalStateException` - if the zip file has been closed
  + ### stream

    public [Stream](../stream/Stream.md "interface in java.util.stream")<? extends [ZipEntry](ZipEntry.md "class in java.util.zip")> stream()

    Returns an ordered `Stream` over the ZIP file entries.
    Entries appear in the `Stream` in the order they appear in
    the central directory of the ZIP file.

    Returns:
    :   an ordered `Stream` of entries in this ZIP file

    Throws:
    :   `IllegalStateException` - if the zip file has been closed

    Since:
    :   1.8
  + ### size

    public int size()

    Returns the number of entries in the ZIP file.

    Returns:
    :   the number of entries in the ZIP file

    Throws:
    :   `IllegalStateException` - if the zip file has been closed
  + ### close

    public void close()
    throws [IOException](../../io/IOException.md "class in java.io")

    Closes the ZIP file.

    Closing this ZIP file will close all of the input streams
    previously returned by invocations of the [`getInputStream`](#getInputStream(java.util.zip.ZipEntry)) method.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Throws:
    :   `IOException` - if an I/O error has occurred