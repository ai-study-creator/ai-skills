Module [java.security.jgss](../../../module-summary.md)

Package [org.ietf.jgss](package-summary.md)

# Class Oid

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

org.ietf.jgss.Oid

---

public class Oid
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

This class represents Universal Object Identifiers (Oids) and their
associated operations.

Oids are hierarchically globally-interpretable identifiers used
within the GSS-API framework to identify mechanisms and name formats.

The structure and encoding of Oids is defined in ISOIEC-8824 and
ISOIEC-8825. For example the Oid representation of Kerberos V5
mechanism is "1.2.840.113554.1.2.2"

The GSSName name class contains public static Oid objects
representing the standard name types defined in GSS-API.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Oid(byte[] data)`

  Creates an Oid object from its ASN.1 DER encoding.

  `Oid(InputStream derOid)`

  Creates an Oid object from its ASN.1 DER encoding.

  `Oid(String strOid)`

  Constructs an Oid object from a string representation of its
  integer components.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `containedIn(Oid[] oids)`

  A utility method to test if this Oid value is contained within the
  supplied Oid array.

  `boolean`

  `equals(Object other)`

  Tests if two Oid objects represent the same Object identifier
  value.

  `byte[]`

  `getDER()`

  Returns the full ASN.1 DER encoding for this oid object, which
  includes the tag and length.

  `int`

  `hashCode()`

  Returns a hashcode value for this Oid.

  `String`

  `toString()`

  Returns a string representation of the oid's integer components
  in dot separated notation.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Oid

    public Oid([String](../../../../java.base/java/lang/String.md "class in java.lang") strOid)
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Constructs an Oid object from a string representation of its
    integer components.

    Parameters:
    :   `strOid` - the dot separated string representation of the oid.
        For instance, "1.2.840.113554.1.2.2".

    Throws:
    :   `GSSException` - may be thrown when the string is incorrectly
        formatted
  + ### Oid

    public Oid([InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") derOid)
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Creates an Oid object from its ASN.1 DER encoding. This refers to
    the full encoding including tag and length. The structure and
    encoding of Oids is defined in ISOIEC-8824 and ISOIEC-8825. This
    method is identical in functionality to its byte array counterpart.

    Parameters:
    :   `derOid` - stream containing the DER encoded oid

    Throws:
    :   `GSSException` - may be thrown when the DER encoding does not
        follow the prescribed format.
  + ### Oid

    public Oid(byte[] data)
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Creates an Oid object from its ASN.1 DER encoding. This refers to
    the full encoding including tag and length. The structure and
    encoding of Oids is defined in ISOIEC-8824 and ISOIEC-8825. This
    method is identical in functionality to its InputStream counterpart.

    Parameters:
    :   `data` - byte array containing the DER encoded oid

    Throws:
    :   `GSSException` - may be thrown when the DER encoding does not
        follow the prescribed format.
* ## Method Details

  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the oid's integer components
    in dot separated notation.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   string representation in the following format: "1.2.3.4.5"
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") other)

    Tests if two Oid objects represent the same Object identifier
    value.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the Oid object that has to be compared to this one

    Returns:
    :   `true` if the two Oid objects represent the same
        value, `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getDER

    public byte[] getDER()
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Returns the full ASN.1 DER encoding for this oid object, which
    includes the tag and length.

    Returns:
    :   byte array containing the DER encoding of this oid object.

    Throws:
    :   `GSSException` - may be thrown when the oid can't be encoded
  + ### containedIn

    public boolean containedIn([Oid](Oid.md "class in org.ietf.jgss")[] oids)

    A utility method to test if this Oid value is contained within the
    supplied Oid array.

    Parameters:
    :   `oids` - the array of Oid's to search

    Returns:
    :   true if the array contains this Oid value, false otherwise
  + ### hashCode

    public int hashCode()

    Returns a hashcode value for this Oid.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hashCode value

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))