Module [java.xml](../../../module-summary.md)

Package [javax.xml.parsers](package-summary.md)

# Class DocumentBuilderFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.parsers.DocumentBuilderFactory

---

public abstract class DocumentBuilderFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Defines a factory API that enables applications to obtain a
parser that produces DOM object trees from XML documents.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DocumentBuilderFactory()`

  Protected constructor to prevent instantiation.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Object`

  `getAttribute(String name)`

  Allows the user to retrieve specific attributes on the underlying
  implementation.

  `abstract boolean`

  `getFeature(String name)`

  Get the state of the named feature.

  `Schema`

  `getSchema()`

  Gets the [`Schema`](../validation/Schema.md "class in javax.xml.validation") object specified through
  the [`setSchema(Schema schema)`](#setSchema(javax.xml.validation.Schema)) method.

  `boolean`

  `isCoalescing()`

  Indicates whether or not the factory is configured to produce
  parsers which converts CDATA nodes to Text nodes and appends it to
  the adjacent (if any) Text node.

  `boolean`

  `isExpandEntityReferences()`

  Indicates whether or not the factory is configured to produce
  parsers which expand entity reference nodes.

  `boolean`

  `isIgnoringComments()`

  Indicates whether or not the factory is configured to produce
  parsers which ignores comments.

  `boolean`

  `isIgnoringElementContentWhitespace()`

  Indicates whether or not the factory is configured to produce
  parsers which ignore ignorable whitespace in element content.

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

  `static DocumentBuilderFactory`

  `newDefaultInstance()`

  Creates a new instance of the `DocumentBuilderFactory` builtin
  system-default implementation.

  `static DocumentBuilderFactory`

  `newDefaultNSInstance()`

  Creates a new NamespaceAware instance of the `DocumentBuilderFactory`
  builtin system-default implementation.

  `abstract DocumentBuilder`

  `newDocumentBuilder()`

  Creates a new instance of a [`DocumentBuilder`](DocumentBuilder.md "class in javax.xml.parsers")
  using the currently configured parameters.

  `static DocumentBuilderFactory`

  `newInstance()`

  Obtains a new instance of a `DocumentBuilderFactory`.

  `static DocumentBuilderFactory`

  `newInstance(String factoryClassName,
  ClassLoader classLoader)`

  Obtain a new instance of a `DocumentBuilderFactory` from class name.

  `static DocumentBuilderFactory`

  `newNSInstance()`

  Creates a new NamespaceAware instance of a `DocumentBuilderFactory`.

  `static DocumentBuilderFactory`

  `newNSInstance(String factoryClassName,
  ClassLoader classLoader)`

  Creates a new NamespaceAware instance of a `DocumentBuilderFactory`
  from the class name.

  `abstract void`

  `setAttribute(String name,
  Object value)`

  Allows the user to set specific attributes on the underlying
  implementation.

  `void`

  `setCoalescing(boolean coalescing)`

  Specifies that the parser produced by this code will
  convert CDATA nodes to Text nodes and append it to the
  adjacent (if any) text node.

  `void`

  `setExpandEntityReferences(boolean expandEntityRef)`

  Specifies that the parser produced by this code will
  expand entity reference nodes.

  `abstract void`

  `setFeature(String name,
  boolean value)`

  Set a feature for this `DocumentBuilderFactory`
  and `DocumentBuilder`s created by this factory.

  `void`

  `setIgnoringComments(boolean ignoreComments)`

  Specifies that the parser produced by this code will
  ignore comments.

  `void`

  `setIgnoringElementContentWhitespace(boolean whitespace)`

  Specifies that the parsers created by this factory must eliminate
  whitespace in element content (sometimes known loosely as
  'ignorable whitespace') when parsing XML documents (see XML Rec
  2.10).

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

  + ### DocumentBuilderFactory

    protected DocumentBuilderFactory()

    Protected constructor to prevent instantiation.
    Use [`newInstance()`](#newInstance()).
* ## Method Details

  + ### newDefaultNSInstance

    public static [DocumentBuilderFactory](DocumentBuilderFactory.md "class in javax.xml.parsers") newDefaultNSInstance()

    Creates a new NamespaceAware instance of the `DocumentBuilderFactory`
    builtin system-default implementation. Parsers produced by the factory
    instance provides support for XML namespaces by default.

    Returns:
    :   a new instance of the `DocumentBuilderFactory` builtin
        system-default implementation.

    Since:
    :   13
  + ### newNSInstance

    public static [DocumentBuilderFactory](DocumentBuilderFactory.md "class in javax.xml.parsers") newNSInstance()

    Creates a new NamespaceAware instance of a `DocumentBuilderFactory`.
    Parsers produced by the factory instance provides support for XML namespaces
    by default.

    Returns:
    :   a new instance of a `DocumentBuilderFactory`

    Throws:
    :   `FactoryConfigurationError` - in case of [service configuration error](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util")
        or if the implementation is not available or cannot be instantiated.

    Since:
    :   13
  + ### newNSInstance

    public static [DocumentBuilderFactory](DocumentBuilderFactory.md "class in javax.xml.parsers") newNSInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryClassName,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)

    Creates a new NamespaceAware instance of a `DocumentBuilderFactory`
    from the class name. Parsers produced by the factory instance provides
    support for XML namespaces by default.

    Parameters:
    :   `factoryClassName` - a fully qualified factory class name that provides
        implementation of
        `javax.xml.parsers.DocumentBuilderFactory`.
    :   `classLoader` - the `ClassLoader` used to load the factory class.
        If it is `null`, the current `Thread`'s
        context classLoader is used to load the factory class.

    Returns:
    :   a new instance of a `DocumentBuilderFactory`

    Throws:
    :   `FactoryConfigurationError` - if `factoryClassName` is `null`, or
        the factory class cannot be loaded, instantiated.

    Since:
    :   13
  + ### newDefaultInstance

    public static [DocumentBuilderFactory](DocumentBuilderFactory.md "class in javax.xml.parsers") newDefaultInstance()

    Creates a new instance of the `DocumentBuilderFactory` builtin
    system-default implementation.

    Returns:
    :   A new instance of the `DocumentBuilderFactory` builtin
        system-default implementation.

    Since:
    :   9
  + ### newInstance

    public static [DocumentBuilderFactory](DocumentBuilderFactory.md "class in javax.xml.parsers") newInstance()

    Obtains a new instance of a `DocumentBuilderFactory`.
    This method uses the
    [JAXP Lookup Mechanism](../../../module-summary.md#LookupMechanism)
    to determine the `DocumentBuilderFactory` implementation class to load.

    Once an application has obtained a reference to a
    `DocumentBuilderFactory`, it can use the factory to
    configure and obtain parser instances.

    #### Tip for Trouble-shooting

    Setting the `jaxp.debug` system property will cause
    this method to print a lot of debug messages
    to `System.err` about what it is doing and where it is looking at.

    If you have problems loading [`DocumentBuilder`](DocumentBuilder.md "class in javax.xml.parsers")s, try:

    ```
     java -Djaxp.debug=1 YourProgram ....
    ```

    Returns:
    :   New instance of a `DocumentBuilderFactory`

    Throws:
    :   `FactoryConfigurationError` - in case of [service configuration error](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util") or if
        the implementation is not available or cannot be instantiated.
  + ### newInstance

    public static [DocumentBuilderFactory](DocumentBuilderFactory.md "class in javax.xml.parsers") newInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryClassName,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)

    Obtain a new instance of a `DocumentBuilderFactory` from class name.
    This function is useful when there are multiple providers in the classpath.
    It gives more control to the application as it can specify which provider
    should be loaded.

    Once an application has obtained a reference to a `DocumentBuilderFactory`
    it can use the factory to configure and obtain parser instances.

    #### Tip for Trouble-shooting

    Setting the `jaxp.debug` system property will cause
    this method to print a lot of debug messages
    to `System.err` about what it is doing and where it is looking at.

    If you have problems try:

    ```
     java -Djaxp.debug=1 YourProgram ....
    ```

    Parameters:
    :   `factoryClassName` - fully qualified factory class name that provides
        implementation of `javax.xml.parsers.DocumentBuilderFactory`.
    :   `classLoader` - `ClassLoader` used to load the factory class. If `null`
        current `Thread`'s context classLoader is used to load the factory class.

    Returns:
    :   New instance of a `DocumentBuilderFactory`

    Throws:
    :   `FactoryConfigurationError` - if `factoryClassName` is `null`, or
        the factory class cannot be loaded, instantiated.

    Since:
    :   1.6

    See Also:
    :   - [`newInstance()`](#newInstance())
  + ### newDocumentBuilder

    public abstract [DocumentBuilder](DocumentBuilder.md "class in javax.xml.parsers") newDocumentBuilder()
    throws [ParserConfigurationException](ParserConfigurationException.md "class in javax.xml.parsers")

    Creates a new instance of a [`DocumentBuilder`](DocumentBuilder.md "class in javax.xml.parsers")
    using the currently configured parameters.

    Returns:
    :   A new instance of a DocumentBuilder.

    Throws:
    :   `ParserConfigurationException` - if a DocumentBuilder
        cannot be created which satisfies the configuration requested.
  + ### setNamespaceAware

    public void setNamespaceAware(boolean awareness)

    Specifies that the parser produced by this code will
    provide support for XML namespaces. By default the value of this is set
    to `false`

    Parameters:
    :   `awareness` - true if the parser produced will provide support
        for XML namespaces; false otherwise.
  + ### setValidating

    public void setValidating(boolean validating)

    Specifies that the parser produced by this code will
    validate documents as they are parsed. By default the value of this
    is set to `false`.

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
    :   `validating` - true if the parser produced will validate documents
        as they are parsed; false otherwise.
  + ### setIgnoringElementContentWhitespace

    public void setIgnoringElementContentWhitespace(boolean whitespace)

    Specifies that the parsers created by this factory must eliminate
    whitespace in element content (sometimes known loosely as
    'ignorable whitespace') when parsing XML documents (see XML Rec
    2.10). Note that only whitespace which is directly contained within
    element content that has an element only content model (see XML
    Rec 3.2.1) will be eliminated. Due to reliance on the content model
    this setting requires the parser to be in validating mode. By default
    the value of this is set to `false`.

    Parameters:
    :   `whitespace` - true if the parser created must eliminate whitespace
        in the element content when parsing XML documents;
        false otherwise.
  + ### setExpandEntityReferences

    public void setExpandEntityReferences(boolean expandEntityRef)

    Specifies that the parser produced by this code will
    expand entity reference nodes. By default the value of this is set to
    `true`

    Parameters:
    :   `expandEntityRef` - true if the parser produced will expand entity
        reference nodes; false otherwise.
  + ### setIgnoringComments

    public void setIgnoringComments(boolean ignoreComments)

    Specifies that the parser produced by this code will
    ignore comments. By default the value of this is set to `false`.

    Parameters:
    :   `ignoreComments` - `boolean` value to ignore comments during processing
  + ### setCoalescing

    public void setCoalescing(boolean coalescing)

    Specifies that the parser produced by this code will
    convert CDATA nodes to Text nodes and append it to the
    adjacent (if any) text node. By default the value of this is set to
    `false`

    Parameters:
    :   `coalescing` - true if the parser produced will convert CDATA nodes
        to Text nodes and append it to the adjacent (if any)
        text node; false otherwise.
  + ### isNamespaceAware

    public boolean isNamespaceAware()

    Indicates whether or not the factory is configured to produce
    parsers which are namespace aware.

    Returns:
    :   true if the factory is configured to produce parsers which
        are namespace aware; false otherwise.
  + ### isValidating

    public boolean isValidating()

    Indicates whether or not the factory is configured to produce
    parsers which validate the XML content during parse.

    Returns:
    :   true if the factory is configured to produce parsers
        which validate the XML content during parse; false otherwise.
  + ### isIgnoringElementContentWhitespace

    public boolean isIgnoringElementContentWhitespace()

    Indicates whether or not the factory is configured to produce
    parsers which ignore ignorable whitespace in element content.

    Returns:
    :   true if the factory is configured to produce parsers
        which ignore ignorable whitespace in element content;
        false otherwise.
  + ### isExpandEntityReferences

    public boolean isExpandEntityReferences()

    Indicates whether or not the factory is configured to produce
    parsers which expand entity reference nodes.

    Returns:
    :   true if the factory is configured to produce parsers
        which expand entity reference nodes; false otherwise.
  + ### isIgnoringComments

    public boolean isIgnoringComments()

    Indicates whether or not the factory is configured to produce
    parsers which ignores comments.

    Returns:
    :   true if the factory is configured to produce parsers
        which ignores comments; false otherwise.
  + ### isCoalescing

    public boolean isCoalescing()

    Indicates whether or not the factory is configured to produce
    parsers which converts CDATA nodes to Text nodes and appends it to
    the adjacent (if any) Text node.

    Returns:
    :   true if the factory is configured to produce parsers
        which converts CDATA nodes to Text nodes and appends it to
        the adjacent (if any) Text node; false otherwise.
  + ### setAttribute

    public abstract void setAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Allows the user to set specific attributes on the underlying
    implementation.

    All implementations that implement JAXP 1.5 or newer are required to
    support the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD) and
    [`XMLConstants.ACCESS_EXTERNAL_SCHEMA`](../XMLConstants.md#ACCESS_EXTERNAL_SCHEMA) properties.
    - Setting the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD) property
      restricts the access to external DTDs, external Entity References to the
      protocols specified by the property.
      If access is denied during parsing due to the restriction of this property,
      [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") will be thrown by the parse methods defined by
      [`DocumentBuilder`](DocumentBuilder.md "class in javax.xml.parsers").
    - Setting the [`XMLConstants.ACCESS_EXTERNAL_SCHEMA`](../XMLConstants.md#ACCESS_EXTERNAL_SCHEMA) property
      restricts the access to external Schema set by the schemaLocation attribute to
      the protocols specified by the property. If access is denied during parsing
      due to the restriction of this property, [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax")
      will be thrown by the parse methods defined by
      [`DocumentBuilder`](DocumentBuilder.md "class in javax.xml.parsers").

    Parameters:
    :   `name` - The name of the attribute.
    :   `value` - The value of the attribute.

    Throws:
    :   `IllegalArgumentException` - thrown if the underlying
        implementation doesn't recognize the attribute.
  + ### getAttribute

    public abstract [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Allows the user to retrieve specific attributes on the underlying
    implementation.

    Parameters:
    :   `name` - The name of the attribute.

    Returns:
    :   value The value of the attribute.

    Throws:
    :   `IllegalArgumentException` - thrown if the underlying
        implementation doesn't recognize the attribute.
  + ### setFeature

    public abstract void setFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean value)
    throws [ParserConfigurationException](ParserConfigurationException.md "class in javax.xml.parsers")

    Set a feature for this `DocumentBuilderFactory`
    and `DocumentBuilder`s created by this factory.

    Feature names are fully qualified [`URI`](../../../../java.base/java/net/URI.md "class in java.net")s.
    Implementations may define their own features.
    A [`ParserConfigurationException`](ParserConfigurationException.md "class in javax.xml.parsers") is thrown if this `DocumentBuilderFactory` or the
    `DocumentBuilder`s it creates cannot support the feature.
    It is possible for a `DocumentBuilderFactory` to expose a feature value but be unable to change its state.

    All implementations are required to support the [`XMLConstants.FEATURE_SECURE_PROCESSING`](../XMLConstants.md#FEATURE_SECURE_PROCESSING) feature.
    When the feature is:
    - `true`: the implementation will limit XML processing to conform to implementation limits.
      Examples include entity expansion limits and XML Schema constructs that would consume large amounts of resources.
      If XML processing is limited for security reasons, it will be reported via a call to the registered
      [`ErrorHandler.fatalError(SAXParseException exception)`](../../../org/xml/sax/ErrorHandler.md#fatalError(org.xml.sax.SAXParseException)).
      See [`DocumentBuilder.setErrorHandler(org.xml.sax.ErrorHandler errorHandler)`](DocumentBuilder.md#setErrorHandler(org.xml.sax.ErrorHandler)).
    - `false`: the implementation will processing XML according to the XML specifications without
      regard to possible implementation limits.

    Parameters:
    :   `name` - Feature name.
    :   `value` - Is feature state `true` or `false`.

    Throws:
    :   `ParserConfigurationException` - if this `DocumentBuilderFactory` or the `DocumentBuilder`s
        it creates cannot support this feature.
    :   `NullPointerException` - If the `name` parameter is null.

    Since:
    :   1.5
  + ### getFeature

    public abstract boolean getFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [ParserConfigurationException](ParserConfigurationException.md "class in javax.xml.parsers")

    Get the state of the named feature.

    Feature names are fully qualified [`URI`](../../../../java.base/java/net/URI.md "class in java.net")s.
    Implementations may define their own features.
    An [`ParserConfigurationException`](ParserConfigurationException.md "class in javax.xml.parsers") is thrown if this `DocumentBuilderFactory` or the
    `DocumentBuilder`s it creates cannot support the feature.
    It is possible for an `DocumentBuilderFactory` to expose a feature value but be unable to change its state.

    Parameters:
    :   `name` - Feature name.

    Returns:
    :   State of the named feature.

    Throws:
    :   `ParserConfigurationException` - if this `DocumentBuilderFactory`
        or the `DocumentBuilder`s it creates cannot support this feature.

    Since:
    :   1.5
  + ### getSchema

    public [Schema](../validation/Schema.md "class in javax.xml.validation") getSchema()

    Gets the [`Schema`](../validation/Schema.md "class in javax.xml.validation") object specified through
    the [`setSchema(Schema schema)`](#setSchema(javax.xml.validation.Schema)) method.

    Returns:
    :   the [`Schema`](../validation/Schema.md "class in javax.xml.validation") object that was last set through
        the [`setSchema(Schema)`](#setSchema(javax.xml.validation.Schema)) method, or null
        if the method was not invoked since a [`DocumentBuilderFactory`](DocumentBuilderFactory.md "class in javax.xml.parsers")
        is created.

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method.

    Since:
    :   1.5
  + ### setSchema

    public void setSchema([Schema](../validation/Schema.md "class in javax.xml.validation") schema)

    Set the [`Schema`](../validation/Schema.md "class in javax.xml.validation") to be used by parsers created
    from this factory.

    When a [`Schema`](../validation/Schema.md "class in javax.xml.validation") is non-null, a parser will use a validator
    created from it to validate documents before it passes information
    down to the application.

    When errors are found by the validator, the parser is responsible
    to report them to the user-specified [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax")
    (or if the error handler is not set, ignore them or throw them), just
    like any other errors found by the parser itself.
    In other words, if the user-specified [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax")
    is set, it must receive those errors, and if not, they must be
    treated according to the implementation specific
    default error handling rules.

    A validator may modify the outcome of a parse (for example by
    adding default values that were missing in documents), and a parser
    is responsible to make sure that the application will receive
    modified DOM trees.

    Initially, null is set as the [`Schema`](../validation/Schema.md "class in javax.xml.validation").

    This processing will take effect even if
    the [`isValidating()`](#isValidating()) method returns `false`.

    It is an error to use
    the `http://java.sun.com/xml/jaxp/properties/schemaSource`
    property and/or the `http://java.sun.com/xml/jaxp/properties/schemaLanguage`
    property in conjunction with a [`Schema`](../validation/Schema.md "class in javax.xml.validation") object.
    Such configuration will cause a [`ParserConfigurationException`](ParserConfigurationException.md "class in javax.xml.parsers")
    exception when the [`newDocumentBuilder()`](#newDocumentBuilder()) is invoked.

    #### Note for implementors

    A parser must be able to work with any [`Schema`](../validation/Schema.md "class in javax.xml.validation")
    implementation. However, parsers and schemas are allowed
    to use implementation-specific custom mechanisms
    as long as they yield the result described in the specification.

    Parameters:
    :   `schema` - `Schema` to use or `null`
        to remove a schema.

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method.

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
        override this method.

    Since:
    :   1.5
  + ### isXIncludeAware

    public boolean isXIncludeAware()

    Get state of XInclude processing.

    Returns:
    :   current state of XInclude processing

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method.

    Since:
    :   1.5