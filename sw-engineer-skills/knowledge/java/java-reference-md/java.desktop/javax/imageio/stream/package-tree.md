# Hierarchy For Package javax.imageio.stream

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.imageio.stream.[IIOByteBuffer](IIOByteBuffer.md "class in javax.imageio.stream")
  + javax.imageio.stream.[ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream") (implements javax.imageio.stream.[ImageInputStream](ImageInputStream.md "interface in javax.imageio.stream"))
    - javax.imageio.stream.[FileCacheImageInputStream](FileCacheImageInputStream.md "class in javax.imageio.stream")
    - javax.imageio.stream.[FileImageInputStream](FileImageInputStream.md "class in javax.imageio.stream")
    - javax.imageio.stream.[ImageOutputStreamImpl](ImageOutputStreamImpl.md "class in javax.imageio.stream") (implements javax.imageio.stream.[ImageOutputStream](ImageOutputStream.md "interface in javax.imageio.stream"))
      * javax.imageio.stream.[FileCacheImageOutputStream](FileCacheImageOutputStream.md "class in javax.imageio.stream")
      * javax.imageio.stream.[FileImageOutputStream](FileImageOutputStream.md "class in javax.imageio.stream")
      * javax.imageio.stream.[MemoryCacheImageOutputStream](MemoryCacheImageOutputStream.md "class in javax.imageio.stream")
    - javax.imageio.stream.[MemoryCacheImageInputStream](MemoryCacheImageInputStream.md "class in javax.imageio.stream")

## Interface Hierarchy

* java.lang.[AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")
  + java.io.[Closeable](../../../../java.base/java/io/Closeable.md "interface in java.io")
    - javax.imageio.stream.[ImageInputStream](ImageInputStream.md "interface in javax.imageio.stream") (also extends java.io.[DataInput](../../../../java.base/java/io/DataInput.md "interface in java.io"))
      * javax.imageio.stream.[ImageOutputStream](ImageOutputStream.md "interface in javax.imageio.stream") (also extends java.io.[DataOutput](../../../../java.base/java/io/DataOutput.md "interface in java.io"))
* java.io.[DataInput](../../../../java.base/java/io/DataInput.md "interface in java.io")
  + javax.imageio.stream.[ImageInputStream](ImageInputStream.md "interface in javax.imageio.stream") (also extends java.io.[Closeable](../../../../java.base/java/io/Closeable.md "interface in java.io"))
    - javax.imageio.stream.[ImageOutputStream](ImageOutputStream.md "interface in javax.imageio.stream") (also extends java.io.[DataOutput](../../../../java.base/java/io/DataOutput.md "interface in java.io"))
* java.io.[DataOutput](../../../../java.base/java/io/DataOutput.md "interface in java.io")
  + javax.imageio.stream.[ImageOutputStream](ImageOutputStream.md "interface in javax.imageio.stream") (also extends javax.imageio.stream.[ImageInputStream](ImageInputStream.md "interface in javax.imageio.stream"))