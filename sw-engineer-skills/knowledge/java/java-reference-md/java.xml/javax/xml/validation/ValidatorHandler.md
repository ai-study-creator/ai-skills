Module [java.xml](../../../module-summary.md)

Package [javax.xml.validation](package-summary.md)

# Class ValidatorHandler

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.validation.ValidatorHandler

All Implemented Interfaces:
:   `ContentHandler`

---

public abstract class ValidatorHandler
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ContentHandler](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")

Streaming validator that works on SAX stream.

A [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") object is not thread-safe and not reentrant.
In other words, it is the application's responsibility to make
sure that one [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") object is not used from
more than one thread at any given time.

[`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") checks if the SAX events follow
the set of constraints described in the associated [`Schema`](Schema.md "class in javax.xml.validation"),
and additionally it may modify the SAX events (for example
by adding default values, etc.)

[`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") extends from [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax"),
but it refines the underlying [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") in
the following way:

1. startElement/endElement events must receive non-null String
   for `uri`, `localName`, and `qname`,
   even though SAX allows some of them to be null.
   Similarly, the user-specified [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") will receive non-null
   Strings for all three parameters.- Applications must ensure that [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation")'s
     [`ContentHandler.startPrefixMapping(String,String)`](../../../org/xml/sax/ContentHandler.md#startPrefixMapping(java.lang.String,java.lang.String)) and
     [`ContentHandler.endPrefixMapping(String)`](../../../org/xml/sax/ContentHandler.md#endPrefixMapping(java.lang.String)) are invoked
     properly. Similarly, the user-specified [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")
     will receive startPrefixMapping/endPrefixMapping events.
     If the [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") introduces additional namespace
     bindings, the user-specified [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") will receive
     additional startPrefixMapping/endPrefixMapping events.- [`Attributes`](../../../org/xml/sax/Attributes.md "interface in org.xml.sax") for the
       [`ContentHandler.startElement(String,String,String,Attributes)`](../../../org/xml/sax/ContentHandler.md#startElement(java.lang.String,java.lang.String,java.lang.String,org.xml.sax.Attributes)) method
       may or may not include xmlns\* attributes.

A [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") is automatically reset every time
the startDocument method is invoked.

## Recognized Properties and Features

This spec defines the following feature that must be recognized
by all [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") implementations.

### `http://xml.org/sax/features/namespace-prefixes`

This feature controls how a [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") introduces
namespace bindings that were not present in the original SAX event
stream.
When this feature is set to true, it must make
sure that the user's [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") will see
the corresponding `xmlns*` attribute in
the [`Attributes`](../../../org/xml/sax/Attributes.md "interface in org.xml.sax") object of the
[`ContentHandler.startElement(String,String,String,Attributes)`](../../../org/xml/sax/ContentHandler.md#startElement(java.lang.String,java.lang.String,java.lang.String,org.xml.sax.Attributes))
callback. Otherwise, `xmlns*` attributes must not be
added to [`Attributes`](../../../org/xml/sax/Attributes.md "interface in org.xml.sax") that's passed to the
user-specified [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax").

(Note that regardless of this switch, namespace bindings are
always notified to applications through
[`ContentHandler.startPrefixMapping(String,String)`](../../../org/xml/sax/ContentHandler.md#startPrefixMapping(java.lang.String,java.lang.String)) and
[`ContentHandler.endPrefixMapping(String)`](../../../org/xml/sax/ContentHandler.md#endPrefixMapping(java.lang.String)) methods of the
[`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") specified by the user.)

Note that this feature does *NOT* affect the way
a [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") receives SAX events. It merely
changes the way it augments SAX events.

This feature is set to `false` by default.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ValidatorHandler()`

  Constructor for derived classes.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract ContentHandler`

  `getContentHandler()`

  Gets the [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") which receives the
  augmented validation result.

  `abstract ErrorHandler`

  `getErrorHandler()`

  Gets the current [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") set to this [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

  `boolean`

  `getFeature(String name)`

  Look up the value of a feature flag.

  `Object`

  `getProperty(String name)`

  Look up the value of a property.

  `abstract LSResourceResolver`

  `getResourceResolver()`

  Gets the current [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") set to this [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

  `abstract TypeInfoProvider`

  `getTypeInfoProvider()`

  Obtains the [`TypeInfoProvider`](TypeInfoProvider.md "class in javax.xml.validation") implementation of this
  [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

  `abstract void`

  `setContentHandler(ContentHandler receiver)`

  Sets the [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") which receives
  the augmented validation result.

  `abstract void`

  `setErrorHandler(ErrorHandler errorHandler)`

  Sets the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") to receive errors encountered
  during the validation.

  `void`

  `setFeature(String name,
  boolean value)`

  Set a feature for this `ValidatorHandler`.

  `void`

  `setProperty(String name,
  Object object)`

  Set the value of a property.

  `abstract void`

  `setResourceResolver(LSResourceResolver resourceResolver)`

  Sets the [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") to customize
  resource resolution while in a validation episode.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface org.xml.sax.[ContentHandler](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")

  `characters, declaration, endDocument, endElement, endPrefixMapping, ignorableWhitespace, processingInstruction, setDocumentLocator, skippedEntity, startDocument, startElement, startPrefixMapping`

* ## Constructor Details

  + ### ValidatorHandler

    protected ValidatorHandler()

    Constructor for derived classes.

    The constructor does nothing.

    Derived classes must create [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") objects that have
    `null` [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") and
    `null` [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls").
* ## Method Details

  + ### setContentHandler

    public abstract void setContentHandler([ContentHandler](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") receiver)

    Sets the [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") which receives
    the augmented validation result.

    When a [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") is specified, a
    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") will work as a filter
    and basically copy the incoming events to the
    specified [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax").

    In doing so, a [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") may modify
    the events, for example by adding defaulted attributes.

    A [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") may buffer events to certain
    extent, but to allow [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") to be used
    by a parser, the following requirement has to be met.
    1. When
       [`ContentHandler.startElement(String, String, String, Attributes)`](../../../org/xml/sax/ContentHandler.md#startElement(java.lang.String,java.lang.String,java.lang.String,org.xml.sax.Attributes)),
       [`ContentHandler.endElement(String, String, String)`](../../../org/xml/sax/ContentHandler.md#endElement(java.lang.String,java.lang.String,java.lang.String)),
       [`ContentHandler.startDocument()`](../../../org/xml/sax/ContentHandler.md#startDocument()), or
       [`ContentHandler.endDocument()`](../../../org/xml/sax/ContentHandler.md#endDocument())
       are invoked on a [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation"),
       the same method on the user-specified [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")
       must be invoked for the same event before the callback
       returns.+ [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") may not introduce new elements that
         were not present in the input.+ [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") may not remove attributes that were
           present in the input.

    When a callback method on the specified [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")
    throws an exception, the same exception object must be thrown
    from the [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation"). The [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax")
    should not be notified of such an exception.

    This method can be called even during a middle of a validation.

    Parameters:
    :   `receiver` - A [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") or a null value.
  + ### getContentHandler

    public abstract [ContentHandler](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") getContentHandler()

    Gets the [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") which receives the
    augmented validation result.

    Returns:
    :   This method returns the object that was last set through
        the [`getContentHandler()`](#getContentHandler()) method, or null
        if that method has never been called since this [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation")
        has created.

    See Also:
    :   - [`setContentHandler(ContentHandler)`](#setContentHandler(org.xml.sax.ContentHandler))
  + ### setErrorHandler

    public abstract void setErrorHandler([ErrorHandler](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") errorHandler)

    Sets the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") to receive errors encountered
    during the validation.

    Error handler can be used to customize the error handling process
    during a validation. When an [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") is set,
    errors found during the validation will be first sent
    to the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax").

    The error handler can abort further validation immediately
    by throwing [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") from the handler. Or for example
    it can print an error to the screen and try to continue the
    validation by returning normally from the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax")

    If any [`Throwable`](../../../../java.base/java/lang/Throwable.md "class in java.lang") is thrown from an [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax"),
    the same [`Throwable`](../../../../java.base/java/lang/Throwable.md "class in java.lang") object will be thrown toward the
    root of the call stack.

    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") is not allowed to
    throw [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") without first reporting it to
    [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax").

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

    When a new [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") object is created, initially
    this field is set to null.

    Parameters:
    :   `errorHandler` - A new error handler to be set. This parameter can be null.
  + ### getErrorHandler

    public abstract [ErrorHandler](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") getErrorHandler()

    Gets the current [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") set to this [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

    Returns:
    :   This method returns the object that was last set through
        the [`setErrorHandler(ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler)) method, or null
        if that method has never been called since this [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation")
        has created.

    See Also:
    :   - [`setErrorHandler(ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### setResourceResolver

    public abstract void setResourceResolver([LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") resourceResolver)

    Sets the [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") to customize
    resource resolution while in a validation episode.

    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") uses a [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls")
    when it needs to locate external resources while a validation,
    although exactly what constitutes "locating external resources" is
    up to each schema language.

    When the [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") is null, the implementation will
    behave as if the following [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") is set:

    ```
     class DumbLSResourceResolver implements LSResourceResolver {
         public LSInput resolveResource(
             String publicId, String systemId, String baseURI) {

             return null; // always return null
         }
     }
    ```

    If a [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") throws a [`RuntimeException`](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
    (or instances of its derived classes),
    then the [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") will abort the parsing and
    the caller of the `validate` method will receive
    the same [`RuntimeException`](../../../../java.base/java/lang/RuntimeException.md "class in java.lang").

    When a new [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") object is created, initially
    this field is set to null.

    Parameters:
    :   `resourceResolver` - A new resource resolver to be set. This parameter can be null.
  + ### getResourceResolver

    public abstract [LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") getResourceResolver()

    Gets the current [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") set to this [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

    Returns:
    :   This method returns the object that was last set through
        the [`setResourceResolver(LSResourceResolver)`](#setResourceResolver(org.w3c.dom.ls.LSResourceResolver)) method, or null
        if that method has never been called since this [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation")
        has created.

    See Also:
    :   - [`setErrorHandler(ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### getTypeInfoProvider

    public abstract [TypeInfoProvider](TypeInfoProvider.md "class in javax.xml.validation") getTypeInfoProvider()

    Obtains the [`TypeInfoProvider`](TypeInfoProvider.md "class in javax.xml.validation") implementation of this
    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

    The obtained [`TypeInfoProvider`](TypeInfoProvider.md "class in javax.xml.validation") can be queried during a parse
    to access the type information determined by the validator.

    Some schema languages do not define the notion of type,
    for those languages, this method may not be supported.
    However, to be compliant with this specification, implementations
    for W3C XML Schema 1.0 must support this operation.

    Returns:
    :   null if the validator / schema language does not support
        the notion of [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom").
        Otherwise a non-null valid [`TypeInfoProvider`](TypeInfoProvider.md "class in javax.xml.validation").
  + ### getFeature

    public boolean getFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Look up the value of a feature flag.

    The feature name is any fully-qualified URI. It is
    possible for a [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") to recognize a feature name but
    temporarily be unable to return its value.
    Some feature values may be available only in specific
    contexts, such as before, during, or after a validation.

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
        [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") recognizes the feature name but
        cannot determine its value at this time.
    :   `NullPointerException` - When `name` is `null`.

    See Also:
    :   - [`setFeature(String, boolean)`](#setFeature(java.lang.String,boolean))
  + ### setFeature

    public void setFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean value)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Set a feature for this `ValidatorHandler`.

    Feature can be used to control the way a
    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") parses schemas. The feature name is
    any fully-qualified URI. It is possible for a
    [`SchemaFactory`](SchemaFactory.md "class in javax.xml.validation") to
    expose a feature value but to be unable to change the current
    value. Some feature values may be immutable or mutable only in
    specific contexts, such as before, during, or after a
    validation.

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
        [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") recognizes the feature name but
        cannot set the requested value.
    :   `NullPointerException` - When `name` is `null`.

    See Also:
    :   - [`getFeature(String)`](#getFeature(java.lang.String))
  + ### setProperty

    public void setProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") object)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Set the value of a property.

    The property name is any fully-qualified URI. It is
    possible for a [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") to recognize a property name but
    to be unable to change the current value.
    Some property values may be immutable or mutable only
    in specific contexts, such as before, during, or after
    a validation.

    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation")s are not required to recognize setting
    any specific property names.

    Parameters:
    :   `name` - The property name, which is a non-null fully-qualified URI.
    :   `object` - The requested value for the property.

    Throws:
    :   `SAXNotRecognizedException` - If the property
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") recognizes the property name but
        cannot set the requested value.
    :   `NullPointerException` - When `name` is `null`.
  + ### getProperty

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Look up the value of a property.

    The property name is any fully-qualified URI. It is
    possible for a [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation") to recognize a property name but
    temporarily be unable to return its value.
    Some property values may be available only in specific
    contexts, such as before, during, or after a validation.

    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation")s are not required to recognize any specific
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
    :   `NullPointerException` - When `name` is `null`.

    See Also:
    :   - [`setProperty(String, Object)`](#setProperty(java.lang.String,java.lang.Object))