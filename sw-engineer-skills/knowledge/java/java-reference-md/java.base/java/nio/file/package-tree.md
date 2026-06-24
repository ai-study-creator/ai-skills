# Hierarchy For Package java.nio.file

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.nio.file.[Files](Files.md "class in java.nio.file")
  + java.nio.file.[FileStore](FileStore.md "class in java.nio.file")
  + java.nio.file.[FileSystem](FileSystem.md "class in java.nio.file") (implements java.io.[Closeable](../../io/Closeable.md "interface in java.io"))
  + java.nio.file.[FileSystems](FileSystems.md "class in java.nio.file")
  + java.nio.file.[Paths](Paths.md "class in java.nio.file")
  + java.security.[Permission](../../security/Permission.md "class in java.security") (implements java.security.[Guard](../../security/Guard.md "interface in java.security"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.security.[BasicPermission](../../security/BasicPermission.md "class in java.security") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
      * java.nio.file.[LinkPermission](LinkPermission.md "class in java.nio.file")
  + java.nio.file.[SimpleFileVisitor](SimpleFileVisitor.md "class in java.nio.file")<T> (implements java.nio.file.[FileVisitor](FileVisitor.md "interface in java.nio.file")<T>)
  + java.nio.file.[StandardWatchEventKinds](StandardWatchEventKinds.md "class in java.nio.file")
  + java.lang.[Throwable](../../lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../lang/Exception.md "class in java.lang")
      * java.io.[IOException](../../io/IOException.md "class in java.io")
        + java.nio.file.[FileSystemException](FileSystemException.md "class in java.nio.file")
          - java.nio.file.[AccessDeniedException](AccessDeniedException.md "class in java.nio.file")
          - java.nio.file.[AtomicMoveNotSupportedException](AtomicMoveNotSupportedException.md "class in java.nio.file")
          - java.nio.file.[DirectoryNotEmptyException](DirectoryNotEmptyException.md "class in java.nio.file")
          - java.nio.file.[FileAlreadyExistsException](FileAlreadyExistsException.md "class in java.nio.file")
          - java.nio.file.[FileSystemLoopException](FileSystemLoopException.md "class in java.nio.file")
          - java.nio.file.[NoSuchFileException](NoSuchFileException.md "class in java.nio.file")
          - java.nio.file.[NotDirectoryException](NotDirectoryException.md "class in java.nio.file")
          - java.nio.file.[NotLinkException](NotLinkException.md "class in java.nio.file")
      * java.lang.[RuntimeException](../../lang/RuntimeException.md "class in java.lang")
        + java.util.[ConcurrentModificationException](../../util/ConcurrentModificationException.md "class in java.util")
          - java.nio.file.[DirectoryIteratorException](DirectoryIteratorException.md "class in java.nio.file")
        + java.nio.file.[FileSystemAlreadyExistsException](FileSystemAlreadyExistsException.md "class in java.nio.file")
        + java.nio.file.[FileSystemNotFoundException](FileSystemNotFoundException.md "class in java.nio.file")
        + java.lang.[IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")
          - java.nio.file.[InvalidPathException](InvalidPathException.md "class in java.nio.file")
          - java.nio.file.[ProviderMismatchException](ProviderMismatchException.md "class in java.nio.file")
        + java.lang.[IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")
          - java.nio.file.[ClosedDirectoryStreamException](ClosedDirectoryStreamException.md "class in java.nio.file")
          - java.nio.file.[ClosedFileSystemException](ClosedFileSystemException.md "class in java.nio.file")
          - java.nio.file.[ClosedWatchServiceException](ClosedWatchServiceException.md "class in java.nio.file")
        + java.nio.file.[ProviderNotFoundException](ProviderNotFoundException.md "class in java.nio.file")
        + java.lang.[UnsupportedOperationException](../../lang/UnsupportedOperationException.md "class in java.lang")
          - java.nio.file.[ReadOnlyFileSystemException](ReadOnlyFileSystemException.md "class in java.nio.file")

## Interface Hierarchy

* java.lang.[AutoCloseable](../../lang/AutoCloseable.md "interface in java.lang")
  + java.io.[Closeable](../../io/Closeable.md "interface in java.io")
    - java.nio.file.[DirectoryStream](DirectoryStream.md "interface in java.nio.file")<T> (also extends java.lang.[Iterable](../../lang/Iterable.md "interface in java.lang")<T>)
      * java.nio.file.[SecureDirectoryStream](SecureDirectoryStream.md "interface in java.nio.file")<T>
    - java.nio.file.[WatchService](WatchService.md "interface in java.nio.file")
* java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")<T>
  + java.nio.file.[Path](Path.md "interface in java.nio.file") (also extends java.lang.[Iterable](../../lang/Iterable.md "interface in java.lang")<T>, java.nio.file.[Watchable](Watchable.md "interface in java.nio.file"))
* java.nio.file.[CopyOption](CopyOption.md "interface in java.nio.file")
* java.nio.file.[DirectoryStream.Filter](DirectoryStream.Filter.md "interface in java.nio.file")<T>
* java.nio.file.[FileVisitor](FileVisitor.md "interface in java.nio.file")<T>
* java.lang.[Iterable](../../lang/Iterable.md "interface in java.lang")<T>
  + java.nio.file.[DirectoryStream](DirectoryStream.md "interface in java.nio.file")<T> (also extends java.io.[Closeable](../../io/Closeable.md "interface in java.io"))
    - java.nio.file.[SecureDirectoryStream](SecureDirectoryStream.md "interface in java.nio.file")<T>
  + java.nio.file.[Path](Path.md "interface in java.nio.file") (also extends java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")<T>, java.nio.file.[Watchable](Watchable.md "interface in java.nio.file"))
* java.nio.file.[OpenOption](OpenOption.md "interface in java.nio.file")
* java.nio.file.[PathMatcher](PathMatcher.md "interface in java.nio.file")
* java.nio.file.[Watchable](Watchable.md "interface in java.nio.file")
  + java.nio.file.[Path](Path.md "interface in java.nio.file") (also extends java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")<T>, java.lang.[Iterable](../../lang/Iterable.md "interface in java.lang")<T>)
* java.nio.file.[WatchEvent](WatchEvent.md "interface in java.nio.file")<T>
* java.nio.file.[WatchEvent.Kind](WatchEvent.Kind.md "interface in java.nio.file")<T>
* java.nio.file.[WatchEvent.Modifier](WatchEvent.Modifier.md "interface in java.nio.file")
* java.nio.file.[WatchKey](WatchKey.md "interface in java.nio.file")

## Enum Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.nio.file.[AccessMode](AccessMode.md "enum class in java.nio.file")
    - java.nio.file.[FileVisitOption](FileVisitOption.md "enum class in java.nio.file")
    - java.nio.file.[FileVisitResult](FileVisitResult.md "enum class in java.nio.file")
    - java.nio.file.[LinkOption](LinkOption.md "enum class in java.nio.file") (implements java.nio.file.[CopyOption](CopyOption.md "interface in java.nio.file"), java.nio.file.[OpenOption](OpenOption.md "interface in java.nio.file"))
    - java.nio.file.[StandardCopyOption](StandardCopyOption.md "enum class in java.nio.file") (implements java.nio.file.[CopyOption](CopyOption.md "interface in java.nio.file"))
    - java.nio.file.[StandardOpenOption](StandardOpenOption.md "enum class in java.nio.file") (implements java.nio.file.[OpenOption](OpenOption.md "interface in java.nio.file"))