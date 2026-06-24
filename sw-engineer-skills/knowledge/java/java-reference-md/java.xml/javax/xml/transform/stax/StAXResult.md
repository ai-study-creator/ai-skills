Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.stax](package-summary.md)

# Class StAXResult

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.transform.stax.StAXResult

All Implemented Interfaces:
:   `Result`

---

public class StAXResult
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Result](../Result.md "interface in javax.xml.transform")

Acts as a holder for an XML [`Result`](../Result.md "interface in javax.xml.transform") in the
form of a StAX writer,i.e.
[`XMLStreamWriter`](../../stream/XMLStreamWriter.md "interface in javax.xml.stream") or [`XMLEventWriter`](../../stream/XMLEventWriter.md "interface in javax.xml.stream").
`StAXResult` can be used in all cases that accept
a `Result`, e.g. [`Transformer`](../Transformer.md "class in javax.xml.transform"),
[`Validator`](../../validation/Validator.md "class in javax.xml.validation") which accept
`Result` as input.

Since:
:   1.6

See Also:
:   * [JSR 173: Streaming API for XML](http://jcp.org/en/jsr/detail?id=173)
    * [`XMLStreamWriter`](../../stream/XMLStreamWriter.md "interface in javax.xml.stream")
    * [`XMLEventWriter`](../../stream/XMLEventWriter.md "interface in javax.xml.stream")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `FEATURE`

  If [`TransformerFactory.getFeature(String name)`](../TransformerFactory.md#getFeature(java.lang.String))
  returns true when passed this value as an argument,
  the Transformer supports Result output of this type.

  ### Fields inherited from interface javax.xml.transform.[Result](../Result.md "interface in javax.xml.transform")

  `PI_DISABLE_OUTPUT_ESCAPING, PI_ENABLE_OUTPUT_ESCAPING`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StAXResult(XMLEventWriter xmlEventWriter)`

  Creates a new instance of a `StAXResult`
  by supplying an [`XMLEventWriter`](../../stream/XMLEventWriter.md "interface in javax.xml.stream").

  `StAXResult(XMLStreamWriter xmlStreamWriter)`

  Creates a new instance of a `StAXResult`
  by supplying an [`XMLStreamWriter`](../../stream/XMLStreamWriter.md "interface in javax.xml.stream").
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getSystemId()`

  The returned system identifier is always `null`.

  `XMLEventWriter`

  `getXMLEventWriter()`

  Get the `XMLEventWriter` used by this
  `StAXResult`.

  `XMLStreamWriter`

  `getXMLStreamWriter()`

  Get the `XMLStreamWriter` used by this
  `StAXResult`.

  `void`

  `setSystemId(String systemId)`

  In the context of a `StAXResult`, it is not appropriate
  to explicitly set the system identifier.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FEATURE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FEATURE

    If [`TransformerFactory.getFeature(String name)`](../TransformerFactory.md#getFeature(java.lang.String))
    returns true when passed this value as an argument,
    the Transformer supports Result output of this type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.transform.stax.StAXResult.FEATURE)
* ## Constructor Details

  + ### StAXResult

    public StAXResult([XMLEventWriter](../../stream/XMLEventWriter.md "interface in javax.xml.stream") xmlEventWriter)

    Creates a new instance of a `StAXResult`
    by supplying an [`XMLEventWriter`](../../stream/XMLEventWriter.md "interface in javax.xml.stream").

    `XMLEventWriter` must be a
    non-`null` reference.

    Parameters:
    :   `xmlEventWriter` - `XMLEventWriter` used to create
        this `StAXResult`.

    Throws:
    :   `IllegalArgumentException` - If `xmlEventWriter` ==
        `null`.
  + ### StAXResult

    public StAXResult([XMLStreamWriter](../../stream/XMLStreamWriter.md "interface in javax.xml.stream") xmlStreamWriter)

    Creates a new instance of a `StAXResult`
    by supplying an [`XMLStreamWriter`](../../stream/XMLStreamWriter.md "interface in javax.xml.stream").

    `XMLStreamWriter` must be a
    non-`null` reference.

    Parameters:
    :   `xmlStreamWriter` - `XMLStreamWriter` used to create
        this `StAXResult`.

    Throws:
    :   `IllegalArgumentException` - If `xmlStreamWriter` ==
        `null`.
* ## Method Details

  + ### getXMLEventWriter

    public [XMLEventWriter](../../stream/XMLEventWriter.md "interface in javax.xml.stream") getXMLEventWriter()

    Get the `XMLEventWriter` used by this
    `StAXResult`.

    `XMLEventWriter` will be `null`
    if this `StAXResult` was created with a
    `XMLStreamWriter`.

    Returns:
    :   `XMLEventWriter` used by this
        `StAXResult`.
  + ### getXMLStreamWriter

    public [XMLStreamWriter](../../stream/XMLStreamWriter.md "interface in javax.xml.stream") getXMLStreamWriter()

    Get the `XMLStreamWriter` used by this
    `StAXResult`.

    `XMLStreamWriter` will be `null`
    if this `StAXResult` was created with a
    `XMLEventWriter`.

    Returns:
    :   `XMLStreamWriter` used by this
        `StAXResult`.
  + ### setSystemId

    public void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    In the context of a `StAXResult`, it is not appropriate
    to explicitly set the system identifier.
    The `XMLEventWriter` or `XMLStreamWriter`
    used to construct this `StAXResult` determines the
    system identifier of the XML result.

    An [`UnsupportedOperationException`](../../../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang") is **always**
    thrown by this method.

    Specified by:
    :   `setSystemId` in interface `Result`

    Parameters:
    :   `systemId` - Ignored.

    Throws:
    :   `UnsupportedOperationException` - Is **always**
        thrown by this method.
  + ### getSystemId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    The returned system identifier is always `null`.

    Specified by:
    :   `getSystemId` in interface `Result`

    Returns:
    :   The returned system identifier is always `null`.