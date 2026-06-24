Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Class XMLInputFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.stream.XMLInputFactory

---

public abstract class XMLInputFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Defines an abstract implementation of a factory for getting streams.
The following table defines the standard properties of this specification.
Each property varies in the level of support required by each implementation.
The level of support required is described in the 'Required' column.

Configuration Parameters

| Property Name | Behavior | Return type | Default Value | Required |
| --- | --- | --- | --- | --- |
| javax.xml.stream.isValidating | Turns on/off implementation specific DTD validation | Boolean | False | No |
| javax.xml.stream.isNamespaceAware | Turns on/off namespace processing for XML 1.0 support | Boolean | True | True (required) / False (optional) |
| javax.xml.stream.isCoalescing | Requires the processor to coalesce adjacent character data | Boolean | False | Yes |
| javax.xml.stream.isReplacingEntityReferences | replace internal entity references with their replacement text and report them as characters | Boolean | True | Yes |
| javax.xml.stream.isSupportingExternalEntities | Resolve external parsed entities | Boolean | Unspecified | Yes |
| javax.xml.stream.supportDTD | Use this property to request processors that do not support DTDs | Boolean | True | Yes |
| javax.xml.stream.reporter | sets/gets the impl of the XMLReporter | javax.xml.stream.XMLReporter | Null | Yes |
| javax.xml.stream.resolver | sets/gets the impl of the XMLResolver interface | javax.xml.stream.XMLResolver | Null | Yes |
| javax.xml.stream.allocator | sets/gets the impl of the XMLEventAllocator interface | javax.xml.stream.util.XMLEventAllocator | Null | Yes |

Since:
:   1.6

