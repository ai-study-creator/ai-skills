# Module java.xml

---

module java.xml

Defines the Java APIs for XML Processing (JAXP).

* [The JAXP APIs](#JAXP)
* [Factories and Processors](#FacPro)
* [Configuration](#Conf)
  + [JAXP Properties](#Conf_Properties)
  + [System Properties](#Conf_SystemProperties)
  + [Configuration File](#Conf_CF)
    - [`jaxp.properties` File](#Conf_CF_Default)
    - [User-defined Configuration File](#Conf_CF_SP)
  + [Property Precedence](#PP)
* [JAXP Lookup Mechanism](#LookupMechanism)
  + [Lookup Procedure](#LookupProcedure)
* [Implementation Note](#implNote)

## The JAXP APIs

JAXP comprises a set of APIs built upon a number of XML technologies and
standards that are essential for XML processing. These include APIs for:

* Parsing: the [`JAXP Parsing API`](javax/xml/parsers/package-summary.md) based on
  [`Document Object Model (DOM)`](org/w3c/dom/package-summary.md) and
  [`Simple API for XML Parsing (SAX)`](org/xml/sax/package-summary.md), and
  [`Streaming API for XML (StAX)`](javax/xml/stream/package-summary.md);
* Serializing: StAX and
  [`Extensible Stylesheet Language Transformations (XSLT)`](javax/xml/transform/package-summary.md);
* Validation: the [`JAXP Validation API`](javax/xml/validation/package-summary.md)
  based on the XML Schema Definition Language;
* Transformation: the [`JAXP Transformation API`](javax/xml/transform/package-summary.md)
  or XSLT (Extensible Stylesheet Language Transformations);
* Querying and traversing XML documents: the
  [`XML XPath Language API (XPath)`](javax/xml/xpath/package-summary.md);
* Resolving external resources: the [`XML Catalog API`](javax/xml/catalog/package-summary.md);

## Factories and Processors

Factories are the entry points of each API, providing methods to allow applications
to set [JAXP Properties](#Conf_Properties) programmatically, before
creating processors. The [Configuration](#Conf) section provides more
details on this. Factories also support the
[JAXP Lookup Mechanism](#LookupMechanism), in which applications can be
deployed with third party implementations to use instead of JDK implementations

Processors are aggregates of parsers (or readers), serializers (or writers),
validators, and transformers that control and perform the processing in their
respective areas. They are defined in their relevant packages.
In the [`parsers`](javax/xml/parsers/package-summary.md) package for example,
are the [`DocumentBuilder`](javax/xml/parsers/DocumentBuilder.md "class in javax.xml.parsers") and
[`SAXParser`](javax/xml/parsers/SAXParser.md "class in javax.xml.parsers"), that represent the DOM and
SAX processors.

The processors are configured and instantiated with their corresponding factories.
The DocumentBuilder and SAXParser for example are constructed with the
[`DocumentBuilderFactory`](javax/xml/parsers/DocumentBuilderFactory.md "class in javax.xml.parsers")
and [`SAXParserFactory`](javax/xml/parsers/SAXParserFactory.md "class in javax.xml.parsers") respectively.

## Configuration

When a JAXP factory is invoked for the first time, it performs a configuration
process to determine the implementation to be used and its subsequent behaviors.
During configuration, the factory examines configuration sources such as the
[JAXP Properties](#Conf_Properties),
[System Properties](#Conf_SystemProperties),
and the [JAXP Configuration File](#Conf_CF), and sets the values
following the [Property Precedence](#PP). The terminologies and
process are defined below.

### JAXP Properties

JAXP properties are configuration settings that are applied to XML processors.
They can be used to control and customize the behavior of a processor.
Depending on the JAXP API that is being used, JAXP properties may be referred
to as *Attributes, Properties*, or *Features*.

### System Properties

Select JAXP properties have corresponding System Properties allowing the properties
to be set at runtime, on the command line, or within the
[JAXP Configuration File](#Conf_CF).
For example, the System Property `javax.xml.catalog.resolve` may be used
to set the [`CatalogFeatures`](javax/xml/catalog/CatalogFeatures.md "class in javax.xml.catalog")' RESOLVE
property.

The exact time at which system properties are read is unspecified. In order to
ensure that the desired values are properly applied, applications should ensure
that system properties are set appropriately prior to the creation of the first
JAXP factory and are not modified thereafter.

### Configuration File

JAXP supports the use of configuration files for
[specifying the implementation class to load for the JAXP factories](#LookupMechanism)
as well as for setting JAXP properties.

Configuration files are Java [`Properties`](../java.base/java/util/Properties.md "class in java.util") files that consist
of mappings between system properties and their values defined by various APIs
or processes. The following configuration file entries demonstrate setting the
`javax.xml.parsers.DocumentBuilderFactory`
and `CatalogFeatures.RESOLVE` properties:

Copy![Copy snippet](../copy.svg)

```
   javax.xml.parsers.DocumentBuilderFactory=packagename.DocumentBuilderFactoryImpl
   javax.xml.catalog.resolve=strict
```

#### `jaxp.properties` File

By default, JAXP looks for the configuration file `jaxp.properties`,
located in the ${java.home}/conf directory; and if the file exists, loads the
specified properties to customize the behavior of the XML factories and processors.

The `jaxp.properties` file will be read only once during the initialization
of the JAXP implementation and cached in memory. If there is an error accessing
or reading the file, the configuration process proceeds as if the file does not exist.

#### User-defined Configuration File

In addition to the `jaxp.properties` file, the system property
`java.xml.config.file` can be set to specify the location of
a configuration file. If the `java.xml.config.file` property is included
within a configuration file, it will be ignored.

When the `java.xml.config.file` is specified, the configuration file will be
read and the included properties will override the same properties that were
defined in the `jaxp.properties` file. If the `java.xml.config.file`
has not been set when the JAXP implementation is initialized, no further attempt
will be made to check for its existence.

The `java.xml.config.file` value must contain a valid pathname
to a configuration file. If the pathname is not absolute, it will be considered
relative to the working directory of the JVM.
If there is an error reading the configuration file, the configuration process
proceeds as if the `java.xml.config.file` property was not set.
Implementations may optionally issue a warning message.

### Property Precedence

JAXP properties can be set in multiple ways, including by API methods, system
properties, and the [JAXP Configuration File](#Conf_CF). When not
explicitly set, they will be initialized with default values or more restrictive
values when
[`FEATURE_SECURE_PROCESSING`](javax/xml/XMLConstants.md#FEATURE_SECURE_PROCESSING)
(FSP) is enabled. The configuration order of precedence for properties is as
follows, from highest to lowest:

* The APIs for factories or processors
* System Property
* User-defined [Configuration File](#Conf_CF)
* The default JAXP Configuration File [`jaxp.properties`](#Conf_CF_Default)
* The default values for JAXP Properties. If the
  [`FSP`](javax/xml/XMLConstants.md#FEATURE_SECURE_PROCESSING) is true,
  the default values will be set to process XML securely.

Using the [`CatalogFeatures`](javax/xml/catalog/CatalogFeatures.md "class in javax.xml.catalog")' RESOLVE
property as an example, the following illustrates how these rules are applied:

* Properties specified with factory or processor APIs have the highest
  precedence. The following code effectively sets the RESOLVE property to
  `strict`, regardless of settings in any other configuration sources.

  Copy![Copy snippet](../copy.svg)

  ```
     DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
     dbf.setAttribute(CatalogFeatures.Feature.RESOLVE.getPropertyName(), "strict");
  ```
* If the property is not set on the factory as in the above code, a
  system property setting will be in effect.

  Copy![Copy snippet](../copy.svg)

  ```
      // in the following example, the RESOLVE property is set to 'continue'
      // for the entire application
      java -Djavax.xml.catalog.resolve=continue myApp
  ```
* If the property is not set on the factory, or using a system property,
  the setting in a configuration file will take effect. The following entry
  sets the property to '`continue`'.

  Copy![Copy snippet](../copy.svg)

  ```
      javax.xml.catalog.resolve=continue
  ```
* If the property is not set anywhere, it will be resolved to its
  default value that is '`strict`'.

## JAXP Lookup Mechanism

JAXP defines an ordered lookup procedure to determine the implementation class
to load for the JAXP factories. Factories that support the mechanism are listed
in the table below along with the method, System Property, and System
Default method to be used in the procedure.

JAXP Factories

| Factory | Method | System Property | System Default |
| --- | --- | --- | --- |
| [`DatatypeFactory`](javax/xml/datatype/DatatypeFactory.md "class in javax.xml.datatype") | [`newInstance()`](javax/xml/datatype/DatatypeFactory.md#newInstance()) | `javax.xml.datatype.DatatypeFactory` | [`newDefaultInstance()`](javax/xml/datatype/DatatypeFactory.md#newDefaultInstance()) |
| [`DocumentBuilderFactory`](javax/xml/parsers/DocumentBuilderFactory.md "class in javax.xml.parsers") | [`newInstance()`](javax/xml/parsers/DocumentBuilderFactory.md#newInstance()) | `javax.xml.parsers.DocumentBuilderFactory` | [`newDefaultInstance()`](javax/xml/parsers/DocumentBuilderFactory.md#newDefaultInstance()) |
| [`SAXParserFactory`](javax/xml/parsers/SAXParserFactory.md "class in javax.xml.parsers") | [`newInstance()`](javax/xml/parsers/SAXParserFactory.md#newInstance()) | `javax.xml.parsers.SAXParserFactory` | [`newDefaultInstance()`](javax/xml/parsers/SAXParserFactory.md#newDefaultInstance()) |
| [`XMLEventFactory`](javax/xml/stream/XMLEventFactory.md "class in javax.xml.stream") | [`newFactory()`](javax/xml/stream/XMLEventFactory.md#newFactory()) | `javax.xml.stream.XMLEventFactory` | [`newDefaultFactory()`](javax/xml/stream/XMLEventFactory.md#newDefaultFactory()) |
| [`XMLInputFactory`](javax/xml/stream/XMLInputFactory.md "class in javax.xml.stream") | [`newFactory()`](javax/xml/stream/XMLInputFactory.md#newFactory()) | `javax.xml.stream.XMLInputFactory` | [`newDefaultFactory()`](javax/xml/stream/XMLInputFactory.md#newDefaultFactory()) |
| [`XMLOutputFactory`](javax/xml/stream/XMLOutputFactory.md "class in javax.xml.stream") | [`newFactory()`](javax/xml/stream/XMLOutputFactory.md#newFactory()) | `javax.xml.stream.XMLOutputFactory` | [`newDefaultFactory()`](javax/xml/stream/XMLOutputFactory.md#newDefaultFactory()) |
| [`TransformerFactory`](javax/xml/transform/TransformerFactory.md "class in javax.xml.transform") | [`newInstance()`](javax/xml/transform/TransformerFactory.md#newInstance()) | `javax.xml.transform.TransformerFactory` | [`newDefaultInstance()`](javax/xml/transform/TransformerFactory.md#newDefaultInstance()) |
| [`SchemaFactory`](javax/xml/validation/SchemaFactory.md "class in javax.xml.validation") | [`newInstance(schemaLanguage)`](javax/xml/validation/SchemaFactory.md#newInstance(java.lang.String)) | `javax.xml.validation.SchemaFactory:`*schemaLanguage*[1] | [`newDefaultInstance()`](javax/xml/validation/SchemaFactory.md#newDefaultInstance()) |
| [`XPathFactory`](javax/xml/xpath/XPathFactory.md "class in javax.xml.xpath") | [`newInstance(uri)`](javax/xml/xpath/XPathFactory.md#newInstance(java.lang.String)) | [`DEFAULT_PROPERTY_NAME`](javax/xml/xpath/XPathFactory.md#DEFAULT_PROPERTY_NAME) + ":uri"[2] | [`newDefaultInstance()`](javax/xml/xpath/XPathFactory.md#newDefaultInstance()) |

**[1]** where *schemaLanguage* is the parameter to the
[`newInstance(schemaLanguage)`](javax/xml/validation/SchemaFactory.md#newInstance(java.lang.String))
method.

**[2]** where *uri* is the parameter to the
[`newInstance(uri)`](javax/xml/xpath/XPathFactory.md#newInstance(java.lang.String))
method.

### Lookup Procedure

The order of precedence for locating the implementation class of a
[JAXP Factory](#Factories) is as follows, from highest to lowest:

* The system property as listed in the column System Property of the table
  [JAXP Factories](#Factories) above
* The [Configuration File](#Conf_CF)
* The service-provider loading facility, defined by the
  [`ServiceLoader`](../java.base/java/util/ServiceLoader.md "class in java.util") class, to attempt to locate and load an
  implementation of the service using the [default loading mechanism](../java.base/java/util/ServiceLoader.md#load(java.lang.Class)):
  the service-provider loading facility will use the [current thread's context class loader](../java.base/java/lang/Thread.md#getContextClassLoader())
  to attempt to load the service. If the context class
  loader is null, the [system class loader](../java.base/java/lang/ClassLoader.md#getSystemClassLoader()) will be used.

  ### [`SchemaFactory`](javax/xml/validation/SchemaFactory.md "class in javax.xml.validation")

  In case of the [`SchemaFactory`](javax/xml/validation/SchemaFactory.md "class in javax.xml.validation"),
  each potential service provider is required to implement the method
  [`isSchemaLanguageSupported(String schemaLanguage)`](javax/xml/validation/SchemaFactory.md#isSchemaLanguageSupported(java.lang.String)).
  The first service provider found that supports the specified schema language
  is returned.

  ### [`XPathFactory`](javax/xml/xpath/XPathFactory.md "class in javax.xml.xpath")

  In case of the [`XPathFactory`](javax/xml/xpath/XPathFactory.md "class in javax.xml.xpath"),
  each potential service provider is required to implement the method
  [`isObjectModelSupported(String objectModel)`](javax/xml/xpath/XPathFactory.md#isObjectModelSupported(java.lang.String)).
  The first service provider found that supports the specified object model is
  returned.
* Otherwise, the `system-default` implementation is returned, which is
  equivalent to calling the `newDefaultInstance() or newDefaultFactory()`
  method as shown in column System Default of the table
  [JAXP Factories](#Factories) above.

  ### [`SchemaFactory`](javax/xml/validation/SchemaFactory.md "class in javax.xml.validation")

  In case of the [`SchemaFactory`](javax/xml/validation/SchemaFactory.md "class in javax.xml.validation"),
  there must be a [platform default](javax/xml/validation/SchemaFactory.md#newDefaultInstance()) `SchemaFactory` for W3C XML Schema.

  ### [`XPathFactory`](javax/xml/xpath/XPathFactory.md "class in javax.xml.xpath")

  In case of the [`XPathFactory`](javax/xml/xpath/XPathFactory.md "class in javax.xml.xpath"),
  there must be a
  [platform default](javax/xml/xpath/XPathFactory.md#newDefaultInstance())
  `XPathFactory` for the W3C DOM, i.e.
  [`DEFAULT_OBJECT_MODEL_URI`](javax/xml/xpath/XPathFactory.md#DEFAULT_OBJECT_MODEL_URI).

Since:
:   9

* ## Packages

  Exports

  Package

  Description

  [javax.xml](javax/xml/package-summary.md)

  Defines constants for XML processing.

  [javax.xml.catalog](javax/xml/catalog/package-summary.md)

  Provides the classes for implementing
  [XML Catalogs OASIS Standard V1.1, 7 October 2005](https://www.oasis-open.org/committees/download.php/14809/xml-catalogs.html).

  [javax.xml.datatype](javax/xml/datatype/package-summary.md)

  Defines XML/Java Type Mappings.

  [javax.xml.namespace](javax/xml/namespace/package-summary.md)

  Defines XML Namespace processing.

  [javax.xml.parsers](javax/xml/parsers/package-summary.md)

  Provides the classes for processing XML documents with a SAX (Simple API for XML)
  parser or a DOM (Document Object Model) Document builder.

  [javax.xml.stream](javax/xml/stream/package-summary.md)

  Defines interfaces and classes for the Streaming API for XML (StAX).

  [javax.xml.stream.events](javax/xml/stream/events/package-summary.md)

  Defines event interfaces for the Streaming API for XML (StAX).

  [javax.xml.stream.util](javax/xml/stream/util/package-summary.md)

  Provides utility classes for the Streaming API for XML (StAX).

  [javax.xml.transform](javax/xml/transform/package-summary.md)

  Defines the generic APIs for processing transformation instructions,
  and performing a transformation from source to result.

  [javax.xml.transform.dom](javax/xml/transform/dom/package-summary.md)

  Provides DOM specific transformation classes.

  [javax.xml.transform.sax](javax/xml/transform/sax/package-summary.md)

  Provides SAX specific transformation classes.

  [javax.xml.transform.stax](javax/xml/transform/stax/package-summary.md)

  Provides StAX specific transformation classes.

  [javax.xml.transform.stream](javax/xml/transform/stream/package-summary.md)

  Provides stream and URI specific transformation classes.

  [javax.xml.validation](javax/xml/validation/package-summary.md)

  Provides an API for validation of XML documents.

  [javax.xml.xpath](javax/xml/xpath/package-summary.md)

  Provides an *object-model neutral* API for the
  evaluation of XPath expressions and access to the evaluation
  environment.

  [org.w3c.dom](org/w3c/dom/package-summary.md)

  Provides the interfaces for the Document Object Model (DOM).

  [org.w3c.dom.bootstrap](org/w3c/dom/bootstrap/package-summary.md)

  Provides a factory for obtaining instances of `DOMImplementation`.

  [org.w3c.dom.events](org/w3c/dom/events/package-summary.md)

  Provides interfaces for DOM Level 2 Events.

  [org.w3c.dom.ls](org/w3c/dom/ls/package-summary.md)

  Provides interfaces for DOM Level 3 Load and Save.

  [org.w3c.dom.ranges](org/w3c/dom/ranges/package-summary.md)

  Provides interfaces for DOM Level 2 Range.

  [org.w3c.dom.traversal](org/w3c/dom/traversal/package-summary.md)

  Provides interfaces for DOM Level 2 Traversal.

  [org.w3c.dom.views](org/w3c/dom/views/package-summary.md)

  Provides interfaces for DOM Level 2 Views.

  [org.xml.sax](org/xml/sax/package-summary.md)

  Provides the interfaces for the Simple API for XML (SAX).

  [org.xml.sax.ext](org/xml/sax/ext/package-summary.md)

  Provides interfaces to SAX2 facilities that
  conformant SAX drivers won't necessarily support.

  [org.xml.sax.helpers](org/xml/sax/helpers/package-summary.md)

  Provides helper classes, including
  support for bootstrapping SAX-based applications.
* ## Services

  Uses

  Type

  Description

  [DatatypeFactory](javax/xml/datatype/DatatypeFactory.md "class in javax.xml.datatype")

  Factory that creates new `javax.xml.datatype` `Object`s that map XML to/from Java `Object`s.

  [DocumentBuilderFactory](javax/xml/parsers/DocumentBuilderFactory.md "class in javax.xml.parsers")

  Defines a factory API that enables applications to obtain a
  parser that produces DOM object trees from XML documents.

  [SAXParserFactory](javax/xml/parsers/SAXParserFactory.md "class in javax.xml.parsers")

  Defines a factory API that enables applications to configure and
  obtain a SAX based parser to parse XML documents.

  [SchemaFactory](javax/xml/validation/SchemaFactory.md "class in javax.xml.validation")

  Factory that creates [`Schema`](javax/xml/validation/Schema.md "class in javax.xml.validation") objects.

  [TransformerFactory](javax/xml/transform/TransformerFactory.md "class in javax.xml.transform")

  A TransformerFactory instance can be used to create
  [`Transformer`](javax/xml/transform/Transformer.md "class in javax.xml.transform") and
  [`Templates`](javax/xml/transform/Templates.md "interface in javax.xml.transform") objects.

  [XMLEventFactory](javax/xml/stream/XMLEventFactory.md "class in javax.xml.stream")

  This interface defines a utility class for creating instances of
  XMLEvents

  [XMLInputFactory](javax/xml/stream/XMLInputFactory.md "class in javax.xml.stream")

  Defines an abstract implementation of a factory for getting streams.

  [XMLOutputFactory](javax/xml/stream/XMLOutputFactory.md "class in javax.xml.stream")

  Defines an abstract implementation of a factory for
  getting XMLEventWriters and XMLStreamWriters.

  [XMLReader](org/xml/sax/XMLReader.md "interface in org.xml.sax")

  Interface for reading an XML document using callbacks.

  [XPathFactory](javax/xml/xpath/XPathFactory.md "class in javax.xml.xpath")

  An `XPathFactory` instance can be used to create
  [`XPath`](javax/xml/xpath/XPath.md "interface in javax.xml.xpath") objects.