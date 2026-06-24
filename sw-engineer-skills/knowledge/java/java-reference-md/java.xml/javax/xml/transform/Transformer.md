Module [java.xml](../../../module-summary.md)

Package [javax.xml.transform](package-summary.md)

# Class Transformer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.transform.Transformer

---

public abstract class Transformer
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

An instance of this abstract class can transform a
source tree into a result tree.

An instance of this class can be obtained with the
[`TransformerFactory.newTransformer`](TransformerFactory.md#newTransformer(javax.xml.transform.Source))
method. This instance may then be used to process XML from a
variety of sources and write the transformation output to a
variety of sinks.

An object of this class may not be used in multiple threads
running concurrently. Different Transformers may be used
concurrently by different threads.

A `Transformer` may be used multiple times. Parameters and
output properties are preserved across transformations.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Transformer()`

  Default constructor is protected on purpose.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `clearParameters()`

  Clear all parameters set with setParameter.

  `abstract ErrorListener`

  `getErrorListener()`

  Get the error event handler in effect for the transformation.

  `abstract Properties`

  `getOutputProperties()`

  Get a copy of the output properties for the transformation.

  `abstract String`

  `getOutputProperty(String name)`

  Get an output property that is in effect for the transformer.

  `abstract Object`

  `getParameter(String name)`

  Get a parameter that was explicitly set with setParameter.

  `abstract URIResolver`

  `getURIResolver()`

  Get an object that will be used to resolve URIs used in
  document().

  `void`

  `reset()`

  Reset this `Transformer` to its original configuration.

  `abstract void`

  `setErrorListener(ErrorListener listener)`

  Set the error event listener in effect for the transformation.

  `abstract void`

  `setOutputProperties(Properties oformat)`

  Set the output properties for the transformation.

  `abstract void`

  `setOutputProperty(String name,
  String value)`

  Set an output property that will be in effect for the
  transformation.

  `abstract void`

  `setParameter(String name,
  Object value)`

  Add a parameter for the transformation.

  `abstract void`

  `setURIResolver(URIResolver resolver)`

  Set an object that will be used to resolve URIs used in
  document().

  `abstract void`

  `transform(Source xmlSource,
  Result outputTarget)`

  Transform the XML `Source` to a `Result`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Transformer

    protected Transformer()

    Default constructor is protected on purpose.
* ## Method Details

  + ### reset

    public void reset()

    Reset this `Transformer` to its original configuration.

    `Transformer` is reset to the same state as when it was created with
    [`TransformerFactory.newTransformer()`](TransformerFactory.md#newTransformer()),
    [`TransformerFactory.newTransformer(Source source)`](TransformerFactory.md#newTransformer(javax.xml.transform.Source)) or
    [`Templates.newTransformer()`](Templates.md#newTransformer()).
    `reset()` is designed to allow the reuse of existing `Transformer`s
    thus saving resources associated with the creation of new `Transformer`s.

    The reset `Transformer` is not guaranteed to have the same [`URIResolver`](URIResolver.md "interface in javax.xml.transform")
    or [`ErrorListener`](ErrorListener.md "interface in javax.xml.transform") `Object`s, e.g. [`Object.equals(Object obj)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)).
    It is guaranteed to have a functionally equal `URIResolver`
    and `ErrorListener`.

    Throws:
    :   `UnsupportedOperationException` - When implementation does not
        override this method.

    Since:
    :   1.5
  + ### transform

    public abstract void transform([Source](Source.md "interface in javax.xml.transform") xmlSource,
    [Result](Result.md "interface in javax.xml.transform") outputTarget)
    throws [TransformerException](TransformerException.md "class in javax.xml.transform")

    Transform the XML `Source` to a `Result`.
    Specific transformation behavior is determined by the settings of the
    `TransformerFactory` in effect when the
    `Transformer` was instantiated and any modifications made to
    the `Transformer` instance.

    An empty `Source` is represented as an empty document
    as constructed by [`DocumentBuilder.newDocument()`](../parsers/DocumentBuilder.md#newDocument()).
    The result of transforming an empty `Source` depends on
    the transformation behavior; it is not always an empty
    `Result`.

    Parameters:
    :   `xmlSource` - The XML input to transform.
    :   `outputTarget` - The `Result` of transforming the
        `xmlSource`.

    Throws:
    :   `TransformerException` - If an unrecoverable error occurs
        during the course of the transformation.
  + ### setParameter

    public abstract void setParameter([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Add a parameter for the transformation.

    Pass a qualified name as a two-part string, the namespace URI
    enclosed in curly braces ({}), followed by the local name. If the
    name has a null URL, the String only contain the local name. An
    application can safely check for a non-null URI by testing to see if the
    first character of the name is a '{' character.

    For example, if a URI and local name were obtained from an element
    defined with <xyz:foo
    xmlns:xyz="http://xyz.foo.com/yada/baz.html"/>,
    then the qualified name would be "{http://xyz.foo.com/yada/baz.html}foo".
    Note that no prefix is used.

    Parameters:
    :   `name` - The name of the parameter, which may begin with a
        namespace URI in curly braces ({}).
    :   `value` - The value object. This can be any valid Java object. It is
        up to the processor to provide the proper object conversion or to simply
        pass the object on for use in an extension.

    Throws:
    :   `NullPointerException` - If value is null.
  + ### getParameter

    public abstract [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getParameter([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Get a parameter that was explicitly set with setParameter.

    This method does not return a default parameter value, which
    cannot be determined until the node context is evaluated during
    the transformation process.

    Parameters:
    :   `name` - of `Object` to get

    Returns:
    :   A parameter that has been set with setParameter.
  + ### clearParameters

    public abstract void clearParameters()

    Clear all parameters set with setParameter.
  + ### setURIResolver

    public abstract void setURIResolver([URIResolver](URIResolver.md "interface in javax.xml.transform") resolver)

    Set an object that will be used to resolve URIs used in
    document().

    If the resolver argument is null, the URIResolver value will
    be cleared and the transformer will no longer have a resolver.

    Parameters:
    :   `resolver` - An object that implements the URIResolver interface,
        or null.
  + ### getURIResolver

    public abstract [URIResolver](URIResolver.md "interface in javax.xml.transform") getURIResolver()

    Get an object that will be used to resolve URIs used in
    document().

    Returns:
    :   An object that implements the URIResolver interface,
        or null.
  + ### setOutputProperties

    public abstract void setOutputProperties([Properties](../../../../java.base/java/util/Properties.md "class in java.util") oformat)

    Set the output properties for the transformation. These
    properties will override properties set in the Templates
    with xsl:output.

    If argument to this function is null, any properties
    previously set are removed, and the value will revert to the value
    defined in the templates object.

    Pass a qualified property key name as a two-part string, the namespace
    URI enclosed in curly braces ({}), followed by the local name. If the
    name has a null URL, the String only contain the local name. An
    application can safely check for a non-null URI by testing to see if the
    first character of the name is a '{' character.

    For example, if a URI and local name were obtained from an element
    defined with <xyz:foo
    xmlns:xyz="http://xyz.foo.com/yada/baz.html"/>,
    then the qualified name would be "{http://xyz.foo.com/yada/baz.html}foo".
    Note that no prefix is used.

    An `IllegalArgumentException` is thrown if any of the
    argument keys are not recognized and are not namespace qualified.

    Parameters:
    :   `oformat` - A set of output properties that will be
        used to override any of the same properties in affect
        for the transformation.

    Throws:
    :   `IllegalArgumentException` - When keys are not recognized and
        are not namespace qualified.

    See Also:
    :   - [`OutputKeys`](OutputKeys.md "class in javax.xml.transform")
        - [`Properties`](../../../../java.base/java/util/Properties.md "class in java.util")
  + ### getOutputProperties

    public abstract [Properties](../../../../java.base/java/util/Properties.md "class in java.util") getOutputProperties()

    Get a copy of the output properties for the transformation.

    The properties returned should contain properties set by the user,
    and properties set by the stylesheet, and these properties
    are "defaulted" by default properties specified by
    [section 16 of the
    XSL Transformations (XSLT) W3C Recommendation](http://www.w3.org/TR/xslt#output). The properties that
    were specifically set by the user or the stylesheet should be in the base
    Properties list, while the XSLT default properties that were not
    specifically set should be the default Properties list. Thus,
    getOutputProperties().getProperty(String key) will obtain any
    property in that was set by [`setOutputProperty(java.lang.String, java.lang.String)`](#setOutputProperty(java.lang.String,java.lang.String)),
    [`setOutputProperties(java.util.Properties)`](#setOutputProperties(java.util.Properties)), in the stylesheet, *or* the default
    properties, while
    getOutputProperties().get(String key) will only retrieve properties
    that were explicitly set by [`setOutputProperty(java.lang.String, java.lang.String)`](#setOutputProperty(java.lang.String,java.lang.String)),
    [`setOutputProperties(java.util.Properties)`](#setOutputProperties(java.util.Properties)), or in the stylesheet.

    Note that mutation of the Properties object returned will not
    effect the properties that the transformer contains.

    If any of the argument keys are not recognized and are not
    namespace qualified, the property will be ignored and not returned.
    In other words the behaviour is not orthogonal with
    [`setOutputProperties`](#setOutputProperties(java.util.Properties)).

    Returns:
    :   A copy of the set of output properties in effect for
        the next transformation.

    See Also:
    :   - [`OutputKeys`](OutputKeys.md "class in javax.xml.transform")
        - [`Properties`](../../../../java.base/java/util/Properties.md "class in java.util")
        - [XSL Transformations (XSLT) Version 1.0](http://www.w3.org/TR/xslt#output)
  + ### setOutputProperty

    public abstract void setOutputProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Set an output property that will be in effect for the
    transformation.

    Pass a qualified property name as a two-part string, the namespace URI
    enclosed in curly braces ({}), followed by the local name. If the
    name has a null URL, the String only contain the local name. An
    application can safely check for a non-null URI by testing to see if the
    first character of the name is a '{' character.

    For example, if a URI and local name were obtained from an element
    defined with <xyz:foo
    xmlns:xyz="http://xyz.foo.com/yada/baz.html"/>,
    then the qualified name would be "{http://xyz.foo.com/yada/baz.html}foo".
    Note that no prefix is used.

    The Properties object that was passed to [`setOutputProperties(java.util.Properties)`](#setOutputProperties(java.util.Properties))
    won't be effected by calling this method.

    Parameters:
    :   `name` - A non-null String that specifies an output
        property name, which may be namespace qualified.
    :   `value` - The non-null string value of the output property.

    Throws:
    :   `IllegalArgumentException` - If the property is not supported, and is
        not qualified with a namespace.

    See Also:
    :   - [`OutputKeys`](OutputKeys.md "class in javax.xml.transform")
  + ### getOutputProperty

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getOutputProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Get an output property that is in effect for the transformer.

    If a property has been set using [`setOutputProperty(java.lang.String, java.lang.String)`](#setOutputProperty(java.lang.String,java.lang.String)),
    that value will be returned. Otherwise, if a property is explicitly
    specified in the stylesheet, that value will be returned. If
    the value of the property has been defaulted, that is, if no
    value has been set explicitly either with [`setOutputProperty(java.lang.String, java.lang.String)`](#setOutputProperty(java.lang.String,java.lang.String)) or
    in the stylesheet, the result may vary depending on
    implementation and input stylesheet.

    Parameters:
    :   `name` - A non-null String that specifies an output
        property name, which may be namespace qualified.

    Returns:
    :   The string value of the output property, or null
        if no property was found.

    Throws:
    :   `IllegalArgumentException` - If the property is not supported.

    See Also:
    :   - [`OutputKeys`](OutputKeys.md "class in javax.xml.transform")
  + ### setErrorListener

    public abstract void setErrorListener([ErrorListener](ErrorListener.md "interface in javax.xml.transform") listener)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Set the error event listener in effect for the transformation.

    Parameters:
    :   `listener` - The new error listener.

    Throws:
    :   `IllegalArgumentException` - if listener is null.
  + ### getErrorListener

    public abstract [ErrorListener](ErrorListener.md "interface in javax.xml.transform") getErrorListener()

    Get the error event handler in effect for the transformation.
    Implementations must provide a default error listener.

    Returns:
    :   The current error handler, which should never be null.