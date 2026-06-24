Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface DOMErrorHandler

---

public interface DOMErrorHandler

`DOMErrorHandler` is a callback interface that the DOM
implementation can call when reporting errors that happens while
processing XML data, or when doing some other processing (e.g. validating
a document). A `DOMErrorHandler` object can be attached to a
`Document` using the "error-handler" on the
`DOMConfiguration` interface. If more than one error needs to
be reported during an operation, the sequence and numbers of the errors
passed to the error handler are implementation dependent.

The application that is using the DOM implementation is expected to
implement this interface.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

Since:
:   1.5, DOM Level 3

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `handleError(DOMError error)`

  This method is called on the error handler when an error occurs.

* ## Method Details

  + ### handleError

    boolean handleError([DOMError](DOMError.md "interface in org.w3c.dom") error)

    This method is called on the error handler when an error occurs.
      
     If an exception is thrown from this method, it is considered to be
    equivalent of returning `true`.

    Parameters:
    :   `error` - The error object that describes the error. This object
        may be reused by the DOM implementation across multiple calls to
        the `handleError` method.

    Returns:
    :   If the `handleError` method returns
        `false`, the DOM implementation should stop the current
        processing when possible. If the method returns `true`,
        the processing may continue depending on
        `DOMError.severity`.