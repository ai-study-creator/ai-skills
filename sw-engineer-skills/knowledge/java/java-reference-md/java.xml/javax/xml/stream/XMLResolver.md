Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Interface XMLResolver

All Known Subinterfaces:
:   `CatalogResolver`

---

public interface XMLResolver

This interface is used to resolve resources during an XML parse. If an application wishes to
perform custom entity resolution it must register an instance of this interface with
the XMLInputFactory using the setXMLResolver method.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `resolveEntity(String publicID,
  String systemID,
  String baseURI,
  String namespace)`

  Retrieves a resource.

* ## Method Details

  + ### resolveEntity

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") resolveEntity([String](../../../../java.base/java/lang/String.md "class in java.lang") publicID,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemID,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") baseURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespace)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Retrieves a resource. This resource can be of the following three return types:
    (1) java.io.InputStream (2) javax.xml.stream.XMLStreamReader (3) java.xml.stream.XMLEventReader.
    If this method returns null the processor will attempt to resolve the entity using its
    default mechanism.

    Parameters:
    :   `publicID` - The public identifier of the external entity being referenced, or null if none was supplied.
    :   `systemID` - The system identifier of the external entity being referenced.
    :   `baseURI` - Absolute base URI associated with systemId.
    :   `namespace` - The namespace of the entity to resolve.

    Returns:
    :   The resource requested or null.

    Throws:
    :   `XMLStreamException` - if there was a failure attempting to resolve the resource.