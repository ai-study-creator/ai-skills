Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class ContentHandler

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.ContentHandler

---

public abstract class ContentHandler
extends [Object](../lang/Object.md "class in java.lang")

The abstract class `ContentHandler` is the superclass
of all classes that read an `Object` from a
`URLConnection`.

An application does not generally call the
`getContent` method in this class directly. Instead, an
application calls the `getContent` method in class
`URL` or in `URLConnection`.
The application's content handler factory (an instance of a class that
implements the interface `ContentHandlerFactory` set up by a call to
[`setContentHandlerFactory`](URLConnection.md#setContentHandlerFactory(java.net.ContentHandlerFactory))) is called with a `String` giving the
MIME type of the object being received on the socket. The factory returns an
instance of a subclass of `ContentHandler`, and its
`getContent` method is called to create the object.

If no content handler could be [found](URLConnection.md#getContent()),
URLConnection will look for a content handler in a user-definable set of places.
Users can define a vertical-bar delimited set of class prefixes
to search through by defining the `java.content.handler.pkgs` system
property. The class name must be of the form:
> *{package-prefix}.{major}.{minor}*
>
> where *{major}.{minor}* is formed by taking the
> content-type string, replacing all slash characters with a
> `period` ('.'), and all other non-alphanumeric characters
> with the underscore character '`_`'. The alphanumeric
> characters are specifically the 26 uppercase ASCII letters
> '`A`' through '`Z`', the 26 lowercase ASCII
> letters '`a`' through '`z`', and the 10 ASCII
> digits '`0`' through '`9`'.
>
> e.g.
> YoyoDyne.experimental.text.plain

If no user-defined content handler is found, then the system
tries to load a specific *content-type* handler from one
of the built-in handlers, if one exists.

If the loading of the content handler class would be performed by
a classloader that is outside of the delegation chain of the caller,
the JVM will need the RuntimePermission "getClassLoader".

Since:
:   1.0

See Also:
:   * [`getContent(java.net.URLConnection)`](#getContent(java.net.URLConnection))
    * [`ContentHandlerFactory`](ContentHandlerFactory.md "interface in java.net")
    * [`URL.getContent()`](URL.md#getContent())
    * [`URLConnection`](URLConnection.md "class in java.net")
    * [`URLConnection.getContent()`](URLConnection.md#getContent())
    * [`URLConnection.setContentHandlerFactory(java.net.ContentHandlerFactory)`](URLConnection.md#setContentHandlerFactory(java.net.ContentHandlerFactory))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ContentHandler()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Object`

  `getContent(URLConnection urlc)`

  Given a URL connect stream positioned at the beginning of the
  representation of an object, this method reads that stream and
  creates an object from it.

  `Object`

  `getContent(URLConnection urlc,
  Class[] classes)`

  Given a URL connect stream positioned at the beginning of the
  representation of an object, this method reads that stream and
  creates an object that matches one of the types specified.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ContentHandler

    public ContentHandler()

    Constructor for subclasses to call.
* ## Method Details

  + ### getContent

    public abstract [Object](../lang/Object.md "class in java.lang") getContent([URLConnection](URLConnection.md "class in java.net") urlc)
    throws [IOException](../io/IOException.md "class in java.io")

    Given a URL connect stream positioned at the beginning of the
    representation of an object, this method reads that stream and
    creates an object from it.

    Parameters:
    :   `urlc` - a URL connection.

    Returns:
    :   the object read by the `ContentHandler`.

    Throws:
    :   `IOException` - if an I/O error occurs while reading the object.
  + ### getContent

    public [Object](../lang/Object.md "class in java.lang") getContent([URLConnection](URLConnection.md "class in java.net") urlc,
    [Class](../lang/Class.md "class in java.lang")[] classes)
    throws [IOException](../io/IOException.md "class in java.io")

    Given a URL connect stream positioned at the beginning of the
    representation of an object, this method reads that stream and
    creates an object that matches one of the types specified.
    The default implementation of this method should call
    [`getContent(URLConnection)`](#getContent(java.net.URLConnection))
    and screen the return type for a match of the suggested types.

    Parameters:
    :   `urlc` - a URL connection.
    :   `classes` - an array of types requested

    Returns:
    :   the object read by the `ContentHandler` that is
        the first match of the suggested types or
        `null` if none of the requested are supported.

    Throws:
    :   `IOException` - if an I/O error occurs while reading the object.

    Since:
    :   1.3