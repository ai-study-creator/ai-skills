Module [java.base](../../../../module-summary.md)

# Package java.nio.file.spi

---

package java.nio.file.spi

Service-provider classes for the [`java.nio.file`](../package-summary.md) package.

Only developers who are defining new file system providers or file type
detectors should need to make direct use of this package.

Unless otherwise noted, passing a `null` argument to a constructor
or method in any class or interface in this package will cause a [`NullPointerException`](../../../lang/NullPointerException.md "class in java.lang") to be thrown. In some
cases methods which are specified to throw an `IOException` may throw
a more specific *[optional
specific exception](../package-summary.md#optspecex)*.

Since:
:   1.7

* Related Packages

  Package

  Description

  [java.nio.file](../package-summary.md)

  Defines interfaces and classes for the Java virtual machine to access files,
  file attributes, and file systems.

  [java.nio.file.attribute](../attribute/package-summary.md)

  Interfaces and classes providing access to file and file system attributes.
* Classes

  Class

  Description

  [FileSystemProvider](FileSystemProvider.md "class in java.nio.file.spi")

  Service-provider class for file systems.

  [FileTypeDetector](FileTypeDetector.md "class in java.nio.file.spi")

  A file type detector for probing a file to guess its file type.