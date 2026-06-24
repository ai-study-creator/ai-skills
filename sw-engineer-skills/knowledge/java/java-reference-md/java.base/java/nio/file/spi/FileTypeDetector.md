Module [java.base](../../../../module-summary.md)

Package [java.nio.file.spi](package-summary.md)

# Class FileTypeDetector

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.nio.file.spi.FileTypeDetector

---

public abstract class FileTypeDetector
extends [Object](../../../lang/Object.md "class in java.lang")

A file type detector for probing a file to guess its file type.

A file type detector is a concrete implementation of this class, has a
zero-argument constructor, and implements the abstract methods specified
below.

The means by which a file type detector determines the file type is
highly implementation specific. A simple implementation might examine the
*file extension* (a convention used in some platforms) and map it to
a file type. In other cases, the file type may be stored as a file  [attribute](../attribute/package-summary.md) or the bytes in a
file may be examined to guess its file type.

Since:
:   1.7

See Also:
:   * [`Files.probeContentType(Path)`](../Files.md#probeContentType(java.nio.file.Path))

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FileTypeDetector()`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `probeContentType(Path path)`

  Probes the given file to guess its content type.

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FileTypeDetector

    protected FileTypeDetector()

    Initializes a new instance of this class.

    Throws:
    :   `SecurityException` - If a security manager has been installed and it denies
        [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("fileTypeDetector")`
* ## Method Details

  + ### probeContentType

    public abstract [String](../../../lang/String.md "class in java.lang") probeContentType([Path](../Path.md "interface in java.nio.file") path)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Probes the given file to guess its content type.

    The means by which this method determines the file type is highly
    implementation specific. It may simply examine the file name, it may use
    a file [attribute](../attribute/package-summary.md),
    or it may examine bytes in the file.

    The probe result is the string form of the value of a
    Multipurpose Internet Mail Extension (MIME) content type as
    defined by [*RFC 2045:
    Multipurpose Internet Mail Extensions (MIME) Part One: Format of Internet
    Message Bodies*](http://www.ietf.org/rfc/rfc2045.txt). The string must be parsable according to the
    grammar in the RFC 2045.

    Parameters:
    :   `path` - the path to the file to probe

    Returns:
    :   The content type or `null` if the file type is not
        recognized

    Throws:
    :   `IOException` - An I/O error occurs
    :   `SecurityException` - If the implementation requires to access the file, and a
        security manager is installed, and it denies an unspecified
        permission required by a file system provider implementation.
        If the file reference is associated with the default file system
        provider then the [`SecurityManager.checkRead(String)`](../../../lang/SecurityManager.md#checkRead(java.lang.String)) method
        is invoked to check read access to the file.

    See Also:
    :   - [`Files.probeContentType(java.nio.file.Path)`](../Files.md#probeContentType(java.nio.file.Path))

    External Specifications
    :   - [RFC 2045: Multipurpose Internet Mail Extensions (MIME) Part One: Format of Internet Message Bodies](https://www.rfc-editor.org/info/rfc2045)