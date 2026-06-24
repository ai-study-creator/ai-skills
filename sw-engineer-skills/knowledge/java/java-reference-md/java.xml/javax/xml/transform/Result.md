Module [java.xml](../../../module-summary.md)

Package [javax.xml.transform](package-summary.md)

# Interface Result

All Known Implementing Classes:
:   `DOMResult`, `SAXResult`, `StAXResult`, `StreamResult`

---

public interface Result

An object that implements this interface contains the information
needed to build a transformation result tree.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `PI_DISABLE_OUTPUT_ESCAPING`

  The name of the processing instruction that is sent if the
  result tree disables output escaping.

  `static final String`

  `PI_ENABLE_OUTPUT_ESCAPING`

  The name of the processing instruction that is sent
  if the result tree enables output escaping at some point after having
  received a PI\_DISABLE\_OUTPUT\_ESCAPING processing instruction.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getSystemId()`

  Get the system identifier that was set with setSystemId.

  `void`

  `setSystemId(String systemId)`

  Set the system identifier for this Result.

* ## Field Details

  + ### PI\_DISABLE\_OUTPUT\_ESCAPING

    static final [String](../../../../java.base/java/lang/String.md "class in java.lang") PI\_DISABLE\_OUTPUT\_ESCAPING

    The name of the processing instruction that is sent if the
    result tree disables output escaping.

    Normally, result tree serialization escapes& and < (and
    possibly other characters) when outputting text nodes.
    This ensures that the output is well-formed XML. However,
    it is sometimes convenient to be able to produce output that is
    almost, but not quite well-formed XML; for example,
    the output may include ill-formed sections that will
    be transformed into well-formed XML by a subsequent non-XML aware
    process. If a processing instruction is sent with this name,
    serialization should be output without any escaping.

    Result DOM trees may also have PI\_DISABLE\_OUTPUT\_ESCAPING and
    PI\_ENABLE\_OUTPUT\_ESCAPING inserted into the tree.

    See Also:
    :   - [disable-output-escaping in XSLT Specification](http://www.w3.org/TR/xslt#disable-output-escaping)
        - [Constant Field Values](../../../../constant-values.md#javax.xml.transform.Result.PI_DISABLE_OUTPUT_ESCAPING)
  + ### PI\_ENABLE\_OUTPUT\_ESCAPING

    static final [String](../../../../java.base/java/lang/String.md "class in java.lang") PI\_ENABLE\_OUTPUT\_ESCAPING

    The name of the processing instruction that is sent
    if the result tree enables output escaping at some point after having
    received a PI\_DISABLE\_OUTPUT\_ESCAPING processing instruction.

    See Also:
    :   - [disable-output-escaping in XSLT Specification](http://www.w3.org/TR/xslt#disable-output-escaping)
        - [Constant Field Values](../../../../constant-values.md#javax.xml.transform.Result.PI_ENABLE_OUTPUT_ESCAPING)
* ## Method Details

  + ### setSystemId

    void setSystemId([String](../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Set the system identifier for this Result.

    If the Result is not to be written to a file, the system identifier is optional.
    The application may still want to provide one, however, for use in error messages
    and warnings, or to resolve relative output identifiers.

    Parameters:
    :   `systemId` - The system identifier as a URI string.
  + ### getSystemId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the system identifier that was set with setSystemId.

    Returns:
    :   The system identifier that was set with setSystemId,
        or null if setSystemId was not called.