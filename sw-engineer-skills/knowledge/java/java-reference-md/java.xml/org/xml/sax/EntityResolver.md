Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Interface EntityResolver

All Known Subinterfaces:
:   `CatalogResolver`, `EntityResolver2`

All Known Implementing Classes:
:   `DefaultHandler`, `DefaultHandler2`, `HandlerBase`, `XMLFilterImpl`

---

public interface EntityResolver

Basic interface for resolving entities.

If a SAX application needs to implement customized handling
for external entities, it must implement this interface and
register an instance with the SAX driver using the
[`setEntityResolver`](XMLReader.md#setEntityResolver(org.xml.sax.EntityResolver))
method.

The XML reader will then allow the application to intercept any
external entities (including the external DTD subset and external
parameter entities, if any) before including them.

Many SAX applications will not need to implement this interface,
but it will be especially useful for applications that build
XML documents from databases or other specialised input sources,
or for applications that use URI types other than URLs.

The following resolver would provide the application
with a special character stream for the entity with the system
identifier "http://www.myhost.com/today":

```
 import org.xml.sax.EntityResolver;
 import org.xml.sax.InputSource;

 public class MyResolver implements EntityResolver {
   public InputSource resolveEntity (String publicId, String systemId)
   {
     if (systemId.equals("http://www.myhost.com/today")) {
              // return a special input source
       MyReader reader = new MyReader();
       return new InputSource(reader);
     } else {
              // use the default behaviour
       return null;
     }
   }
 }
```

The application can also use this interface to redirect system
identifiers to local URIs or to look up replacements in a catalog
(possibly by using the public identifier).

Since:
:   1.4, SAX 1.0

See Also:
:   * [`XMLReader.setEntityResolver(org.xml.sax.EntityResolver)`](XMLReader.md#setEntityResolver(org.xml.sax.EntityResolver))
    * [`InputSource`](InputSource.md "class in org.xml.sax")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `InputSource`

  `resolveEntity(String publicId,
  String systemId)`

  Allow the application to resolve external entities.

* ## Method Details

  + ### resolveEntity

    [InputSource](InputSource.md "class in org.xml.sax") resolveEntity([String](../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](SAXException.md "class in org.xml.sax"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Allow the application to resolve external entities.

    The parser will call this method before opening any external
    entity except the top-level document entity. Such entities include
    the external DTD subset and external parameter entities referenced
    within the DTD (in either case, only if the parser reads external
    parameter entities), and external general entities referenced
    within the document element (if the parser reads external general
    entities). The application may request that the parser locate
    the entity itself, that it use an alternative URI, or that it
    use data provided by the application (as a character or byte
    input stream).

    Application writers can use this method to redirect external
    system identifiers to secure and/or local URIs, to look up
    public identifiers in a catalogue, or to read an entity from a
    database or other input source (including, for example, a dialog
    box). Neither XML nor SAX specifies a preferred policy for using
    public or system IDs to resolve resources. However, SAX specifies
    how to interpret any InputSource returned by this method, and that
    if none is returned, then the system ID will be dereferenced as
    a URL.

    If the system identifier is a URL, the SAX parser must
    resolve it fully before reporting it to the application.

    Parameters:
    :   `publicId` - The public identifier of the external entity
        being referenced, or null if none was supplied.
    :   `systemId` - The system identifier of the external entity
        being referenced.

    Returns:
    :   An InputSource object describing the new input source,
        or null to request that the parser open a regular
        URI connection to the system identifier.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.
    :   `IOException` - A Java-specific IO exception,
        possibly the result of creating a new InputStream
        or Reader for the InputSource.

    See Also:
    :   - [`InputSource`](InputSource.md "class in org.xml.sax")