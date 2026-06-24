Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class ZipEntry

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.zip.ZipEntry

All Implemented Interfaces:
:   `Cloneable`

Direct Known Subclasses:
:   `JarEntry`

---

public class ZipEntry
extends [Object](../../lang/Object.md "class in java.lang")
implements [Cloneable](../../lang/Cloneable.md "interface in java.lang")

This class is used to represent a ZIP file entry.

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

  Compression method for compressed (deflated) entries.

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

  Compression method for uncompressed entries.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ZipEntry(String name)`

  Creates a new zip entry with the specified name.

  `ZipEntry(ZipEntry e)`

  Creates a new zip entry with fields taken from the specified
  zip entry.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a copy of this entry.

  `String`

  `getComment()`

  Returns the comment string for the entry.

  `long`

  `getCompressedSize()`

  Returns the size of the compressed entry data.

  `long`

  `getCrc()`

  Returns the CRC-32 checksum of the uncompressed entry data.

  `FileTime`

  `getCreationTime()`

  Returns the creation time of the entry.

  `byte[]`

  `getExtra()`

  Returns the extra field data for the entry.

  `FileTime`

  `getLastAccessTime()`

  Returns the last access time of the entry.

  `FileTime`

  `getLastModifiedTime()`

  Returns the last modification time of the entry.

  `int`

  `getMethod()`

  Returns the compression method of the entry.

  `String`

  `getName()`

  Returns the name of the entry.

  `long`

  `getSize()`

  Returns the uncompressed size of the entry data.

  `long`

  `getTime()`

  Returns the last modification time of the entry.

  `LocalDateTime`

  `getTimeLocal()`

  Returns the last modification time of the entry in local date-time.

  `int`

  `hashCode()`

  Returns the hash code value for this entry.

  `boolean`

  `isDirectory()`

  Returns true if this is a directory entry.

  `void`

  `setComment(String comment)`

  Sets the optional comment string for the entry.

  `void`

  `setCompressedSize(long csize)`

  Sets the size of the compressed entry data.

  `void`

  `setCrc(long crc)`

  Sets the CRC-32 checksum of the uncompressed entry data.

  `ZipEntry`

  `setCreationTime(FileTime time)`

  Sets the creation time of the entry.

  `void`

  `setExtra(byte[] extra)`

  Sets the optional extra field data for the entry.

  `ZipEntry`

  `setLastAccessTime(FileTime time)`

  Sets the last access time of the entry.

  `ZipEntry`

  `setLastModifiedTime(FileTime time)`

  Sets the last modification time of the entry.

  `void`

  `setMethod(int method)`

  Sets the compression method for the entry.

  `void`

  `setSize(long size)`

  Sets the uncompressed size of the entry data.

  `void`

  `setTime(long time)`

  Sets the last modification time of the entry.

  `void`

  `setTimeLocal(LocalDateTime time)`

  Sets the last modification time of the entry in local date-time.

  `String`

  `toString()`

  Returns a string representation of the ZIP entry.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### STORED

    public static final int STORED

    Compression method for uncompressed entries.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.STORED)
  + ### DEFLATED

    public static final int DEFLATED

    Compression method for compressed (deflated) entries.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.DEFLATED)
  + ### LOCSIG

    static final long LOCSIG

    Local file (LOC) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCSIG)
  + ### EXTSIG

    static final long EXTSIG

    Extra local (EXT) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.EXTSIG)
  + ### CENSIG

    static final long CENSIG

    Central directory (CEN) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENSIG)
  + ### ENDSIG

    static final long ENDSIG

    End of central directory (END) header signature.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.ENDSIG)
  + ### LOCHDR

    static final int LOCHDR

    Local file (LOC) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCHDR)
  + ### EXTHDR

    static final int EXTHDR

    Extra local (EXT) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.EXTHDR)
  + ### CENHDR

    static final int CENHDR

    Central directory (CEN) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENHDR)
  + ### ENDHDR

    static final int ENDHDR

    End of central directory (END) header size in bytes (including signature).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.ENDHDR)
  + ### LOCVER

    static final int LOCVER

    Local file (LOC) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCVER)
  + ### LOCFLG

    static final int LOCFLG

    Local file (LOC) header general purpose bit flag field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCFLG)
  + ### LOCHOW

    static final int LOCHOW

    Local file (LOC) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCHOW)
  + ### LOCTIM

    static final int LOCTIM

    Local file (LOC) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCTIM)
  + ### LOCCRC

    static final int LOCCRC

    Local file (LOC) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCCRC)
  + ### LOCSIZ

    static final int LOCSIZ

    Local file (LOC) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCSIZ)
  + ### LOCLEN

    static final int LOCLEN

    Local file (LOC) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCLEN)
  + ### LOCNAM

    static final int LOCNAM

    Local file (LOC) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCNAM)
  + ### LOCEXT

    static final int LOCEXT

    Local file (LOC) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.LOCEXT)
  + ### EXTCRC

    static final int EXTCRC

    Extra local (EXT) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.EXTCRC)
  + ### EXTSIZ

    static final int EXTSIZ

    Extra local (EXT) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.EXTSIZ)
  + ### EXTLEN

    static final int EXTLEN

    Extra local (EXT) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.EXTLEN)
  + ### CENVEM

    static final int CENVEM

    Central directory (CEN) header version made by field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENVEM)
  + ### CENVER

    static final int CENVER

    Central directory (CEN) header version needed to extract field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENVER)
  + ### CENFLG

    static final int CENFLG

    Central directory (CEN) header encrypt, decrypt flags field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENFLG)
  + ### CENHOW

    static final int CENHOW

    Central directory (CEN) header compression method field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENHOW)
  + ### CENTIM

    static final int CENTIM

    Central directory (CEN) header modification time field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENTIM)
  + ### CENCRC

    static final int CENCRC

    Central directory (CEN) header uncompressed file crc-32 value field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENCRC)
  + ### CENSIZ

    static final int CENSIZ

    Central directory (CEN) header compressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENSIZ)
  + ### CENLEN

    static final int CENLEN

    Central directory (CEN) header uncompressed size field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENLEN)
  + ### CENNAM

    static final int CENNAM

    Central directory (CEN) header filename length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENNAM)
  + ### CENEXT

    static final int CENEXT

    Central directory (CEN) header extra field length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENEXT)
  + ### CENCOM

    static final int CENCOM

    Central directory (CEN) header comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENCOM)
  + ### CENDSK

    static final int CENDSK

    Central directory (CEN) header disk number start field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENDSK)
  + ### CENATT

    static final int CENATT

    Central directory (CEN) header internal file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENATT)
  + ### CENATX

    static final int CENATX

    Central directory (CEN) header external file attributes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENATX)
  + ### CENOFF

    static final int CENOFF

    Central directory (CEN) header LOC header offset field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.CENOFF)
  + ### ENDSUB

    static final int ENDSUB

    End of central directory (END) header number of entries on this disk field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.ENDSUB)
  + ### ENDTOT

    static final int ENDTOT

    End of central directory (END) header total number of entries field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.ENDTOT)
  + ### ENDSIZ

    static final int ENDSIZ

    End of central directory (END) header central directory size in bytes field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.ENDSIZ)
  + ### ENDOFF

    static final int ENDOFF

    End of central directory (END) header offset for the first CEN header field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.ENDOFF)
  + ### ENDCOM

    static final int ENDCOM

    End of central directory (END) header zip file comment length field offset.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.util.zip.ZipEntry.ENDCOM)
* ## Constructor Details

  + ### ZipEntry

    public ZipEntry([String](../../lang/String.md "class in java.lang") name)

    Creates a new zip entry with the specified name.

    Parameters:
    :   `name` - The entry name

    Throws:
    :   `NullPointerException` - if the entry name is null
    :   `IllegalArgumentException` - if the entry name is longer than
        0xFFFF bytes
  + ### ZipEntry

    public ZipEntry([ZipEntry](ZipEntry.md "class in java.util.zip") e)

    Creates a new zip entry with fields taken from the specified
    zip entry.

    Parameters:
    :   `e` - A zip Entry object

    Throws:
    :   `NullPointerException` - if the entry object is null
* ## Method Details

  + ### getName

    public [String](../../lang/String.md "class in java.lang") getName()

    Returns the name of the entry.

    Returns:
    :   the name of the entry
  + ### setTime

    public void setTime(long time)

    Sets the last modification time of the entry.

    If the entry is output to a ZIP file or ZIP file formatted
    output stream the last modification time set by this method will
    be stored into the `date and time fields` of the zip file
    entry and encoded in standard `MS-DOS date and time format`.
    The [`default TimeZone`](../TimeZone.md#getDefault()) is
    used to convert the epoch time to the MS-DOS date and time.

    Parameters:
    :   `time` - The last modification time of the entry in milliseconds
        since the epoch

    See Also:
    :   - [`getTime()`](#getTime())
        - [`getLastModifiedTime()`](#getLastModifiedTime())
  + ### getTime

    public long getTime()

    Returns the last modification time of the entry.

    If the entry is read from a ZIP file or ZIP file formatted
    input stream, this is the last modification time from the `date and time fields` of the zip file entry. The
    [`default TimeZone`](../TimeZone.md#getDefault()) is used
    to convert the standard MS-DOS formatted date and time to the
    epoch time.

    Returns:
    :   The last modification time of the entry in milliseconds
        since the epoch, or -1 if not specified

    See Also:
    :   - [`setTime(long)`](#setTime(long))
        - [`setLastModifiedTime(FileTime)`](#setLastModifiedTime(java.nio.file.attribute.FileTime))
  + ### setTimeLocal

    public void setTimeLocal([LocalDateTime](../../time/LocalDateTime.md "class in java.time") time)

    Sets the last modification time of the entry in local date-time.

    If the entry is output to a ZIP file or ZIP file formatted
    output stream the last modification time set by this method will
    be stored into the `date and time fields` of the zip file
    entry and encoded in standard `MS-DOS date and time format`.
    If the date-time set is out of the range of the standard `MS-DOS date and time format`, the time will also be stored into
    zip file entry's extended timestamp fields in `optional
    extra data` in UTC time. The [`system default TimeZone`](../../time/ZoneId.md#systemDefault()) is used to convert the local date-time
    to UTC time.

    `LocalDateTime` uses a precision of nanoseconds, whereas
    this class uses a precision of milliseconds. The conversion will
    truncate any excess precision information as though the amount in
    nanoseconds was subject to integer division by one million.

    Parameters:
    :   `time` - The last modification time of the entry in local date-time

    Since:
    :   9

    See Also:
    :   - [`getTimeLocal()`](#getTimeLocal())
  + ### getTimeLocal

    public [LocalDateTime](../../time/LocalDateTime.md "class in java.time") getTimeLocal()

    Returns the last modification time of the entry in local date-time.

    If the entry is read from a ZIP file or ZIP file formatted
    input stream, this is the last modification time from the zip
    file entry's `optional extra data` if the extended timestamp
    fields are present. Otherwise, the last modification time is read
    from entry's standard MS-DOS formatted `date and time fields`.

    The [`system default TimeZone`](../../time/ZoneId.md#systemDefault())
    is used to convert the UTC time to local date-time.

    Returns:
    :   The last modification time of the entry in local date-time

    Since:
    :   9

    See Also:
    :   - [`setTimeLocal(LocalDateTime)`](#setTimeLocal(java.time.LocalDateTime))
  + ### setLastModifiedTime

    public [ZipEntry](ZipEntry.md "class in java.util.zip") setLastModifiedTime([FileTime](../../nio/file/attribute/FileTime.md "class in java.nio.file.attribute") time)

    Sets the last modification time of the entry.

    When output to a ZIP file or ZIP file formatted output stream
    the last modification time set by this method will be stored into
    zip file entry's `date and time fields` in `standard
    MS-DOS date and time format`), and the extended timestamp fields
    in `optional extra data` in UTC time.

    Parameters:
    :   `time` - The last modification time of the entry

    Returns:
    :   This zip entry

    Throws:
    :   `NullPointerException` - if the `time` is null

    Since:
    :   1.8

    See Also:
    :   - [`getLastModifiedTime()`](#getLastModifiedTime())
  + ### getLastModifiedTime

    public [FileTime](../../nio/file/attribute/FileTime.md "class in java.nio.file.attribute") getLastModifiedTime()

    Returns the last modification time of the entry.

    If the entry is read from a ZIP file or ZIP file formatted
    input stream, this is the last modification time from the zip
    file entry's `optional extra data` if the extended timestamp
    fields are present. Otherwise the last modification time is read
    from the entry's `date and time fields`, the [`default TimeZone`](../TimeZone.md#getDefault()) is used to convert
    the standard MS-DOS formatted date and time to the epoch time.

    Returns:
    :   The last modification time of the entry, null if not specified

    Since:
    :   1.8

    See Also:
    :   - [`setLastModifiedTime(FileTime)`](#setLastModifiedTime(java.nio.file.attribute.FileTime))
  + ### setLastAccessTime

    public [ZipEntry](ZipEntry.md "class in java.util.zip") setLastAccessTime([FileTime](../../nio/file/attribute/FileTime.md "class in java.nio.file.attribute") time)

    Sets the last access time of the entry.

    If set, the last access time will be stored into the extended
    timestamp fields of entry's `optional extra data`, when output
    to a ZIP file or ZIP file formatted stream.

    Parameters:
    :   `time` - The last access time of the entry

    Returns:
    :   This zip entry

    Throws:
    :   `NullPointerException` - if the `time` is null

    Since:
    :   1.8

    See Also:
    :   - [`getLastAccessTime()`](#getLastAccessTime())
  + ### getLastAccessTime

    public [FileTime](../../nio/file/attribute/FileTime.md "class in java.nio.file.attribute") getLastAccessTime()

    Returns the last access time of the entry.

    The last access time is from the extended timestamp fields
    of entry's `optional extra data` when read from a ZIP file
    or ZIP file formatted stream.

    Returns:
    :   The last access time of the entry, null if not specified

    Since:
    :   1.8

    See Also:
    :   - [`setLastAccessTime(FileTime)`](#setLastAccessTime(java.nio.file.attribute.FileTime))
  + ### setCreationTime

    public [ZipEntry](ZipEntry.md "class in java.util.zip") setCreationTime([FileTime](../../nio/file/attribute/FileTime.md "class in java.nio.file.attribute") time)

    Sets the creation time of the entry.

    If set, the creation time will be stored into the extended
    timestamp fields of entry's `optional extra data`, when
    output to a ZIP file or ZIP file formatted stream.

    Parameters:
    :   `time` - The creation time of the entry

    Returns:
    :   This zip entry

    Throws:
    :   `NullPointerException` - if the `time` is null

    Since:
    :   1.8

    See Also:
    :   - [`getCreationTime()`](#getCreationTime())
  + ### getCreationTime

    public [FileTime](../../nio/file/attribute/FileTime.md "class in java.nio.file.attribute") getCreationTime()

    Returns the creation time of the entry.

    The creation time is from the extended timestamp fields of
    entry's `optional extra data` when read from a ZIP file
    or ZIP file formatted stream.

    Returns:
    :   the creation time of the entry, null if not specified

    Since:
    :   1.8

    See Also:
    :   - [`setCreationTime(FileTime)`](#setCreationTime(java.nio.file.attribute.FileTime))
  + ### setSize

    public void setSize(long size)

    Sets the uncompressed size of the entry data.

    Parameters:
    :   `size` - the uncompressed size in bytes

    Throws:
    :   `IllegalArgumentException` - if the specified size is less
        than 0, is greater than 0xFFFFFFFF when
        [ZIP64 format](package-summary.md#zip64) is not supported,
        or is less than 0 when ZIP64 is supported

    See Also:
    :   - [`getSize()`](#getSize())
  + ### getSize

    public long getSize()

    Returns the uncompressed size of the entry data.

    Returns:
    :   the uncompressed size of the entry data, or -1 if not known

    See Also:
    :   - [`setSize(long)`](#setSize(long))
  + ### getCompressedSize

    public long getCompressedSize()

    Returns the size of the compressed entry data.

    In the case of a stored entry, the compressed size will be the same
    as the uncompressed size of the entry.

    Returns:
    :   the size of the compressed entry data, or -1 if not known

    See Also:
    :   - [`setCompressedSize(long)`](#setCompressedSize(long))
  + ### setCompressedSize

    public void setCompressedSize(long csize)

    Sets the size of the compressed entry data.

    Parameters:
    :   `csize` - the compressed size to set

    See Also:
    :   - [`getCompressedSize()`](#getCompressedSize())
  + ### setCrc

    public void setCrc(long crc)

    Sets the CRC-32 checksum of the uncompressed entry data.

    Parameters:
    :   `crc` - the CRC-32 value

    Throws:
    :   `IllegalArgumentException` - if the specified CRC-32 value is
        less than 0 or greater than 0xFFFFFFFF

    See Also:
    :   - [`getCrc()`](#getCrc())
  + ### getCrc

    public long getCrc()

    Returns the CRC-32 checksum of the uncompressed entry data.

    Returns:
    :   the CRC-32 checksum of the uncompressed entry data, or -1 if
        not known

    See Also:
    :   - [`setCrc(long)`](#setCrc(long))
  + ### setMethod

    public void setMethod(int method)

    Sets the compression method for the entry.

    Parameters:
    :   `method` - the compression method, either STORED or DEFLATED

    Throws:
    :   `IllegalArgumentException` - if the specified compression
        method is invalid

    See Also:
    :   - [`getMethod()`](#getMethod())
  + ### getMethod

    public int getMethod()

    Returns the compression method of the entry.

    Returns:
    :   the compression method of the entry, or -1 if not specified

    See Also:
    :   - [`setMethod(int)`](#setMethod(int))
  + ### setExtra

    public void setExtra(byte[] extra)

    Sets the optional extra field data for the entry.

    Invoking this method may change this entry's last modification
    time, last access time and creation time, if the `extra` field
    data includes the extensible timestamp fields, such as `NTFS tag
    0x0001` or `Info-ZIP Extended Timestamp`, as specified in
    [Info-ZIP
    Application Note 970311](http://www.info-zip.org/doc/appnote-19970311-iz.zip).

    Parameters:
    :   `extra` - The extra field data bytes

    Throws:
    :   `IllegalArgumentException` - if the length of the specified
        extra field data is greater than 0xFFFF bytes

    See Also:
    :   - [`getExtra()`](#getExtra())
  + ### getExtra

    public byte[] getExtra()

    Returns the extra field data for the entry.

    Returns:
    :   the extra field data for the entry, or null if none

    See Also:
    :   - [`setExtra(byte[])`](#setExtra(byte%5B%5D))
  + ### setComment

    public void setComment([String](../../lang/String.md "class in java.lang") comment)

    Sets the optional comment string for the entry.

    ZIP entry comments have maximum length of 0xffff. If the length of the
    specified comment string is greater than 0xFFFF bytes after encoding, only
    the first 0xFFFF bytes are output to the ZIP file entry.

    Parameters:
    :   `comment` - the comment string

    See Also:
    :   - [`getComment()`](#getComment())
  + ### getComment

    public [String](../../lang/String.md "class in java.lang") getComment()

    Returns the comment string for the entry.

    Returns:
    :   the comment string for the entry, or null if none

    See Also:
    :   - [`setComment(String)`](#setComment(java.lang.String))
  + ### isDirectory

    public boolean isDirectory()

    Returns true if this is a directory entry. A directory entry is
    defined to be one whose name ends with a '/'.

    Returns:
    :   true if this is a directory entry
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a string representation of the ZIP entry.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this entry.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### clone

    public [Object](../../lang/Object.md "class in java.lang") clone()

    Returns a copy of this entry.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../lang/Cloneable.md "interface in java.lang")