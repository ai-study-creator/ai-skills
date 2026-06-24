Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Class XPathFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.xpath.XPathFactory

---

public abstract class XPathFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

An `XPathFactory` instance can be used to create
[`XPath`](XPath.md "interface in javax.xml.xpath") objects.

See [`newInstance(String uri)`](#newInstance(java.lang.String)) for lookup mechanism.

The [`XPathFactory`](XPathFactory.md "class in javax.xml.xpath") class is not thread-safe. In other words,
it is the application's responsibility to ensure that at most
one thread is using a [`XPathFactory`](XPathFactory.md "class in javax.xml.xpath") object at any
given moment. Implementations are encouraged to mark methods
as `synchronized` to protect themselves from broken clients.

[`XPathFactory`](XPathFactory.md "class in javax.xml.xpath") is not re-entrant. While one of the
`newInstance` methods is being invoked, applications
may not attempt to recursively invoke a `newInstance` method,
even from the same thread.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `DEFAULT_OBJECT_MODEL_URI`

  Default Object Model URI.

  `static final String`

  `DEFAULT_PROPERTY_NAME`

  The default property name according to the JAXP spec.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `XPathFactory()`

  Protected constructor as [`newInstance()`](#newInstance()) or [`newInstance(String uri)`](#newInstance(java.lang.String))
  or [`newInstance(String uri, String factoryClassName, ClassLoader classLoader)`](#newInstance(java.lang.String,java.lang.String,java.lang.ClassLoader))
  should be used to create a new instance of an `XPathFactory`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `getFeature(String name)`

  Get the state of the named feature.

  `String`

  `getProperty(String name)`

  Returns the value of the specified property.

  `abstract boolean`

  `isObjectModelSupported(String objectModel)`

  Is specified object model supported by this `XPathFactory`?

  `static XPathFactory`

  `newDefaultInstance()`

  Creates a new instance of the `XPathFactory` builtin
  system-default implementation.

  `static XPathFactory`

  `newInstance()`

  Get a new `XPathFactory` instance using the default object model,
  [`DEFAULT_OBJECT_MODEL_URI`](#DEFAULT_OBJECT_MODEL_URI),
  the W3C DOM.

  `static XPathFactory`

  `newInstance(String uri)`

  Obtains a new `XPathFactory` instance using the specified object model.

  `static XPathFactory`

  `newInstance(String uri,
  String factoryClassName,
  ClassLoader classLoader)`

  Obtain a new instance of a `XPathFactory` from a factory class name.

  `abstract XPath`

  `newXPath()`

  Return a new `XPath` using the underlying object
  model determined when the `XPathFactory` was instantiated.

  `abstract void`

  `setFeature(String name,
  boolean value)`

  Sets a feature for this `XPathFactory`.

  `void`

  `setProperty(String name,
  String value)`

  Sets a property for this `XPathFactory`.

  `abstract void`

  `setXPathFunctionResolver(XPathFunctionResolver resolver)`

  Establish a default function resolver.

  `abstract void`

  `setXPathVariableResolver(XPathVariableResolver resolver)`

  Establish a default variable resolver.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_PROPERTY\_NAME

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") DEFAULT\_PROPERTY\_NAME

    The default property name according to the JAXP spec.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.xpath.XPathFactory.DEFAULT_PROPERTY_NAME)
  + ### DEFAULT\_OBJECT\_MODEL\_URI

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") DEFAULT\_OBJECT\_MODEL\_URI

    Default Object Model URI.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.xpath.XPathFactory.DEFAULT_OBJECT_MODEL_URI)
* ## Constructor Details

  + ### XPathFactory

    protected XPathFactory()

    Protected constructor as [`newInstance()`](#newInstance()) or [`newInstance(String uri)`](#newInstance(java.lang.String))
    or [`newInstance(String uri, String factoryClassName, ClassLoader classLoader)`](#newInstance(java.lang.String,java.lang.String,java.lang.ClassLoader))
    should be used to create a new instance of an `XPathFactory`.
* ## Method Details

  + ### newDefaultInstance

    public static [XPathFactory](XPathFactory.md "class in javax.xml.xpath") newDefaultInstance()

    Creates a new instance of the `XPathFactory` builtin
    system-default implementation.

    Returns:
    :   A new instance of the `XPathFactory` builtin
        system-default implementation.

    Since:
    :   9
  + ### newInstance

    public static [XPathFactory](XPathFactory.md "class in javax.xml.xpath") newInstance()

    Get a new `XPathFactory` instance using the default object model,
    [`DEFAULT_OBJECT_MODEL_URI`](#DEFAULT_OBJECT_MODEL_URI),
    the W3C DOM.

    This method is functionally equivalent to:

    ```
       newInstance(DEFAULT_OBJECT_MODEL_URI)
    ```

    Since the implementation for the W3C DOM is always available, this method will never fail.

    Returns:
    :   Instance of an `XPathFactory`.

    Throws:
    :   `RuntimeException` - When there is a failure in creating an
        `XPathFactory` for the default object model.
  + ### newInstance

    public static [XPathFactory](XPathFactory.md "class in javax.xml.xpath") newInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") uri)
    throws [XPathFactoryConfigurationException](XPathFactoryConfigurationException.md "class in javax.xml.xpath")

    Obtains a new `XPathFactory` instance using the specified object model.
    This method uses the
    [JAXP Lookup Mechanism](../../../module-summary.md#LookupMechanism)
    to determine and load the `XPathFactory` implementation that supports
    the specified object model.

    Tip for Trouble-shooting:

    See [`Properties.load(java.io.InputStream)`](../../../../java.base/java/util/Properties.md#load(java.io.InputStream)) for exactly how a property file is parsed.
    In particular, colons ':' need to be escaped in a property file, so make sure the URIs are properly escaped in it.
    For example:

    ```
       http\://java.sun.com/jaxp/xpath/dom=org.acme.DomXPathFactory
    ```

    Parameters:
    :   `uri` - Identifies the underlying object model.
        The specification only defines the URI [`DEFAULT_OBJECT_MODEL_URI`](#DEFAULT_OBJECT_MODEL_URI),
        `http://java.sun.com/jaxp/xpath/dom` for the W3C DOM,
        the org.w3c.dom package, and implementations are free to introduce other URIs for other object models.

    Returns:
    :   Instance of an `XPathFactory`.

    Throws:
    :   `XPathFactoryConfigurationException` - If the specified object model
        is unavailable, or if there is a configuration error.
    :   `NullPointerException` - If `uri` is `null`.
    :   `IllegalArgumentException` - If `uri` is `null`
        or `uri.length() == 0`.
  + ### newInstance

    public static [XPathFactory](XPathFactory.md "class in javax.xml.xpath") newInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") factoryClassName,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)
    throws [XPathFactoryConfigurationException](XPathFactoryConfigurationException.md "class in javax.xml.xpath")

    Obtain a new instance of a `XPathFactory` from a factory class name. `XPathFactory`
    is returned if specified factory class supports the specified object model.
    This function is useful when there are multiple providers in the classpath.
    It gives more control to the application as it can specify which provider
    should be loaded.

    #### Tip for Trouble-shooting

    Setting the `jaxp.debug` system property will cause
    this method to print a lot of debug messages
    to `System.err` about what it is doing and where it is looking at.

    If you have problems try:

    ```
     java -Djaxp.debug=1 YourProgram ....
    ```

    Parameters:
    :   `uri` - Identifies the underlying object model. The specification only defines the URI
        [`DEFAULT_OBJECT_MODEL_URI`](#DEFAULT_OBJECT_MODEL_URI),`http://java.sun.com/jaxp/xpath/dom`
        for the W3C DOM, the org.w3c.dom package, and implementations are free to introduce
        other URIs for other object models.
    :   `factoryClassName` - fully qualified factory class name that provides implementation of `javax.xml.xpath.XPathFactory`.
    :   `classLoader` - `ClassLoader` used to load the factory class. If `null`
        current `Thread`'s context classLoader is used to load the factory class.

    Returns:
    :   New instance of a `XPathFactory`

    Throws:
    :   `XPathFactoryConfigurationException` - if `factoryClassName` is `null`, or
        the factory class cannot be loaded, instantiated
        or the factory class does not support the object model specified
        in the `uri` parameter.
    :   `NullPointerException` - If `uri` is `null`.
    :   `IllegalArgumentException` - If `uri` is `null`
        or `uri.length() == 0`.

    Since:
    :   1.6

    See Also:
    :   - [`newInstance()`](#newInstance())
        - [`newInstance(String uri)`](#newInstance(java.lang.String))
  + ### isObjectModelSupported

    public abstract boolean isObjectModelSupported([String](../../../../java.base/java/lang/String.md "class in java.lang") objectModel)

    Is specified object model supported by this `XPathFactory`?

    Parameters:
    :   `objectModel` - Specifies the object model which the returned `XPathFactory` will understand.

    Returns:
    :   `true` if `XPathFactory` supports `objectModel`, else `false`.

    Throws:
    :   `NullPointerException` - If `objectModel` is `null`.
    :   `IllegalArgumentException` - If `objectModel.length() == 0`.
  + ### setFeature

    public abstract void setFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean value)
    throws [XPathFactoryConfigurationException](XPathFactoryConfigurationException.md "class in javax.xml.xpath")

    Sets a feature for this `XPathFactory`. The feature applies to
    `XPath` objects that the `XPathFactory` creates. It has no
    impact on `XPath` objects that are already created.

    Feature names are fully qualified [`URI`](../../../../java.base/java/net/URI.md "class in java.net")s.
    Implementations may define their own features.
    An [`XPathFactoryConfigurationException`](XPathFactoryConfigurationException.md "class in javax.xml.xpath") is thrown if this
    `XPathFactory` or the `XPath`s
    it creates cannot support the feature.
    It is possible for an `XPathFactory` to expose a feature value
    but be unable to change its state.

    All implementations are required to support the [`XMLConstants.FEATURE_SECURE_PROCESSING`](../XMLConstants.md#FEATURE_SECURE_PROCESSING) feature.
    When the feature is `true`, any reference to an external function is an error.
    Under these conditions, the implementation must not call the [`XPathFunctionResolver`](XPathFunctionResolver.md "interface in javax.xml.xpath")
    and must throw an [`XPathFunctionException`](XPathFunctionException.md "class in javax.xml.xpath").

    Parameters:
    :   `name` - Feature name.
    :   `value` - Is feature state `true` or `false`.

    Throws:
    :   `XPathFactoryConfigurationException` - if this `XPathFactory` or the `XPath`s
        it creates cannot support this feature.
    :   `NullPointerException` - if `name` is `null`.
  + ### getFeature

    public abstract boolean getFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [XPathFactoryConfigurationException](XPathFactoryConfigurationException.md "class in javax.xml.xpath")

    Get the state of the named feature.

    Feature names are fully qualified [`URI`](../../../../java.base/java/net/URI.md "class in java.net")s.
    Implementations may define their own features.
    An [`XPathFactoryConfigurationException`](XPathFactoryConfigurationException.md "class in javax.xml.xpath") is thrown if this
    `XPathFactory` or the `XPath`s
    it creates cannot support the feature.
    It is possible for an `XPathFactory` to expose a feature value
    but be unable to change its state.

    Parameters:
    :   `name` - Feature name.

    Returns:
    :   State of the named feature.

    Throws:
    :   `XPathFactoryConfigurationException` - if this
        `XPathFactory` or the `XPath`s
        it creates cannot support this feature.
    :   `NullPointerException` - if `name` is `null`.
  + ### setXPathVariableResolver

    public abstract void setXPathVariableResolver([XPathVariableResolver](XPathVariableResolver.md "interface in javax.xml.xpath") resolver)

    Establish a default variable resolver.

    Any `XPath` objects constructed from this factory will use
    the specified resolver by default.

    A `NullPointerException` is thrown if `resolver`
    is `null`.

    Parameters:
    :   `resolver` - Variable resolver.

    Throws:
    :   `NullPointerException` - If `resolver` is
        `null`.
  + ### setXPathFunctionResolver

    public abstract void setXPathFunctionResolver([XPathFunctionResolver](XPathFunctionResolver.md "interface in javax.xml.xpath") resolver)

    Establish a default function resolver.

    Any `XPath` objects constructed from this factory will
    use the specified resolver by default.

    A `NullPointerException` is thrown if
    `resolver` is `null`.

    Parameters:
    :   `resolver` - XPath function resolver.

    Throws:
    :   `NullPointerException` - If `resolver` is
        `null`.
  + ### newXPath

    public abstract [XPath](XPath.md "interface in javax.xml.xpath") newXPath()

    Return a new `XPath` using the underlying object
    model determined when the `XPathFactory` was instantiated.

    Returns:
    :   New instance of an `XPath`.
  + ### setProperty

    public void setProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Sets a property for this `XPathFactory`. The property applies to
    `XPath` objects that the `XPathFactory` creates. It has no
    impact on `XPath` objects that are already created.

    A property can either be defined in this `XPathFactory`, or by the
    underlying implementation.

    Parameters:
    :   `name` - the property name
    :   `value` - the value for the property

    Throws:
    :   `IllegalArgumentException` - if the property name is not recognized,
        or the value can not be assigned
    :   `UnsupportedOperationException` - if the implementation does not
        support the method
    :   `NullPointerException` - if the `name` is `null`

    Since:
    :   18
  + ### getProperty

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the value of the specified property.

    Parameters:
    :   `name` - the property name

    Returns:
    :   the value of the property.

    Throws:
    :   `IllegalArgumentException` - if the property name is not recognized
    :   `UnsupportedOperationException` - if the implementation does not
        support the method
    :   `NullPointerException` - if the `name` is `null`

    Since:
    :   18