Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Interface ErrorHandler

All Known Implementing Classes:
:   `DefaultHandler`, `DefaultHandler2`, `HandlerBase`, `XMLFilterImpl`

---

public interface ErrorHandler

Basic interface for SAX error handlers.

If a SAX application needs to implement customized error
handling, it must implement this interface and then register an
instance with the XML reader using the
[`setErrorHandler`](XMLReader.md#setErrorHandler(org.xml.sax.ErrorHandler))
method. The parser will then report all errors and warnings
through this interface.

**WARNING:** If an application does *not*
register an ErrorHandler, XML parsing errors will go unreported,
except that *SAXParseException*s will be thrown for fatal errors.
In order to detect validity errors, an ErrorHandler that does something
with [`error()`](#error(org.xml.sax.SAXParseException)) calls must be registered.

For XML processing errors, a SAX driver must use this interface
in preference to throwing an exception: it is up to the application
to decide whether to throw an exception for different types of
errors and warnings. Note, however, that there is no requirement that
the parser continue to report additional errors after a call to
[`fatalError`](#fatalError(org.xml.sax.SAXParseException)). In other words, a SAX driver class
may throw an exception after reporting any fatalError.
Also parsers may throw appropriate exceptions for non-XML errors.
For example, [`XMLReader.parse()`](XMLReader.md#parse(org.xml.sax.InputSource)) would throw
an IOException for errors accessing entities or the document.

Since:
:   1.4, SAX 1.0

See Also:
:   * [`XMLReader.setErrorHandler(org.xml.sax.ErrorHandler)`](XMLReader.md#setErrorHandler(org.xml.sax.ErrorHandler))
    * [`SAXParseException`](SAXParseException.md "class in org.xml.sax")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `error(SAXParseException exception)`

  Receive notification of a recoverable error.

  `void`

  `fatalError(SAXParseException exception)`

  Receive notification of a non-recoverable, fatal error.

  `void`

  `warning(SAXParseException exception)`

  Receive notification of a warning.

* ## Method Details

  + ### warning

    void warning([SAXParseException](SAXParseException.md "class in org.xml.sax") exception)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Receive notification of a warning.

    SAX parsers will use this method to report conditions that
    are not errors or fatal errors as defined by the XML
    recommendation. The default behaviour is to take no
    action.

    The SAX parser must continue to provide normal parsing events
    after invoking this method: it should still be possible for the
    application to process the document through to the end.

    Filters may use this method to report other, non-XML warnings
    as well.

    Parameters:
    :   `exception` - The warning information encapsulated in a
        SAX parse exception.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`SAXParseException`](SAXParseException.md "class in org.xml.sax")
  + ### error

    void error([SAXParseException](SAXParseException.md "class in org.xml.sax") exception)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Receive notification of a recoverable error.

    This corresponds to the definition of "error" in section 1.2
    of the W3C XML 1.0 Recommendation. For example, a validating
    parser would use this callback to report the violation of a
    validity constraint. The default behaviour is to take no
    action.

    The SAX parser must continue to provide normal parsing
    events after invoking this method: it should still be possible
    for the application to process the document through to the end.
    If the application cannot do so, then the parser should report
    a fatal error even if the XML recommendation does not require
    it to do so.

    Filters may use this method to report other, non-XML errors
    as well.

    Parameters:
    :   `exception` - The error information encapsulated in a
        SAX parse exception.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.

    See Also:
    :   - [`SAXParseException`](SAXParseException.md "class in org.xml.sax")
  + ### fatalError

    void fatalError([SAXParseException](SAXParseException.md "class in org.xml.sax") exception)
    throws [SAXException](SAXException.md "class in org.xml.sax")

    Receive notification of a non-recoverable, fatal error.

    As defined in section 1.2 of the W3C XML 1.0 Recommendation, fatal errors
    are those that would make it impossible for a parser to continue normal
    processing. These include violation of a well-formedness constraint,
    invalid encoding, and forbidden structural errors as described in the
    W3C XML 1.0 Recommendation.

    Parameters:
    :   `exception` - The error information encapsulated in a
        [`SAXParseException`](SAXParseException.md "class in org.xml.sax").

    Throws:
    :   `SAXException` - if the application chooses to discontinue the parsing