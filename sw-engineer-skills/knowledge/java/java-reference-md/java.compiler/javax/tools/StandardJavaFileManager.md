Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Interface StandardJavaFileManager

All Superinterfaces:
:   `AutoCloseable`, `Closeable`, `Flushable`, `JavaFileManager`, `OptionChecker`

---

public interface StandardJavaFileManager
extends [JavaFileManager](JavaFileManager.md "interface in javax.tools")

File manager based on [`java.io.File`](../../../java.base/java/io/File.md "class in java.io") and [`java.nio.file.Path`](../../../java.base/java/nio/file/Path.md "interface in java.nio.file").
A common way to obtain an instance of this class is using
[getStandardFileManager](JavaCompiler.md#getStandardFileManager(javax.tools.DiagnosticListener,java.util.Locale,java.nio.charset.Charset)), for example:

```
   JavaCompiler compiler = ToolProvider.getSystemJavaCompiler();
   DiagnosticCollector<JavaFileObject> diagnostics =
       new DiagnosticCollector<JavaFileObject>();
   StandardJavaFileManager fm = compiler.getStandardFileManager(diagnostics, null, null);
```

This file manager creates file objects representing regular
[files](../../../java.base/java/io/File.md "class in java.io"),
[zip file entries](../../../java.base/java/util/zip/ZipEntry.md "class in java.util.zip"), or entries in
similar file system based containers. Any file object returned
from a file manager implementing this interface must observe the
following behavior:

* File names need not be canonical.
* For file objects representing regular files
  + the method `FileObject.delete()`
    is equivalent to `File.delete()`,
  + the method `FileObject.getLastModified()`
    is equivalent to `File.lastModified()`,
  + the methods `FileObject.getCharContent(boolean)`,
    `FileObject.openInputStream()`, and
    `FileObject.openReader(boolean)`
    must succeed if the following would succeed (ignoring
    encoding issues):

    Copy![Copy snippet](../../../copy.svg)

    ```
    new FileInputStream(new File(fileObject.toUri()))
    ```
  + and the methods
    `FileObject.openOutputStream()`, and
    `FileObject.openWriter()` must
    succeed if the following would succeed (ignoring encoding
    issues):

    Copy![Copy snippet](../../../copy.svg)

    ```
    new FileOutputStream(new File(fileObject.toUri()))
    ```
* The [URI](../../../java.base/java/net/URI.md "class in java.net") returned from
  `FileObject.toUri()`
  + must be [absolute](../../../java.base/java/net/URI.md#isAbsolute()) (have a schema), and
  + must have a [normalized](../../../java.base/java/net/URI.md#normalize())
    [path component](../../../java.base/java/net/URI.md#getPath()) which
    can be resolved without any process-specific context such
    as the current directory (file names must be absolute).

According to these rules, the following URIs, for example, are
allowed:

* `file:///C:/Documents%20and%20Settings/UncleBob/BobsApp/Test.java`
* `jar:///C:/Documents%20and%20Settings/UncleBob/lib/vendorA.jar!/com/vendora/LibraryClass.class`

Whereas these are not (reason in parentheses):

* `file:BobsApp/Test.java` (the file name is relative
  and depend on the current directory)
* `jar:lib/vendorA.jar!/com/vendora/LibraryClass.class`
  (the first half of the path depends on the current directory,
  whereas the component after ! is legal)
* `Test.java` (this URI depends on the current
  directory and does not have a schema)
* `jar:///C:/Documents%20and%20Settings/UncleBob/BobsApp/../lib/vendorA.jar!com/vendora/LibraryClass.class`
  (the path is not normalized)

All implementations of this interface must support Path objects representing
files in the [default file system.](../../../java.base/java/nio/file/FileSystems.md#getDefault())
It is recommended that implementations should support Path objects from any filesystem.

Since:
:   1.6

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `StandardJavaFileManager.PathFactory`

  Factory to create `Path` objects from strings.

  ## Nested classes/interfaces inherited from interface javax.tools.[JavaFileManager](JavaFileManager.md "interface in javax.tools")

  `JavaFileManager.Location`
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `default Path`

  `asPath(FileObject file)`

  Returns the path, if any, underlying this file object (optional operation).

  `Iterable<? extends JavaFileObject>`

  `getJavaFileObjects(File... files)`

  Returns file objects representing the given files.

  `Iterable<? extends JavaFileObject>`

  `getJavaFileObjects(String... names)`

  Returns file objects representing the given file names.

  `default Iterable<? extends JavaFileObject>`

  `getJavaFileObjects(Path... paths)`

  Returns file objects representing the given paths.

  `Iterable<? extends JavaFileObject>`

  `getJavaFileObjectsFromFiles(Iterable<? extends File> files)`

  Returns file objects representing the given files.

  `default Iterable<? extends JavaFileObject>`

  `getJavaFileObjectsFromPaths(Iterable<? extends Path> paths)`

  Deprecated.

  use [`getJavaFileObjectsFromPaths(Collection)`](#getJavaFileObjectsFromPaths(java.util.Collection)) instead,
  to prevent the possibility of accidentally calling the method with a
  single `Path` as such an argument.

  `default Iterable<? extends JavaFileObject>`

  `getJavaFileObjectsFromPaths(Collection<? extends Path> paths)`

  Returns file objects representing the given paths.

  `Iterable<? extends JavaFileObject>`

  `getJavaFileObjectsFromStrings(Iterable<String> names)`

  Returns file objects representing the given file names.

  `Iterable<? extends File>`

  `getLocation(JavaFileManager.Location location)`

  Returns the search path associated with the given location.

  `default Iterable<? extends Path>`

  `getLocationAsPaths(JavaFileManager.Location location)`

  Returns the search path associated with the given location.

  `boolean`

  `isSameFile(FileObject a,
  FileObject b)`

  Compares two file objects and return true if they represent the
  same canonical file, zip file entry, or entry in any file
  system based container.

  `void`

  `setLocation(JavaFileManager.Location location,
  Iterable<? extends File> files)`

  Associates the given search path with the given location.

  `default void`

  `setLocationForModule(JavaFileManager.Location location,
  String moduleName,
  Collection<? extends Path> paths)`

  Associates the given search path with the given module and location,
  which must be a module-oriented or output location.

  `default void`

  `setLocationFromPaths(JavaFileManager.Location location,
  Collection<? extends Path> paths)`

  Associates the given search path with the given location.

  `default void`

  `setPathFactory(StandardJavaFileManager.PathFactory f)`

  Specify a factory that can be used to generate a path from a string, or series of strings.

  ### Methods inherited from interface javax.tools.[JavaFileManager](JavaFileManager.md "interface in javax.tools")

  `close, contains, flush, getClassLoader, getFileForInput, getFileForOutput, getFileForOutputForOriginatingFiles, getJavaFileForInput, getJavaFileForOutput, getJavaFileForOutputForOriginatingFiles, getLocationForModule, getLocationForModule, getServiceLoader, handleOption, hasLocation, inferBinaryName, inferModuleName, list, listLocationsForModules`

  ### Methods inherited from interface javax.tools.[OptionChecker](OptionChecker.md "interface in javax.tools")

  `isSupportedOption`

* ## Method Details

  + ### isSameFile

    boolean isSameFile([FileObject](FileObject.md "interface in javax.tools") a,
    [FileObject](FileObject.md "interface in javax.tools") b)

    Compares two file objects and return true if they represent the
    same canonical file, zip file entry, or entry in any file
    system based container.

    Specified by:
    :   `isSameFile` in interface `JavaFileManager`

    Parameters:
    :   `a` - a file object
    :   `b` - a file object

    Returns:
    :   true if the given file objects represent the same
        canonical file, zip file entry or path; false otherwise

    Throws:
    :   `IllegalArgumentException` - if either of the arguments
        were created with another file manager implementation
  + ### getJavaFileObjectsFromFiles

    [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")> getJavaFileObjectsFromFiles([Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [File](../../../java.base/java/io/File.md "class in java.io")> files)

    Returns file objects representing the given files.

    Parameters:
    :   `files` - a list of files

    Returns:
    :   a list of file objects

    Throws:
    :   `IllegalArgumentException` - if the list of files includes
        a directory
  + ### getJavaFileObjectsFromPaths

    default [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")> getJavaFileObjectsFromPaths([Collection](../../../java.base/java/util/Collection.md "interface in java.util")<? extends [Path](../../../java.base/java/nio/file/Path.md "interface in java.nio.file")> paths)

    Returns file objects representing the given paths.

    Parameters:
    :   `paths` - a list of paths

    Returns:
    :   a list of file objects

    Throws:
    :   `IllegalArgumentException` - if the list of paths includes
        a directory or if this file manager does not support any of the
        given paths

    Since:
    :   13
  + ### getJavaFileObjectsFromPaths

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="13")
    default [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")> getJavaFileObjectsFromPaths([Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Path](../../../java.base/java/nio/file/Path.md "interface in java.nio.file")> paths)

    Deprecated.

    use [`getJavaFileObjectsFromPaths(Collection)`](#getJavaFileObjectsFromPaths(java.util.Collection)) instead,
    to prevent the possibility of accidentally calling the method with a
    single `Path` as such an argument. Although `Path` implements
    `Iterable<Path>`, it would almost never be correct to pass a single
    `Path` and have it be treated as an `Iterable` of its
    components.

    Returns file objects representing the given paths.

    Parameters:
    :   `paths` - a list of paths

    Returns:
    :   a list of file objects

    Throws:
    :   `IllegalArgumentException` - if the list of paths includes
        a directory or if this file manager does not support any of the
        given paths.

    Since:
    :   9
  + ### getJavaFileObjects

    [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")> getJavaFileObjects([File](../../../java.base/java/io/File.md "class in java.io")... files)

    Returns file objects representing the given files.
    Convenience method equivalent to:

    Copy![Copy snippet](../../../copy.svg)

    ```
    getJavaFileObjectsFromFiles(Arrays.asList(files))
    ```

    Parameters:
    :   `files` - an array of files

    Returns:
    :   a list of file objects

    Throws:
    :   `IllegalArgumentException` - if the array of files includes
        a directory or if this file manager does not support any of the
        given paths
    :   `NullPointerException` - if the given array contains null
        elements
  + ### getJavaFileObjects

    default [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")> getJavaFileObjects([Path](../../../java.base/java/nio/file/Path.md "interface in java.nio.file")... paths)

    Returns file objects representing the given paths.
    Convenience method equivalent to:

    Copy![Copy snippet](../../../copy.svg)

    ```
    getJavaFileObjectsFromPaths(Arrays.asList(paths))
    ```

    Parameters:
    :   `paths` - an array of paths

    Returns:
    :   a list of file objects

    Throws:
    :   `IllegalArgumentException` - if the array of files includes
        a directory or if this file manager does not support any of the
        given paths
    :   `NullPointerException` - if the given array contains null
        elements

    Since:
    :   9
  + ### getJavaFileObjectsFromStrings

    [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")> getJavaFileObjectsFromStrings([Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<[String](../../../java.base/java/lang/String.md "class in java.lang")> names)

    Returns file objects representing the given file names.

    Parameters:
    :   `names` - a list of file names

    Returns:
    :   a list of file objects

    Throws:
    :   `IllegalArgumentException` - if the list of file names
        includes a directory
  + ### getJavaFileObjects

    [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")> getJavaFileObjects([String](../../../java.base/java/lang/String.md "class in java.lang")... names)

    Returns file objects representing the given file names.
    Convenience method equivalent to:

    Copy![Copy snippet](../../../copy.svg)

    ```
    getJavaFileObjectsFromStrings(Arrays.asList(names))
    ```

    Parameters:
    :   `names` - a list of file names

    Returns:
    :   a list of file objects

    Throws:
    :   `IllegalArgumentException` - if the array of file names
        includes a directory
    :   `NullPointerException` - if the given array contains null
        elements
  + ### setLocation

    void setLocation([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [File](../../../java.base/java/io/File.md "class in java.io")> files)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Associates the given search path with the given location. Any
    previous value will be discarded.
    If the location is a module-oriented or output location, any module-specific
    associations set up by [setLocationForModule](#setLocationForModule(javax.tools.JavaFileManager.Location,java.lang.String,java.util.Collection))
    will be cancelled.

    Parameters:
    :   `location` - a location
    :   `files` - a list of files, if `null` use the default
        search path for this location

    Throws:
    :   `IllegalArgumentException` - if `location` is an output
        location and `files` does not contain exactly one element
    :   `IOException` - if `location` is an output location and
        does not represent an existing directory

    See Also:
    :   - [`getLocation(javax.tools.JavaFileManager.Location)`](#getLocation(javax.tools.JavaFileManager.Location))
  + ### setLocationFromPaths

    default void setLocationFromPaths([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [Collection](../../../java.base/java/util/Collection.md "interface in java.util")<? extends [Path](../../../java.base/java/nio/file/Path.md "interface in java.nio.file")> paths)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Associates the given search path with the given location.
    Any previous value will be discarded.
    If the location is a module-oriented or output location, any module-specific
    associations set up by [setLocationForModule](#setLocationForModule(javax.tools.JavaFileManager.Location,java.lang.String,java.util.Collection))
    will be cancelled.

    Parameters:
    :   `location` - a location
    :   `paths` - a list of paths, if `null` use the default
        search path for this location

    Throws:
    :   `IllegalArgumentException` - if `location` is an output
        location and `paths` does not contain exactly one element
        or if this file manager does not support any of the given paths
    :   `IOException` - if `location` is an output location and
        `paths` does not represent an existing directory

    Since:
    :   9

    See Also:
    :   - [`getLocation(javax.tools.JavaFileManager.Location)`](#getLocation(javax.tools.JavaFileManager.Location))
  + ### setLocationForModule

    default void setLocationForModule([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [String](../../../java.base/java/lang/String.md "class in java.lang") moduleName,
    [Collection](../../../java.base/java/util/Collection.md "interface in java.util")<? extends [Path](../../../java.base/java/nio/file/Path.md "interface in java.nio.file")> paths)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Associates the given search path with the given module and location,
    which must be a module-oriented or output location.
    Any previous value will be discarded.
    This overrides any default association derived from the search path
    associated with the location itself.
    All such module-specific associations will be cancelled if a
    new search path is associated with the location by calling
    [setLocation](#setLocation(javax.tools.JavaFileManager.Location,java.lang.Iterable)) or
    [setLocationFromPaths](#setLocationFromPaths(javax.tools.JavaFileManager.Location,java.util.Collection)).

    Parameters:
    :   `location` - the location
    :   `moduleName` - the name of the module
    :   `paths` - the search path to associate with the location and module.

    Throws:
    :   `IllegalStateException` - if the location is not a module-oriented
        or output location.
    :   `UnsupportedOperationException` - if this operation is not supported by
        this file manager.
    :   `IOException` - if `location` is an output location and
        `paths` does not represent an existing directory

    Since:
    :   9

    See Also:
    :   - [`setLocation(javax.tools.JavaFileManager.Location, java.lang.Iterable<? extends java.io.File>)`](#setLocation(javax.tools.JavaFileManager.Location,java.lang.Iterable))
        - [`setLocationFromPaths(javax.tools.JavaFileManager.Location, java.util.Collection<? extends java.nio.file.Path>)`](#setLocationFromPaths(javax.tools.JavaFileManager.Location,java.util.Collection))
  + ### getLocation

    [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [File](../../../java.base/java/io/File.md "class in java.io")> getLocation([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location)

    Returns the search path associated with the given location.

    Parameters:
    :   `location` - a location

    Returns:
    :   a list of files or `null` if this location has no
        associated search path

    Throws:
    :   `IllegalStateException` - if any element of the search path
        cannot be converted to a [File](../../../java.base/java/io/File.md "class in java.io"), or if the search path
        cannot be represented as a simple series of files.

    See Also:
    :   - [`setLocation(javax.tools.JavaFileManager.Location, java.lang.Iterable<? extends java.io.File>)`](#setLocation(javax.tools.JavaFileManager.Location,java.lang.Iterable))
        - [`Path.toFile()`](../../../java.base/java/nio/file/Path.md#toFile())
  + ### getLocationAsPaths

    default [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Path](../../../java.base/java/nio/file/Path.md "interface in java.nio.file")> getLocationAsPaths([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location)

    Returns the search path associated with the given location.

    Parameters:
    :   `location` - a location

    Returns:
    :   a list of paths or `null` if this location has no
        associated search path

    Throws:
    :   `IllegalStateException` - if the search path cannot be represented
        as a simple series of paths.

    Since:
    :   9

    See Also:
    :   - [`setLocationFromPaths(javax.tools.JavaFileManager.Location, java.util.Collection<? extends java.nio.file.Path>)`](#setLocationFromPaths(javax.tools.JavaFileManager.Location,java.util.Collection))
  + ### asPath

    default [Path](../../../java.base/java/nio/file/Path.md "interface in java.nio.file") asPath([FileObject](FileObject.md "interface in javax.tools") file)

    Returns the path, if any, underlying this file object (optional operation).
    File objects derived from a [`FileSystem`](../../../java.base/java/nio/file/FileSystem.md "class in java.nio.file"),
    including the default file system, typically have a corresponding underlying
    [`Path`](../../../java.base/java/nio/file/Path.md "interface in java.nio.file") object. In such cases, this method may be
    used to access that object.

    Parameters:
    :   `file` - a file object

    Returns:
    :   a path representing the same underlying file system artifact

    Throws:
    :   `IllegalArgumentException` - if the file object does not have an underlying path
    :   `UnsupportedOperationException` - if the operation is not supported by this file manager

    Since:
    :   9
  + ### setPathFactory

    default void setPathFactory([StandardJavaFileManager.PathFactory](StandardJavaFileManager.PathFactory.md "interface in javax.tools") f)

    Specify a factory that can be used to generate a path from a string, or series of strings.
    If this method is not called, a factory whose `getPath` method is
    equivalent to calling
    [`java.nio.file.Paths.get(first, more)`](../../../java.base/java/nio/file/Paths.md#get(java.lang.String,java.lang.String...))
    will be used.

    Parameters:
    :   `f` - the factory

    Since:
    :   9