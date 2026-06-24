Module [java.xml](../../../module-summary.md)

Package [javax.xml.validation](package-summary.md)

# Class Validator

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.validation.Validator

---

public abstract class Validator
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A processor that checks an XML document against [`Schema`](Schema.md "class in javax.xml.validation").

A validator object is not thread-safe and not reentrant.
In other words, it is the application's responsibility to make
sure that one [`Validator`](Validator.md "class in javax.xml.validation") object is not used from
more than one thread at any given time, and while the `validate`
method is invoked, applications may not recursively call
the `validate` method.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Validator()`

  Constructor for derived classes.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract ErrorHandler`

  `getErrorHandler()`

  Gets the current [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") set to this [`Validator`](Validator.md "class in javax.xml.validation").

  `boolean`

  `getFeature(String name)`

  Look up the value of a feature flag.

  `Object`

  `getProperty(String name)`

  Look up the value of a property.

  `abstract LSResourceResolver`

  `getResourceResolver()`

  Gets the current [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") set to this [`Validator`](Validator.md "class in javax.xml.validation").

  `abstract void`

  `reset()`

  Reset this `Validator` to its original configuration.

  `abstract void`

  `setErrorHandler(ErrorHandler errorHandler)`

  Sets the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") to receive errors encountered
  during the `validate` method invocation.

  `void`

  `setFeature(String name,
  boolean value)`

  Set the value of a feature flag.

  `void`

  `setProperty(String name,
  Object object)`

  Set the value of a property.

  `abstract void`

  `setResourceResolver(LSResourceResolver resourceResolver)`

  Sets the [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") to customize
  resource resolution while in a validation episode.

  `void`

  `validate(Source source)`

  Validates the specified input.

  `abstract void`

  `validate(Source source,
  Result result)`

  Validates the specified input and send the augmented validation
  result to the specified output.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Validator

    protected Validator()

    Constructor for derived classes.

    The constructor does nothing.

    Derived classes must create [`Validator`](Validator.md "class in javax.xml.validation") objects that have
    `null` [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") and
    `null` [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls").
* ## Method Details

  + ### reset

    public abstract void reset()

    Reset this `Validator` to its original configuration.

    `Validator` is reset to the same state as when it was created with
    [`Schema.newValidator()`](Schema.md#newValidator()).
    `reset()` is designed to allow the reuse of existing `Validator`s
    thus saving resources associated with the creation of new `Validator`s.

    The reset `Validator` is not guaranteed to have
    the same [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") or [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax")
    `Object`s, e.g. [`Object.equals(Object obj)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)).
    It is guaranteed to have a functionally equal
    `LSResourceResolver` and `ErrorHandler`.
  + ### validate

    public void validate([Source](../transform/Source.md "interface in javax.xml.transform") source)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Validates the specified input.

    This is just a convenience method for
    [`validate(Source source, Result result)`](#validate(javax.xml.transform.Source,javax.xml.transform.Result))
    with `result` of `null`.

    Parameters:
    :   `source` - XML to be validated. Must be an XML document or
        XML element and must not be null. For backwards compatibility,
        the results of attempting to validate anything other than
        a document or element are implementation-dependent.
        Implementations must either recognize and process the input
        or throw an IllegalArgumentException.

    Throws:
    :   `IllegalArgumentException` - If the `Source`
        is an XML artifact that the implementation cannot
        validate (for example, a processing instruction).
    :   `SAXException` - If the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") throws a [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") or
        if a fatal error is found and the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") returns
        normally.
    :   `IOException` - If the validator is processing a
        [`SAXSource`](../transform/sax/SAXSource.md "class in javax.xml.transform.sax") and the
        underlying [`XMLReader`](../../../org/xml/sax/XMLReader.md "interface in org.xml.sax") throws an
        [`IOException`](../../../../java.base/java/io/IOException.md "class in java.io").
    :   `NullPointerException` - If `source` is
        `null`.

    See Also:
    :   - [`validate(Source source, Result result)`](#validate(javax.xml.transform.Source,javax.xml.transform.Result))
  + ### validate

    public abstract void validate([Source](../transform/Source.md "interface in javax.xml.transform") source,
    [Result](../transform/Result.md "interface in javax.xml.transform") result)
    throws [SAXException](../../../org/xml/sax/SAXException.md "class in org.xml.sax"),
    [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Validates the specified input and send the augmented validation
    result to the specified output.

    This method places the following restrictions on the types of
    the [`Source`](../transform/Source.md "interface in javax.xml.transform")/[`Result`](../transform/Result.md "interface in javax.xml.transform") accepted.

    `Source` / `Result` Accepted

    |  | [`StreamSource`](../transform/stream/StreamSource.md "class in javax.xml.transform.stream") | [`SAXSource`](../transform/sax/SAXSource.md "class in javax.xml.transform.sax") | [`DOMSource`](../transform/dom/DOMSource.md "class in javax.xml.transform.dom") | [`StAXSource`](../transform/stax/StAXSource.md "class in javax.xml.transform.stax") |
    | --- | --- | --- | --- | --- |
    | `null` | OK | OK | OK | OK |
    | [`StreamResult`](../transform/stream/StreamResult.md "class in javax.xml.transform.stream") | OK | `IllegalArgumentException` | `IllegalArgumentException` | `IllegalArgumentException` |
    | [`SAXResult`](../transform/sax/SAXResult.md "class in javax.xml.transform.sax") | `IllegalArgumentException` | OK | `IllegalArgumentException` | `IllegalArgumentException` |
    | [`DOMResult`](../transform/dom/DOMResult.md "class in javax.xml.transform.dom") | `IllegalArgumentException` | `IllegalArgumentException` | OK | `IllegalArgumentException` |
    | [`StAXResult`](../transform/stax/StAXResult.md "class in javax.xml.transform.stax") | `IllegalArgumentException` | `IllegalArgumentException` | `IllegalArgumentException` | OK |

    To validate one `Source` into another kind of
    `Result`, use the identity transformer (see
    [`TransformerFactory.newTransformer()`](../transform/TransformerFactory.md#newTransformer())).

    Errors found during the validation is sent to the specified
    [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax").

    If a document is valid, or if a document contains some errors
    but none of them were fatal and the `ErrorHandler` didn't
    throw any exception, then the method returns normally.

    Parameters:
    :   `source` - XML to be validated. Must be an XML document or
        XML element and must not be null. For backwards compatibility,
        the results of attempting to validate anything other than
        a document or element are implementation-dependent.
        Implementations must either recognize and process the input
        or throw an IllegalArgumentException.
    :   `result` - The `Result` object that receives (possibly augmented)
        XML. This parameter can be null if the caller is not interested
        in it.
        Note that when a `DOMResult` is used,
        a validator might just pass the same DOM node from
        `DOMSource` to `DOMResult`
        (in which case `source.getNode()==result.getNode()`),
        it might copy the entire DOM tree, or it might alter the
        node given by the source.

    Throws:
    :   `IllegalArgumentException` - If the `Result` type doesn't match the
        `Source` type or if the `Source`
        is an XML artifact that the implementation cannot
        validate (for example, a processing instruction).
    :   `SAXException` - If the `ErrorHandler` throws a
        `SAXException` or
        if a fatal error is found and the `ErrorHandler` returns
        normally.
    :   `IOException` - If the validator is processing a
        `SAXSource` and the
        underlying [`XMLReader`](../../../org/xml/sax/XMLReader.md "interface in org.xml.sax") throws an
        `IOException`.
    :   `NullPointerException` - If the `source` parameter is `null`.

    See Also:
    :   - [`validate(Source source)`](#validate(javax.xml.transform.Source))
  + ### setErrorHandler

    public abstract void setErrorHandler([ErrorHandler](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") errorHandler)

    Sets the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") to receive errors encountered
    during the `validate` method invocation.

    Error handler can be used to customize the error handling process
    during a validation. When an [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") is set,
    errors found during the validation will be first sent
    to the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax").

    The error handler can abort further validation immediately
    by throwing [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") from the handler. Or for example
    it can print an error to the screen and try to continue the
    validation by returning normally from the [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax")

    If any [`Throwable`](../../../../java.base/java/lang/Throwable.md "class in java.lang") is thrown from an [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax"),
    the caller of the `validate` method will be thrown
    the same [`Throwable`](../../../../java.base/java/lang/Throwable.md "class in java.lang") object.

    [`Validator`](Validator.md "class in javax.xml.validation") is not allowed to
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

    When a new [`Validator`](Validator.md "class in javax.xml.validation") object is created, initially
    this field is set to null.

    Parameters:
    :   `errorHandler` - A new error handler to be set. This parameter can be null.
  + ### getErrorHandler

    public abstract [ErrorHandler](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") getErrorHandler()

    Gets the current [`ErrorHandler`](../../../org/xml/sax/ErrorHandler.md "interface in org.xml.sax") set to this [`Validator`](Validator.md "class in javax.xml.validation").

    Returns:
    :   This method returns the object that was last set through
        the [`setErrorHandler(ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler)) method, or null
        if that method has never been called since this [`Validator`](Validator.md "class in javax.xml.validation")
        has created.

    See Also:
    :   - [`setErrorHandler(ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### setResourceResolver

    public abstract void setResourceResolver([LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") resourceResolver)

    Sets the [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") to customize
    resource resolution while in a validation episode.

    [`Validator`](Validator.md "class in javax.xml.validation") uses a [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls")
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
    then the [`Validator`](Validator.md "class in javax.xml.validation") will abort the parsing and
    the caller of the `validate` method will receive
    the same [`RuntimeException`](../../../../java.base/java/lang/RuntimeException.md "class in java.lang").

    When a new [`Validator`](Validator.md "class in javax.xml.validation") object is created, initially
    this field is set to null.

    Parameters:
    :   `resourceResolver` - A new resource resolver to be set. This parameter can be null.
  + ### getResourceResolver

    public abstract [LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") getResourceResolver()

    Gets the current [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") set to this [`Validator`](Validator.md "class in javax.xml.validation").

    Returns:
    :   This method returns the object that was last set through
        the [`setResourceResolver(LSResourceResolver)`](#setResourceResolver(org.w3c.dom.ls.LSResourceResolver)) method, or null
        if that method has never been called since this [`Validator`](Validator.md "class in javax.xml.validation")
        has created.

    See Also:
    :   - [`setErrorHandler(ErrorHandler)`](#setErrorHandler(org.xml.sax.ErrorHandler))
  + ### getFeature

    public boolean getFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Look up the value of a feature flag.

    The feature name is any fully-qualified URI. It is
    possible for a [`Validator`](Validator.md "class in javax.xml.validation") to recognize a feature name but
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
        [`Validator`](Validator.md "class in javax.xml.validation") recognizes the feature name but
        cannot determine its value at this time.
    :   `NullPointerException` - When the name parameter is null.

    See Also:
    :   - [`setFeature(String, boolean)`](#setFeature(java.lang.String,boolean))
  + ### setFeature

    public void setFeature([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    boolean value)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Set the value of a feature flag.

    Feature can be used to control the way a [`Validator`](Validator.md "class in javax.xml.validation")
    parses schemas, although [`Validator`](Validator.md "class in javax.xml.validation")s are not required
    to recognize any specific feature names.

    The feature name is any fully-qualified URI. It is
    possible for a [`Validator`](Validator.md "class in javax.xml.validation") to expose a feature value but
    to be unable to change the current value.
    Some feature values may be immutable or mutable only
    in specific contexts, such as before, during, or after
    a validation.

    Parameters:
    :   `name` - The feature name, which is a non-null fully-qualified URI.
    :   `value` - The requested value of the feature (true or false).

    Throws:
    :   `SAXNotRecognizedException` - If the feature
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        [`Validator`](Validator.md "class in javax.xml.validation") recognizes the feature name but
        cannot set the requested value.
    :   `NullPointerException` - When the name parameter is null.

    See Also:
    :   - [`getFeature(String)`](#getFeature(java.lang.String))
  + ### setProperty

    public void setProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") object)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Set the value of a property.

    The property name is any fully-qualified URI. It is
    possible for a [`Validator`](Validator.md "class in javax.xml.validation") to recognize a property name but
    to be unable to change the current value.
    Some property values may be immutable or mutable only
    in specific contexts, such as before, during, or after
    a validation.

    All implementations that implement JAXP 1.5 or newer are required to
    support the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD) and
    [`XMLConstants.ACCESS_EXTERNAL_SCHEMA`](../XMLConstants.md#ACCESS_EXTERNAL_SCHEMA) properties.
    - Access to external DTDs in source or Schema file is restricted to
      the protocols specified by the [`XMLConstants.ACCESS_EXTERNAL_DTD`](../XMLConstants.md#ACCESS_EXTERNAL_DTD)
      property. If access is denied during validation due to the restriction
      of this property, [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") will be thrown by the
      [`validate(Source)`](#validate(javax.xml.transform.Source)) method.

      Access to external reference set by the schemaLocation attribute is
      restricted to the protocols specified by the
      [`XMLConstants.ACCESS_EXTERNAL_SCHEMA`](../XMLConstants.md#ACCESS_EXTERNAL_SCHEMA) property.
      If access is denied during validation due to the restriction of this property,
      [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") will be thrown by the
      [`validate(Source)`](#validate(javax.xml.transform.Source)) method.

    Parameters:
    :   `name` - The property name, which is a non-null fully-qualified URI.
    :   `object` - The requested value for the property.

    Throws:
    :   `SAXNotRecognizedException` - If the property
        value can't be assigned or retrieved.
    :   `SAXNotSupportedException` - When the
        [`Validator`](Validator.md "class in javax.xml.validation") recognizes the property name but
        cannot set the requested value.
    :   `NullPointerException` - When the name parameter is null.
  + ### getProperty

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXNotRecognizedException](../../../org/xml/sax/SAXNotRecognizedException.md "class in org.xml.sax"),
    [SAXNotSupportedException](../../../org/xml/sax/SAXNotSupportedException.md "class in org.xml.sax")

    Look up the value of a property.

    The property name is any fully-qualified URI. It is
    possible for a [`Validator`](Validator.md "class in javax.xml.validation") to recognize a property name but
    temporarily be unable to return its value.
    Some property values may be available only in specific
    contexts, such as before, during, or after a validation.

    [`Validator`](Validator.md "class in javax.xml.validation")s are not required to recognize any specific
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
    :   `NullPointerException` - When the name parameter is null.

    See Also:
    :   - [`setProperty(String, Object)`](#setProperty(java.lang.String,java.lang.Object))