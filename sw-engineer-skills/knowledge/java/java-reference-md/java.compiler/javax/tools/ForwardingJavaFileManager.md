Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Class ForwardingJavaFileManager<M extends [JavaFileManager](JavaFileManager.md "interface in javax.tools")>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.tools.ForwardingJavaFileManager<M>

Type Parameters:
:   `M` - the kind of file manager forwarded to by this object

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `AutoCloseable`, `JavaFileManager`, `OptionChecker`

---

public class ForwardingJavaFileManager<M extends [JavaFileManager](JavaFileManager.md "interface in javax.tools")>
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [JavaFileManager](JavaFileManager.md "interface in javax.tools")

Forwards calls to a given file manager. Subclasses of this class
might override some of these methods and might also provide
additional fields and methods.

Unless stated otherwise, references in this class to "*this file manager*"
should be interpreted as referring indirectly to the [`delegate file manager`](#fileManager).

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.tools.[JavaFileManager](JavaFileManager.md "interface in javax.tools")

  `JavaFileManager.Location`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final M`

  `fileManager`

  The file manager to which all methods are delegated.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ForwardingJavaFileManager(M fileManager)`

  Creates a new instance of `ForwardingJavaFileManager`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Releases any resources opened by this file manager directly or
  indirectly.

  `boolean`

  `contains(JavaFileManager.Location location,
  FileObject fo)`

  Determines whether or not a given file object is "contained in" a specified location.

  `void`

  `flush()`

  Flushes any resources opened for output by this file manager
  directly or indirectly.

  `ClassLoader`

  `getClassLoader(JavaFileManager.Location location)`

  Returns a class loader for loading plug-ins from the given
  package-oriented location.

  `FileObject`

  `getFileForInput(JavaFileManager.Location location,
  String packageName,
  String relativeName)`

  Returns a [file object](FileObject.md "interface in javax.tools") for input
  representing the specified [relative
  name](JavaFileManager.md#relative_name) in the specified package in the given package-oriented location.

  `FileObject`

  `getFileForOutput(JavaFileManager.Location location,
  String packageName,
  String relativeName,
  FileObject sibling)`

  Returns a [file object](FileObject.md "interface in javax.tools") for output
  representing the specified [relative
  name](JavaFileManager.md#relative_name) in the specified package in the given location.

  `FileObject`

  `getFileForOutputForOriginatingFiles(JavaFileManager.Location location,
  String packageName,
  String relativeName,
  FileObject... originatingFiles)`

  Returns a [file object](FileObject.md "interface in javax.tools") for output
  representing the specified [relative
  name](JavaFileManager.md#relative_name) in the specified package in the given location.

  `JavaFileObject`

  `getJavaFileForInput(JavaFileManager.Location location,
  String className,
  JavaFileObject.Kind kind)`

  Returns a [file object](JavaFileObject.md "interface in javax.tools") for input
  representing the specified class of the specified kind in the
  given package-oriented location.

  `JavaFileObject`

  `getJavaFileForOutput(JavaFileManager.Location location,
  String className,
  JavaFileObject.Kind kind,
  FileObject sibling)`

  Returns a [file object](JavaFileObject.md "interface in javax.tools") for output
  representing the specified class of the specified kind in the
  given package-oriented location.

  `JavaFileObject`

  `getJavaFileForOutputForOriginatingFiles(JavaFileManager.Location location,
  String className,
  JavaFileObject.Kind kind,
  FileObject... originatingFiles)`

  Returns a [file object](JavaFileObject.md "interface in javax.tools") for output
  representing the specified class of the specified kind in the
  given package-oriented location.

  `JavaFileManager.Location`

  `getLocationForModule(JavaFileManager.Location location,
  String moduleName)`

  Gets a location for a named module within a location, which may be either
  a module-oriented location or an output location.

  `JavaFileManager.Location`

  `getLocationForModule(JavaFileManager.Location location,
  JavaFileObject fo)`

  Gets a location for the module containing a specific file
  to be found within a location, which may be either
  a module-oriented location or an output location.

  `<S> ServiceLoader<S>`

  `getServiceLoader(JavaFileManager.Location location,
  Class<S> service)`

  Get a service loader for a specific service class from a given location.

  `boolean`

  `handleOption(String current,
  Iterator<String> remaining)`

  Handles one option.

  `boolean`

  `hasLocation(JavaFileManager.Location location)`

  Determines if a location is known to this file manager.

  `String`

  `inferBinaryName(JavaFileManager.Location location,
  JavaFileObject file)`

  Infers a binary name of a file object based on a package-oriented location.

  `String`

  `inferModuleName(JavaFileManager.Location location)`

  Infer the name of the module from its location, as returned by
  `getLocationForModule` or `listModuleLocations`.

  `boolean`

  `isSameFile(FileObject a,
  FileObject b)`

  Compares two file objects and return true if they represent the
  same underlying object.

  `int`

  `isSupportedOption(String option)`

  Determines if the given option is supported and if so, the
  number of arguments the option takes.

  `Iterable<JavaFileObject>`

  `list(JavaFileManager.Location location,
  String packageName,
  Set<JavaFileObject.Kind> kinds,
  boolean recurse)`

  Lists all file objects matching the given criteria in the given
  package-oriented location.

  `Iterable<Set<JavaFileManager.Location>>`

  `listLocationsForModules(JavaFileManager.Location location)`

  Lists the locations for all the modules in a module-oriented location or an output location.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### fileManager

    protected final [M](ForwardingJavaFileManager.md "type parameter in ForwardingJavaFileManager") extends [JavaFileManager](JavaFileManager.md "interface in javax.tools") fileManager

    The file manager to which all methods are delegated.
* ## Constructor Details

  + ### ForwardingJavaFileManager

    protected ForwardingJavaFileManager([M](ForwardingJavaFileManager.md "type parameter in ForwardingJavaFileManager") fileManager)

    Creates a new instance of `ForwardingJavaFileManager`.

    Parameters:
    :   `fileManager` - delegate to this file manager
* ## Method Details

  + ### getClassLoader

    public [ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") getClassLoader([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location)

    Description copied from interface: `JavaFileManager`

    Returns a class loader for loading plug-ins from the given
    package-oriented location.
    For example, to load annotation processors,
    a compiler will request a class loader for the [`ANNOTATION_PROCESSOR_PATH`](StandardLocation.md#ANNOTATION_PROCESSOR_PATH) location.

    Specified by:
    :   `getClassLoader` in interface `JavaFileManager`

    Parameters:
    :   `location` - a location

    Returns:
    :   a class loader for the given location; or `null`
        if loading plug-ins from the given location is disabled or if
        the location is not known

    Throws:
    :   `SecurityException` - if a class loader can not be created
        in the current security context
    :   `IllegalStateException` - if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called
        and this file manager cannot be reopened
  + ### list

    public [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<[JavaFileObject](JavaFileObject.md "interface in javax.tools")> list([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [String](../../../java.base/java/lang/String.md "class in java.lang") packageName,
    [Set](../../../java.base/java/util/Set.md "interface in java.util")<[JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools")> kinds,
    boolean recurse)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Lists all file objects matching the given criteria in the given
    package-oriented location.
    List file objects in "subpackages" if recurse is true.

    Note: even if the given location is unknown to this file
    manager, it may not return `null`. Also, an unknown
    location may not cause an exception.

    Specified by:
    :   `list` in interface `JavaFileManager`

    Parameters:
    :   `location` - a location
    :   `packageName` - a package name
    :   `kinds` - return objects only of these kinds
    :   `recurse` - if true include "subpackages"

    Returns:
    :   an Iterable of file objects matching the given criteria

    Throws:
    :   `IOException` - if an I/O error occurred, or if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called and this file manager cannot be
        reopened
    :   `IllegalStateException` - if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called
        and this file manager cannot be reopened
  + ### inferBinaryName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") inferBinaryName([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [JavaFileObject](JavaFileObject.md "interface in javax.tools") file)

    Description copied from interface: `JavaFileManager`

    Infers a binary name of a file object based on a package-oriented location.
    The binary name returned might not be a valid binary name according to
    The Java Language Specification.

    Specified by:
    :   `inferBinaryName` in interface `JavaFileManager`

    Parameters:
    :   `location` - a location
    :   `file` - a file object

    Returns:
    :   a binary name or `null` the file object is not
        found in the given location

    Throws:
    :   `IllegalStateException` - if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called
        and this file manager cannot be reopened
  + ### isSameFile

    public boolean isSameFile([FileObject](FileObject.md "interface in javax.tools") a,
    [FileObject](FileObject.md "interface in javax.tools") b)

    Description copied from interface: `JavaFileManager`

    Compares two file objects and return true if they represent the
    same underlying object.

    Specified by:
    :   `isSameFile` in interface `JavaFileManager`

    Parameters:
    :   `a` - a file object
    :   `b` - a file object

    Returns:
    :   true if the given file objects represent the same
        underlying object

    Throws:
    :   `IllegalArgumentException` - if either of the arguments
        were created with another file manager and this file manager
        does not support foreign file objects
  + ### handleOption

    public boolean handleOption([String](../../../java.base/java/lang/String.md "class in java.lang") current,
    [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang")> remaining)

    Description copied from interface: `JavaFileManager`

    Handles one option. If `current` is an option to this
    file manager it will consume any arguments to that option from
    `remaining` and return true, otherwise return false.

    Specified by:
    :   `handleOption` in interface `JavaFileManager`

    Parameters:
    :   `current` - current option
    :   `remaining` - remaining options

    Returns:
    :   true if this option was handled by this file manager,
        false otherwise

    Throws:
    :   `IllegalArgumentException` - if this option to this file
        manager is used incorrectly
    :   `IllegalStateException` - if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called
        and this file manager cannot be reopened
  + ### hasLocation

    public boolean hasLocation([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location)

    Description copied from interface: `JavaFileManager`

    Determines if a location is known to this file manager.

    Specified by:
    :   `hasLocation` in interface `JavaFileManager`

    Parameters:
    :   `location` - a location

    Returns:
    :   true if the location is known
  + ### isSupportedOption

    public int isSupportedOption([String](../../../java.base/java/lang/String.md "class in java.lang") option)

    Description copied from interface: `OptionChecker`

    Determines if the given option is supported and if so, the
    number of arguments the option takes.

    Specified by:
    :   `isSupportedOption` in interface `OptionChecker`

    Parameters:
    :   `option` - an option

    Returns:
    :   the number of arguments the given option takes or -1 if
        the option is not supported
  + ### getJavaFileForInput

    public [JavaFileObject](JavaFileObject.md "interface in javax.tools") getJavaFileForInput([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") kind)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Returns a [file object](JavaFileObject.md "interface in javax.tools") for input
    representing the specified class of the specified kind in the
    given package-oriented location.

    Specified by:
    :   `getJavaFileForInput` in interface `JavaFileManager`

    Parameters:
    :   `location` - a location
    :   `className` - the name of a class
    :   `kind` - the kind of file, must be one of [`SOURCE`](JavaFileObject.Kind.md#SOURCE) or [`CLASS`](JavaFileObject.Kind.md#CLASS)

    Returns:
    :   a file object, might return `null` if the
        file does not exist

    Throws:
    :   `IllegalArgumentException` - if the location is not known
        to this file manager and the file manager does not support
        unknown locations, or if the kind is not valid, or if the
        location is a module-oriented location
    :   `IllegalStateException` - if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called
        and this file manager cannot be reopened
    :   `IOException` - if an I/O error occurred, or if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called and this file manager cannot be
        reopened
  + ### getJavaFileForOutput

    public [JavaFileObject](JavaFileObject.md "interface in javax.tools") getJavaFileForOutput([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") kind,
    [FileObject](FileObject.md "interface in javax.tools") sibling)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Returns a [file object](JavaFileObject.md "interface in javax.tools") for output
    representing the specified class of the specified kind in the
    given package-oriented location.

    Optionally, this file manager might consider the sibling as
    a hint for where to place the output. The exact semantics of
    this hint is unspecified. The JDK compiler, javac, for
    example, will place class files in the same directories as
    originating source files unless a class file output directory
    is provided. To facilitate this behavior, javac might provide
    the originating source file as sibling when calling this
    method.

    Specified by:
    :   `getJavaFileForOutput` in interface `JavaFileManager`

    Parameters:
    :   `location` - a package-oriented location
    :   `className` - the name of a class
    :   `kind` - the kind of file, must be one of [`SOURCE`](JavaFileObject.Kind.md#SOURCE) or [`CLASS`](JavaFileObject.Kind.md#CLASS)
    :   `sibling` - a file object to be used as hint for placement;
        might be `null`

    Returns:
    :   a file object for output

    Throws:
    :   `IllegalArgumentException` - if sibling is not known to
        this file manager, or if the location is not known to this file
        manager and the file manager does not support unknown
        locations, or if the kind is not valid, or if the location is
        not an output location
    :   `IllegalStateException` - [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called
        and this file manager cannot be reopened
    :   `IOException` - if an I/O error occurred, or if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called and this file manager cannot be
        reopened
  + ### getJavaFileForOutputForOriginatingFiles

    public [JavaFileObject](JavaFileObject.md "interface in javax.tools") getJavaFileForOutputForOriginatingFiles([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") kind,
    [FileObject](FileObject.md "interface in javax.tools")... originatingFiles)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Returns a [file object](JavaFileObject.md "interface in javax.tools") for output
    representing the specified class of the specified kind in the
    given package-oriented location.

    The provided `originatingFiles` represent files that
    were, in an unspecified way, used to create the content of
    the file created by this method. See `originatingElements`
    in [`Filer.createSourceFile(java.lang.CharSequence, javax.lang.model.element.Element...)`](../annotation/processing/Filer.md#createSourceFile(java.lang.CharSequence,javax.lang.model.element.Element...)). [`Elements.getFileObjectOf(javax.lang.model.element.Element)`](../lang/model/util/Elements.md#getFileObjectOf(javax.lang.model.element.Element))
    may be used to convert the `Element`s to `FileObject`s.

    Specified by:
    :   `getJavaFileForOutputForOriginatingFiles` in interface `JavaFileManager`

    Parameters:
    :   `location` - a package-oriented location
    :   `className` - the name of a class
    :   `kind` - the kind of file, must be one of [`SOURCE`](JavaFileObject.Kind.md#SOURCE) or [`CLASS`](JavaFileObject.Kind.md#CLASS)
    :   `originatingFiles` - the files which are contributing to this newly created file;
        `null` is equivalent to empty `originatingFiles`,
        meaning no known originating files

    Returns:
    :   a file object for output

    Throws:
    :   `IllegalArgumentException` - if sibling is not known to
        this file manager, or if the location is not known to this file
        manager and the file manager does not support unknown
        locations, or if the kind is not valid, or if the location is
        not an output location
    :   `IllegalStateException` - [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called
        and this file manager cannot be reopened
    :   `IOException` - if an I/O error occurred, or if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called and this file manager cannot be
        reopened

    See Also:
    :   - [`Filer.createSourceFile(java.lang.CharSequence, javax.lang.model.element.Element...)`](../annotation/processing/Filer.md#createSourceFile(java.lang.CharSequence,javax.lang.model.element.Element...))
  + ### getFileForInput

    public [FileObject](FileObject.md "interface in javax.tools") getFileForInput([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [String](../../../java.base/java/lang/String.md "class in java.lang") packageName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") relativeName)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Returns a [file object](FileObject.md "interface in javax.tools") for input
    representing the specified [relative
    name](JavaFileManager.md#relative_name) in the specified package in the given package-oriented location.

    If the returned object represents a [source](JavaFileObject.Kind.md#SOURCE) or [class](JavaFileObject.Kind.md#CLASS) file, it must be an instance
    of [`JavaFileObject`](JavaFileObject.md "interface in javax.tools").

    Informally, the file object returned by this method is
    located in the concatenation of the location, package name, and
    relative name. For example, to locate the properties file
    "resources/compiler.properties" in the package
    "com.sun.tools.javac" in the [SOURCE\_PATH](StandardLocation.md#SOURCE_PATH) location, this method
    might be called like so:

    Copy![Copy snippet](../../../copy.svg)

    ```
    getFileForInput(SOURCE_PATH, "com.sun.tools.javac", "resources/compiler.properties");
    ```

    If the call was executed on Windows, with SOURCE\_PATH set to
    `"C:\Documents and Settings\UncleBob\src\share\classes"`,
    a valid result would be a file object representing the file
    `"C:\Documents and Settings\UncleBob\src\share\classes\com\sun\tools\javac\resources\compiler.properties"`.

    Specified by:
    :   `getFileForInput` in interface `JavaFileManager`

    Parameters:
    :   `location` - a package-oriented location
    :   `packageName` - a package name
    :   `relativeName` - a relative name

    Returns:
    :   a file object, might return `null` if the file
        does not exist

    Throws:
    :   `IllegalArgumentException` - if the location is not known
        to this file manager and the file manager does not support
        unknown locations, or if `relativeName` is not valid,
        or if the location is a module-oriented location
    :   `IllegalStateException` - if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called
        and this file manager cannot be reopened
    :   `IOException` - if an I/O error occurred, or if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called and this file manager cannot be
        reopened
  + ### getFileForOutput

    public [FileObject](FileObject.md "interface in javax.tools") getFileForOutput([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [String](../../../java.base/java/lang/String.md "class in java.lang") packageName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") relativeName,
    [FileObject](FileObject.md "interface in javax.tools") sibling)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Returns a [file object](FileObject.md "interface in javax.tools") for output
    representing the specified [relative
    name](JavaFileManager.md#relative_name) in the specified package in the given location.

    Optionally, this file manager might consider the sibling as
    a hint for where to place the output. The exact semantics of
    this hint is unspecified. The JDK compiler, javac, for
    example, will place class files in the same directories as
    originating source files unless a class file output directory
    is provided. To facilitate this behavior, javac might provide
    the originating source file as sibling when calling this
    method.

    If the returned object represents a [source](JavaFileObject.Kind.md#SOURCE) or [class](JavaFileObject.Kind.md#CLASS) file, it must be an instance
    of [`JavaFileObject`](JavaFileObject.md "interface in javax.tools").

    Informally, the file object returned by this method is
    located in the concatenation of the location, package name, and
    relative name or next to the sibling argument. See [`getFileForInput`](JavaFileManager.md#getFileForInput(javax.tools.JavaFileManager.Location,java.lang.String,java.lang.String)) for an example.

    Specified by:
    :   `getFileForOutput` in interface `JavaFileManager`

    Parameters:
    :   `location` - an output location
    :   `packageName` - a package name
    :   `relativeName` - a relative name
    :   `sibling` - a file object to be used as hint for placement;
        might be `null`

    Returns:
    :   a file object

    Throws:
    :   `IllegalArgumentException` - if sibling is not known to
        this file manager, or if the location is not known to this file
        manager and the file manager does not support unknown
        locations, or if `relativeName` is not valid,
        or if the location is not an output location
    :   `IllegalStateException` - if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called
        and this file manager cannot be reopened
    :   `IOException` - if an I/O error occurred, or if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called and this file manager cannot be
        reopened
  + ### getFileForOutputForOriginatingFiles

    public [FileObject](FileObject.md "interface in javax.tools") getFileForOutputForOriginatingFiles([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [String](../../../java.base/java/lang/String.md "class in java.lang") packageName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") relativeName,
    [FileObject](FileObject.md "interface in javax.tools")... originatingFiles)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Returns a [file object](FileObject.md "interface in javax.tools") for output
    representing the specified [relative
    name](JavaFileManager.md#relative_name) in the specified package in the given location.

    The provided `originatingFiles` represent files that
    were, in an unspecified way, used to create the content of
    the file created by this method. See `originatingElements`
    in [`Filer.createResource(javax.tools.JavaFileManager.Location, java.lang.CharSequence, java.lang.CharSequence, javax.lang.model.element.Element...)`](../annotation/processing/Filer.md#createResource(javax.tools.JavaFileManager.Location,java.lang.CharSequence,java.lang.CharSequence,javax.lang.model.element.Element...)). [`Elements.getFileObjectOf(javax.lang.model.element.Element)`](../lang/model/util/Elements.md#getFileObjectOf(javax.lang.model.element.Element))
    may be used to convert the `Element`s to `FileObject`s.

    If the returned object represents a [source](JavaFileObject.Kind.md#SOURCE) or [class](JavaFileObject.Kind.md#CLASS) file, it must be an instance
    of [`JavaFileObject`](JavaFileObject.md "interface in javax.tools").

    Informally, the file object returned by this method is
    located in the concatenation of the location, package name, and
    relative name or in a location inferred from the `originatingFiles`.
    See [`getFileForInput`](JavaFileManager.md#getFileForInput(javax.tools.JavaFileManager.Location,java.lang.String,java.lang.String)) for an example.

    Specified by:
    :   `getFileForOutputForOriginatingFiles` in interface `JavaFileManager`

    Parameters:
    :   `location` - an output location
    :   `packageName` - a package name
    :   `relativeName` - a relative name
    :   `originatingFiles` - the files which are contributing to this newly created file;
        `null` is equivalent to empty `originatingFiles`,
        meaning no known originating files

    Returns:
    :   a file object

    Throws:
    :   `IllegalArgumentException` - if sibling is not known to
        this file manager, or if the location is not known to this file
        manager and the file manager does not support unknown
        locations, or if `relativeName` is not valid,
        or if the location is not an output location
    :   `IllegalStateException` - if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called
        and this file manager cannot be reopened
    :   `IOException` - if an I/O error occurred, or if [`JavaFileManager.close()`](JavaFileManager.md#close()) has been called and this file manager cannot be
        reopened

    See Also:
    :   - [`Filer.createResource(javax.tools.JavaFileManager.Location, java.lang.CharSequence, java.lang.CharSequence, javax.lang.model.element.Element...)`](../annotation/processing/Filer.md#createResource(javax.tools.JavaFileManager.Location,java.lang.CharSequence,java.lang.CharSequence,javax.lang.model.element.Element...))
  + ### flush

    public void flush()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Flushes any resources opened for output by this file manager
    directly or indirectly. Flushing a closed file manager has no
    effect.

    Specified by:
    :   `flush` in interface `Flushable`

    Specified by:
    :   `flush` in interface `JavaFileManager`

    Throws:
    :   `IOException` - if an I/O error occurred

    See Also:
    :   - [`JavaFileManager.close()`](JavaFileManager.md#close())
  + ### close

    public void close()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Releases any resources opened by this file manager directly or
    indirectly. This might render this file manager useless and
    the effect of subsequent calls to methods on this object or any
    objects obtained through this object is undefined unless
    explicitly allowed. However, closing a file manager which has
    already been closed has no effect.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in interface `JavaFileManager`

    Throws:
    :   `IOException` - if an I/O error occurred

    See Also:
    :   - [`JavaFileManager.flush()`](JavaFileManager.md#flush())
  + ### getLocationForModule

    public [JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") getLocationForModule([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [String](../../../java.base/java/lang/String.md "class in java.lang") moduleName)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Gets a location for a named module within a location, which may be either
    a module-oriented location or an output location.
    The result will be an output location if the given location is
    an output location, or it will be a package-oriented location.

    Specified by:
    :   `getLocationForModule` in interface `JavaFileManager`

    Parameters:
    :   `location` - the module-oriented location
    :   `moduleName` - the name of the module to be found

    Returns:
    :   the location for the named module

    Throws:
    :   `IOException` - if an I/O error occurred

    Since:
    :   9
  + ### getLocationForModule

    public [JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") getLocationForModule([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [JavaFileObject](JavaFileObject.md "interface in javax.tools") fo)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Gets a location for the module containing a specific file
    to be found within a location, which may be either
    a module-oriented location or an output location.
    The result will be an output location if the given location is
    an output location, or it will be a package-oriented location.

    Specified by:
    :   `getLocationForModule` in interface `JavaFileManager`

    Parameters:
    :   `location` - the module-oriented location
    :   `fo` - the file

    Returns:
    :   the module containing the file

    Throws:
    :   `IOException` - if an I/O error occurred

    Since:
    :   9
  + ### getServiceLoader

    public <S> [ServiceLoader](../../../java.base/java/util/ServiceLoader.md "class in java.util")<S> getServiceLoader([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<S> service)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Get a service loader for a specific service class from a given location.
    If the location is a module-oriented location, the service loader will use the
    service declarations in the modules found in that location. Otherwise, a service loader
    is created using the package-oriented location, in which case, the services are
    determined using the provider-configuration files in `META-INF/services`.

    Specified by:
    :   `getServiceLoader` in interface `JavaFileManager`

    Type Parameters:
    :   `S` - the service class

    Parameters:
    :   `location` - the module-oriented location
    :   `service` - the `Class` object of the service class

    Returns:
    :   a service loader for the given service class

    Throws:
    :   `IOException` - if an I/O error occurred

    Since:
    :   9
  + ### inferModuleName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") inferModuleName([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Infer the name of the module from its location, as returned by
    `getLocationForModule` or `listModuleLocations`.

    Specified by:
    :   `inferModuleName` in interface `JavaFileManager`

    Parameters:
    :   `location` - a package-oriented location representing a module

    Returns:
    :   the name of the module

    Throws:
    :   `IOException` - if an I/O error occurred

    Since:
    :   9
  + ### listLocationsForModules

    public [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<[Set](../../../java.base/java/util/Set.md "interface in java.util")<[JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools")>> listLocationsForModules([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Lists the locations for all the modules in a module-oriented location or an output location.
    The locations that are returned will be output locations if the given location is an output,
    or it will be a package-oriented locations.

    Specified by:
    :   `listLocationsForModules` in interface `JavaFileManager`

    Parameters:
    :   `location` - the module-oriented location for which to list the modules

    Returns:
    :   a series of sets of locations containing modules

    Throws:
    :   `IOException` - if an I/O error occurred

    Since:
    :   9
  + ### contains

    public boolean contains([JavaFileManager.Location](JavaFileManager.Location.md "interface in javax.tools") location,
    [FileObject](FileObject.md "interface in javax.tools") fo)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `JavaFileManager`

    Determines whether or not a given file object is "contained in" a specified location.

    For a package-oriented location, a file object is contained in the location if there exist
    values for *packageName* and *relativeName* such that either of the following
    calls would return the [`same`](JavaFileManager.md#isSameFile(javax.tools.FileObject,javax.tools.FileObject)) file object:

    Copy![Copy snippet](../../../copy.svg)

    ```
    getFileForInput(location, packageName, relativeName)
    getFileForOutput(location, packageName, relativeName, null)
    ```

    For a module-oriented location, a file object is contained in the location if there exists
    a module that may be obtained by the call:

    Copy![Copy snippet](../../../copy.svg)

    ```
    getLocationForModule(location, moduleName)
    ```

    such that the file object is contained in the (package-oriented) location for that module.

    Specified by:
    :   `contains` in interface `JavaFileManager`

    Parameters:
    :   `location` - the location
    :   `fo` - the file object

    Returns:
    :   whether or not the file is contained in the location

    Throws:
    :   `IOException` - if there is a problem determining the result

    Since:
    :   9