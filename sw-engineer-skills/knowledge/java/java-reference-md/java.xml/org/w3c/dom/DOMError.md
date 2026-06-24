Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface DOMError

---

public interface DOMError

`DOMError` is an interface that describes an error.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

Since:
:   1.5, DOM Level 3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final short`

  `SEVERITY_ERROR`

  The severity of the error described by the `DOMError` is
  error.

  `static final short`

  `SEVERITY_FATAL_ERROR`

  The severity of the error described by the `DOMError` is
  fatal error.

  `static final short`

  `SEVERITY_WARNING`

  The severity of the error described by the `DOMError` is
  warning.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `DOMLocator`

  `getLocation()`

  The location of the error.

  `String`

  `getMessage()`

  An implementation specific string describing the error that occurred.

  `Object`

  `getRelatedData()`

  The related `DOMError.type` dependent data if any.

  `Object`

  `getRelatedException()`

  The related platform dependent exception if any.

  `short`

  `getSeverity()`

  The severity of the error, either `SEVERITY_WARNING`,
  `SEVERITY_ERROR`, or `SEVERITY_FATAL_ERROR`.

  `String`

  `getType()`

  A `DOMString` indicating which related data is expected in
  `relatedData`.

* ## Field Details

  + ### SEVERITY\_WARNING

    static final short SEVERITY\_WARNING

    The severity of the error described by the `DOMError` is
    warning. A `SEVERITY_WARNING` will not cause the
    processing to stop, unless `DOMErrorHandler.handleError()`
    returns `false`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMError.SEVERITY_WARNING)
  + ### SEVERITY\_ERROR

    static final short SEVERITY\_ERROR

    The severity of the error described by the `DOMError` is
    error. A `SEVERITY_ERROR` may not cause the processing to
    stop if the error can be recovered, unless
    `DOMErrorHandler.handleError()` returns `false`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMError.SEVERITY_ERROR)
  + ### SEVERITY\_FATAL\_ERROR

    static final short SEVERITY\_FATAL\_ERROR

    The severity of the error described by the `DOMError` is
    fatal error. A `SEVERITY_FATAL_ERROR` will cause the
    normal processing to stop. The return value of
    `DOMErrorHandler.handleError()` is ignored unless the
    implementation chooses to continue, in which case the behavior
    becomes undefined.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.DOMError.SEVERITY_FATAL_ERROR)
* ## Method Details

  + ### getSeverity

    short getSeverity()

    The severity of the error, either `SEVERITY_WARNING`,
    `SEVERITY_ERROR`, or `SEVERITY_FATAL_ERROR`.
  + ### getMessage

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    An implementation specific string describing the error that occurred.
  + ### getType

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getType()

    A `DOMString` indicating which related data is expected in
    `relatedData`. Users should refer to the specification of
    the error in order to find its `DOMString` type and
    `relatedData` definitions if any.

    **Note:** As an example,
    `Document.normalizeDocument()` does generate warnings when
    the "split-cdata-sections" parameter is in use. Therefore, the method
    generates a `SEVERITY_WARNING` with `type`
    `"cdata-sections-splitted"` and the first
    `CDATASection` node in document order resulting from the
    split is returned by the `relatedData` attribute.
  + ### getRelatedException

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getRelatedException()

    The related platform dependent exception if any.
  + ### getRelatedData

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getRelatedData()

    The related `DOMError.type` dependent data if any.
  + ### getLocation

    [DOMLocator](DOMLocator.md "interface in org.w3c.dom") getLocation()

    The location of the error.