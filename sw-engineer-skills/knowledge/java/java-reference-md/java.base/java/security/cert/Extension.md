Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Interface Extension

---

public interface Extension

This interface represents an X.509 extension.

Extensions provide a means of associating additional attributes with users
or public keys and for managing a certification hierarchy. The extension
format also allows communities to define private extensions to carry
information unique to those communities.

Each extension contains an object identifier, a criticality setting
indicating whether it is a critical or a non-critical extension, and
an ASN.1 DER-encoded value. Its ASN.1 definition is:

```
     Extension ::= SEQUENCE {
         extnId        OBJECT IDENTIFIER,
         critical      BOOLEAN DEFAULT FALSE,
         extnValue     OCTET STRING
                 -- contains a DER encoding of a value
                 -- of the type registered for use with
                 -- the extnId object identifier value
     }
```

This interface is designed to provide access to a single extension,
unlike [`X509Extension`](X509Extension.md "interface in java.security.cert") which is more suitable
for accessing a set of extensions.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `encode(OutputStream out)`

  Generates the extension's DER encoding and writes it to the output
  stream.

  `String`

  `getId()`

  Gets the extensions's object identifier.

  `byte[]`

  `getValue()`

  Gets the extensions's DER-encoded value.

  `boolean`

  `isCritical()`

  Gets the extension's criticality setting.

* ## Method Details

  + ### getId

    [String](../../lang/String.md "class in java.lang") getId()

    Gets the extensions's object identifier.

    Returns:
    :   the object identifier as a String
  + ### isCritical

    boolean isCritical()

    Gets the extension's criticality setting.

    Returns:
    :   true if this is a critical extension.
  + ### getValue

    byte[] getValue()

    Gets the extensions's DER-encoded value. Note, this is the bytes
    that are encoded as an OCTET STRING. It does not include the OCTET
    STRING tag and length.

    Returns:
    :   a copy of the extension's value, or `null` if no
        extension value is present.
  + ### encode

    void encode([OutputStream](../../io/OutputStream.md "class in java.io") out)
    throws [IOException](../../io/IOException.md "class in java.io")

    Generates the extension's DER encoding and writes it to the output
    stream.

    Parameters:
    :   `out` - the output stream

    Throws:
    :   `IOException` - on encoding or output error.
    :   `NullPointerException` - if `out` is `null`.