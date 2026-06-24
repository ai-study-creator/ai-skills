# Hierarchy For Package java.nio.file.attribute

Package Hierarchies:

* [All Packages](../../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../lang/Object.md "class in java.lang")
  + java.nio.file.attribute.[AclEntry](AclEntry.md "class in java.nio.file.attribute")
  + java.nio.file.attribute.[AclEntry.Builder](AclEntry.Builder.md "class in java.nio.file.attribute")
  + java.nio.file.attribute.[FileTime](FileTime.md "class in java.nio.file.attribute") (implements java.lang.[Comparable](../../../lang/Comparable.md "interface in java.lang")<T>)
  + java.nio.file.attribute.[PosixFilePermissions](PosixFilePermissions.md "class in java.nio.file.attribute")
  + java.lang.[Throwable](../../../lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../lang/Exception.md "class in java.lang")
      * java.io.[IOException](../../../io/IOException.md "class in java.io")
        + java.nio.file.attribute.[UserPrincipalNotFoundException](UserPrincipalNotFoundException.md "class in java.nio.file.attribute")
  + java.nio.file.attribute.[UserPrincipalLookupService](UserPrincipalLookupService.md "class in java.nio.file.attribute")

## Interface Hierarchy

* java.nio.file.attribute.[AttributeView](AttributeView.md "interface in java.nio.file.attribute")
  + java.nio.file.attribute.[FileAttributeView](FileAttributeView.md "interface in java.nio.file.attribute")
    - java.nio.file.attribute.[BasicFileAttributeView](BasicFileAttributeView.md "interface in java.nio.file.attribute")
      * java.nio.file.attribute.[DosFileAttributeView](DosFileAttributeView.md "interface in java.nio.file.attribute")
      * java.nio.file.attribute.[PosixFileAttributeView](PosixFileAttributeView.md "interface in java.nio.file.attribute") (also extends java.nio.file.attribute.[FileOwnerAttributeView](FileOwnerAttributeView.md "interface in java.nio.file.attribute"))
    - java.nio.file.attribute.[FileOwnerAttributeView](FileOwnerAttributeView.md "interface in java.nio.file.attribute")
      * java.nio.file.attribute.[AclFileAttributeView](AclFileAttributeView.md "interface in java.nio.file.attribute")
      * java.nio.file.attribute.[PosixFileAttributeView](PosixFileAttributeView.md "interface in java.nio.file.attribute") (also extends java.nio.file.attribute.[BasicFileAttributeView](BasicFileAttributeView.md "interface in java.nio.file.attribute"))
    - java.nio.file.attribute.[UserDefinedFileAttributeView](UserDefinedFileAttributeView.md "interface in java.nio.file.attribute")
  + java.nio.file.attribute.[FileStoreAttributeView](FileStoreAttributeView.md "interface in java.nio.file.attribute")
* java.nio.file.attribute.[BasicFileAttributes](BasicFileAttributes.md "interface in java.nio.file.attribute")
  + java.nio.file.attribute.[DosFileAttributes](DosFileAttributes.md "interface in java.nio.file.attribute")
  + java.nio.file.attribute.[PosixFileAttributes](PosixFileAttributes.md "interface in java.nio.file.attribute")
* java.nio.file.attribute.[FileAttribute](FileAttribute.md "interface in java.nio.file.attribute")<T>
* java.security.[Principal](../../../security/Principal.md "interface in java.security")
  + java.nio.file.attribute.[UserPrincipal](UserPrincipal.md "interface in java.nio.file.attribute")
    - java.nio.file.attribute.[GroupPrincipal](GroupPrincipal.md "interface in java.nio.file.attribute")

## Enum Class Hierarchy

* java.lang.[Object](../../../lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../../lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../../lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../../lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
    - java.nio.file.attribute.[AclEntryFlag](AclEntryFlag.md "enum class in java.nio.file.attribute")
    - java.nio.file.attribute.[AclEntryPermission](AclEntryPermission.md "enum class in java.nio.file.attribute")
    - java.nio.file.attribute.[AclEntryType](AclEntryType.md "enum class in java.nio.file.attribute")
    - java.nio.file.attribute.[PosixFilePermission](PosixFilePermission.md "enum class in java.nio.file.attribute")