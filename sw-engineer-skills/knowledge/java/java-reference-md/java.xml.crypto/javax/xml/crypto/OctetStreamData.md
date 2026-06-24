Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Class OctetStreamData

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.OctetStreamData

All Implemented Interfaces:
:   `Data`

---

public class OctetStreamData
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Data](Data.md "interface in javax.xml.crypto")

A representation of a `Data` type containing an octet stream.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OctetStreamData(InputStream octetStream)`

  Creates a new `OctetStreamData`.

  `OctetStreamData(InputStream octetStream,
  String uri,
  String mimeType)`

  Creates a new `OctetStreamData`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getMimeType()`

  Returns the MIME type associated with the data object represented by this
  `OctetStreamData`.

  `InputStream`

  `getOctetStream()`

  Returns the input stream of this `OctetStreamData`.

  `String`

  `getURI()`

  Returns the URI String identifying the data object represented by this
  `OctetStreamData`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### OctetStreamData

    public OctetStreamData([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") octetStream)

    Creates a new `OctetStreamData`.

    Parameters:
    :   `octetStream` - the input stream containing the octets

    Throws:
    :   `NullPointerException` - if `octetStream` is
        `null`
  + ### OctetStreamData

    public OctetStreamData([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") octetStream,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") mimeType)

    Creates a new `OctetStreamData`.

    Parameters:
    :   `octetStream` - the input stream containing the octets
    :   `uri` - the URI String identifying the data object (may be
        `null`)
    :   `mimeType` - the MIME type associated with the data object (may be
        `null`)

    Throws:
    :   `NullPointerException` - if `octetStream` is
        `null`
* ## Method Details

  + ### getOctetStream

    public [InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") getOctetStream()

    Returns the input stream of this `OctetStreamData`.

    Returns:
    :   the input stream of this `OctetStreamData`.
  + ### getURI

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getURI()

    Returns the URI String identifying the data object represented by this
    `OctetStreamData`.

    Returns:
    :   the URI String or `null` if not applicable
  + ### getMimeType

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getMimeType()

    Returns the MIME type associated with the data object represented by this
    `OctetStreamData`.

    Returns:
    :   the MIME type or `null` if not applicable