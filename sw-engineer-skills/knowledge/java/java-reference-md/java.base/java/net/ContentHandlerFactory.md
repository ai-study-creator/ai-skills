Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Interface ContentHandlerFactory

---

public interface ContentHandlerFactory

This interface defines a factory for content handlers. An
implementation of this interface should map a MIME type into an
instance of `ContentHandler`.

This interface is used by the `URLStreamHandler` class
to create a `ContentHandler` for a MIME type.

Since:
:   1.0

See Also:
:   * [`ContentHandler`](ContentHandler.md "class in java.net")
    * [`URLStreamHandler`](URLStreamHandler.md "class in java.net")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ContentHandler`

  `createContentHandler(String mimetype)`

  Creates a new `ContentHandler` to read an object from
  a `URLStreamHandler`.

* ## Method Details

  + ### createContentHandler

    [ContentHandler](ContentHandler.md "class in java.net") createContentHandler([String](../lang/String.md "class in java.lang") mimetype)

    Creates a new `ContentHandler` to read an object from
    a `URLStreamHandler`.

    Parameters:
    :   `mimetype` - the MIME type for which a content handler is desired.

    Returns:
    :   a new `ContentHandler` to read an object from a
        `URLStreamHandler`.

    See Also:
    :   - [`ContentHandler`](ContentHandler.md "class in java.net")
        - [`URLStreamHandler`](URLStreamHandler.md "class in java.net")