Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Class ForwardingFileObject<F extends [FileObject](FileObject.md "interface in javax.tools")>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.tools.ForwardingFileObject<F>

Type Parameters:
:   `F` - the kind of file object forwarded to by this object

All Implemented Interfaces:
:   `FileObject`

Direct Known Subclasses:
:   `ForwardingJavaFileObject`

---

public class ForwardingFileObject<F extends [FileObject](FileObject.md "interface in javax.tools")>
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [FileObject](FileObject.md "interface in javax.tools")

Forwards calls to a given file object. Subclasses of this class
might override some of these methods and might also provide
additional fields and methods.

Unless stated otherwise, references in this class to "*this file object*"
should be interpreted as referring indirectly to the [`delegate file object`](#fileObject).

Since:
:   1.6

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final F`

  `fileObject`

  The file object to which all methods are delegated.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ForwardingFileObject(F fileObject)`

  Creates a new instance of `ForwardingFileObject`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `delete()`

  Deletes this file object.

  `CharSequence`

  `getCharContent(boolean ignoreEncodingErrors)`

  Returns the character content of this file object, if available.

  `long`

  `getLastModified()`

  Returns the time this file object was last modified.

  `String`

  `getName()`

  Returns a user-friendly name for this file object.

  `InputStream`

  `openInputStream()`

  Returns an InputStream for this file object.

  `OutputStream`

  `openOutputStream()`

  Returns an OutputStream for this file object.

  `Reader`

  `openReader(boolean ignoreEncodingErrors)`

  Returns a reader for this object.

  `Writer`

  `openWriter()`

  Returns a Writer for this file object.

  `URI`

  `toUri()`

  Returns a URI identifying this file object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### fileObject

    protected final [F](ForwardingFileObject.md "type parameter in ForwardingFileObject") extends [FileObject](FileObject.md "interface in javax.tools") fileObject

    The file object to which all methods are delegated.
* ## Constructor Details

  + ### ForwardingFileObject

    protected ForwardingFileObject([F](ForwardingFileObject.md "type parameter in ForwardingFileObject") fileObject)

    Creates a new instance of `ForwardingFileObject`.

    Parameters:
    :   `fileObject` - delegate to this file object
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

    Description copied from interface: `FileObject`

    Returns an InputStream for this file object.

    Specified by:
    :   `openInputStream` in interface `FileObject`

    Returns:
    :   an InputStream

    Throws:
    :   `IllegalStateException` - if this file object was
        opened for writing and does not support reading
    :   `UnsupportedOperationException` - if this kind of file
        object does not support byte access
    :   `IOException` - if an I/O error occurred
  + ### openOutputStream

    public [OutputStream](../../../java.base/java/io/OutputStream.md "class in java.io") openOutputStream()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `FileObject`

    Returns an OutputStream for this file object.

    Specified by:
    :   `openOutputStream` in interface `FileObject`

    Returns:
    :   an OutputStream

    Throws:
    :   `IllegalStateException` - if this file object was
        opened for reading and does not support writing
    :   `UnsupportedOperationException` - if this kind of
        file object does not support byte access
    :   `IOException` - if an I/O error occurred
  + ### openReader

    public [Reader](../../../java.base/java/io/Reader.md "class in java.io") openReader(boolean ignoreEncodingErrors)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `FileObject`

    Returns a reader for this object. The returned reader will
    replace bytes that cannot be decoded with the default
    translation character. In addition, the reader may report a
    diagnostic unless `ignoreEncodingErrors` is true.

    Specified by:
    :   `openReader` in interface `FileObject`

    Parameters:
    :   `ignoreEncodingErrors` - ignore encoding errors if true

    Returns:
    :   a Reader

    Throws:
    :   `IllegalStateException` - if this file object was
        opened for writing and does not support reading
    :   `UnsupportedOperationException` - if this kind of
        file object does not support character access
    :   `IOException` - if an I/O error occurred
  + ### getCharContent

    public [CharSequence](../../../java.base/java/lang/CharSequence.md "interface in java.lang") getCharContent(boolean ignoreEncodingErrors)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `FileObject`

    Returns the character content of this file object, if available.
    Any byte that cannot be decoded will be replaced by the default
    translation character. In addition, a diagnostic may be
    reported unless `ignoreEncodingErrors` is true.

    Specified by:
    :   `getCharContent` in interface `FileObject`

    Parameters:
    :   `ignoreEncodingErrors` - ignore encoding errors if true

    Returns:
    :   a CharSequence if available; `null` otherwise

    Throws:
    :   `IllegalStateException` - if this file object was
        opened for writing and does not support reading
    :   `UnsupportedOperationException` - if this kind of
        file object does not support character access
    :   `IOException` - if an I/O error occurred
  + ### openWriter

    public [Writer](../../../java.base/java/io/Writer.md "class in java.io") openWriter()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `FileObject`

    Returns a Writer for this file object.

    Specified by:
    :   `openWriter` in interface `FileObject`

    Returns:
    :   a Writer

    Throws:
    :   `IllegalStateException` - if this file object was
        opened for reading and does not support writing
    :   `UnsupportedOperationException` - if this kind of
        file object does not support character access
    :   `IOException` - if an I/O error occurred
  + ### getLastModified

    public long getLastModified()

    Description copied from interface: `FileObject`

    Returns the time this file object was last modified. The time is
    measured in milliseconds since the epoch (00:00:00 GMT, January
    1, 1970).

    Specified by:
    :   `getLastModified` in interface `FileObject`

    Returns:
    :   the time this file object was last modified; or 0 if
        the file object does not exist, if an I/O error occurred, or if
        the operation is not supported
  + ### delete

    public boolean delete()

    Description copied from interface: `FileObject`

    Deletes this file object. In case of errors, returns false.

    Specified by:
    :   `delete` in interface `FileObject`

    Returns:
    :   true if and only if this file object is successfully
        deleted; false otherwise