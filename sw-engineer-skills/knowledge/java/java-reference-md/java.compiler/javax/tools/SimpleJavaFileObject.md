Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Class SimpleJavaFileObject

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.tools.SimpleJavaFileObject

All Implemented Interfaces:
:   `FileObject`, `JavaFileObject`

---

public class SimpleJavaFileObject
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [JavaFileObject](JavaFileObject.md "interface in javax.tools")

Provides simple implementations for most methods in JavaFileObject.
This class is designed to be subclassed and used as a basis for
JavaFileObject implementations. Subclasses can override the
implementation and specification of any method of this class as
long as the general contract of JavaFileObject is obeyed.

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.tools.[JavaFileObject](JavaFileObject.md "interface in javax.tools")

  `JavaFileObject.Kind`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final JavaFileObject.Kind`

  `kind`

  The kind of this file object.

  `protected final URI`

  `uri`

  A URI for this file object.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SimpleJavaFileObject(URI uri,
  JavaFileObject.Kind kind)`

  Construct a SimpleJavaFileObject of the given kind and with the
  given URI.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `delete()`

  This implementation does nothing.

  `Modifier`

  `getAccessLevel()`

  This implementation returns `null`.

  `CharSequence`

  `getCharContent(boolean ignoreEncodingErrors)`

  This implementation always throws [UnsupportedOperationException](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang").

  `JavaFileObject.Kind`

  `getKind()`

  Returns the kind of this file object.

  `long`

  `getLastModified()`

  This implementation returns `0L`.

  `String`

  `getName()`

  Returns a user-friendly name for this file object.

  `NestingKind`

  `getNestingKind()`

  This implementation returns `null`.

  `boolean`

  `isNameCompatible(String simpleName,
  JavaFileObject.Kind kind)`

  This implementation compares the path of its URI to the given
  simple name.

  `InputStream`

  `openInputStream()`

  This implementation always throws [UnsupportedOperationException](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang").

  `OutputStream`

  `openOutputStream()`

  This implementation always throws [UnsupportedOperationException](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang").

  `Reader`

  `openReader(boolean ignoreEncodingErrors)`

  Wraps the result of [getCharContent(boolean)](#getCharContent(boolean)) in a Reader.

  `Writer`

  `openWriter()`

  Wraps the result of openOutputStream in a Writer.

  `String`

  `toString()`

  Returns a string representation of the object.

  `URI`

  `toUri()`

  Returns a URI identifying this file object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### uri

    protected final [URI](../../../java.base/java/net/URI.md "class in java.net") uri

    A URI for this file object.
  + ### kind

    protected final [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") kind

    The kind of this file object.
* ## Constructor Details

  + ### SimpleJavaFileObject

    protected SimpleJavaFileObject([URI](../../../java.base/java/net/URI.md "class in java.net") uri,
    [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") kind)

    Construct a SimpleJavaFileObject of the given kind and with the
    given URI.

    Parameters:
    :   `uri` - the URI for this file object
    :   `kind` - the kind of this file object
* ## Method Details

  + ### toUri

    public [URI](../../../java.base/java/net/URI.md "class in java.net") toUri()

    Description copied from interface: `FileObject`

    Returns a URI identifying this file object.

    Specified by:
    :   `toUri` in interface `FileObject`

    Returns:
    :   a URI
  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Description copied from interface: `FileObject`

    Returns a user-friendly name for this file object. The exact
    value returned is not specified but implementations should take
    care to preserve names as given by the user. For example, if
    the user writes the filename `"BobsApp\Test.java"` on
    the command line, this method should return `"BobsApp\Test.java"` whereas the [toUri](FileObject.md#toUri())
    method might return `file:///C:/Documents%20and%20Settings/UncleBob/BobsApp/Test.java`.

    Specified by:
    :   `getName` in interface `FileObject`

    Returns:
    :   a user-friendly name
  + ### openInputStream

    public [InputStream](../../../java.base/java/io/InputStream.md "class in java.io") openInputStream()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    This implementation always throws [UnsupportedOperationException](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang"). Subclasses can change this
    behavior as long as the contract of [`FileObject`](FileObject.md "interface in javax.tools") is
    obeyed.

    Specified by:
    :   `openInputStream` in interface `FileObject`

    Returns:
    :   an InputStream

    Throws:
    :   `IOException` - if an I/O error occurred
  + ### openOutputStream

    public [OutputStream](../../../java.base/java/io/OutputStream.md "class in java.io") openOutputStream()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    This implementation always throws [UnsupportedOperationException](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang"). Subclasses can change this
    behavior as long as the contract of [`FileObject`](FileObject.md "interface in javax.tools") is
    obeyed.

    Specified by:
    :   `openOutputStream` in interface `FileObject`

    Returns:
    :   an OutputStream

    Throws:
    :   `IOException` - if an I/O error occurred
  + ### openReader

    public [Reader](../../../java.base/java/io/Reader.md "class in java.io") openReader(boolean ignoreEncodingErrors)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Wraps the result of [getCharContent(boolean)](#getCharContent(boolean)) in a Reader.
    Subclasses can change this behavior as long as the contract of
    [`FileObject`](FileObject.md "interface in javax.tools") is obeyed.

    Specified by:
    :   `openReader` in interface `FileObject`

    Parameters:
    :   `ignoreEncodingErrors` - ignore encoding errors if true

    Returns:
    :   a Reader wrapping the result of getCharContent

    Throws:
    :   `IllegalStateException` - if this file object was
        opened for writing and does not support reading
    :   `UnsupportedOperationException` - if this kind of
        file object does not support character access
    :   `IOException` - if an I/O error occurred
  + ### getCharContent

    public [CharSequence](../../../java.base/java/lang/CharSequence.md "interface in java.lang") getCharContent(boolean ignoreEncodingErrors)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    This implementation always throws [UnsupportedOperationException](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang"). Subclasses can change this
    behavior as long as the contract of [`FileObject`](FileObject.md "interface in javax.tools") is
    obeyed.

    Specified by:
    :   `getCharContent` in interface `FileObject`

    Parameters:
    :   `ignoreEncodingErrors` - ignore encoding errors if true

    Returns:
    :   a CharSequence if available; `null` otherwise

    Throws:
    :   `IOException` - if an I/O error occurred
  + ### openWriter

    public [Writer](../../../java.base/java/io/Writer.md "class in java.io") openWriter()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Wraps the result of openOutputStream in a Writer. Subclasses
    can change this behavior as long as the contract of [`FileObject`](FileObject.md "interface in javax.tools") is obeyed.

    Specified by:
    :   `openWriter` in interface `FileObject`

    Returns:
    :   a Writer wrapping the result of openOutputStream

    Throws:
    :   `IllegalStateException` - if this file object was
        opened for reading and does not support writing
    :   `UnsupportedOperationException` - if this kind of
        file object does not support character access
    :   `IOException` - if an I/O error occurred
  + ### getLastModified

    public long getLastModified()

    This implementation returns `0L`. Subclasses can change
    this behavior as long as the contract of [`FileObject`](FileObject.md "interface in javax.tools") is
    obeyed.

    Specified by:
    :   `getLastModified` in interface `FileObject`

    Returns:
    :   `0L`
  + ### delete

    public boolean delete()

    This implementation does nothing. Subclasses can change this
    behavior as long as the contract of [`FileObject`](FileObject.md "interface in javax.tools") is
    obeyed.

    Specified by:
    :   `delete` in interface `FileObject`

    Returns:
    :   `false`
  + ### getKind

    public [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") getKind()

    Description copied from interface: `JavaFileObject`

    Returns the kind of this file object.

    Specified by:
    :   `getKind` in interface `JavaFileObject`

    Returns:
    :   `this.kind`
  + ### isNameCompatible

    public boolean isNameCompatible([String](../../../java.base/java/lang/String.md "class in java.lang") simpleName,
    [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") kind)

    This implementation compares the path of its URI to the given
    simple name. This method returns true if the given kind is
    equal to the kind of this object, and if the path is equal to
    `simpleName + kind.extension` or if it ends with `"/" + simpleName + kind.extension`.

    This method calls [`getKind()`](#getKind()) and [`toUri()`](#toUri()) and
    does not access the fields [`uri`](#uri) and [`kind`](#kind)
    directly.

    Subclasses can change this behavior as long as the contract
    of [`JavaFileObject`](JavaFileObject.md "interface in javax.tools") is obeyed.

    Specified by:
    :   `isNameCompatible` in interface `JavaFileObject`

    Parameters:
    :   `simpleName` - a simple name of a class
    :   `kind` - a kind

    Returns:
    :   `true` if this file object is compatible; `false`
        otherwise
  + ### getNestingKind

    public [NestingKind](../lang/model/element/NestingKind.md "enum class in javax.lang.model.element") getNestingKind()

    This implementation returns `null`. Subclasses can
    change this behavior as long as the contract of
    [`JavaFileObject`](JavaFileObject.md "interface in javax.tools") is obeyed.

    Specified by:
    :   `getNestingKind` in interface `JavaFileObject`

    Returns:
    :   the nesting kind, or `null` if the nesting kind
        is not known
  + ### getAccessLevel

    public [Modifier](../lang/model/element/Modifier.md "enum class in javax.lang.model.element") getAccessLevel()

    This implementation returns `null`. Subclasses can
    change this behavior as long as the contract of
    [`JavaFileObject`](JavaFileObject.md "interface in javax.tools") is obeyed.

    Specified by:
    :   `getAccessLevel` in interface `JavaFileObject`

    Returns:
    :   the access level
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.