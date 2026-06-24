Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Interface AttributeView

All Known Subinterfaces:
:   `AclFileAttributeView`, `BasicFileAttributeView`, `DosFileAttributeView`, `FileAttributeView`, `FileOwnerAttributeView`, `FileStoreAttributeView`, `PosixFileAttributeView`, `UserDefinedFileAttributeView`

---

public interface AttributeView

An object that provides a read-only or updatable *view* of non-opaque
values associated with an object in a filesystem. This interface is extended
or implemented by specific attribute views that define the attributes
supported by the view. A specific attribute view will typically define
type-safe methods to read or update the attributes that it supports.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `name()`

  Returns the name of the attribute view.

* ## Method Details

  + ### name

    [String](../../../lang/String.md "class in java.lang") name()

    Returns the name of the attribute view.

    Returns:
    :   the name of the attribute view