Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.stax](package-summary.md)

# Class StAXSource

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.transform.stax.StAXSource

All Implemented Interfaces:
:   `Source`

---

public class StAXSource
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Source](../Source.md "interface in javax.xml.transform")

Acts as a holder for an XML [`Source`](../Source.md "interface in javax.xml.transform") in the
form of a StAX reader,i.e.
[`XMLStreamReader`](../../stream/XMLStreamReader.md "interface in javax.xml.stream") or [`XMLEventReader`](../../stream/XMLEventReader.md "interface in javax.xml.stream").
`StAXSource` can be used in all cases that accept
a `Source`, e.g. [`Transformer`](../Transformer.md "class in javax.xml.transform"),
[`Validator`](../../validation/Validator.md "class in javax.xml.validation") which accept
`Source` as input.

`StAXSource`s are consumed during processing
and are not reusable.

Since:
:   1.6

See Also:
:   * [JSR 173: Streaming API for XML](http://jcp.org/en/jsr/detail?id=173)
    * [`XMLStreamReader`](../../stream/XMLStreamReader.md "interface in javax.xml.stream")
    * [`XMLEventReader`](../../stream/XMLEventReader.md "interface in javax.xml.stream")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `FEATURE`

  If [`TransformerFactory.getFeature(String name)`](../TransformerFactory.md#getFeature(java.lang.String))
  returns true when passed this value as an argument,
  the Transformer supports Source input of this type.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StAXSource(XMLEventReader xmlEventReader)`

  Creates a new instance of a `StAXSource`
  by supplying an [`XMLEventReader`](../../stream/XMLEventReader.md "interface in javax.xml.stream").

  `StAXSource(XMLStreamReader xmlStreamReader)`

  Creates a new instance of a `StAXSource`
  by supplying an [`XMLStreamReader`](../../stream/XMLStreamReader.md "interface in javax.xml.stream").
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getSystemId()`

  Get the system identifier used by this
  `StAXSource`.

  `XMLEventReader`

  `getXMLEventReader()`

  Get the `XMLEventReader` used by this
  `StAXSource`.

  `XMLStreamReader`

  `getXMLStreamReader()`

  Get the `XMLStreamReader` used by this
  `StAXSource`.

  `boolean`

  `isEmpty()`

  Indicates whether the `StAXSource` object is empty.

  `void`

  `setSystemId(String systemId)`

  In the context of a `StAXSource`, it is not appropriate
  to explicitly set the system identifier.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FEATURE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FEATURE

    If [`TransformerFactory.getFeature(String name)`](../TransformerFactory.md#getFeature(java.lang.String))
    returns true when passed this value as an argument,
    the Transformer supports Source input of this type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.transform.stax.StAXSource.FEATURE)
* ## Constructor Details

  + ### StAXSource

    public StAXSource([XMLEventReader](../../stream/XMLEventReader.md "interface in javax.xml.stream") xmlEventReader)
    throws [XMLStreamException](../../stream/XMLStreamException.md "class in javax.xml.stream")

    Creates a new instance of a `StAXSource`
    by supplying an [`XMLEventReader`](../../stream/XMLEventReader.md "interface in javax.xml.stream").

    `XMLEventReader` must be a
    non-`null` reference.

    `XMLEventReader` must be in
    [`XMLStreamConstants.START_DOCUMENT`](../../stream/XMLStreamConstants.md#START_DOCUMENT) or
    [`XMLStreamConstants.START_ELEMENT`](../../stream/XMLStreamConstants.md#START_ELEMENT) state.

    Parameters:
    :   `xmlEventReader` - `XMLEventReader` used to create
        this `StAXSource`.

    Throws:
    :   `XMLStreamException` - If `xmlEventReader` access
        throws an `Exception`.
    :   `IllegalArgumentException` - If `xmlEventReader` ==
        `null`.
    :   `IllegalStateException` - If `xmlEventReader`
        is not in `XMLStreamConstants.START_DOCUMENT` or
        `XMLStreamConstants.START_ELEMENT` state.
  + ### StAXSource

    public StAXSource([XMLStreamReader](../../stream/XMLStreamReader.md "interface in javax.xml.stream") xmlStreamReader)

    Creates a new instance of a `StAXSource`
    by supplying an [`XMLStreamReader`](../../stream/XMLStreamReader.md "interface in javax.xml.stream").

    `XMLStreamReader` must be a
    non-`null` reference.

    `XMLStreamReader` must be in
    [`XMLStreamConstants.START_DOCUMENT`](../../stream/XMLStreamConstants.md#START_DOCUMENT) or
    [`XMLStreamConstants.START_ELEMENT`](../../stream/XMLStreamConstants.md#START_ELEMENT) state.

    Parameters:
    :   `xmlStreamReader` - `XMLStreamReader` used to create
        this `StAXSource`.

    Throws:
    :   `IllegalArgumentException` - If `xmlStreamReader` ==
        `null`.
    :   `IllegalStateException` - If `xmlStreamReader`
        is not in `XMLStreamConstants.START_DOCUMENT` or
        `XMLStreamConstants.START_ELEMENT` state.
* ## Method Details

  + ### getXMLEventReader

    public [XMLEventReader](../../stream/XMLEventReader.md "interface in javax.xml.stream") getXMLEventReader()

    Get the `XMLEventReader` used by this
    `StAXSource`.

    `XMLEventReader` will be `null`.
    if this `StAXSource` was created with a
    `XMLStreamReader`.

    Returns:
    :   `XMLEventReader` used by this
        `StAXSource`.
  + ### getXMLStreamReader

    public [XMLStreamReader](../../stream/XMLStreamReader.md "interface in javax.xml.stream") getXMLStreamReader()

    Get the `XMLStreamReader` used by this
    `StAXSource`.

    `XMLStreamReader` will be `null`
    if this `StAXSource` was created with a
    `XMLEventReader`.

    Returns:
    :   `XMLStreamReader` used by this
        `StAXSource`.
  + ### setSystemId

    public void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    In the context of a `StAXSource`, it is not appropriate
    to explicitly set the system identifier.
    The `XMLStreamReader` or `XMLEventReader`
    used to construct this `StAXSource` determines the
    system identifier of the XML source.

    An [`UnsupportedOperationException`](../../../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang") is **always**
    thrown by this method.

    Specified by:
    :   `setSystemId` in interface `Source`

    Parameters:
    :   `systemId` - Ignored.

    Throws:
    :   `UnsupportedOperationException` - Is **always**
        thrown by this method.
  + ### getSystemId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the system identifier used by this
    `StAXSource`.

    The `XMLStreamReader` or `XMLEventReader`
    used to construct this `StAXSource` is queried to determine
    the system identifier of the XML source.

    The system identifier may be `null` or
    an empty `""` `String`.

    Specified by:
    :   `getSystemId` in interface `Source`

    Returns:
    :   System identifier used by this `StAXSource`.
  + ### isEmpty

    public boolean isEmpty()

    Indicates whether the `StAXSource` object is empty. Since a
    `StAXSource` object can never be empty, this method always returns
    false.

    Specified by:
    :   `isEmpty` in interface `Source`

    Returns:
    :   unconditionally false