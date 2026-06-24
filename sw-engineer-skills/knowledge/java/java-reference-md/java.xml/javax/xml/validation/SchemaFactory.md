Module [java.xml](../../../module-summary.md)

Package [javax.xml.validation](package-summary.md)

# Class SchemaFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.validation.SchemaFactory

---

public abstract class SchemaFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Factory that creates [`Schema`](Schema.md "class in javax.xml.validation") objects. Entry-point to
the validation API.

[`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") is a schema compiler. It reads external
representations of schemas and prepares them for validation.

The [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") class is not thread-safe. In other words,
it is the application's responsibility to ensure that at most
one thread is using a [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") object at any
given moment. Implementations are encouraged to mark methods
as `synchronized` to protect themselves from broken clients.

[`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") is not re-entrant. While one of the
`newSchema` methods is being invoked, applications
may not attempt to recursively invoke the `newSchema` method,
even from the same thread.

## Schema Language

This spec uses a namespace URI to designate a schema language.
The following table shows the values defined by this specification.

To be compliant with the spec, the implementation
is only required to support W3C XML Schema 1.0. However,
if it chooses to support other schema languages listed here,
it must conform to the relevant behaviors described in this spec.

Schema languages not listed here are expected to
introduce their own URIs to represent themselves.
The [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") class is capable of locating other
implementations for other schema languages at run-time.

Note that because the XML DTD is strongly tied to the parsing process
and has a significant effect on the parsing process, it is impossible
to define the DTD validation as a process independent from parsing.
For this reason, this specification does not define the semantics for
the XML DTD. This doesn't prohibit implementors from implementing it
in a way they see fit, but *users are warned that any DTD
validation implemented on this interface necessarily deviate from
the XML DTD semantics as defined in the XML 1.0*.

URIs for Supported Schema languages

| value | language |
| --- | --- |
| [`XMLConstants.W3C_XML_SCHEMA_NS_URI`](../XMLConstants.md#W3C_XML_SCHEMA_NS_URI) ("`http://www.w3.org/2001/XMLSchema`") | [W3C XML Schema 1.0](http://www.w3.org/TR/xmlschema-1) |
| [`XMLConstants.RELAXNG_NS_URI`](../XMLConstants.md#RELAXNG_NS_URI) ("`http://relaxng.org/ns/structure/1.0`") | [RELAX NG 1.0](http://www.relaxng.org/) |

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SchemaFactory()`

  Constructor for derived classes.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract ErrorHandler`

  `getErrorHandler()`

  Gets the current [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") set to this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation").

  `boolean`

  `getFeature(String name)`

  Look up the value of a feature flag.

  `Object`

  `getProperty(String name)`

  Look up the value of a property.

  `abstract LSResourceResolver`

  `getResourceResolver()`

  Gets the current [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") set to this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation").

  `abstract boolean`

  `isSchemaLanguageSupported(String schemaLanguage)`

  Is specified schema supported by this `SchemaFactory`?

  `static SchemaFactory`

  `newDefaultInstance()`

  Creates a new instance of the `SchemaFactory` builtin
  system-default implementation.

  `static SchemaFactory`

  `newInstance(String schemaLanguage)`

  Obtains a new instance of a `SchemaFactory` that supports
  the specified schema language.

  `static SchemaFactory`

  `newInstance(String schemaLanguage,
  String factoryClassName,
  ClassLoader classLoader)`

  Obtain a new instance of a `SchemaFactory` from class name.

  `abstract Schema`

  `newSchema()`

  Creates a special [`Schema`](Schema.md "class in javax.xml.validation") object.

  `Schema`

  `newSchema(File schema)`

  Parses the specified `File` as a schema and returns it as a `Schema`.

  `Schema`

  `newSchema(URL schema)`

  Parses the specified `URL` as a schema and returns it as a `Schema`.

  `Schema`

  `newSchema(Source schema)`

  Parses the specified source as a schema and returns it as a schema.

  `abstract Schema`

  `newSchema(Source[] schemas)`

  Parses the specified source(s) as a schema and returns it as a schema.

  `abstract void`

  `setErrorHandler(ErrorHandler errorHandler)`

  Sets the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") to receive errors encountered
  during the `newSchema` method invocation.

  `void`

  `setFeature(String name,
  boolean value)`

  Set a feature for this `SchemaFactory`,
  [`Schema`](Schema.md "class in javax.xml.validation")s created by this factory, and by extension,
  [`Validator`](Validator.md "class in javax.xml.validation")s and [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation")s created by
  those [`Schema`](Schema.md "class in javax.xml.validation")s.

  `void`

  `setProperty(String name,
  Object object)`

  Set the value of a property.

  `abstract void`

  `setResourceResolver(LSResourceResolver resourceResolver)`

  Sets the [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") to customize
  resource resolution when parsing schemas.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SchemaFactory

    protected SchemaFactory()

    Constructor for derived classes.

    The constructor does nothing.

    Derived classes must create [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") objects that have
    `null` [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") and
    `null` [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls").
* ## Method Details

  + ### newDefaultInstance

    public static [SchemaFactory](SchemaFactory.md "class in javax.xml.validation") newDefaultInstance()

    Creates a new instance of the `SchemaFactory` builtin
    system-default implementation.

    Returns:
    :   A new instance of the `SchemaFactory` builtin
        system-default implementation.

    Since:
    :   9
  + ### newInstance

    public static [SchemaFactory](SchemaFactory.md "class in javax.xml.validation") newInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") schemaLanguage)

    Obtains a new instance of a `SchemaFactory` that supports
    the specified schema language. This method uses the
    [JAXP Lookup Mechanism](../../../module-summary.md#LookupMechanism)
    to determine and load the `SchemaFactory` implementation that supports
    the specified schema language.

    #### Tip for Trouble-shooting:

    See [`Properties.load(java.io.InputStream)`](../../../../java.base/java/util/Properties.md#load(java.io.InputStream)) for
    exactly how a property file is parsed. In particular, colons ':'
    need to be escaped in a property file, so make sure schema language
    URIs are properly escaped in it. For example:

    ```
     http\://www.w3.org/2001/XMLSchema=org.acme.foo.XSSchemaFactory
    ```

    Parameters:
    :   `schemaLanguage` - Specifies the schema language which the returned
        SchemaFactory will understand. See
        [the list of available
        schema languages](#schemaLanguage) for the possible values.

    Returns:
    :   New instance of a `SchemaFactory`

    Throws:
    :   `IllegalArgumentException` - If no implementation of the schema language is available.
    :   `NullPointerException` - If the `schemaLanguage` parameter is null.
    :   `SchemaFactoryConfigurationError` - If a configuration error is encountered.

    See Also:
    :   - [`newInstance(String schemaLanguage, String factoryClassName, ClassLoader classLoader)`](#newInstance(java.lang.String,java.lang.String,java.lang.ClassLoader))
  + ### newInstance

    public static [SchemaFactory](SchemaFactory.md "class in javax.xml.validation") newInstance([String](../../../../java.base/java/lang/String.md "class in java.lang") schemaLanguage,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") factoryClassName,
    [ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") classLoader)

    Obtain a new instance of a `SchemaFactory` from class name. `SchemaFactory`
    is returned if specified factory class name supports the specified schema language.
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
    :   `schemaLanguage` - Specifies the schema language which the returned
        `SchemaFactory` will understand. See
        [the list of available
        schema languages](#schemaLanguage) for the possible values.
    :   `factoryClassName` - fully qualified factory class name that provides implementation of `javax.xml.validation.SchemaFactory`.
    :   `classLoader` - `ClassLoader` used to load the factory class. If `null`
        current `Thread`'s context classLoader is used to load the factory class.

    Returns:
    :   New instance of a `SchemaFactory`

    Throws:
    :   `IllegalArgumentException` - if `factoryClassName` is `null`, or
        the factory class cannot be loaded, instantiated or doesn't
        support the schema language specified in `schemLanguage`
        parameter.
    :   `NullPointerException` - If the `schemaLanguage` parameter is null.

    Since:
    :   1.6

    See Also:
    :   - [`newInstance(String schemaLanguage)`](#newInstance(java.lang.String))
  + ### isSchemaLanguageSupported

    public abstract boolean isSchemaLanguageSupported([String](../../../../java.base/java/lang/String.md "class in java.lang") schemaLanguage)

    Is specified schema supported by this `SchemaFactory`?

    Parameters:
    :   `schemaLanguage` - Specifies the schema language which the returned `SchemaFactory` will understand.
        `schemaLanguage` must specify a [valid](#schemaLanguage) schema language.

    Returns:
    :   `true` if `SchemaFactory` supports `schemaLanguage`, else `false`.

    Throws:
    :   `NullPointerException` - If `schemaLanguage` is `null`.
    :   `IllegalArgumentException` - If `schemaLanguage.length() == 0`
        or `schemaLanguage` does not specify a [valid](#schemaLanguage) schema language.
  + ### getFeature

    public boolean getFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Look up the value of a feature flag.

    The feature name is any fully-qualified URI. It is
    possible for a [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") to recognize a feature name but
    temporarily be unable to return its value.

    Implementors are free (and encouraged) to invent their own features,
    using names built on their own URIs.

    Parameters:
    :   `name` - The feature name, which is a non-null fully-qualified URI.

    Returns:
    :   The current value of the feature (true or false).

    Throws:
    :   `SAXNotRecognizedException` - If the feature
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") recognizes the feature name but
        cannot determine its value at this time.
    :   `NullPointerException` - If `name` is `null`.

    See Also:
    :   - [`setFeature(String, boolean)`](#setFeature(java.lang.String,boolean))
  + ### setFeature

    public void setFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean value)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Set a feature for this `SchemaFactory`,
    [`Schema`](Schema.md "class in javax.xml.validation")s created by this factory, and by extension,
    [`Validator`](Validator.md "class in javax.xml.validation")s and [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation")s created by
    those [`Schema`](Schema.md "class in javax.xml.validation")s.

    Implementors and developers should pay particular attention
    to how the special [`Schema`](Schema.md "class in javax.xml.validation") object returned by [`newSchema()`](#newSchema()) is processed. In some cases, for example, when the
    `SchemaFactory` and the class actually loading the
    schema come from different implementations, it may not be possible
    for `SchemaFactory` features to be inherited automatically.
    Developers should
    make sure that features, such as secure processing, are explicitly
    set in both places.

    The feature name is any fully-qualified URI. It is
    possible for a [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") to expose a feature value but
    to be unable to change the current value.

    All implementations are required to support the [`XMLConstants.FEATURE_SECURE_PROCESSING`](../XMLConstants.md#FEATURE_SECURE_PROCESSING) feature.
    When the feature is:
    - `true`: the implementation will limit XML processing to conform to implementation limits.
      Examples include entity expansion limits and XML Schema constructs that would consume large amounts of resources.
      If XML processing is limited for security reasons, it will be reported via a call to the registered
      [`ErrorHandler.fatalError(SAXParseException exception)`](../../../org/xml/sax/ErrorHandler.md#fatalError(org.xml.sax.SAXParseException)).
      See [`setErrorHandler(ErrorHandler errorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler)).
    - `false`: the implementation will processing XML according to the XML specifications without
      regard to possible implementation limits.

    Parameters:
    :   `name` - The feature name, which is a non-null fully-qualified URI.
    :   `value` - The requested value of the feature (true or false).

    Throws:
    :   `SAXNotRecognizedException` - If the feature
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") recognizes the feature name but
        cannot set the requested value.
    :   `NullPointerException` - If `name` is `null`.

    See Also:
    :   - [`getFeature(String)`](#getFeature(java.lang.String))
  + ### setProperty

    public void setProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") object)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Set the value of a property.

    The property name is any fully-qualified URI. It is
    possible for a [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") to recognize a property name but
    to be unable to change the current value.

    All implementations that implement JAXP 1.5 or newer are required to
    support the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD) and
    [`XMLConstants.ACCESS_EXTERNAL_SCHEMA`](../XMLConstants.md#ACCESS_EXTERNAL_SCHEMA) properties.
    - Access to external DTDs in Schema files is restricted to the protocols
      specified by the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD) property.
      If access is denied during the creation of new Schema due to the restriction
      of this property, [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") will be thrown by the
      [`newSchema(Source)`](#newSchema(javax.xml.transform.Source)) or [`newSchema(File)`](#newSchema(java.io.File))
      or [`newSchema(URL)`](#newSchema(java.net.URL)) or [`newSchema(Source[])`](#newSchema(javax.xml.transform.Source%5B%5D)) method.

      Access to external DTDs in xml source files is restricted to the protocols
      specified by the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD) property.
      If access is denied during validation due to the restriction
      of this property, [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") will be thrown by the
      [`Validator.validate(Source)`](Validator.md#validate(javax.xml.transform.Source)) or
      [`Validator.validate(Source, Result)`](Validator.md#validate(javax.xml.transform.Source,javax.xml.transform.Result)) method.

      Access to external reference set by the schemaLocation attribute is
      restricted to the protocols specified by the
      [`XMLConstants.ACCESS_EXTERNAL_SCHEMA`](../XMLConstants.md#ACCESS_EXTERNAL_SCHEMA) property.
      If access is denied during validation due to the restriction of this property,
      [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") will be thrown by the
      [`Validator.validate(Source)`](Validator.md#validate(javax.xml.transform.Source)) or
      [`Validator.validate(Source, Result)`](Validator.md#validate(javax.xml.transform.Source,javax.xml.transform.Result)) method.

      Access to external reference set by the Import
      and Include element is restricted to the protocols specified by the
      [`XMLConstants.ACCESS_EXTERNAL_SCHEMA`](../XMLConstants.md#ACCESS_EXTERNAL_SCHEMA) property.
      If access is denied during the creation of new Schema due to the restriction
      of this property, [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") will be thrown by the
      [`newSchema(Source)`](#newSchema(javax.xml.transform.Source)) or [`newSchema(File)`](#newSchema(java.io.File))
      or [`newSchema(URL)`](#newSchema(java.net.URL)) or [`newSchema(Source[])`](#newSchema(javax.xml.transform.Source%5B%5D)) method.

    Parameters:
    :   `name` - The property name, which is a non-null fully-qualified URI.
    :   `object` - The requested value for the property.

    Throws:
    :   `SAXNotRecognizedException` - If the property
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") recognizes the property name but
        cannot set the requested value.
    :   `NullPointerException` - If `name` is `null`.
  + ### getProperty

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Look up the value of a property.

    The property name is any fully-qualified URI. It is
    possible for a [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") to recognize a property name but
    temporarily be unable to return its value.

    [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation")s are not required to recognize any specific
    property names.

    Implementors are free (and encouraged) to invent their own properties,
    using names built on their own URIs.

    Parameters:
    :   `name` - The property name, which is a non-null fully-qualified URI.

    Returns:
    :   The current value of the property.

    Throws:
    :   `SAXNotRecognizedException` - If the property
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        XMLReader recognizes the property name but
        cannot determine its value at this time.
    :   `NullPointerException` - If `name` is `null`.

    See Also:
    :   - [`setProperty(String, Object)`](#setProperty(java.lang.String,java.lang.Object))
  + ### setErrorHandler

    public abstract void setErrorHandler([ErrorHandler](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") errorHandler)

    Sets the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") to receive errors encountered
    during the `newSchema` method invocation.

    Error handler can be used to customize the error handling process
    during schema parsing. When an [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") is set,
    errors found during the parsing of schemas will be first sent
    to the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax").

    The error handler can abort the parsing of a schema immediately
    by throwing [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") from the handler. Or for example
    it can print an error to the screen and try to continue the
    processing by returning normally from the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax")

    If any [`Throwable`](../../../../java.base/java/lang/Throwable.md "class in java.lang") (or instances of its derived classes)
    is thrown from an [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax"),
    the caller of the `newSchema` method will be thrown
    the same [`Throwable`](../../../../java.base/java/lang/Throwable.md "class in java.lang") object.

    [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") is not allowed to
    throw [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") without first reporting it to
    [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax").

    Applications can call this method even during a [`Schema`](Schema.md "class in javax.xml.validation")
    is being parsed.

    When the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") is null, the implementation will
    behave as if the following [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") is set:

    ```
     class DraconianErrorHandler implements ErrorHandler {
         public void fatalError( SAXParseException e ) throws SAXException {
             throw e;
         }
         public void error( SAXParseException e ) throws SAXException {
             throw e;
         }
         public void warning( SAXParseException e ) throws SAXException {
             // noop
         }
     }
    ```

    When a new [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") object is created, initially
    this field is set to null. This field will *NOT* be
    inherited to [`Schema`](Schema.md "class in javax.xml.validation")s, [`Validator`](Validator.md "class in javax.xml.validation")s, or
    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation")s that are created from this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation").

    Parameters:
    :   `errorHandler` - A new error handler to be set.
        This parameter can be `null`.
  + ### getErrorHandler

    public abstract [ErrorHandler](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") getErrorHandler()

    Gets the current [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") set to this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation").

    Returns:
    :   This method returns the object that was last set through
        the [`setErrorHandler(ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler)) method, or null
        if that method has never been called since this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation")
        has created.

    See Also:
    :   - [`setErrorHandler(ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### setResourceResolver

    public abstract void setResourceResolver([LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") resourceResolver)

    Sets the [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") to customize
    resource resolution when parsing schemas.

    [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") uses a [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls")
    when it needs to locate external resources while parsing schemas,
    although exactly what constitutes "locating external resources" is
    up to each schema language. For example, for W3C XML Schema,
    this includes files `<include>`d or `<import>`ed,
    and DTD referenced from schema files, etc.

    Applications can call this method even during a [`Schema`](Schema.md "class in javax.xml.validation")
    is being parsed.

    When the [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") is null, the implementation will
    behave as if the following [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") is set:

    ```
     class DumbDOMResourceResolver implements LSResourceResolver {
         public LSInput resolveResource(
             String publicId, String systemId, String baseURI) {

             return null; // always return null
         }
     }
    ```

    If a [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") throws a [`RuntimeException`](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
    (or instances of its derived classes),
    then the [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") will abort the parsing and
    the caller of the `newSchema` method will receive
    the same [`RuntimeException`](../../../../java.base/java/lang/RuntimeException.md "class in java.lang").

    When a new [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") object is created, initially
    this field is set to null. This field will *NOT* be
    inherited to [`Schema`](Schema.md "class in javax.xml.validation")s, [`Validator`](Validator.md "class in javax.xml.validation")s, or
    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation")s that are created from this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation").

    Parameters:
    :   `resourceResolver` - A new resource resolver to be set. This parameter can be null.
  + ### getResourceResolver

    public abstract [LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") getResourceResolver()

    Gets the current [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") set to this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation").

    Returns:
    :   This method returns the object that was last set through
        the [`setResourceResolver(LSResourceResolver)`](#setResourceResolver(org.w3c.dom.ls.LSResourceResolver)) method, or null
        if that method has never been called since this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation")
        has created.

    See Also:
    :   - [`setErrorHandler(ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### newSchema

    public [Schema](Schema.md "class in javax.xml.validation") newSchema([Source](../transform/Source.md "interface in javax.xml.transform") schema)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax")

    Parses the specified source as a schema and returns it as a schema.

    This is a convenience method for [`newSchema(Source[] schemas)`](#newSchema(javax.xml.transform.Source%5B%5D)).

    Parameters:
    :   `schema` - Source that represents a schema.

    Returns:
    :   New `Schema` from parsing `schema`.

    Throws:
    :   `SAXException` - If a SAX error occurs during parsing.
    :   `NullPointerException` - if `schema` is null.
  + ### newSchema

    public [Schema](Schema.md "class in javax.xml.validation") newSchema([File](../../../../java.base/java/io/File.md "class in java.io") schema)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax")

    Parses the specified `File` as a schema and returns it as a `Schema`.

    This is a convenience method for [`newSchema(Source schema)`](#newSchema(javax.xml.transform.Source)).

    Parameters:
    :   `schema` - File that represents a schema.

    Returns:
    :   New `Schema` from parsing `schema`.

    Throws:
    :   `SAXException` - If a SAX error occurs during parsing.
    :   `NullPointerException` - if `schema` is null.
  + ### newSchema

    public [Schema](Schema.md "class in javax.xml.validation") newSchema([URL](../../../../java.base/java/net/URL.md "class in java.net") schema)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax")

    Parses the specified `URL` as a schema and returns it as a `Schema`.

    This is a convenience method for [`newSchema(Source schema)`](#newSchema(javax.xml.transform.Source)).

    Parameters:
    :   `schema` - `URL` that represents a schema.

    Returns:
    :   New `Schema` from parsing `schema`.

    Throws:
    :   `SAXException` - If a SAX error occurs during parsing.
    :   `NullPointerException` - if `schema` is null.
  + ### newSchema

    public abstract [Schema](Schema.md "class in javax.xml.validation") newSchema([Source](../transform/Source.md "interface in javax.xml.transform")[] schemas)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax")

    Parses the specified source(s) as a schema and returns it as a schema.

    The callee will read all the [`Source`](../transform/Source.md "interface in javax.xml.transform")s and combine them into a
    single schema. The exact semantics of the combination depends on the schema
    language that this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") object is created for.

    When an [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") is set, the callee will report all the errors
    found in sources to the handler. If the handler throws an exception, it will
    abort the schema compilation and the same exception will be thrown from
    this method. Also, after an error is reported to a handler, the callee is allowed
    to abort the further processing by throwing it. If an error handler is not set,
    the callee will throw the first error it finds in the sources.

    #### W3C XML Schema 1.0

    The resulting schema contains components from the specified sources.
    The same result would be achieved if all these sources were
    imported, using appropriate values for schemaLocation and namespace,
    into a single schema document with a different targetNamespace
    and no components of its own, if the import elements were given
    in the same order as the sources. Section 4.2.3 of the XML Schema
    recommendation describes the options processors have in this
    regard. While a processor should be consistent in its treatment of
    JAXP schema sources and XML Schema imports, the behaviour between
    JAXP-compliant parsers may vary; in particular, parsers may choose
    to ignore all but the first `<import>` for a given namespace,
    regardless of information provided in schemaLocation.

    If the parsed set of schemas includes error(s) as
    specified in the section 5.1 of the XML Schema spec, then
    the error must be reported to the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax").

    #### RELAX NG

    For RELAX NG, this method must throw [`UnsupportedOperationException`](../../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang")
    if `schemas.length!=1`.

    Parameters:
    :   `schemas` - inputs to be parsed. [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") is required
        to recognize [`SAXSource`](../transform/sax/SAXSource.md "class in javax.xml.transform.sax"),
        [`StreamSource`](../transform/stream/StreamSource.md "class in javax.xml.transform.stream"),
        [`StAXSource`](../transform/stax/StAXSource.md "class in javax.xml.transform.stax"),
        and [`DOMSource`](../transform/dom/DOMSource.md "class in javax.xml.transform.dom").
        Input schemas must be XML documents or
        XML elements and must not be null. For backwards compatibility,
        the results of passing anything other than
        a document or element are implementation-dependent.
        Implementations must either recognize and process the input
        or thrown an IllegalArgumentException.

    Returns:
    :   Always return a non-null valid [`Schema`](Schema.md "class in javax.xml.validation") object.
        Note that when an error has been reported, there is no
        guarantee that the returned [`Schema`](Schema.md "class in javax.xml.validation") object is
        meaningful.

    Throws:
    :   `SAXException` - If an error is found during processing the specified inputs.
        When an [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") is set, errors are reported to
        there first. See [`setErrorHandler(ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler)).
    :   `NullPointerException` - If the `schemas` parameter itself is null or
        any item in the array is null.
    :   `IllegalArgumentException` - If any item in the array is not recognized by this method.
    :   `UnsupportedOperationException` - If the schema language doesn't support this operation.
  + ### newSchema

    public abstract [Schema](Schema.md "class in javax.xml.validation") newSchema()
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax")

    Creates a special [`Schema`](Schema.md "class in javax.xml.validation") object.

    The exact semantics of the returned [`Schema`](Schema.md "class in javax.xml.validation") object
    depend on the schema language for which this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation")
    is created.

    Also, implementations are allowed to use implementation-specific
    property/feature to alter the semantics of this method.

    Implementors and developers should pay particular attention
    to how the features set on this [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") are
    processed by this special [`Schema`](Schema.md "class in javax.xml.validation").
    In some cases, for example, when the
    [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") and the class actually loading the
    schema come from different implementations, it may not be possible
    for [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") features to be inherited automatically.
    Developers should
    make sure that features, such as secure processing, are explicitly
    set in both places.

    #### W3C XML Schema 1.0

    For XML Schema, this method creates a [`Schema`](Schema.md "class in javax.xml.validation") object that
    performs validation by using location hints specified in documents.

    The returned [`Schema`](Schema.md "class in javax.xml.validation") object assumes that if documents
    refer to the same URL in the schema location hints,
    they will always resolve to the same schema document. This
    asusmption allows implementations to reuse parsed results of
    schema documents so that multiple validations against the same
    schema will run faster.

    Note that the use of schema location hints introduces a
    vulnerability to denial-of-service attacks.

    #### RELAX NG

    RELAX NG does not support this operation.

    Returns:
    :   Always return non-null valid [`Schema`](Schema.md "class in javax.xml.validation") object.

    Throws:
    :   `UnsupportedOperationException` - If this operation is not supported by the callee.
    :   `SAXException` - If this operation is supported but failed for some reason.