See Also:
:   * [`XMLOutputFactory`](XMLOutputFactory.md "class in javax.xml.stream")
    * [`XMLEventReader`](XMLEventReader.md "interface in javax.xml.stream")
    * [`XMLStreamReader`](XMLStreamReader.md "interface in javax.xml.stream")
    * [`EventFilter`](EventFilter.md "interface in javax.xml.stream")
    * [`XMLReporter`](XMLReporter.md "interface in javax.xml.stream")
    * [`XMLResolver`](XMLResolver.md "interface in javax.xml.stream")
    * [`XMLEventAllocator`](util/XMLEventAllocator.md "interface in javax.xml.stream.util")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `ALLOCATOR`

  The property used to set/get the implementation of the allocator

  `static final String`

  `IS_COALESCING`

  The property that requires the parser to coalesce adjacent character data sections

  `static final String`

  `IS_NAMESPACE_AWARE`

  The property used to turn on/off namespace support,
  this is to support XML 1.0 documents,
  only the true setting must be supported

  `static final String`

  `IS_REPLACING_ENTITY_REFERENCES`

  Requires the parser to replace internal
  entity references with their replacement
  text and report them as characters

  `static final String`

  `IS_SUPPORTING_EXTERNAL_ENTITIES`

  The property that requires the parser to resolve external parsed entities

  `static final String`

  `IS_VALIDATING`

  The property used to turn on/off implementation specific validation

  `static final String`

  `REPORTER`

  The property used to
  set/get the implementation of the XMLReporter interface

  `static final String`

  `RESOLVER`

  The property used to set/get the implementation of the XMLResolver

  `static final String`

  `SUPPORT_DTD`

  The property that requires the parser to support DTDs
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `XMLInputFactory()`

  Protected constructor to prevent instantiation.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `abstract XMLEventReader`

  `createFilteredReader(XMLEventReader reader,
  EventFilter filter)`

  Create a filtered event reader that wraps the filter around the event reader

  `abstract XMLStreamReader`

  `createFilteredReader(XMLStreamReader reader,
  StreamFilter filter)`

  Create a filtered reader that wraps the filter around the reader

  `abstract XMLEventReader`

  `createXMLEventReader(InputStream stream)`

  Create a new XMLEventReader from a java.io.InputStream

  `abstract XMLEventReader`

  `createXMLEventReader(InputStream stream,
  String encoding)`

  Create a new XMLEventReader from a java.io.InputStream

  `abstract XMLEventReader`

  `createXMLEventReader(Reader reader)`

  Create a new XMLEventReader from a reader.

  `abstract XMLEventReader`

  `createXMLEventReader(String systemId,
  InputStream stream)`

  Create a new XMLEventReader from a java.io.InputStream

  `abstract XMLEventReader`

  `createXMLEventReader(String systemId,
  Reader reader)`

  Create a new XMLEventReader from a reader.

  `abstract XMLEventReader`

  `createXMLEventReader(XMLStreamReader reader)`

  Create a new XMLEventReader from an XMLStreamReader.

  `abstract XMLEventReader`

  `createXMLEventReader(Source source)`

  Create a new XMLEventReader from a JAXP source.

  `abstract XMLStreamReader`

  `createXMLStreamReader(InputStream stream)`

  Create a new XMLStreamReader from a java.io.InputStream.

  `abstract XMLStreamReader`

  `createXMLStreamReader(InputStream stream,
  String encoding)`

  Create a new XMLStreamReader from a java.io.InputStream.

  `abstract XMLStreamReader`

  `createXMLStreamReader(Reader reader)`

  Create a new XMLStreamReader from a reader.

  `abstract XMLStreamReader`

  `createXMLStreamReader(String systemId,
  InputStream stream)`

  Create a new XMLStreamReader from a java.io.InputStream.

  `abstract XMLStreamReader`

  `createXMLStreamReader(String systemId,
  Reader reader)`

  Create a new XMLStreamReader from a java.io.InputStream.

  `abstract XMLStreamReader`

  `createXMLStreamReader(Source source)`

  Create a new XMLStreamReader from a JAXP source.

  `abstract XMLEventAllocator`

  `getEventAllocator()`

  Gets the allocator used by streams created with this factory

  `abstract Object`

  `getProperty(String name)`

  Get the value of a feature/property from the underlying implementation

  `abstract XMLReporter`

  `getXMLReporter()`

  The reporter that will be set on any XMLStreamReader or XMLEventReader created
  by this factory instance.

  `abstract XMLResolver`

  `getXMLResolver()`

  The resolver that will be set on any XMLStreamReader or XMLEventReader created
  by this factory instance.

  `abstract boolean`

  `isPropertySupported(String name)`

  Query the set of properties that this factory supports.

  `static XMLInputFactory`

  `newDefaultFactory()`

  Creates a new instance of the `XMLInputFactory` builtin
  system-default implementation.

  `static XMLInputFactory`

  `newFactory()`

  Creates a new instance of the factory.

  `static XMLInputFactory`

  `newFactory(String factoryId,
  ClassLoader classLoader)`

  Create a new instance of the factory.

  `static XMLInputFactory`

  `newInstance()`

  Creates a new instance of the factory in exactly the same manner as the
  [`newFactory()`](#newFactory()) method.

  `static XMLInputFactory`

  `newInstance(String factoryId,
  ClassLoader classLoader)`

  Deprecated.

  This method has been deprecated to maintain API consistency.

  `abstract void`

  `setEventAllocator(XMLEventAllocator allocator)`

  Set a user defined event allocator for events

  `abstract void`

  `setProperty(String name,
  Object value)`

  Allows the user to set specific feature/property on the underlying
  implementation.

  `abstract void`

  `setXMLReporter(XMLReporter reporter)`

  The reporter that will be set on any XMLStreamReader or XMLEventReader created
  by this factory instance.

  `abstract void`

  `setXMLResolver(XMLResolver resolver)`

  The resolver that will be set on any XMLStreamReader or XMLEventReader created
  by this factory instance.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### IS\_NAMESPACE\_AWARE

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") IS\_NAMESPACE\_AWARE

    The property used to turn on/off namespace support,
    this is to support XML 1.0 documents,
    only the true setting must be supported

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLInputFactory.IS_NAMESPACE_AWARE)
  + ### IS\_VALIDATING

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") IS\_VALIDATING

    The property used to turn on/off implementation specific validation

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLInputFactory.IS_VALIDATING)
  + ### IS\_COALESCING

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") IS\_COALESCING

    The property that requires the parser to coalesce adjacent character data sections

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLInputFactory.IS_COALESCING)
  + ### IS\_REPLACING\_ENTITY\_REFERENCES

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") IS\_REPLACING\_ENTITY\_REFERENCES

    Requires the parser to replace internal
    entity references with their replacement
    text and report them as characters

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLInputFactory.IS_REPLACING_ENTITY_REFERENCES)
  + ### IS\_SUPPORTING\_EXTERNAL\_ENTITIES

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") IS\_SUPPORTING\_EXTERNAL\_ENTITIES

    The property that requires the parser to resolve external parsed entities

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLInputFactory.IS_SUPPORTING_EXTERNAL_ENTITIES)
  + ### SUPPORT\_DTD

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") SUPPORT\_DTD

    The property that requires the parser to support DTDs

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLInputFactory.SUPPORT_DTD)
  + ### REPORTER

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") REPORTER

    The property used to
    set/get the implementation of the XMLReporter interface

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLInputFactory.REPORTER)
  + ### RESOLVER

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RESOLVER

    The property used to set/get the implementation of the XMLResolver

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLInputFactory.RESOLVER)
  + ### ALLOCATOR

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") ALLOCATOR

    The property used to set/get the implementation of the allocator

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLInputFactory.ALLOCATOR)
* ## Constructor Details

  + ### XMLInputFactory

    protected XMLInputFactory()

    Protected constructor to prevent instantiation.
    Use [`newFactory()`](#newFactory()) instead.
* ## Method Details

  + ### newDefaultFactory

    public static [XMLInputFactory](XMLInputFactory.md "class in javax.xml.stream") newDefaultFactory()

    Creates a new instance of the `XMLInputFactory` builtin
    system-default implementation.

    Returns:
    :   A new instance of the `XMLInputFactory` builtin
        system-default implementation.

    Since:
    :   9
  + ### newInstance

    public static [XMLInputFactory](XMLInputFactory.md "class in javax.xml.stream") newInstance()
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Creates a new instance of the factory in exactly the same manner as the
    [`newFactory()`](#newFactory()) method.

    Returns:
    :   an instance of the `XMLInputFactory`

    Throws:
    :   `FactoryConfigurationError` - if an instance of this factory cannot be loaded
  + ### newFactory

    public static [XMLInputFactory](XMLInputFactory.md "class in javax.xml.stream") newFactory()
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Creates a new instance of the factory. This method uses the
    [JAXP Lookup Mechanism](../../../../java.xml/module-summary.md#LookupMechanism)
    to determine the `XMLInputFactory` implementation class to load.

    Once an application has obtained a reference to a `XMLInputFactory`, it
    can use the factory to configure and obtain stream instances.

    Returns:
    :   an instance of the `XMLInputFactory`

    Throws:
    :   `FactoryConfigurationError` - in case of [service configuration error](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util") or if
        the implementation is not available or cannot be instantiated.
  + ### newInstance

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="1.7")
    public static [XMLInputFactory](XMLInputFactory.md "class in javax.xml.stream") newInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryId,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Deprecated.

    This method has been deprecated to maintain API consistency.
    All newInstance methods have been replaced with corresponding
    newFactory methods. The replacement [`newFactory(java.lang.String, java.lang.ClassLoader)`](#newFactory(java.lang.String,java.lang.ClassLoader)) method
    defines no changes in behavior.

    Create a new instance of the factory.

    Parameters:
    :   `factoryId` - Name of the factory to find, same as
        a property name
    :   `classLoader` - classLoader to use

    Returns:
    :   the factory implementation

    Throws:
    :   `FactoryConfigurationError` - if an instance of this factory cannot be loaded
  + ### newFactory

    public static [XMLInputFactory](XMLInputFactory.md "class in javax.xml.stream") newFactory([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryId,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Create a new instance of the factory.
    If the classLoader argument is null, then the ContextClassLoader is used.

    This method uses the following ordered lookup procedure to determine
    the XMLInputFactory implementation class to load:
    - Use the value of the system property identified by `factoryId`.
    - Use the value of the property `factoryId` set in the
      [configuration file](../../../../java.xml/module-summary.md#ConfigurationFile),
      jaxp.properties by default. If the file exists and the property `factoryId`
      is specified in the file, its value will be used as the implementation class.
    - If `factoryId` is "javax.xml.stream.XMLInputFactory",
      use the service-provider loading facility, defined by the
      [`ServiceLoader`](../../../../java.base/java/util/ServiceLoader.md "class in java.util") class, to attempt to [locate and load](../../../../java.base/java/util/ServiceLoader.md#load(java.lang.Class,java.lang.ClassLoader))
      an implementation of the service using the specified `ClassLoader`.
      If `classLoader` is null, the [default loading mechanism](../../../../java.base/java/util/ServiceLoader.md#load(java.lang.Class)) will apply:
      That is, the service-provider loading facility will use the [current thread's context class loader](../../../../java.base/java/lang/Thread.md#getContextClassLoader())
      to attempt to load the service. If the context class
      loader is null, the [system class loader](../../../../java.base/java/lang/ClassLoader.md#getSystemClassLoader()) will be used.
    - Otherwise, throws a [`FactoryConfigurationError`](FactoryConfigurationError.md "class in javax.xml.stream").

    Note that this is a new method that replaces the deprecated
    [`newInstance(String factoryId, ClassLoader classLoader)`](#newInstance(java.lang.String,java.lang.ClassLoader)) method.
    No changes in behavior are defined by this replacement method relative
    to the deprecated method.

    Parameters:
    :   `factoryId` - Name of the factory to find, same as
        a property name
    :   `classLoader` - classLoader to use

    Returns:
    :   the factory implementation

    Throws:
    :   `FactoryConfigurationError` - in case of [service configuration error](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util") or if
        the implementation is not available or cannot be instantiated.
    :   `FactoryConfigurationError` - if an instance of this factory cannot be loaded
  + ### createXMLStreamReader

    public abstract [XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream") createXMLStreamReader([Reader](../../../../java.base/java/io/Reader.md "class in java.io") reader)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLStreamReader from a reader.

    Parameters:
    :   `reader` - the XML data to read from

    Returns:
    :   an instance of the `XMLStreamReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLStreamReader

    public abstract [XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream") createXMLStreamReader([Source](../transform/Source.md "interface in javax.xml.transform") source)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLStreamReader from a JAXP source. This method is optional.

    Parameters:
    :   `source` - the source to read from

    Returns:
    :   an instance of the `XMLStreamReader`

    Throws:
    :   `UnsupportedOperationException` - if this method is not
        supported by this XMLInputFactory
    :   `XMLStreamException` - if an error occurs
  + ### createXMLStreamReader

    public abstract [XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream") createXMLStreamReader([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLStreamReader from a java.io.InputStream.

    Parameters:
    :   `stream` - the InputStream to read from

    Returns:
    :   an instance of the `XMLStreamReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLStreamReader

    public abstract [XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream") createXMLStreamReader([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") encoding)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLStreamReader from a java.io.InputStream.

    Parameters:
    :   `stream` - the InputStream to read from
    :   `encoding` - the character encoding of the stream

    Returns:
    :   an instance of the `XMLStreamReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLStreamReader

    public abstract [XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream") createXMLStreamReader([String](../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    [InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLStreamReader from a java.io.InputStream.

    Parameters:
    :   `systemId` - the system ID of the stream
    :   `stream` - the InputStream to read from

    Returns:
    :   an instance of the `XMLStreamReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLStreamReader

    public abstract [XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream") createXMLStreamReader([String](../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    [Reader](../../../../java.base/java/io/Reader.md "class in java.io") reader)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLStreamReader from a java.io.InputStream.

    Parameters:
    :   `systemId` - the system ID of the stream
    :   `reader` - the InputStream to read from

    Returns:
    :   an instance of the `XMLStreamReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLEventReader

    public abstract [XMLEventReader](XMLEventReader.md "interface in javax.xml.stream") createXMLEventReader([Reader](../../../../java.base/java/io/Reader.md "class in java.io") reader)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventReader from a reader.

    Parameters:
    :   `reader` - the XML data to read from

    Returns:
    :   an instance of the `XMLEventReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLEventReader

    public abstract [XMLEventReader](XMLEventReader.md "interface in javax.xml.stream") createXMLEventReader([String](../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    [Reader](../../../../java.base/java/io/Reader.md "class in java.io") reader)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventReader from a reader.

    Parameters:
    :   `systemId` - the system ID of the input
    :   `reader` - the XML data to read from

    Returns:
    :   an instance of the `XMLEventReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLEventReader

    public abstract [XMLEventReader](XMLEventReader.md "interface in javax.xml.stream") createXMLEventReader([XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream") reader)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventReader from an XMLStreamReader. After being used
    to construct the XMLEventReader instance returned from this method
    the XMLStreamReader must not be used.

    Parameters:
    :   `reader` - the XMLStreamReader to read from (may not be modified)

    Returns:
    :   a new XMLEventReader

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLEventReader

    public abstract [XMLEventReader](XMLEventReader.md "interface in javax.xml.stream") createXMLEventReader([Source](../transform/Source.md "interface in javax.xml.transform") source)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventReader from a JAXP source.
    Support of this method is optional.

    Parameters:
    :   `source` - the source to read from

    Returns:
    :   an instance of the `XMLEventReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
    :   `UnsupportedOperationException` - if this method is not
        supported by this XMLInputFactory
  + ### createXMLEventReader

    public abstract [XMLEventReader](XMLEventReader.md "interface in javax.xml.stream") createXMLEventReader([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventReader from a java.io.InputStream

    Parameters:
    :   `stream` - the InputStream to read from

    Returns:
    :   an instance of the `XMLEventReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLEventReader

    public abstract [XMLEventReader](XMLEventReader.md "interface in javax.xml.stream") createXMLEventReader([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") encoding)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventReader from a java.io.InputStream

    Parameters:
    :   `stream` - the InputStream to read from
    :   `encoding` - the character encoding of the stream

    Returns:
    :   an instance of the `XMLEventReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLEventReader

    public abstract [XMLEventReader](XMLEventReader.md "interface in javax.xml.stream") createXMLEventReader([String](../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    [InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") stream)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventReader from a java.io.InputStream

    Parameters:
    :   `systemId` - the system ID of the stream
    :   `stream` - the InputStream to read from

    Returns:
    :   an instance of the `XMLEventReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createFilteredReader

    public abstract [XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream") createFilteredReader([XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream") reader,
    [StreamFilter](StreamFilter.md "interface in javax.xml.stream") filter)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a filtered reader that wraps the filter around the reader

    Parameters:
    :   `reader` - the reader to filter
    :   `filter` - the filter to apply to the reader

    Returns:
    :   an instance of the `XMLEventReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createFilteredReader

    public abstract [XMLEventReader](XMLEventReader.md "interface in javax.xml.stream") createFilteredReader([XMLEventReader](XMLEventReader.md "interface in javax.xml.stream") reader,
    [EventFilter](EventFilter.md "interface in javax.xml.stream") filter)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a filtered event reader that wraps the filter around the event reader

    Parameters:
    :   `reader` - the event reader to wrap
    :   `filter` - the filter to apply to the event reader

    Returns:
    :   an instance of the `XMLEventReader`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### getXMLResolver

    public abstract [XMLResolver](XMLResolver.md "interface in javax.xml.stream") getXMLResolver()

    The resolver that will be set on any XMLStreamReader or XMLEventReader created
    by this factory instance.

    Returns:
    :   an instance of the `XMLResolver`
  + ### setXMLResolver

    public abstract void setXMLResolver([XMLResolver](XMLResolver.md "interface in javax.xml.stream") resolver)

    The resolver that will be set on any XMLStreamReader or XMLEventReader created
    by this factory instance.

    Parameters:
    :   `resolver` - the resolver to use to resolve references
  + ### getXMLReporter

    public abstract [XMLReporter](XMLReporter.md "interface in javax.xml.stream") getXMLReporter()

    The reporter that will be set on any XMLStreamReader or XMLEventReader created
    by this factory instance.

    Returns:
    :   an instance of the `XMLReporter`
  + ### setXMLReporter

    public abstract void setXMLReporter([XMLReporter](XMLReporter.md "interface in javax.xml.stream") reporter)

    The reporter that will be set on any XMLStreamReader or XMLEventReader created
    by this factory instance.

    Parameters:
    :   `reporter` - the resolver to use to report non fatal errors
  + ### setProperty

    public abstract void setProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Allows the user to set specific feature/property on the underlying
    implementation. The underlying implementation is not required to support
    every setting of every property in the specification and may use
    IllegalArgumentException to signal that an unsupported property may not be
    set with the specified value.

    All implementations that implement JAXP 1.5 or newer are required to
    support the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD) property.
    - Access to external DTDs, external Entity References is restricted to the
      protocols specified by the property. If access is denied during parsing
      due to the restriction of this property, [`XMLStreamException`](XMLStreamException.md "class in javax.xml.stream")
      will be thrown by the [`XMLStreamReader.next()`](XMLStreamReader.md#next()) or
      [`XMLEventReader.nextEvent()`](XMLEventReader.md#nextEvent()) method.

    Parameters:
    :   `name` - The name of the property (may not be null)
    :   `value` - The value of the property

    Throws:
    :   `IllegalArgumentException` - if the property is not supported
  + ### getProperty

    public abstract [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Get the value of a feature/property from the underlying implementation

    Parameters:
    :   `name` - The name of the property (may not be null)

    Returns:
    :   The value of the property

    Throws:
    :   `IllegalArgumentException` - if the property is not supported
  + ### isPropertySupported

    public abstract boolean isPropertySupported([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Query the set of properties that this factory supports.

    Parameters:
    :   `name` - The name of the property (may not be null)

    Returns:
    :   true if the property is supported and false otherwise
  + ### setEventAllocator

    public abstract void setEventAllocator([XMLEventAllocator](util/XMLEventAllocator.md "interface in javax.xml.stream.util") allocator)

    Set a user defined event allocator for events

    Parameters:
    :   `allocator` - the user defined allocator
  + ### getEventAllocator

    public abstract [XMLEventAllocator](util/XMLEventAllocator.md "interface in javax.xml.stream.util") getEventAllocator()

    Gets the allocator used by streams created with this factory

    Returns:
    :   an instance of the `XMLEventAllocator`