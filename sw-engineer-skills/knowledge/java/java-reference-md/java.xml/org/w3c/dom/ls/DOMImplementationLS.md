Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.ls](package-summary.md)

# Interface DOMImplementationLS

---

public interface DOMImplementationLS

`DOMImplementationLS` contains the factory methods for creating
Load and Save objects.

The expectation is that an instance of the
`DOMImplementationLS` interface can be obtained by using
binding-specific casting methods on an instance of the
`DOMImplementation` interface or, if the `Document`
supports the feature `"Core"` version `"3.0"`
defined in
[[DOM Level 3 Core](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407)]
, by using the method `DOMImplementation.getFeature` with
parameter values `"LS"` (or `"LS-Async"`) and
`"3.0"` (respectively).

See also the [Document Object Model (DOM) Level 3 Load and Save Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-LS-20040407).

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final short`

  `MODE_ASYNCHRONOUS`

  Create an asynchronous `LSParser`.

  `static final short`

  `MODE_SYNCHRONOUS`

  Create a synchronous `LSParser`.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `LSInput`

  `createLSInput()`

  Create a new empty input source object where
  `LSInput.characterStream`, `LSInput.byteStream`
  , `LSInput.stringData` `LSInput.systemId`,
  `LSInput.publicId`, `LSInput.baseURI`, and
  `LSInput.encoding` are null, and
  `LSInput.certifiedText` is false.

  `LSOutput`

  `createLSOutput()`

  Create a new empty output destination object where
  `LSOutput.characterStream`,
  `LSOutput.byteStream`, `LSOutput.systemId`,
  `LSOutput.encoding` are null.

  `LSParser`

  `createLSParser(short mode,
  String schemaType)`

  Create a new `LSParser`.

  `LSSerializer`

  `createLSSerializer()`

  Create a new `LSSerializer` object.

* ## Field Details

  + ### MODE\_SYNCHRONOUS

    static final short MODE\_SYNCHRONOUS

    Create a synchronous `LSParser`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.ls.DOMImplementationLS.MODE_SYNCHRONOUS)
  + ### MODE\_ASYNCHRONOUS

    static final short MODE\_ASYNCHRONOUS

    Create an asynchronous `LSParser`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.ls.DOMImplementationLS.MODE_ASYNCHRONOUS)
* ## Method Details

  + ### createLSParser

    [LSParser](LSParser.md "interface in org.w3c.dom.ls") createLSParser(short mode,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") schemaType)
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Create a new `LSParser`. The newly constructed parser may
    then be configured by means of its `DOMConfiguration`
    object, and used to parse documents by means of its `parse`
    method.

    Parameters:
    :   `mode` - The `mode` argument is either
        `MODE_SYNCHRONOUS` or `MODE_ASYNCHRONOUS`, if
        `mode` is `MODE_SYNCHRONOUS` then the
        `LSParser` that is created will operate in synchronous
        mode, if it's `MODE_ASYNCHRONOUS` then the
        `LSParser` that is created will operate in asynchronous
        mode.
    :   `schemaType` - An absolute URI representing the type of the schema
        language used during the load of a `Document` using the
        newly created `LSParser`. Note that no lexical checking
        is done on the absolute URI. In order to create a
        `LSParser` for any kind of schema types (i.e. the
        LSParser will be free to use any schema found), use the value
        `null`.

        **Note:** For W3C XML Schema
        [[XML Schema Part 1](http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/)]
        , applications must use the value
        `"http://www.w3.org/2001/XMLSchema"`. For XML DTD
        [[XML 1.0](http://www.w3.org/TR/2004/REC-xml-20040204)],
        applications must use the value
        `"http://www.w3.org/TR/REC-xml"`. Other Schema languages
        are outside the scope of the W3C and therefore should recommend an
        absolute URI in order to use this method.

    Returns:
    :   The newly created `LSParser` object. This
        `LSParser` is either synchronous or asynchronous
        depending on the value of the `mode` argument.

        **Note:** By default, the newly created `LSParser`
        does not contain a `DOMErrorHandler`, i.e. the value of
        the "[error-handler](https://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407/core.html#parameter-error-handler)"
        configuration parameter is `null`. However, implementations
        may provide a default error handler at creation time. In that case,
        the initial value of the `"error-handler"` configuration
        parameter on the new `LSParser` object contains a
        reference to the default error handler.

    Throws:
    :   `DOMException` - NOT\_SUPPORTED\_ERR: Raised if the requested mode or schema type is
        not supported.
  + ### createLSSerializer

    [LSSerializer](LSSerializer.md "interface in org.w3c.dom.ls") createLSSerializer()

    Create a new `LSSerializer` object.

    Returns:
    :   The newly created `LSSerializer` object.

        **Note:** By default, the newly created
        `LSSerializer` has no `DOMErrorHandler`, i.e.
        the value of the `"error-handler"` configuration
        parameter is `null`. However, implementations may
        provide a default error handler at creation time. In that case, the
        initial value of the `"error-handler"` configuration
        parameter on the new `LSSerializer` object contains a
        reference to the default error handler.
  + ### createLSInput

    [LSInput](LSInput.md "interface in org.w3c.dom.ls") createLSInput()

    Create a new empty input source object where
    `LSInput.characterStream`, `LSInput.byteStream`
    , `LSInput.stringData` `LSInput.systemId`,
    `LSInput.publicId`, `LSInput.baseURI`, and
    `LSInput.encoding` are null, and
    `LSInput.certifiedText` is false.

    Returns:
    :   The newly created input object.
  + ### createLSOutput

    [LSOutput](LSOutput.md "interface in org.w3c.dom.ls") createLSOutput()

    Create a new empty output destination object where
    `LSOutput.characterStream`,
    `LSOutput.byteStream`, `LSOutput.systemId`,
    `LSOutput.encoding` are null.

    Returns:
    :   The newly created output object.