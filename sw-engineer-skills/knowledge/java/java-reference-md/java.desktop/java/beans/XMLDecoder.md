Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class XMLDecoder

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.XMLDecoder

All Implemented Interfaces:
:   `AutoCloseable`

---

public class XMLDecoder
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [AutoCloseable](../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")

The `XMLDecoder` class is used to read XML documents
created using the `XMLEncoder` and is used just like
the `ObjectInputStream`. For example, one can use
the following fragment to read the first object defined
in an XML document written by the `XMLEncoder`
class:

```
       XMLDecoder d = new XMLDecoder(
                          new BufferedInputStream(
                              new FileInputStream("Test.xml")));
       Object result = d.readObject();
       d.close();
```

For more information you might also want to check out
[Long Term Persistence of JavaBeans Components: XML Schema](http://www.oracle.com/technetwork/java/persistence3-139471.html),
an article in *The Swing Connection.*

Since:
:   1.4

See Also:
:   * [`XMLEncoder`](XMLEncoder.md "class in java.beans")
    * [`ObjectInputStream`](../../../java.base/java/io/ObjectInputStream.md "class in java.io")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XMLDecoder(InputStream in)`

  Creates a new input stream for reading archives
  created by the `XMLEncoder` class.

  `XMLDecoder(InputStream in,
  Object owner)`

  Creates a new input stream for reading archives
  created by the `XMLEncoder` class.

  `XMLDecoder(InputStream in,
  Object owner,
  ExceptionListener exceptionListener)`

  Creates a new input stream for reading archives
  created by the `XMLEncoder` class.

  `XMLDecoder(InputStream in,
  Object owner,
  ExceptionListener exceptionListener,
  ClassLoader cl)`

  Creates a new input stream for reading archives
  created by the `XMLEncoder` class.

  `XMLDecoder(InputSource is)`

  Creates a new decoder to parse XML archives
  created by the `XMLEncoder` class.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  This method closes the input stream associated
  with this stream.

  `static DefaultHandler`

  `createHandler(Object owner,
  ExceptionListener el,
  ClassLoader cl)`

  Creates a new handler for SAX parser
  that can be used to parse embedded XML archives
  created by the `XMLEncoder` class.

  `ExceptionListener`

  `getExceptionListener()`

  Gets the exception handler for this stream.

  `Object`

  `getOwner()`

  Gets the owner of this decoder.

  `Object`

  `readObject()`

  Reads the next object from the underlying input stream.

  `void`

  `setExceptionListener(ExceptionListener exceptionListener)`

  Sets the exception handler for this stream to `exceptionListener`.

  `void`

  `setOwner(Object owner)`

  Sets the owner of this decoder to `owner`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### XMLDecoder

    public XMLDecoder([InputStream](../../../java.base/java/io/InputStream.md "class in java.io") in)

    Creates a new input stream for reading archives
    created by the `XMLEncoder` class.

    Parameters:
    :   `in` - The underlying stream.

    See Also:
    :   - [`XMLEncoder(java.io.OutputStream)`](XMLEncoder.md#%3Cinit%3E(java.io.OutputStream))
  + ### XMLDecoder

    public XMLDecoder([InputStream](../../../java.base/java/io/InputStream.md "class in java.io") in,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") owner)

    Creates a new input stream for reading archives
    created by the `XMLEncoder` class.

    Parameters:
    :   `in` - The underlying stream.
    :   `owner` - The owner of this stream.
  + ### XMLDecoder

    public XMLDecoder([InputStream](../../../java.base/java/io/InputStream.md "class in java.io") in,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") owner,
    [ExceptionListener](ExceptionListener.md "interface in java.beans") exceptionListener)

    Creates a new input stream for reading archives
    created by the `XMLEncoder` class.

    Parameters:
    :   `in` - the underlying stream.
    :   `owner` - the owner of this stream.
    :   `exceptionListener` - the exception handler for the stream;
        if `null` the default exception listener will be used.
  + ### XMLDecoder

    public XMLDecoder([InputStream](../../../java.base/java/io/InputStream.md "class in java.io") in,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") owner,
    [ExceptionListener](ExceptionListener.md "interface in java.beans") exceptionListener,
    [ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") cl)

    Creates a new input stream for reading archives
    created by the `XMLEncoder` class.

    Parameters:
    :   `in` - the underlying stream. `null` may be passed without
        error, though the resulting XMLDecoder will be useless
    :   `owner` - the owner of this stream. `null` is a legal
        value
    :   `exceptionListener` - the exception handler for the stream, or
        `null` to use the default
    :   `cl` - the class loader used for instantiating objects.
        `null` indicates that the default class loader should
        be used

    Since:
    :   1.5
  + ### XMLDecoder

    public XMLDecoder([InputSource](../../../java.xml/org/xml/sax/InputSource.md "class in org.xml.sax") is)

    Creates a new decoder to parse XML archives
    created by the `XMLEncoder` class.
    If the input source `is` is `null`,
    no exception is thrown and no parsing is performed.
    This behavior is similar to behavior of other constructors
    that use `InputStream` as a parameter.

    Parameters:
    :   `is` - the input source to parse

    Since:
    :   1.7
* ## Method Details

  + ### close

    public void close()

    This method closes the input stream associated
    with this stream.

    Specified by:
    :   `close` in interface `AutoCloseable`
  + ### setExceptionListener

    public void setExceptionListener([ExceptionListener](ExceptionListener.md "interface in java.beans") exceptionListener)

    Sets the exception handler for this stream to `exceptionListener`.
    The exception handler is notified when this stream catches recoverable
    exceptions.

    Parameters:
    :   `exceptionListener` - The exception handler for this stream;
        if `null` the default exception listener will be used.

    See Also:
    :   - [`getExceptionListener()`](#getExceptionListener())
  + ### getExceptionListener

    public [ExceptionListener](ExceptionListener.md "interface in java.beans") getExceptionListener()

    Gets the exception handler for this stream.

    Returns:
    :   The exception handler for this stream.
        Will return the default exception listener if this has not explicitly been set.

    See Also:
    :   - [`setExceptionListener(java.beans.ExceptionListener)`](#setExceptionListener(java.beans.ExceptionListener))
  + ### readObject

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") readObject()

    Reads the next object from the underlying input stream.

    Returns:
    :   the next object read

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the stream contains no objects
        (or no more objects)

    See Also:
    :   - [`XMLEncoder.writeObject(java.lang.Object)`](XMLEncoder.md#writeObject(java.lang.Object))
  + ### setOwner

    public void setOwner([Object](../../../java.base/java/lang/Object.md "class in java.lang") owner)

    Sets the owner of this decoder to `owner`.

    Parameters:
    :   `owner` - The owner of this decoder.

    See Also:
    :   - [`getOwner()`](#getOwner())
  + ### getOwner

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getOwner()

    Gets the owner of this decoder.

    Returns:
    :   The owner of this decoder.

    See Also:
    :   - [`setOwner(java.lang.Object)`](#setOwner(java.lang.Object))
  + ### createHandler

    public static [DefaultHandler](../../../java.xml/org/xml/sax/helpers/DefaultHandler.md "class in org.xml.sax.helpers") createHandler([Object](../../../java.base/java/lang/Object.md "class in java.lang") owner,
    [ExceptionListener](ExceptionListener.md "interface in java.beans") el,
    [ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") cl)

    Creates a new handler for SAX parser
    that can be used to parse embedded XML archives
    created by the `XMLEncoder` class.
    The `owner` should be used if parsed XML document contains
    the method call within context of the <java> element.
    The `null` value may cause illegal parsing in such case.
    The same problem may occur, if the `owner` class
    does not contain expected method to call. See details [here](http://www.oracle.com/technetwork/java/persistence3-139471.html).

    Parameters:
    :   `owner` - the owner of the default handler
        that can be used as a value of <java> element
    :   `el` - the exception handler for the parser,
        or `null` to use the default exception handler
    :   `cl` - the class loader used for instantiating objects,
        or `null` to use the default class loader

    Returns:
    :   an instance of `DefaultHandler` for SAX parser

    Since:
    :   1.7