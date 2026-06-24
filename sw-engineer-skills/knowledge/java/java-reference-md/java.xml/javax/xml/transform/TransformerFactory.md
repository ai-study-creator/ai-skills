Module [java.xml](../../../module-summary.md)

Package [javax.xml.transform](package-summary.md)

# Class TransformerFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.transform.TransformerFactory

Direct Known Subclasses:
:   `SAXTransformerFactory`

---

public abstract class TransformerFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A TransformerFactory instance can be used to create
[`Transformer`](Transformer.md "class in javax.xml.transform") and
[`Templates`](Templates.md "interface in javax.xml.transform") objects.

The system property that determines which Factory implementation
to create is named `"javax.xml.transform.TransformerFactory"`.
This property names a concrete subclass of the
`TransformerFactory` abstract class. If the property is not
defined, a platform default is be used.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TransformerFactory()`

  Default constructor is protected on purpose.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Source`

  `getAssociatedStylesheet(Source source,
  String media,
  String title,
  String charset)`

  Get the stylesheet specification(s) associated with the
  XML `Source` document via the
  [xml-stylesheet processing instruction](http://www.w3.org/TR/xml-stylesheet/) that match the given criteria.

  `abstract Object`

  `getAttribute(String name)`

  Allows the user to retrieve specific attributes on the underlying
  implementation.

  `abstract ErrorListener`

  `getErrorListener()`

  Get the error event handler for the TransformerFactory.

  `abstract boolean`

  `getFeature(String name)`

  Look up the value of a feature.

  `abstract URIResolver`

  `getURIResolver()`

  Get the object that is used by default during the transformation
  to resolve URIs used in document(), xsl:import, or xsl:include.

  `static TransformerFactory`

  `newDefaultInstance()`

  Creates a new instance of the `TransformerFactory` builtin
  system-default implementation.

  `static TransformerFactory`

  `newInstance()`

  Obtains a new instance of a `TransformerFactory`.

  `static TransformerFactory`

  `newInstance(String factoryClassName,
  ClassLoader classLoader)`

  Obtain a new instance of a `TransformerFactory` from factory class name.

  `abstract Templates`

  `newTemplates(Source source)`

  Process the Source into a Templates object, which is a
  a compiled representation of the source.

  `abstract Transformer`

  `newTransformer()`

  Create a new `Transformer` that performs a copy
  of the `Source` to the `Result`,
  i.e.

  `abstract Transformer`

  `newTransformer(Source source)`

  Process the `Source` into a `Transformer`
  `Object`.

  `abstract void`

  `setAttribute(String name,
  Object value)`

  Allows the user to set specific attributes on the underlying
  implementation.

  `abstract void`

  `setErrorListener(ErrorListener listener)`

  Set the error event listener for the TransformerFactory, which
  is used for the processing of transformation instructions,
  and not for the transformation itself.

  `abstract void`

  `setFeature(String name,
  boolean value)`

  Set a feature for this `TransformerFactory` and `Transformer`s
  or `Template`s created by this factory.

  `abstract void`

  `setURIResolver(URIResolver resolver)`

  Set an object that is used by default during the transformation
  to resolve URIs used in document(), xsl:import, or xsl:include.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TransformerFactory

    protected TransformerFactory()

    Default constructor is protected on purpose.
* ## Method Details

  + ### newDefaultInstance

    public static [TransformerFactory](TransformerFactory.md "class in javax.xml.transform") newDefaultInstance()

    Creates a new instance of the `TransformerFactory` builtin
    system-default implementation.

    Returns:
    :   A new instance of the `TransformerFactory` builtin
        system-default implementation.

    Since:
    :   9
  + ### newInstance

    public static [TransformerFactory](TransformerFactory.md "class in javax.xml.transform") newInstance()
    throws [TransformerFactoryConfigurationError](TransformerFactoryConfigurationError.md "class in javax.xml.transform")

    Obtains a new instance of a `TransformerFactory`. This method uses the
    [JAXP Lookup Mechanism](../../../module-summary.md#LookupMechanism)
    to determine the `TransformerFactory` implementation class to load.

    Once an application has obtained a reference to a
    `TransformerFactory`, it can use the factory to configure
    and obtain transformer instances.

    Returns:
    :   new TransformerFactory instance, never null.

    Throws:
    :   `TransformerFactoryConfigurationError` - Thrown in case of [service configuration error](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util") or if
        the implementation is not available or cannot be instantiated.
  + ### newInstance

    public static [TransformerFactory](TransformerFactory.md "class in javax.xml.transform") newInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") factoryClassName,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)
    throws [TransformerFactoryConfigurationError](TransformerFactoryConfigurationError.md "class in javax.xml.transform")

    Obtain a new instance of a `TransformerFactory` from factory class name.
    This function is useful when there are multiple providers in the classpath.
    It gives more control to the application as it can specify which provider
    should be loaded.

    Once an application has obtained a reference to a
    `TransformerFactory` it can use the factory to configure
    and obtain transformer instances.

    #### Tip for Trouble-shooting

    Setting the `jaxp.debug` system property will cause
    this method to print a lot of debug messages
    to `System.err` about what it is doing and where it is looking at.

    If you have problems try:

    ```
     java -Djaxp.debug=1 YourProgram ....
    ```

    Parameters:
    :   `factoryClassName` - fully qualified factory class name that provides implementation of `javax.xml.transform.TransformerFactory`.
    :   `classLoader` - `ClassLoader` used to load the factory class. If `null`
        current `Thread`'s context classLoader is used to load the factory class.

    Returns:
    :   new TransformerFactory instance, never null.

    Throws:
    :   `TransformerFactoryConfigurationError` - if `factoryClassName` is `null`, or
        the factory class cannot be loaded, instantiated.

    Since:
    :   1.6

    See Also:
    :   - [`newInstance()`](#newInstance())
  + ### newTransformer

    public abstract [Transformer](Transformer.md "class in javax.xml.transform") newTransformer([Source](Source.md "interface in javax.xml.transform") source)
    throws [TransformerConfigurationException](TransformerConfigurationException.md "class in javax.xml.transform")

    Process the `Source` into a `Transformer`
    `Object`. The `Source` is an XSLT document that
    conforms to [XSL Transformations (XSLT) Version 1.0](http://www.w3.org/TR/xslt). Care must
    be taken not to use this `Transformer` in multiple
    `Thread`s running concurrently.
    Different `TransformerFactories` can be used concurrently by
    different `Thread`s.

    Parameters:
    :   `source` - `Source`  of XSLT document used to create
        `Transformer`.
        Examples of XML `Source`s include
        [`DOMSource`](dom/DOMSource.md "class in javax.xml.transform.dom"),
        [`SAXSource`](sax/SAXSource.md "class in javax.xml.transform.sax"), and
        [`StreamSource`](stream/StreamSource.md "class in javax.xml.transform.stream").

    Returns:
    :   A `Transformer` object that may be used to perform
        a transformation in a single `Thread`, never
        `null`.

    Throws:
    :   `TransformerConfigurationException` - Thrown if there are errors when
        parsing the `Source` or it is not possible to create a
        `Transformer` instance.

    See Also:
    :   - [XSL Transformations (XSLT) Version 1.0](http://www.w3.org/TR/xslt)
  + ### newTransformer

    public abstract [Transformer](Transformer.md "class in javax.xml.transform") newTransformer()
    throws [TransformerConfigurationException](TransformerConfigurationException.md "class in javax.xml.transform")

    Create a new `Transformer` that performs a copy
    of the `Source` to the `Result`,
    i.e. the "*identity transform*".

    Returns:
    :   A Transformer object that may be used to perform a transformation
        in a single thread, never null.

    Throws:
    :   `TransformerConfigurationException` - When it is not
        possible to create a `Transformer` instance.
  + ### newTemplates

    public abstract [Templates](Templates.md "interface in javax.xml.transform") newTemplates([Source](Source.md "interface in javax.xml.transform") source)
    throws [TransformerConfigurationException](TransformerConfigurationException.md "class in javax.xml.transform")

    Process the Source into a Templates object, which is a
    a compiled representation of the source. This Templates object
    may then be used concurrently across multiple threads. Creating
    a Templates object allows the TransformerFactory to do detailed
    performance optimization of transformation instructions, without
    penalizing runtime transformation.

    Parameters:
    :   `source` - An object that holds a URL, input stream, etc.

    Returns:
    :   A Templates object capable of being used for transformation
        purposes, never `null`.

    Throws:
    :   `TransformerConfigurationException` - When parsing to
        construct the Templates object fails.
  + ### getAssociatedStylesheet

    public abstract [Source](Source.md "interface in javax.xml.transform") getAssociatedStylesheet([Source](Source.md "interface in javax.xml.transform") source,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") media,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") title,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") charset)
    throws [TransformerConfigurationException](TransformerConfigurationException.md "class in javax.xml.transform")

    Get the stylesheet specification(s) associated with the
    XML `Source` document via the
    [xml-stylesheet processing instruction](http://www.w3.org/TR/xml-stylesheet/) that match the given criteria.
    Note that it is possible to return several stylesheets, in which case
    they are applied as if they were a list of imports or cascades in a
    single stylesheet.

    Parameters:
    :   `source` - The XML source document.
    :   `media` - The media attribute to be matched. May be null, in which
        case the preferred templates will be used (i.e. alternate = no).
    :   `title` - The value of the title attribute to match. May be null.
    :   `charset` - The value of the charset attribute to match. May be null.

    Returns:
    :   A `Source` `Object` suitable for passing
        to the `TransformerFactory`.

    Throws:
    :   `TransformerConfigurationException` - An `Exception`
        is thrown if an error occurings during parsing of the
        `source`.

    See Also:
    :   - [Associating Style Sheets with XML documents Version 1.0](http://www.w3.org/TR/xml-stylesheet/)
  + ### setURIResolver

    public abstract void setURIResolver([URIResolver](URIResolver.md "interface in javax.xml.transform") resolver)

    Set an object that is used by default during the transformation
    to resolve URIs used in document(), xsl:import, or xsl:include.

    Parameters:
    :   `resolver` - An object that implements the URIResolver interface,
        or null.
  + ### getURIResolver

    public abstract [URIResolver](URIResolver.md "interface in javax.xml.transform") getURIResolver()

    Get the object that is used by default during the transformation
    to resolve URIs used in document(), xsl:import, or xsl:include.

    Returns:
    :   The URIResolver that was set with setURIResolver.
  + ### setFeature

    public abstract void setFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean value)
    throws [TransformerConfigurationException](TransformerConfigurationException.md "class in javax.xml.transform")

    Set a feature for this `TransformerFactory` and `Transformer`s
    or `Template`s created by this factory.

    Feature names are fully qualified [`URI`](../../../../java.base/java/net/URI.md "class in java.net")s.
    Implementations may define their own features.
    An [`TransformerConfigurationException`](TransformerConfigurationException.md "class in javax.xml.transform") is thrown if this `TransformerFactory` or the
    `Transformer`s or `Template`s it creates cannot support the feature.
    It is possible for an `TransformerFactory` to expose a feature value but be unable to change its state.

    All implementations are required to support the [`XMLConstants.FEATURE_SECURE_PROCESSING`](../XMLConstants.md#FEATURE_SECURE_PROCESSING) feature.
    When the feature is:
    - `true`: the implementation will limit XML processing to conform to implementation limits
      and behave in a secure fashion as defined by the implementation.
      Examples include resolving user defined style sheets and functions.
      If XML processing is limited for security reasons, it will be reported via a call to the registered
      [`ErrorListener.fatalError(TransformerException exception)`](ErrorListener.md#fatalError(javax.xml.transform.TransformerException)).
      See [`setErrorListener(ErrorListener listener)`](#setErrorListener(javax.xml.transform.ErrorListener)).
    - `false`: the implementation will processing XML according to the XML specifications without
      regard to possible implementation limits.

    Parameters:
    :   `name` - Feature name.
    :   `value` - Is feature state `true` or `false`.

    Throws:
    :   `TransformerConfigurationException` - if this `TransformerFactory`
        or the `Transformer`s or `Template`s it creates cannot support this feature.
    :   `NullPointerException` - If the `name` parameter is null.
  + ### getFeature

    public abstract boolean getFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Look up the value of a feature.

    Feature names are fully qualified [`URI`](../../../../java.base/java/net/URI.md "class in java.net")s.
    Implementations may define their own features.
    `false` is returned if this `TransformerFactory` or the
    `Transformer`s or `Template`s it creates cannot support the feature.
    It is possible for an `TransformerFactory` to expose a feature value but be unable to change its state.

    Parameters:
    :   `name` - Feature name.

    Returns:
    :   The current state of the feature, `true` or `false`.

    Throws:
    :   `NullPointerException` - If the `name` parameter is null.
  + ### setAttribute

    public abstract void setAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Allows the user to set specific attributes on the underlying
    implementation. An attribute in this context is defined to
    be an option that the implementation provides.
    An `IllegalArgumentException` is thrown if the underlying
    implementation doesn't recognize the attribute.

    All implementations that implement JAXP 1.5 or newer are required to
    support the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD) and
    [`XMLConstants.ACCESS_EXTERNAL_STYLESHEET`](../XMLConstants.md#ACCESS_EXTERNAL_STYLESHEET) properties.
    - Access to external DTDs in the source file is restricted to the protocols
      specified by the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD) property.
      If access is denied during transformation due to the restriction of this property,
      [`TransformerException`](TransformerException.md "class in javax.xml.transform") will be thrown by
      [`Transformer.transform(Source, Result)`](Transformer.md#transform(javax.xml.transform.Source,javax.xml.transform.Result)).

      Access to external DTDs in the stylesheet is restricted to the protocols
      specified by the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD) property.
      If access is denied during the creation of a new transformer due to the
      restriction of this property,
      [`TransformerConfigurationException`](TransformerConfigurationException.md "class in javax.xml.transform") will be thrown
      by the [`newTransformer(Source)`](#newTransformer(javax.xml.transform.Source)) method.

      Access to external reference set by the stylesheet processing instruction,
      Import and Include element is restricted to the protocols specified by the
      [`XMLConstants.ACCESS_EXTERNAL_STYLESHEET`](../XMLConstants.md#ACCESS_EXTERNAL_STYLESHEET) property.
      If access is denied during the creation of a new transformer due to the
      restriction of this property,
      [`TransformerConfigurationException`](TransformerConfigurationException.md "class in javax.xml.transform") will be thrown
      by the [`newTransformer(Source)`](#newTransformer(javax.xml.transform.Source)) method.

      Access to external document through XSLT document function is restricted
      to the protocols specified by the property. If access is denied during
      the transformation due to the restriction of this property,
      [`TransformerException`](TransformerException.md "class in javax.xml.transform") will be thrown by the
      [`Transformer.transform(Source, Result)`](Transformer.md#transform(javax.xml.transform.Source,javax.xml.transform.Result)) method.

    Parameters:
    :   `name` - The name of the attribute.
    :   `value` - The value of the attribute.

    Throws:
    :   `IllegalArgumentException` - When implementation does not
        recognize the attribute.
  + ### getAttribute

    public abstract [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Allows the user to retrieve specific attributes on the underlying
    implementation.
    An `IllegalArgumentException` is thrown if the underlying
    implementation doesn't recognize the attribute.

    Parameters:
    :   `name` - The name of the attribute.

    Returns:
    :   value The value of the attribute.

    Throws:
    :   `IllegalArgumentException` - When implementation does not
        recognize the attribute.
  + ### setErrorListener

    public abstract void setErrorListener([ErrorListener](ErrorListener.md "interface in javax.xml.transform") listener)

    Set the error event listener for the TransformerFactory, which
    is used for the processing of transformation instructions,
    and not for the transformation itself.
    An `IllegalArgumentException` is thrown if the
    `ErrorListener` listener is `null`.

    Parameters:
    :   `listener` - The new error listener.

    Throws:
    :   `IllegalArgumentException` - When `listener` is
        `null`
  + ### getErrorListener

    public abstract [ErrorListener](ErrorListener.md "interface in javax.xml.transform") getErrorListener()

    Get the error event handler for the TransformerFactory.

    Returns:
    :   The current error handler, which should never be null.