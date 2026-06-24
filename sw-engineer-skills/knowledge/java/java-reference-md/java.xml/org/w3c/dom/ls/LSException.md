Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.ls](package-summary.md)

# Class LSException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

org.w3c.dom.ls.LSException

All Implemented Interfaces:
:   `Serializable`

---

public class LSException
extends [RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

Parser or write operations may throw an `LSException` if the
processing is stopped. The processing can be stopped due to a
`DOMError` with a severity of
`DOMError.SEVERITY_FATAL_ERROR` or a non recovered
`DOMError.SEVERITY_ERROR`, or if
`DOMErrorHandler.handleError()` returned `false`.

**Note:** As suggested in the definition of the constants in the
`DOMError` interface, a DOM implementation may choose to
continue after a fatal error, but the resulting DOM tree is then
implementation dependent.

See also the [Document Object Model (DOM) Level 3 Load
and Save Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-LS-20040407).

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#org.w3c.dom.ls.LSException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `short`

  `code`

  `static final short`

  `PARSE_ERR`

  If an attempt was made to load a document, or an XML Fragment, using
  `LSParser` and the processing has been stopped.

  `static final short`

  `SERIALIZE_ERR`

  If an attempt was made to serialize a `Node` using
  `LSSerializer` and the processing has been stopped.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LSException(short code,
  String message)`
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### code

    public short code
  + ### PARSE\_ERR

    public static final short PARSE\_ERR

    If an attempt was made to load a document, or an XML Fragment, using
    `LSParser` and the processing has been stopped.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.ls.LSException.PARSE_ERR)
  + ### SERIALIZE\_ERR

    public static final short SERIALIZE\_ERR

    If an attempt was made to serialize a `Node` using
    `LSSerializer` and the processing has been stopped.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.ls.LSException.SERIALIZE_ERR)
* ## Constructor Details

  + ### LSException

    public LSException(short code,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") message)