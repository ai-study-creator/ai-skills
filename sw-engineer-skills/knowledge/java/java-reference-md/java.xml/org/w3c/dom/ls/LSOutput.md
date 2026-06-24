Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.ls](package-summary.md)

# Interface LSOutput

---

public interface LSOutput

This interface represents an output destination for data.

This interface allows an application to encapsulate information about
an output destination in a single object, which may include a URI, a byte
stream (possibly with a specified encoding), a base URI, and/or a
character stream.

The exact definitions of a byte stream and a character stream are
binding dependent.

The application is expected to provide objects that implement this
interface whenever such objects are needed. The application can either
provide its own objects that implement this interface, or it can use the
generic factory method `DOMImplementationLS.createLSOutput()`
to create objects that implement this interface.

The `LSSerializer` will use the `LSOutput` object
to determine where to serialize the output to. The
`LSSerializer` will look at the different outputs specified in
the `LSOutput` in the following order to know which one to
output to, the first one that is not null and not an empty string will be
used:

1. `LSOutput.characterStream`
2. `LSOutput.byteStream`
3. `LSOutput.systemId`

`LSOutput` objects belong to the application. The DOM
implementation will never modify them (though it may make copies and
modify the copies, if necessary).

See also the [Document Object Model (DOM) Level 3 Load
and Save Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-LS-20040407).

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `OutputStream`

  `getByteStream()`

  An attribute of a language and binding dependent type that represents
  a writable stream of bytes.

  `Writer`

  `getCharacterStream()`

  An attribute of a language and binding dependent type that represents
  a writable stream to which 16-bit units can be output.

  `String`

  `getEncoding()`

  The character encoding to use for the output.

  `String`

  `getSystemId()`

  The system identifier, a URI reference [[IETF RFC 2396](http://www.ietf.org/rfc/rfc2396.txt)], for this
  output destination.

  `void`

  `setByteStream(OutputStream byteStream)`

  An attribute of a language and binding dependent type that represents
  a writable stream of bytes.

  `void`

  `setCharacterStream(Writer characterStream)`

  An attribute of a language and binding dependent type that represents
  a writable stream to which 16-bit units can be output.

  `void`

  `setEncoding(String encoding)`

  The character encoding to use for the output.

  `void`

  `setSystemId(String systemId)`

  The system identifier, a URI reference [[IETF RFC 2396](http://www.ietf.org/rfc/rfc2396.txt)], for this
  output destination.

* ## Method Details

  + ### getCharacterStream

    [Writer](../../../../../java.base/java/io/Writer.md "class in java.io") getCharacterStream()

    An attribute of a language and binding dependent type that represents
    a writable stream to which 16-bit units can be output.
  + ### setCharacterStream

    void setCharacterStream([Writer](../../../../../java.base/java/io/Writer.md "class in java.io") characterStream)

    An attribute of a language and binding dependent type that represents
    a writable stream to which 16-bit units can be output.
  + ### getByteStream

    [OutputStream](../../../../../java.base/java/io/OutputStream.md "class in java.io") getByteStream()

    An attribute of a language and binding dependent type that represents
    a writable stream of bytes.
  + ### setByteStream

    void setByteStream([OutputStream](../../../../../java.base/java/io/OutputStream.md "class in java.io") byteStream)

    An attribute of a language and binding dependent type that represents
    a writable stream of bytes.
  + ### getSystemId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    The system identifier, a URI reference [[IETF RFC 2396](http://www.ietf.org/rfc/rfc2396.txt)], for this
    output destination.
      
     If the system ID is a relative URI reference (see section 5 in [[IETF RFC 2396](http://www.ietf.org/rfc/rfc2396.txt)]), the
    behavior is implementation dependent.
  + ### setSystemId

    void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    The system identifier, a URI reference [[IETF RFC 2396](http://www.ietf.org/rfc/rfc2396.txt)], for this
    output destination.
      
     If the system ID is a relative URI reference (see section 5 in [[IETF RFC 2396](http://www.ietf.org/rfc/rfc2396.txt)]), the
    behavior is implementation dependent.
  + ### getEncoding

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getEncoding()

    The character encoding to use for the output. The encoding must be a
    string acceptable for an XML encoding declaration ([[XML 1.0](https://www.w3.org/TR/xml/)] section
    4.3.3 "Character Encoding in Entities"), it is recommended that
    character encodings registered (as charsets) with the Internet
    Assigned Numbers Authority [[IANA-CHARSETS](http://www.iana.org/assignments/character-sets/character-sets.xhtml)]
    should be referred to using their registered names.
  + ### setEncoding

    void setEncoding([String](../../../../../java.base/java/lang/String.md "class in java.lang") encoding)

    The character encoding to use for the output. The encoding must be a
    string acceptable for an XML encoding declaration ([[XML 1.0](https://www.w3.org/TR/xml/)] section
    4.3.3 "Character Encoding in Entities"), it is recommended that
    character encodings registered (as charsets) with the Internet
    Assigned Numbers Authority [[IANA-CHARSETS](http://www.iana.org/assignments/character-sets/character-sets.xhtml)]
    should be referred to using their registered names.