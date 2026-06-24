Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Class XMLOutputFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.stream.XMLOutputFactory

---

public abstract class XMLOutputFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Defines an abstract implementation of a factory for
getting XMLEventWriters and XMLStreamWriters.
The following table defines the standard properties of this specification.
Each property varies in the level of support required by each implementation.
The level of support required is described in the 'Required' column.

Configuration Parameters

| Property Name | Behavior | Return type | Default Value | Required |
| --- | --- | --- | --- | --- |
| javax.xml.stream.isRepairingNamespaces | defaults prefixes on the output side | Boolean | False | Yes |

The following paragraphs describe the namespace and prefix repair algorithm:

The property can be set with the following code line:
`setProperty("javax.xml.stream.isRepairingNamespaces", Boolean.TRUE);`

This property specifies that the writer default namespace prefix declarations.
The default value is false.

If a writer isRepairingNamespaces it will create a namespace declaration
on the current StartElement for
any attribute that does not
currently have a namespace declaration in scope. If the StartElement
has a uri but no prefix specified a prefix will be assigned, if the prefix
has not been declared in a parent of the current StartElement it will be declared
on the current StartElement. If the defaultNamespace is bound and in scope
and the default namespace matches the URI of the attribute or StartElement
QName no prefix will be assigned.

If an element or attribute name has a prefix, but is not
bound to any namespace URI, then the prefix will be removed
during serialization.

If element and/or attribute names in the same start or
empty-element tag are bound to different namespace URIs and
are using the same prefix then the element or the first
occurring attribute retains the original prefix and the
following attributes have their prefixes replaced with a
new prefix that is bound to the namespace URIs of those
attributes.

If an element or attribute name uses a prefix that is
bound to a different URI than that inherited from the
namespace context of the parent of that element and there
is no namespace declaration in the context of the current
element then such a namespace declaration is added.

If an element or attribute name is bound to a prefix and
there is a namespace declaration that binds that prefix
to a different URI then that namespace declaration is
either removed if the correct mapping is inherited from
the parent context of that element, or changed to the
namespace URI of the element or attribute using that prefix.

Since:
:   1.6

