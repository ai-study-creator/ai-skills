Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Interface XMLFilter

All Superinterfaces:
:   `XMLReader`

All Known Implementing Classes:
:   `XMLFilterImpl`

---

public interface XMLFilter
extends [XMLReader](XMLReader.md "interface in org.xml.sax")

Interface for an XML filter.

An XML filter is like an XML reader, except that it obtains its
events from another XML reader rather than a primary source like
an XML document or database. Filters can modify a stream of
events as they pass on to the final application.

The XMLFilterImpl helper class provides a convenient base
for creating SAX2 filters, by passing on all [`EntityResolver`](EntityResolver.md "interface in org.xml.sax"), [`DTDHandler`](DTDHandler.md "interface in org.xml.sax"),
[`ContentHandler`](ContentHandler.md "interface in org.xml.sax") and [`ErrorHandler`](ErrorHandler.md "interface in org.xml.sax") events automatically.

Since:
:   1.4, SAX 2.0

See Also:
:   * [`XMLFilterImpl`](helpers/XMLFilterImpl.md "class in org.xml.sax.helpers")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `XMLReader`

  `getParent()`

  Get the parent reader.

  `void`

  `setParent(XMLReader parent)`

  Set the parent reader.

  ### Methods inherited from interface org.xml.sax.[XMLReader](XMLReader.md "interface in org.xml.sax")

  `getContentHandler, getDTDHandler, getEntityResolver, getErrorHandler, getFeature, getProperty, parse, parse, setContentHandler, setDTDHandler, setEntityResolver, setErrorHandler, setFeature, setProperty`

* ## Method Details

  + ### setParent

    void setParent([XMLReader](XMLReader.md "interface in org.xml.sax") parent)

    Set the parent reader.

    This method allows the application to link the filter to
    a parent reader (which may be another filter). The argument
    may not be null.

    Parameters:
    :   `parent` - The parent reader.
  + ### getParent

    [XMLReader](XMLReader.md "interface in org.xml.sax") getParent()

    Get the parent reader.

    This method allows the application to query the parent
    reader (which may be another filter). It is generally a
    bad idea to perform any operations on the parent reader
    directly: they should all pass through this filter.

    Returns:
    :   The parent filter, or null if none has been set.