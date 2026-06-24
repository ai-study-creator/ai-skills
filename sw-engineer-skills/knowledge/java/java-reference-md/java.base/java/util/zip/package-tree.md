# Hierarchy For Package java.util.zip

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.util.zip.[Adler32](Adler32.md "class in java.util.zip") (implements java.util.zip.[Checksum](Checksum.md "interface in java.util.zip"))
  + java.util.zip.[CRC32](CRC32.md "class in java.util.zip") (implements java.util.zip.[Checksum](Checksum.md "interface in java.util.zip"))
  + java.util.zip.[CRC32C](CRC32C.md "class in java.util.zip") (implements java.util.zip.[Checksum](Checksum.md "interface in java.util.zip"))
  + java.util.zip.[Deflater](Deflater.md "class in java.util.zip")
  + java.util.zip.[Inflater](Inflater.md "class in java.util.zip")
  + java.io.[InputStream](../../io/InputStream.md "class in java.io") (implements java.io.[Closeable](../../io/Closeable.md "interface in java.io"))
    - java.io.[FilterInputStream](../../io/FilterInputStream.md "class in java.io")
      * java.util.zip.[CheckedInputStream](CheckedInputStream.md "class in java.util.zip")
      * java.util.zip.[DeflaterInputStream](DeflaterInputStream.md "class in java.util.zip")
      * java.util.zip.[InflaterInputStream](InflaterInputStream.md "class in java.util.zip")
        + java.util.zip.[GZIPInputStream](GZIPInputStream.md "class in java.util.zip")
        + java.util.zip.[ZipInputStream](ZipInputStream.md "class in java.util.zip")
  + java.io.[OutputStream](../../io/OutputStream.md "class in java.io") (implements java.io.[Closeable](../../io/Closeable.md "interface in java.io"), java.io.[Flushable](../../io/Flushable.md "interface in java.io"))
    - java.io.[FilterOutputStream](../../io/FilterOutputStream.md "class in java.io")
      * java.util.zip.[CheckedOutputStream](CheckedOutputStream.md "class in java.util.zip")
      * java.util.zip.[DeflaterOutputStream](DeflaterOutputStream.md "class in java.util.zip")
        + java.util.zip.[GZIPOutputStream](GZIPOutputStream.md "class in java.util.zip")
        + java.util.zip.[ZipOutputStream](ZipOutputStream.md "class in java.util.zip")
      * java.util.zip.[InflaterOutputStream](InflaterOutputStream.md "class in java.util.zip")
  + java.lang.[Throwable](../../lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Error](../../lang/Error.md "class in java.lang")
      * java.lang.[VirtualMachineError](../../lang/VirtualMachineError.md "class in java.lang")
        + java.lang.[InternalError](../../lang/InternalError.md "class in java.lang")
          - java.util.zip.[ZipError](ZipError.md "class in java.util.zip")
    - java.lang.[Exception](../../lang/Exception.md "class in java.lang")
      * java.util.zip.[DataFormatException](DataFormatException.md "class in java.util.zip")
      * java.io.[IOException](../../io/IOException.md "class in java.io")
        + java.util.zip.[ZipException](ZipException.md "class in java.util.zip")
  + java.util.zip.[ZipEntry](ZipEntry.md "class in java.util.zip") (implements java.lang.[Cloneable](../../lang/Cloneable.md "interface in java.lang"))
  + java.util.zip.[ZipFile](ZipFile.md "class in java.util.zip") (implements java.io.[Closeable](../../io/Closeable.md "interface in java.io"))

## Interface Hierarchy

* java.util.zip.[Checksum](Checksum.md "interface in java.util.zip")