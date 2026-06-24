Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Class XMLEventFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.stream.XMLEventFactory

---

public abstract class XMLEventFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

This interface defines a utility class for creating instances of
XMLEvents

Since:
:   1.6

See Also:
:   * [`StartElement`](events/StartElement.md "interface in javax.xml.stream.events")
    * [`EndElement`](events/EndElement.md "interface in javax.xml.stream.events")
    * [`ProcessingInstruction`](events/ProcessingInstruction.md "interface in javax.xml.stream.events")
    * [`Comment`](events/Comment.md "interface in javax.xml.stream.events")
    * [`Characters`](events/Characters.md "interface in javax.xml.stream.events")
    * [`StartDocument`](events/StartDocument.md "interface in javax.xml.stream.events")
    * [`EndDocument`](events/EndDocument.md "interface in javax.xml.stream.events")
    * [`DTD`](events/DTD.md "interface in javax.xml.stream.events")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `XMLEventFactory()`

  Protected constructor to prevent instantiation.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `abstract Attribute`

  `createAttribute(String localName,
  String value)`

  Create a new Attribute

  `abstract Attribute`

  `createAttribute(String prefix,
  String namespaceURI,
  String localName,
  String value)`

  Create a new Attribute

  `abstract Attribute`

  `createAttribute(QName name,
  String value)`

  Create a new Attribute

  `abstract Characters`

  `createCData(String content)`

  Create a Characters event with the CData flag set to true

  `abstract Characters`

  `createCharacters(String content)`

  Create a Characters event, this method does not check if the content
  is all whitespace.

  `abstract Comment`

  `createComment(String text)`

  Create a comment.

  `abstract DTD`

  `createDTD(String dtd)`

  Create a document type definition event
  This string contains the entire document type declaration that matches
  the doctypedecl in the XML 1.0 specification

  `abstract EndDocument`

  `createEndDocument()`

  Creates a new instance of an EndDocument event

  `abstract EndElement`

  `createEndElement(String prefix,
  String namespaceUri,
  String localName)`

  Create a new EndElement

  `abstract EndElement`

  `createEndElement(String prefix,
  String namespaceUri,
  String localName,
  Iterator<? extends Namespace> namespaces)`

  Create a new EndElement

  `abstract EndElement`

  `createEndElement(QName name,
  Iterator<? extends Namespace> namespaces)`

  Create a new EndElement

  `abstract EntityReference`

  `createEntityReference(String name,
  EntityDeclaration declaration)`

  Creates a new instance of a EntityReference event

  `abstract Characters`

  `createIgnorableSpace(String content)`

  Create an ignorable space

  `abstract Namespace`

  `createNamespace(String namespaceURI)`

  Create a new default Namespace

  `abstract Namespace`

  `createNamespace(String prefix,
  String namespaceUri)`

  Create a new Namespace

  `abstract ProcessingInstruction`

  `createProcessingInstruction(String target,
  String data)`

  Create a processing instruction

  `abstract Characters`

  `createSpace(String content)`

  Create a Characters event with the isSpace flag set to true

  `abstract StartDocument`

  `createStartDocument()`

  Creates a new instance of a StartDocument event

  `abstract StartDocument`

  `createStartDocument(String encoding)`

  Creates a new instance of a StartDocument event

  `abstract StartDocument`

  `createStartDocument(String encoding,
  String version)`

  Creates a new instance of a StartDocument event

  `abstract StartDocument`

  `createStartDocument(String encoding,
  String version,
  boolean standalone)`

  Creates a new instance of a StartDocument event

  `abstract StartElement`

  `createStartElement(String prefix,
  String namespaceUri,
  String localName)`

  Create a new StartElement.

  `abstract StartElement`

  `createStartElement(String prefix,
  String namespaceUri,
  String localName,
  Iterator<? extends Attribute> attributes,
  Iterator<? extends Namespace> namespaces)`

  Create a new StartElement.

  `abstract StartElement`

  `createStartElement(String prefix,
  String namespaceUri,
  String localName,
  Iterator<? extends Attribute> attributes,
  Iterator<? extends Namespace> namespaces,
  NamespaceContext context)`

  Create a new StartElement.

  `abstract StartElement`

  `createStartElement(QName name,
  Iterator<? extends Attribute> attributes,
  Iterator<? extends Namespace> namespaces)`

  Create a new StartElement.

  `static XMLEventFactory`

  `newDefaultFactory()`

  Creates a new instance of the `XMLEventFactory` builtin
  system-default implementation.

  `static XMLEventFactory`

  `newFactory()`

  Creates a new instance of the factory.

  `static XMLEventFactory`

  `newFactory(String factoryId,
  ClassLoader classLoader)`

  Create a new instance of the factory.

  `static XMLEventFactory`

  `newInstance()`

  Creates a new instance of the factory in exactly the same manner as the
  [`newFactory()`](#newFactory()) method.

  `static XMLEventFactory`

  `newInstance(String factoryId,
  ClassLoader classLoader)`

  Deprecated.

  This method has been deprecated to maintain API consistency.

  `abstract void`

  `setLocation(Location location)`

  This method allows setting of the Location on each event that
  is created by this factory.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### XMLEventFactory

    protected XMLEventFactory()

    Protected constructor to prevent instantiation.
    Use [`newFactory()`](#newFactory()) instead.
* ## Method Details

  + ### newDefaultFactory

    public static [XMLEventFactory](XMLEventFactory.md "class in javax.xml.stream") newDefaultFactory()

    Creates a new instance of the `XMLEventFactory` builtin
    system-default implementation.

    Returns:
    :   A new instance of the `XMLEventFactory` builtin
        system-default implementation.

    Since:
    :   9
  + ### newInstance

    public static [XMLEventFactory](XMLEventFactory.md "class in javax.xml.stream") newInstance()
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Creates a new instance of the factory in exactly the same manner as the
    [`newFactory()`](#newFactory()) method.

    Returns:
    :   an instance of the `XMLEventFactory`

    Throws:
    :   `FactoryConfigurationError` - if an instance of this factory cannot be loaded
  + ### newFactory

    public static [XMLEventFactory](XMLEventFactory.md "class in javax.xml.stream") newFactory()
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Creates a new instance of the factory. This method uses the
    [JAXP Lookup Mechanism](../../../../java.xml/module-summary.md#LookupMechanism)
    to determine the `XMLEventFactory` implementation class to load.

    Once an application has obtained a reference to a `XMLEventFactory`, it
    can use the factory to configure and obtain stream instances.

    Returns:
    :   an instance of the `XMLEventFactory`

    Throws:
    :   `FactoryConfigurationError` - in case of [service configuration error](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util") or if
        the implementation is not available or cannot be instantiated.
  + ### newInstance

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="1.7")
    public static [XMLEventFactory](XMLEventFactory.md "class in javax.xml.stream") newInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryId,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Deprecated.

    This method has been deprecated to maintain API consistency.
    All newInstance methods have been replaced with corresponding
    newFactory methods. The replacement [`newFactory(java.lang.String, java.lang.ClassLoader)`](#newFactory(java.lang.String,java.lang.ClassLoader))
    method defines no changes in behavior.

    Create a new instance of the factory

    Parameters:
    :   `factoryId` - Name of the factory to find, same as
        a property name
    :   `classLoader` - classLoader to use

    Returns:
    :   the factory implementation

    Throws:
    :   `FactoryConfigurationError` - if an instance of this factory cannot be loaded
  + ### newFactory

    public static [XMLEventFactory](XMLEventFactory.md "class in javax.xml.stream") newFactory([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryId,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Create a new instance of the factory.
    If the classLoader argument is null, then the ContextClassLoader is used.

    This method uses the following ordered lookup procedure to determine
    the XMLEventFactory implementation class to load:
    - Use the value of the system property identified by `factoryId`.
    - Use the value of the property `factoryId` set in the
      [configuration file](../../../../java.xml/module-summary.md#ConfigurationFile),
      jaxp.properties by default. If the file exists and the property `factoryId`
      is specified in the file, its value will be used as the implementation class.
    - If `factoryId` is "javax.xml.stream.XMLEventFactory",
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
  + ### setLocation

    public abstract void setLocation([Location](Location.md "interface in javax.xml.stream") location)

    This method allows setting of the Location on each event that
    is created by this factory. The values are copied by value into
    the events created by this factory. To reset the location
    information set the location to null.

    Parameters:
    :   `location` - the location to set on each event created
  + ### createAttribute

    public abstract [Attribute](events/Attribute.md "interface in javax.xml.stream.events") createAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Create a new Attribute

    Parameters:
    :   `prefix` - the prefix of this attribute, may not be null
    :   `namespaceURI` - the attribute value is set to this value, may not be null
    :   `localName` - the local name of the XML name of the attribute, localName cannot be null
    :   `value` - the attribute value to set, may not be null

    Returns:
    :   the Attribute with specified values
  + ### createAttribute

    public abstract [Attribute](events/Attribute.md "interface in javax.xml.stream.events") createAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Create a new Attribute

    Parameters:
    :   `localName` - the local name of the XML name of the attribute, localName cannot be null
    :   `value` - the attribute value to set, may not be null

    Returns:
    :   the Attribute with specified values
  + ### createAttribute

    public abstract [Attribute](events/Attribute.md "interface in javax.xml.stream.events") createAttribute([QName](../namespace/QName.md "class in javax.xml.namespace") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Create a new Attribute

    Parameters:
    :   `name` - the qualified name of the attribute, may not be null
    :   `value` - the attribute value to set, may not be null

    Returns:
    :   the Attribute with specified values
  + ### createNamespace

    public abstract [Namespace](events/Namespace.md "interface in javax.xml.stream.events") createNamespace([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI)

    Create a new default Namespace

    Parameters:
    :   `namespaceURI` - the default namespace uri

    Returns:
    :   the Namespace with the specified value
  + ### createNamespace

    public abstract [Namespace](events/Namespace.md "interface in javax.xml.stream.events") createNamespace([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceUri)

    Create a new Namespace

    Parameters:
    :   `prefix` - the prefix of this namespace, may not be null
    :   `namespaceUri` - the attribute value is set to this value, may not be null

    Returns:
    :   the Namespace with the specified values
  + ### createStartElement

    public abstract [StartElement](events/StartElement.md "interface in javax.xml.stream.events") createStartElement([QName](../namespace/QName.md "class in javax.xml.namespace") name,
    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<? extends [Attribute](events/Attribute.md "interface in javax.xml.stream.events")> attributes,
    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<? extends [Namespace](events/Namespace.md "interface in javax.xml.stream.events")> namespaces)

    Create a new StartElement. Namespaces can be added to this StartElement
    by passing in an Iterator that walks over a set of Namespace interfaces.
    Attributes can be added to this StartElement by passing an iterator
    that walks over a set of Attribute interfaces.

    Parameters:
    :   `name` - the qualified name of the attribute, may not be null
    :   `attributes` - an optional unordered set of objects that
        implement Attribute to add to the new StartElement, may be null
    :   `namespaces` - an optional unordered set of objects that
        implement Namespace to add to the new StartElement, may be null

    Returns:
    :   an instance of the requested StartElement
  + ### createStartElement

    public abstract [StartElement](events/StartElement.md "interface in javax.xml.stream.events") createStartElement([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceUri,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Create a new StartElement. This defaults the NamespaceContext to
    an empty NamespaceContext. Querying this event for its namespaces or
    attributes will result in an empty iterator being returned.

    Parameters:
    :   `prefix` - the prefix of the QName of the new StartElement
    :   `namespaceUri` - the uri of the QName of the new StartElement
    :   `localName` - the local name of the QName of the new StartElement

    Returns:
    :   an instance of the requested StartElement
  + ### createStartElement

    public abstract [StartElement](events/StartElement.md "interface in javax.xml.stream.events") createStartElement([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceUri,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<? extends [Attribute](events/Attribute.md "interface in javax.xml.stream.events")> attributes,
    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<? extends [Namespace](events/Namespace.md "interface in javax.xml.stream.events")> namespaces)

    Create a new StartElement. Namespaces can be added to this StartElement
    by passing in an Iterator that walks over a set of Namespace interfaces.
    Attributes can be added to this StartElement by passing an iterator
    that walks over a set of Attribute interfaces.

    Parameters:
    :   `prefix` - the prefix of the QName of the new StartElement
    :   `namespaceUri` - the uri of the QName of the new StartElement
    :   `localName` - the local name of the QName of the new StartElement
    :   `attributes` - an unordered set of objects that implement
        Attribute to add to the new StartElement
    :   `namespaces` - an unordered set of objects that implement
        Namespace to add to the new StartElement

    Returns:
    :   an instance of the requested StartElement
  + ### createStartElement

    public abstract [StartElement](events/StartElement.md "interface in javax.xml.stream.events") createStartElement([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceUri,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<? extends [Attribute](events/Attribute.md "interface in javax.xml.stream.events")> attributes,
    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<? extends [Namespace](events/Namespace.md "interface in javax.xml.stream.events")> namespaces,
    [NamespaceContext](../namespace/NamespaceContext.md "interface in javax.xml.namespace") context)

    Create a new StartElement. Namespaces can be added to this StartElement
    by passing in an Iterator that walks over a set of Namespace interfaces.
    Attributes can be added to this StartElement by passing an iterator
    that walks over a set of Attribute interfaces.

    Parameters:
    :   `prefix` - the prefix of the QName of the new StartElement
    :   `namespaceUri` - the uri of the QName of the new StartElement
    :   `localName` - the local name of the QName of the new StartElement
    :   `attributes` - an unordered set of objects that implement
        Attribute to add to the new StartElement, may be null
    :   `namespaces` - an unordered set of objects that implement
        Namespace to add to the new StartElement, may be null
    :   `context` - the namespace context of this element

    Returns:
    :   an instance of the requested StartElement
  + ### createEndElement

    public abstract [EndElement](events/EndElement.md "interface in javax.xml.stream.events") createEndElement([QName](../namespace/QName.md "class in javax.xml.namespace") name,
    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<? extends [Namespace](events/Namespace.md "interface in javax.xml.stream.events")> namespaces)

    Create a new EndElement

    Parameters:
    :   `name` - the qualified name of the EndElement
    :   `namespaces` - an optional unordered set of objects that
        implement Namespace that have gone out of scope, may be null

    Returns:
    :   an instance of the requested EndElement
  + ### createEndElement

    public abstract [EndElement](events/EndElement.md "interface in javax.xml.stream.events") createEndElement([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceUri,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Create a new EndElement

    Parameters:
    :   `prefix` - the prefix of the QName of the new StartElement
    :   `namespaceUri` - the uri of the QName of the new StartElement
    :   `localName` - the local name of the QName of the new StartElement

    Returns:
    :   an instance of the requested EndElement
  + ### createEndElement

    public abstract [EndElement](events/EndElement.md "interface in javax.xml.stream.events") createEndElement([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceUri,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<? extends [Namespace](events/Namespace.md "interface in javax.xml.stream.events")> namespaces)

    Create a new EndElement

    Parameters:
    :   `prefix` - the prefix of the QName of the new StartElement
    :   `namespaceUri` - the uri of the QName of the new StartElement
    :   `localName` - the local name of the QName of the new StartElement
    :   `namespaces` - an unordered set of objects that implement
        Namespace that have gone out of scope, may be null

    Returns:
    :   an instance of the requested EndElement
  + ### createCharacters

    public abstract [Characters](events/Characters.md "interface in javax.xml.stream.events") createCharacters([String](../../../../java.base/java/lang/String.md "class in java.lang") content)

    Create a Characters event, this method does not check if the content
    is all whitespace. To create a space event use #createSpace(String)

    Parameters:
    :   `content` - the string to create

    Returns:
    :   a Characters event
  + ### createCData

    public abstract [Characters](events/Characters.md "interface in javax.xml.stream.events") createCData([String](../../../../java.base/java/lang/String.md "class in java.lang") content)

    Create a Characters event with the CData flag set to true

    Parameters:
    :   `content` - the string to create

    Returns:
    :   a Characters event
  + ### createSpace

    public abstract [Characters](events/Characters.md "interface in javax.xml.stream.events") createSpace([String](../../../../java.base/java/lang/String.md "class in java.lang") content)

    Create a Characters event with the isSpace flag set to true

    Parameters:
    :   `content` - the content of the space to create

    Returns:
    :   a Characters event
  + ### createIgnorableSpace

    public abstract [Characters](events/Characters.md "interface in javax.xml.stream.events") createIgnorableSpace([String](../../../../java.base/java/lang/String.md "class in java.lang") content)

    Create an ignorable space

    Parameters:
    :   `content` - the space to create

    Returns:
    :   a Characters event
  + ### createStartDocument

    public abstract [StartDocument](events/StartDocument.md "interface in javax.xml.stream.events") createStartDocument()

    Creates a new instance of a StartDocument event

    Returns:
    :   a StartDocument event
  + ### createStartDocument

    public abstract [StartDocument](events/StartDocument.md "interface in javax.xml.stream.events") createStartDocument([String](../../../../java.base/java/lang/String.md "class in java.lang") encoding,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version,
    boolean standalone)

    Creates a new instance of a StartDocument event

    Parameters:
    :   `encoding` - the encoding style
    :   `version` - the XML version
    :   `standalone` - the status of standalone may be set to "true" or "false"

    Returns:
    :   a StartDocument event
  + ### createStartDocument

    public abstract [StartDocument](events/StartDocument.md "interface in javax.xml.stream.events") createStartDocument([String](../../../../java.base/java/lang/String.md "class in java.lang") encoding,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") version)

    Creates a new instance of a StartDocument event

    Parameters:
    :   `encoding` - the encoding style
    :   `version` - the XML version

    Returns:
    :   a StartDocument event
  + ### createStartDocument

    public abstract [StartDocument](events/StartDocument.md "interface in javax.xml.stream.events") createStartDocument([String](../../../../java.base/java/lang/String.md "class in java.lang") encoding)

    Creates a new instance of a StartDocument event

    Parameters:
    :   `encoding` - the encoding style

    Returns:
    :   a StartDocument event
  + ### createEndDocument

    public abstract [EndDocument](events/EndDocument.md "interface in javax.xml.stream.events") createEndDocument()

    Creates a new instance of an EndDocument event

    Returns:
    :   an EndDocument event
  + ### createEntityReference

    public abstract [EntityReference](events/EntityReference.md "interface in javax.xml.stream.events") createEntityReference([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [EntityDeclaration](events/EntityDeclaration.md "interface in javax.xml.stream.events") declaration)

    Creates a new instance of a EntityReference event

    Parameters:
    :   `name` - The name of the reference
    :   `declaration` - the declaration for the event

    Returns:
    :   an EntityReference event
  + ### createComment

    public abstract [Comment](events/Comment.md "interface in javax.xml.stream.events") createComment([String](../../../../java.base/java/lang/String.md "class in java.lang") text)

    Create a comment.

    Parameters:
    :   `text` - The text of the comment

    Returns:
    :   a Comment event
  + ### createProcessingInstruction

    public abstract [ProcessingInstruction](events/ProcessingInstruction.md "interface in javax.xml.stream.events") createProcessingInstruction([String](../../../../java.base/java/lang/String.md "class in java.lang") target,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") data)

    Create a processing instruction

    Parameters:
    :   `target` - The target of the processing instruction
    :   `data` - The text of the processing instruction

    Returns:
    :   a ProcessingInstruction event
  + ### createDTD

    public abstract [DTD](events/DTD.md "interface in javax.xml.stream.events") createDTD([String](../../../../java.base/java/lang/String.md "class in java.lang") dtd)

    Create a document type definition event
    This string contains the entire document type declaration that matches
    the doctypedecl in the XML 1.0 specification

    Parameters:
    :   `dtd` - the text of the document type definition

    Returns:
    :   a DTD event