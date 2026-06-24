Module [java.xml](../../../module-summary.md)

Package [javax.xml.parsers](package-summary.md)

# Class SAXParserFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.parsers.SAXParserFactory

---

public abstract class SAXParserFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Defines a factory API that enables applications to configure and
obtain a SAX based parser to parse XML documents.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SAXParserFactory()`

  Protected constructor to force use of [`newInstance()`](#newInstance()).
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `getFeature(String name)`

  Returns the particular property requested for in the underlying
  implementation of org.xml.sax.XMLReader.

  `Schema`

  `getSchema()`

  Gets the [`Schema`](../validation/Schema.md "class in javax.xml.validation") object specified through
  the [`setSchema(Schema schema)`](#setSchema(javax.xml.validation.Schema)) method.

  `boolean`

  `isNamespaceAware()`

  Indicates whether or not the factory is configured to produce
  parsers which are namespace aware.

  `boolean`

  `isValidating()`

  Indicates whether or not the factory is configured to produce
  parsers which validate the XML content during parse.

  `boolean`

  `isXIncludeAware()`

  Get state of XInclude processing.

  `static SAXParserFactory`

  `newDefaultInstance()`

  Creates a new instance of the `SAXParserFactory` builtin
  system-default implementation.

  `static SAXParserFactory`

  `newDefaultNSInstance()`

  Creates a new NamespaceAware instance of the `SAXParserFactory`
  builtin system-default implementation.

  `static SAXParserFactory`

  `newInstance()`

  Obtains a new instance of a `SAXParserFactory`.

  `static SAXParserFactory`

  `newInstance(String factoryClassName,
  ClassLoader classLoader)`

  Obtain a new instance of a `SAXParserFactory` from class name.

  `static SAXParserFactory`

  `newNSInstance()`

  Creates a new NamespaceAware instance of a `SAXParserFactory`.

  `static SAXParserFactory`

  `newNSInstance(String factoryClassName,
  ClassLoader classLoader)`

  Creates a new NamespaceAware instance of a `SAXParserFactory` from
  the class name.

  `abstract SAXParser`

  `newSAXParser()`

  Creates a new instance of a SAXParser using the currently
  configured factory parameters.

  `abstract void`

  `setFeature(String name,
  boolean value)`

  Sets the particular feature in the underlying implementation of
  org.xml.sax.XMLReader.

  `void`

  `setNamespaceAware(boolean awareness)`

  Specifies that the parser produced by this code will
  provide support for XML namespaces.

  `void`

  `setSchema(Schema schema)`

  Set the [`Schema`](../validation/Schema.md "class in javax.xml.validation") to be used by parsers created
  from this factory.

  `void`

  `setValidating(boolean validating)`

  Specifies that the parser produced by this code will
  validate documents as they are parsed.

  `void`

  `setXIncludeAware(boolean state)`

  Set state of XInclude processing.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SAXParserFactory

    protected SAXParserFactory()

    Protected constructor to force use of [`newInstance()`](#newInstance()).
* ## Method Details

  + ### newDefaultNSInstance

    public static [SAXParserFactory](SAXParserFactory.md "class in javax.xml.parsers") newDefaultNSInstance()

    Creates a new NamespaceAware instance of the `SAXParserFactory`
    builtin system-default implementation. Parsers produced by the factory
    instance provides support for XML namespaces by default.

    Returns:
    :   a new instance of the `SAXParserFactory` builtin
        system-default implementation.

    Since:
    :   13
  + ### newNSInstance

    public static [SAXParserFactory](SAXParserFactory.md "class in javax.xml.parsers") newNSInstance()

    Creates a new NamespaceAware instance of a `SAXParserFactory`.
    Parsers produced by the factory instance provides support for XML
    namespaces by default.

    Returns:
    :   a new instance of the `SAXParserFactory`

    Throws:
    :   `FactoryConfigurationError` - in case of [service configuration error](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util")
        or if the implementation is not available or cannot be instantiated.

    Since:
    :   13
  + ### newNSInstance

    public static [SAXParserFactory](SAXParserFactory.md "class in javax.xml.parsers") newNSInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryClassName,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)

    Creates a new NamespaceAware instance of a `SAXParserFactory` from
    the class name. Parsers produced by the factory instance provides
    support for XML namespaces by default.

    Parameters:
    :   `factoryClassName` - a fully qualified factory class name that provides
        implementation of
        `javax.xml.parsers.SAXParserFactory`.
    :   `classLoader` - the `ClassLoader` used to load the factory class.
        If it is `null`, the current `Thread`'s
        context classLoader is used to load the factory class.

    Returns:
    :   a new instance of the `SAXParserFactory`

    Throws:
    :   `FactoryConfigurationError` - if `factoryClassName` is `null`, or
        the factory class cannot be loaded, instantiated.

    Since:
    :   13
  + ### newDefaultInstance

    public static [SAXParserFactory](SAXParserFactory.md "class in javax.xml.parsers") newDefaultInstance()

    Creates a new instance of the `SAXParserFactory` builtin
    system-default implementation.

    Returns:
    :   A new instance of the `SAXParserFactory` builtin
        system-default implementation.

    Since:
    :   9
  + ### newInstance

    public static [SAXParserFactory](SAXParserFactory.md "class in javax.xml.parsers") newInstance()

    Obtains a new instance of a `SAXParserFactory`.
    This method uses the
    [JAXP Lookup Mechanism](../../../module-summary.md#LookupMechanism)
    to determine the `SAXParserFactory` implementation class to load.

    Once an application has obtained a reference to a
    `SAXParserFactory`, it can use the factory to
    configure and obtain parser instances.

    #### Tip for Trouble-shooting

    Setting the `jaxp.debug` system property will cause
    this method to print a lot of debug messages
    to `System.err` about what it is doing and where it is looking at.

    If you have problems loading [`SAXParser`](SAXParser.md "class in javax.xml.parsers")s, try:

    ```
     java -Djaxp.debug=1 YourProgram ....
    ```

    Returns:
    :   A new instance of a SAXParserFactory.

    Throws:
    :   `FactoryConfigurationError` - in case of [service configuration error](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util") or if
        the implementation is not available or cannot be instantiated.
  + ### newInstance

    public static [SAXParserFactory](SAXParserFactory.md "class in javax.xml.parsers") newInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryClassName,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)

    Obtain a new instance of a `SAXParserFactory` from class name.
    This function is useful when there are multiple providers in the classpath.
    It gives more control to the application as it can specify which provider
    should be loaded.

    Once an application has obtained a reference to a `SAXParserFactory`
    it can use the factory to configure and obtain parser instances.

    #### Tip for Trouble-shooting

    Setting the `jaxp.debug` system property will cause
    this method to print a lot of debug messages
    to `System.err` about what it is doing and where it is looking at.

    If you have problems, try:

    ```
     java -Djaxp.debug=1 YourProgram ....
    ```

    Parameters:
    :   `factoryClassName` - fully qualified factory class name that provides implementation of `javax.xml.parsers.SAXParserFactory`.
    :   `classLoader` - `ClassLoader` used to load the factory class. If `null`
        current `Thread`'s context classLoader is used to load the factory class.

    Returns:
    :   New instance of a `SAXParserFactory`

    Throws:
    :   `FactoryConfigurationError` - if `factoryClassName` is `null`, or
        the factory class cannot be loaded, instantiated.

    Since:
    :   1.6

    See Also:
    :   - [`newInstance()`](#newInstance())
  + ### newSAXParser

    public abstract [SAXParser](SAXParser.md "class in javax.xml.parsers") newSAXParser()
    throws [ParserConfigurationException](ParserConfigurationException.md "class in javax.xml.parsers"),
    [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax")

    Creates a new instance of a SAXParser using the currently
    configured factory parameters.

    Returns:
    :   A new instance of a SAXParser.

    Throws:
    :   `ParserConfigurationException` - if a parser cannot
        be created which satisfies the requested configuration.
    :   `SAXException` - for SAX errors.
  + ### setNamespaceAware

    public void setNamespaceAware(boolean awareness)

    Specifies that the parser produced by this code will
    provide support for XML namespaces. By default the value of this is set
    to `false`.

    Parameters:
    :   `awareness` - true if the parser produced by this code will
        provide support for XML namespaces; false otherwise.
  + ### setValidating

    public void setValidating(boolean validating)

    Specifies that the parser produced by this code will
    validate documents as they are parsed. By default the value of this is
    set to `false`.

    Note that "the validation" here means
    [a validating
    parser](http://www.w3.org/TR/REC-xml#proc-types) as defined in the XML recommendation.
    In other words, it essentially just controls the DTD validation.
    (except the legacy two properties defined in JAXP 1.2.)

    To use modern schema languages such as W3C XML Schema or
    RELAX NG instead of DTD, you can configure your parser to be
    a non-validating parser by leaving the [`setValidating(boolean)`](#setValidating(boolean))
    method `false`, then use the [`setSchema(Schema)`](#setSchema(javax.xml.validation.Schema))
    method to associate a schema to a parser.

    Parameters:
    :   `validating` - true if the parser produced by this code will
        validate documents as they are parsed; false otherwise.
  + ### isNamespaceAware

    public boolean isNamespaceAware()

    Indicates whether or not the factory is configured to produce
    parsers which are namespace aware.

    Returns:
    :   true if the factory is configured to produce
        parsers which are namespace aware; false otherwise.
  + ### isValidating

    public boolean isValidating()

    Indicates whether or not the factory is configured to produce
    parsers which validate the XML content during parse.

    Returns:
    :   true if the factory is configured to produce parsers which validate
        the XML content during parse; false otherwise.
  + ### setFeature

    public abstract void setFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean value)
    throws [ParserConfigurationException](ParserConfigurationException.md "class in javax.xml.parsers"),
    [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Sets the particular feature in the underlying implementation of
    org.xml.sax.XMLReader.
    A list of the core features and properties can be found at
    <http://www.saxproject.org/>

    All implementations are required to support the [`XMLConstants.FEATURE_SECURE_PROCESSING`](../XMLConstants.md#FEATURE_SECURE_PROCESSING) feature.
    When the feature is
    - `true`: the implementation will limit XML processing to conform to implementation limits.
      Examples include entity expansion limits and XML Schema constructs that would consume large amounts of resources.
      If XML processing is limited for security reasons, it will be reported via a call to the registered
      [`ErrorHandler.fatalError(SAXParseException exception)`](../../../org/xml/sax/ErrorHandler.md#fatalError(org.xml.sax.SAXParseException)).
      See [`SAXParser`](SAXParser.md "class in javax.xml.parsers") `parse` methods for handler specification.
    - When the feature is `false`, the implementation will processing XML according to the XML specifications without
      regard to possible implementation limits.

    Parameters:
    :   `name` - The name of the feature to be set.
    :   `value` - The value of the feature to be set.

    Throws:
    :   `ParserConfigurationException` - if a parser cannot
        be created which satisfies the requested configuration.
    :   `SAXNotRecognizedException` - When the underlying XMLReader does
        not recognize the property name.
    :   `SAXNotSupportedException` - When the underlying XMLReader
        recognizes the property name but doesn't support the
        property.
    :   `NullPointerException` - If the `name` parameter is null.

    See Also:
    :   - [`XMLReader.setFeature(java.lang.String, boolean)`](../../../org/xml/sax/XMLReader.md#setFeature(java.lang.String,boolean))
  + ### getFeature

    public abstract boolean getFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [ParserConfigurationException](ParserConfigurationException.md "class in javax.xml.parsers"),
    [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Returns the particular property requested for in the underlying
    implementation of org.xml.sax.XMLReader.

    Parameters:
    :   `name` - The name of the property to be retrieved.

    Returns:
    :   Value of the requested property.

    Throws:
    :   `ParserConfigurationException` - if a parser cannot be created which satisfies the requested configuration.
    :   `SAXNotRecognizedException` - When the underlying XMLReader does not recognize the property name.
    :   `SAXNotSupportedException` - When the underlying XMLReader recognizes the property name but doesn't support the property.

    See Also:
    :   - [`XMLReader.getProperty(java.lang.String)`](../../../org/xml/sax/XMLReader.md#getProperty(java.lang.String))
  + ### getSchema

    public [Schema](../validation/Schema.md "class in javax.xml.validation") getSchema()

    Gets the [`Schema`](../validation/Schema.md "class in javax.xml.validation") object specified through
    the [`setSchema(Schema schema)`](#setSchema(javax.xml.validation.Schema)) method.

    Returns:
    :   the [`Schema`](../validation/Schema.md "class in javax.xml.validation") object that was last set through
        the [`setSchema(Schema)`](#setSchema(javax.xml.validation.Schema)) method, or null
        if the method was not invoked since a [`SAXParserFactory`](SAXParserFactory.md "class in javax.xml.parsers")
        is created.

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method

    Since:
    :   1.5
  + ### setSchema

    public void setSchema([Schema](../validation/Schema.md "class in javax.xml.validation") schema)

    Set the [`Schema`](../validation/Schema.md "class in javax.xml.validation") to be used by parsers created
    from this factory.

    When a [`Schema`](../validation/Schema.md "class in javax.xml.validation") is non-null, a parser will use a validator
    created from it to validate documents before it passes information
    down to the application.

    When warnings/errors/fatal errors are found by the validator, the parser must
    handle them as if those errors were found by the parser itself.
    In other words, if the user-specified [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax")
    is set, it must receive those errors, and if not, they must be
    treated according to the implementation specific
    default error handling rules.

    A validator may modify the SAX event stream (for example by
    adding default values that were missing in documents), and a parser
    is responsible to make sure that the application will receive
    those modified event stream.

    Initially, `null` is set as the [`Schema`](../validation/Schema.md "class in javax.xml.validation").

    This processing will take effect even if
    the [`isValidating()`](#isValidating()) method returns `false`.

    It is an error to use
    the `http://java.sun.com/xml/jaxp/properties/schemaSource`
    property and/or the `http://java.sun.com/xml/jaxp/properties/schemaLanguage`
    property in conjunction with a non-null [`Schema`](../validation/Schema.md "class in javax.xml.validation") object.
    Such configuration will cause a [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax")
    exception when those properties are set on a [`SAXParser`](SAXParser.md "class in javax.xml.parsers").

    #### Note for implementors

    A parser must be able to work with any [`Schema`](../validation/Schema.md "class in javax.xml.validation")
    implementation. However, parsers and schemas are allowed
    to use implementation-specific custom mechanisms
    as long as they yield the result described in the specification.

    Parameters:
    :   `schema` - `Schema` to use, `null` to remove a schema.

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method

    Since:
    :   1.5
  + ### setXIncludeAware

    public void setXIncludeAware(boolean state)

    Set state of XInclude processing.

    If XInclude markup is found in the document instance, should it be
    processed as specified in [XML Inclusions (XInclude) Version 1.0](http://www.w3.org/TR/xinclude/).

    XInclude processing defaults to `false`.

    Parameters:
    :   `state` - Set XInclude processing to `true` or
        `false`

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method

    Since:
    :   1.5
  + ### isXIncludeAware

    public boolean isXIncludeAware()

    Get state of XInclude processing.

    Returns:
    :   current state of XInclude processing

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method

    Since:
    :   1.5