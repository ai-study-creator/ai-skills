Module [java.base](../../../module-summary.md)

# Package java.util.zip

---

package java.util.zip

Provides classes for reading and writing the standard ZIP and GZIP file
formats. Also includes classes for compressing and decompressing data using
the DEFLATE compression algorithm, which is used by the ZIP and GZIP file
formats. Additionally, there are utility classes for computing the CRC-32,
CRC-32C and Adler-32 checksums of arbitrary input streams.

## Package Specification

* [Info-ZIP Application Note 970311](http://www.info-zip.org/doc/appnote-19970311-iz.zip) - a detailed description of
  the Info-ZIP format upon which the `java.util.zip` classes
  are based.* An implementation may optionally support the
    ZIP64(tm) format extensions defined by the
    [PKWARE ZIP File Format Specification](https://support.pkware.com/home/pkzip/developer-tools/appnote). The ZIP64(tm) format
    extensions are used to overcome the size limitations of the
    original ZIP format.* APPENDIX D of
      [PKWARE ZIP File Format Specification](https://support.pkware.com/home/pkzip/developer-tools/appnote) - Language Encoding Flag
      to encode ZIP entry filename and comment fields using UTF-8.* [ZLIB Compressed Data Format Specification version 3.3](http://www.ietf.org/rfc/rfc1950.txt)
         
        [(pdf)](http://www.ietf.org/rfc/rfc1950.txt.pdf)
        (RFC 1950)* [DEFLATE Compressed Data Format Specification version 1.3](http://www.ietf.org/rfc/rfc1951.txt)
           
          [(pdf)](http://www.ietf.org/rfc/rfc1951.txt.pdf)
          (RFC 1951)* [GZIP file format specification version 4.3](http://www.ietf.org/rfc/rfc1952.txt)
             
            [(pdf)](http://www.ietf.org/rfc/rfc1952.txt.pdf)
            (RFC 1952)* CRC-32 checksum is described in RFC 1952 (above)* CRC-32C checksum is described in
                [Internet Small
                Computer Systems Interface (iSCSI)](http://www.ietf.org/rfc/rfc3720.txt)
                 
                [(pdf)](http://www.ietf.org/rfc/rfc3720.txt.pdf)
                (RFC 3720)* Adler-32 checksum is described in RFC 1950 (above)

Since:
:   1.1

External Specifications
:   * [RFC 1950: ZLIB Compressed Data Format Specification version 3.3](https://www.rfc-editor.org/info/rfc1950)
    * [RFC 1951: DEFLATE Compressed Data Format Specification version 1.3](https://www.rfc-editor.org/info/rfc1951)
    * [RFC 1952: GZIP file format specification version 4.3](https://www.rfc-editor.org/info/rfc1952)
    * [RFC 3720: Internet Small Computer Systems Interface (iSCSI)](https://www.rfc-editor.org/info/rfc3720)

* Related Packages

  Package

  Description

  [java.util](../package-summary.md)

  Contains the collections framework, some internationalization support classes,
  a service loader, properties, random number generation, string parsing
  and scanning classes, base64 encoding and decoding, a bit array, and
  several miscellaneous utility classes.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [Adler32](Adler32.md "class in java.util.zip")

  A class that can be used to compute the Adler-32 checksum of a data
  stream.

  [CheckedInputStream](CheckedInputStream.md "class in java.util.zip")

  An input stream that also maintains a checksum of the data being read.

  [CheckedOutputStream](CheckedOutputStream.md "class in java.util.zip")

  An output stream that also maintains a checksum of the data being
  written.

  [Checksum](Checksum.md "interface in java.util.zip")

  An interface representing a data checksum.

  [CRC32](CRC32.md "class in java.util.zip")

  A class that can be used to compute the CRC-32 of a data stream.

  [CRC32C](CRC32C.md "class in java.util.zip")

  A class that can be used to compute the CRC-32C of a data stream.

  [DataFormatException](DataFormatException.md "class in java.util.zip")

  Signals that a data format error has occurred.

  [Deflater](Deflater.md "class in java.util.zip")

  This class provides support for general purpose compression using the
  popular ZLIB compression library.

  [DeflaterInputStream](DeflaterInputStream.md "class in java.util.zip")

  Implements an input stream filter for compressing data in the "deflate"
  compression format.

  [DeflaterOutputStream](DeflaterOutputStream.md "class in java.util.zip")

  This class implements an output stream filter for compressing data in
  the "deflate" compression format.

  [GZIPInputStream](GZIPInputStream.md "class in java.util.zip")

  This class implements a stream filter for reading compressed data in
  the GZIP file format.

  [GZIPOutputStream](GZIPOutputStream.md "class in java.util.zip")

  This class implements a stream filter for writing compressed data in
  the GZIP file format.

  [Inflater](Inflater.md "class in java.util.zip")

  This class provides support for general purpose decompression using the
  popular ZLIB compression library.

  [InflaterInputStream](InflaterInputStream.md "class in java.util.zip")

  This class implements a stream filter for uncompressing data in the
  "deflate" compression format.

  [InflaterOutputStream](InflaterOutputStream.md "class in java.util.zip")

  Implements an output stream filter for uncompressing data stored in the
  "deflate" compression format.

  [ZipEntry](ZipEntry.md "class in java.util.zip")

  This class is used to represent a ZIP file entry.

  [ZipError](ZipError.md "class in java.util.zip")

  Signals that an unrecoverable error has occurred.

  [ZipException](ZipException.md "class in java.util.zip")

  Signals that a Zip exception of some sort has occurred.

  [ZipFile](ZipFile.md "class in java.util.zip")

  This class is used to read entries from a zip file.

  [ZipInputStream](ZipInputStream.md "class in java.util.zip")

  An input stream for reading compressed and uncompressed
  [ZIP file entries](ZipEntry.md "class in java.util.zip") from a stream of bytes in the ZIP file
  format.

  [ZipOutputStream](ZipOutputStream.md "class in java.util.zip")

  This class implements an output stream filter for writing files in the
  ZIP file format.