See Also:
:   * [`XMLInputFactory`](XMLInputFactory.md "class in javax.xml.stream")
    * [`XMLEventWriter`](XMLEventWriter.md "interface in javax.xml.stream")
    * [`XMLStreamWriter`](XMLStreamWriter.md "interface in javax.xml.stream")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `IS_REPAIRING_NAMESPACES`

  Property used to set prefix defaulting on the output side
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `XMLOutputFactory()`

  Protected constructor to prevent instantiation.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `abstract XMLEventWriter`

  `createXMLEventWriter(OutputStream stream)`

  Create a new XMLEventWriter that writes to a stream

  `abstract XMLEventWriter`

  `createXMLEventWriter(OutputStream stream,
  String encoding)`

  Create a new XMLEventWriter that writes to a stream

  `abstract XMLEventWriter`

  `createXMLEventWriter(Writer stream)`

  Create a new XMLEventWriter that writes to a writer

  `abstract XMLEventWriter`

  `createXMLEventWriter(Result result)`

  Create a new XMLEventWriter that writes to a JAXP result.

  `abstract XMLStreamWriter`

  `createXMLStreamWriter(OutputStream stream)`

  Create a new XMLStreamWriter that writes to a stream

  `abstract XMLStreamWriter`

  `createXMLStreamWriter(OutputStream stream,
  String encoding)`

  Create a new XMLStreamWriter that writes to a stream

  `abstract XMLStreamWriter`

  `createXMLStreamWriter(Writer stream)`

  Create a new XMLStreamWriter that writes to a writer

  `abstract XMLStreamWriter`

  `createXMLStreamWriter(Result result)`

  Create a new XMLStreamWriter that writes to a JAXP result.

  `abstract Object`

  `getProperty(String name)`

  Get a feature/property on the underlying implementation

  `abstract boolean`

  `isPropertySupported(String name)`

  Query the set of properties that this factory supports.

  `static XMLOutputFactory`

  `newDefaultFactory()`

  Creates a new instance of the `XMLOutputFactory` builtin
  system-default implementation.

  `static XMLOutputFactory`

  `newFactory()`

  Creates a new instance of the factory.

  `static XMLOutputFactory`

  `newFactory(String factoryId,
  ClassLoader classLoader)`

  Create a new instance of the factory.

  `static XMLOutputFactory`

  `newInstance()`

  Creates a new instance of the factory in exactly the same manner as the
  [`newFactory()`](#newFactory()) method.

  `static XMLInputFactory`

  `newInstance(String factoryId,
  ClassLoader classLoader)`

  Deprecated.

  This method has been deprecated because it returns an
  instance of XMLInputFactory, which is of the wrong class.

  `abstract void`

  `setProperty(String name,
  Object value)`

  Allows the user to set specific features/properties on the underlying implementation.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### IS\_REPAIRING\_NAMESPACES

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") IS\_REPAIRING\_NAMESPACES

    Property used to set prefix defaulting on the output side

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLOutputFactory.IS_REPAIRING_NAMESPACES)
* ## Constructor Details

  + ### XMLOutputFactory

    protected XMLOutputFactory()

    Protected constructor to prevent instantiation.
    Use [`newFactory()`](#newFactory()) instead.
* ## Method Details

  + ### newDefaultFactory

    public static [XMLOutputFactory](XMLOutputFactory.md "class in javax.xml.stream") newDefaultFactory()

    Creates a new instance of the `XMLOutputFactory` builtin
    system-default implementation.

    Returns:
    :   A new instance of the `XMLOutputFactory` builtin
        system-default implementation.

    Since:
    :   9
  + ### newInstance

    public static [XMLOutputFactory](XMLOutputFactory.md "class in javax.xml.stream") newInstance()
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Creates a new instance of the factory in exactly the same manner as the
    [`newFactory()`](#newFactory()) method.

    Returns:
    :   an instance of the `XMLOutputFactory`

    Throws:
    :   `FactoryConfigurationError` - if an instance of this factory cannot be loaded
  + ### newFactory

    public static [XMLOutputFactory](XMLOutputFactory.md "class in javax.xml.stream") newFactory()
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Creates a new instance of the factory. This method uses the
    [JAXP Lookup Mechanism](../../../../java.xml/module-summary.md#LookupMechanism)
    to determine the `XMLOutputFactory` implementation class to load.

    Once an application has obtained a reference to a `XMLOutputFactory`, it
    can use the factory to configure and obtain stream instances.

    Returns:
    :   an instance of the `XMLOutputFactory`

    Throws:
    :   `FactoryConfigurationError` - in case of [service configuration error](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util") or if
        the implementation is not available or cannot be instantiated.
  + ### newInstance

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="1.7")
    public static [XMLInputFactory](XMLInputFactory.md "class in javax.xml.stream") newInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryId,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Deprecated.

    This method has been deprecated because it returns an
    instance of XMLInputFactory, which is of the wrong class.
    Use the new method [`newFactory(java.lang.String, java.lang.ClassLoader)`](#newFactory(java.lang.String,java.lang.ClassLoader)) instead.

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

    public static [XMLOutputFactory](XMLOutputFactory.md "class in javax.xml.stream") newFactory([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryId,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)
    throws [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

    Create a new instance of the factory.
    If the classLoader argument is null, then the ContextClassLoader is used.

    This method uses the following ordered lookup procedure to determine
    the XMLOutputFactory implementation class to load:
    - Use the value of the system property identified by `factoryId`.
    - Use the value of the property `factoryId` set in the
      [configuration file](../../../../java.xml/module-summary.md#ConfigurationFile),
      jaxp.properties by default. If the file exists and the property `factoryId`
      is specified in the file, its value will be used as the implementation class.
    - If `factoryId` is "javax.xml.stream.XMLOutputFactory",
      use the service-provider loading facility, defined by the
      [`ServiceLoader`](../../../../java.base/java/util/ServiceLoader.md "class in java.util") class, to attempt to [locate and load](../../../../java.base/java/util/ServiceLoader.md#load(java.lang.Class,java.lang.ClassLoader))
      an implementation of the service using the specified `ClassLoader`.
      If `classLoader` is null, the [default loading mechanism](../../../../java.base/java/util/ServiceLoader.md#load(java.lang.Class)) will apply:
      That is, the service-provider loading facility will use the [current thread's context class loader](../../../../java.base/java/lang/Thread.md#getContextClassLoader())
      to attempt to load the service. If the context class
      loader is null, the [system class loader](../../../../java.base/java/lang/ClassLoader.md#getSystemClassLoader()) will be used.
    - Otherwise, throws a [`FactoryConfigurationError`](FactoryConfigurationError.md "class in javax.xml.stream").

    Parameters:
    :   `factoryId` - Name of the factory to find, same as
        a property name
    :   `classLoader` - classLoader to use

    Returns:
    :   the factory implementation

    Throws:
    :   `FactoryConfigurationError` - in case of [service configuration error](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util") or if
        the implementation is not available or cannot be instantiated.
  + ### createXMLStreamWriter

    public abstract [XMLStreamWriter](XMLStreamWriter.md "interface in javax.xml.stream") createXMLStreamWriter([Writer](../../../../java.base/java/io/Writer.md "class in java.io") stream)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLStreamWriter that writes to a writer

    Parameters:
    :   `stream` - the writer to write to

    Returns:
    :   instance of the `XMLStreamWriter`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLStreamWriter

    public abstract [XMLStreamWriter](XMLStreamWriter.md "interface in javax.xml.stream") createXMLStreamWriter([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") stream)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLStreamWriter that writes to a stream

    Parameters:
    :   `stream` - the stream to write to

    Returns:
    :   instance of the `XMLStreamWriter`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLStreamWriter

    public abstract [XMLStreamWriter](XMLStreamWriter.md "interface in javax.xml.stream") createXMLStreamWriter([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") stream,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") encoding)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLStreamWriter that writes to a stream

    Parameters:
    :   `stream` - the stream to write to
    :   `encoding` - the encoding to use

    Returns:
    :   instance of the `XMLStreamWriter`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLStreamWriter

    public abstract [XMLStreamWriter](XMLStreamWriter.md "interface in javax.xml.stream") createXMLStreamWriter([Result](../transform/Result.md "interface in javax.xml.transform") result)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLStreamWriter that writes to a JAXP result. This method is optional.

    Parameters:
    :   `result` - the result to write to

    Returns:
    :   instance of the `XMLStreamWriter`

    Throws:
    :   `UnsupportedOperationException` - if this method is not
        supported by this XMLOutputFactory
    :   `XMLStreamException` - if an error occurs
  + ### createXMLEventWriter

    public abstract [XMLEventWriter](XMLEventWriter.md "interface in javax.xml.stream") createXMLEventWriter([Result](../transform/Result.md "interface in javax.xml.transform") result)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventWriter that writes to a JAXP result. This method is optional.

    Parameters:
    :   `result` - the result to write to

    Returns:
    :   instance of the `XMLEventWriter`

    Throws:
    :   `UnsupportedOperationException` - if this method is not
        supported by this XMLOutputFactory
    :   `XMLStreamException` - if an error occurs
  + ### createXMLEventWriter

    public abstract [XMLEventWriter](XMLEventWriter.md "interface in javax.xml.stream") createXMLEventWriter([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") stream)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventWriter that writes to a stream

    Parameters:
    :   `stream` - the stream to write to

    Returns:
    :   instance of the `XMLEventWriter`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLEventWriter

    public abstract [XMLEventWriter](XMLEventWriter.md "interface in javax.xml.stream") createXMLEventWriter([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") stream,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") encoding)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventWriter that writes to a stream

    Parameters:
    :   `stream` - the stream to write to
    :   `encoding` - the encoding to use

    Returns:
    :   instance of the `XMLEventWriter`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### createXMLEventWriter

    public abstract [XMLEventWriter](XMLEventWriter.md "interface in javax.xml.stream") createXMLEventWriter([Writer](../../../../java.base/java/io/Writer.md "class in java.io") stream)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Create a new XMLEventWriter that writes to a writer

    Parameters:
    :   `stream` - the stream to write to

    Returns:
    :   instance of the `XMLEventWriter`

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### setProperty

    public abstract void setProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Allows the user to set specific features/properties on the underlying implementation.

    Parameters:
    :   `name` - The name of the property
    :   `value` - The value of the property

    Throws:
    :   `IllegalArgumentException` - if the property is not supported
  + ### getProperty

    public abstract [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Get a feature/property on the underlying implementation

    Parameters:
    :   `name` - The name of the property

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