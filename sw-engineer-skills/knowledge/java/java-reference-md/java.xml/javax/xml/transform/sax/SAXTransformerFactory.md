Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.sax](package-summary.md)

# Class SAXTransformerFactory

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.xml.transform.TransformerFactory](../TransformerFactory.md "class in javax.xml.transform")

javax.xml.transform.sax.SAXTransformerFactory

---

public abstract class SAXTransformerFactory
extends [TransformerFactory](../TransformerFactory.md "class in javax.xml.transform")

This class extends TransformerFactory to provide SAX-specific
factory methods. It provides two types of ContentHandlers,
one for creating Transformers, the other for creating Templates
objects.

If an application wants to set the ErrorHandler or EntityResolver
for an XMLReader used during a transformation, it should use a URIResolver
to return the SAXSource which provides (with getXMLReader) a reference to
the XMLReader.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `FEATURE`

  If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
  returns true when passed this value as an argument,
  the TransformerFactory returned from
  [`TransformerFactory.newInstance()`](../TransformerFactory.md#newInstance()) may
  be safely cast to a SAXTransformerFactory.

  `static final String`

  `FEATURE_XMLFILTER`

  If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
  returns true when passed this value as an argument,
  the [`newXMLFilter(Source src)`](#newXMLFilter(javax.xml.transform.Source))
  and [`newXMLFilter(Templates templates)`](#newXMLFilter(javax.xml.transform.Templates)) methods are supported.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SAXTransformerFactory()`

  The default constructor is protected on purpose.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract TemplatesHandler`

  `newTemplatesHandler()`

  Get a TemplatesHandler object that can process SAX
  ContentHandler events into a Templates object.

  `abstract TransformerHandler`

  `newTransformerHandler()`

  Get a TransformerHandler object that can process SAX
  ContentHandler events into a Result.

  `abstract TransformerHandler`

  `newTransformerHandler(Source src)`

  Get a TransformerHandler object that can process SAX
  ContentHandler events into a Result, based on the transformation
  instructions specified by the argument.

  `abstract TransformerHandler`

  `newTransformerHandler(Templates templates)`

  Get a TransformerHandler object that can process SAX
  ContentHandler events into a Result, based on the Templates argument.

  `abstract XMLFilter`

  `newXMLFilter(Source src)`

  Create an XMLFilter that uses the given Source as the
  transformation instructions.

  `abstract XMLFilter`

  `newXMLFilter(Templates templates)`

  Create an XMLFilter, based on the Templates argument..

  ### Methods inherited from class javax.xml.transform.[TransformerFactory](../TransformerFactory.md "class in javax.xml.transform")

  `getAssociatedStylesheet, getAttribute, getErrorListener, getFeature, getURIResolver, newDefaultInstance, newInstance, newInstance, newTemplates, newTransformer, newTransformer, setAttribute, setErrorListener, setFeature, setURIResolver`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FEATURE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FEATURE

    If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
    returns true when passed this value as an argument,
    the TransformerFactory returned from
    [`TransformerFactory.newInstance()`](../TransformerFactory.md#newInstance()) may
    be safely cast to a SAXTransformerFactory.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.transform.sax.SAXTransformerFactory.FEATURE)
  + ### FEATURE\_XMLFILTER

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FEATURE\_XMLFILTER

    If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
    returns true when passed this value as an argument,
    the [`newXMLFilter(Source src)`](#newXMLFilter(javax.xml.transform.Source))
    and [`newXMLFilter(Templates templates)`](#newXMLFilter(javax.xml.transform.Templates)) methods are supported.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.transform.sax.SAXTransformerFactory.FEATURE_XMLFILTER)
* ## Constructor Details

  + ### SAXTransformerFactory

    protected SAXTransformerFactory()

    The default constructor is protected on purpose.
* ## Method Details

  + ### newTransformerHandler

    public abstract [TransformerHandler](TransformerHandler.md "interface in javax.xml.transform.sax") newTransformerHandler([Source](../Source.md "interface in javax.xml.transform") src)
    throws [TransformerConfigurationException](../TransformerConfigurationException.md "class in javax.xml.transform")

    Get a TransformerHandler object that can process SAX
    ContentHandler events into a Result, based on the transformation
    instructions specified by the argument.

    Parameters:
    :   `src` - The Source of the transformation instructions.

    Returns:
    :   TransformerHandler ready to transform SAX events.

    Throws:
    :   `TransformerConfigurationException` - If for some reason the
        TransformerHandler can not be created.
  + ### newTransformerHandler

    public abstract [TransformerHandler](TransformerHandler.md "interface in javax.xml.transform.sax") newTransformerHandler([Templates](../Templates.md "interface in javax.xml.transform") templates)
    throws [TransformerConfigurationException](../TransformerConfigurationException.md "class in javax.xml.transform")

    Get a TransformerHandler object that can process SAX
    ContentHandler events into a Result, based on the Templates argument.

    Parameters:
    :   `templates` - The compiled transformation instructions.

    Returns:
    :   TransformerHandler ready to transform SAX events.

    Throws:
    :   `TransformerConfigurationException` - If for some reason the
        TransformerHandler can not be created.
  + ### newTransformerHandler

    public abstract [TransformerHandler](TransformerHandler.md "interface in javax.xml.transform.sax") newTransformerHandler()
    throws [TransformerConfigurationException](../TransformerConfigurationException.md "class in javax.xml.transform")

    Get a TransformerHandler object that can process SAX
    ContentHandler events into a Result. The transformation
    is defined as an identity (or copy) transformation, for example
    to copy a series of SAX parse events into a DOM tree.

    Returns:
    :   A non-null reference to a TransformerHandler, that may
        be used as a ContentHandler for SAX parse events.

    Throws:
    :   `TransformerConfigurationException` - If for some reason the
        TransformerHandler cannot be created.
  + ### newTemplatesHandler

    public abstract [TemplatesHandler](TemplatesHandler.md "interface in javax.xml.transform.sax") newTemplatesHandler()
    throws [TransformerConfigurationException](../TransformerConfigurationException.md "class in javax.xml.transform")

    Get a TemplatesHandler object that can process SAX
    ContentHandler events into a Templates object.

    Returns:
    :   A non-null reference to a TransformerHandler, that may
        be used as a ContentHandler for SAX parse events.

    Throws:
    :   `TransformerConfigurationException` - If for some reason the
        TemplatesHandler cannot be created.
  + ### newXMLFilter

    public abstract [XMLFilter](../../../../org/xml/sax/XMLFilter.md "interface in org.xml.sax") newXMLFilter([Source](../Source.md "interface in javax.xml.transform") src)
    throws [TransformerConfigurationException](../TransformerConfigurationException.md "class in javax.xml.transform")

    Create an XMLFilter that uses the given Source as the
    transformation instructions.

    Parameters:
    :   `src` - The Source of the transformation instructions.

    Returns:
    :   An XMLFilter object, or null if this feature is not supported.

    Throws:
    :   `TransformerConfigurationException` - If for some reason the
        TemplatesHandler cannot be created.
  + ### newXMLFilter

    public abstract [XMLFilter](../../../../org/xml/sax/XMLFilter.md "interface in org.xml.sax") newXMLFilter([Templates](../Templates.md "interface in javax.xml.transform") templates)
    throws [TransformerConfigurationException](../TransformerConfigurationException.md "class in javax.xml.transform")

    Create an XMLFilter, based on the Templates argument..

    Parameters:
    :   `templates` - The compiled transformation instructions.

    Returns:
    :   An XMLFilter object, or null if this feature is not supported.

    Throws:
    :   `TransformerConfigurationException` - If for some reason the
        TemplatesHandler cannot be created.