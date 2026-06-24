Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyStore.TrustedCertificateEntry

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyStore.TrustedCertificateEntry

All Implemented Interfaces:
:   `KeyStore.Entry`

Enclosing class:
:   `KeyStore`

---

public static final class KeyStore.TrustedCertificateEntry
extends [Object](../lang/Object.md "class in java.lang")
implements [KeyStore.Entry](KeyStore.Entry.md "interface in java.security")

A `KeyStore` entry that holds a trusted
`Certificate`.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.security.[KeyStore.Entry](KeyStore.Entry.md "interface in java.security")

  `KeyStore.Entry.Attribute`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TrustedCertificateEntry(Certificate trustedCert)`

  Constructs a `TrustedCertificateEntry` with a
  trusted `Certificate`.

  `TrustedCertificateEntry(Certificate trustedCert,
  Set<KeyStore.Entry.Attribute> attributes)`

  Constructs a `TrustedCertificateEntry` with a
  trusted `Certificate` and associated entry attributes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Set<KeyStore.Entry.Attribute>`

  `getAttributes()`

  Retrieves the attributes associated with an entry.

  `Certificate`

  `getTrustedCertificate()`

  Gets the trusted `Certificate` from this entry.

  `String`

  `toString()`

  Returns a string representation of this TrustedCertificateEntry.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TrustedCertificateEntry

    public TrustedCertificateEntry([Certificate](cert/Certificate.md "class in java.security.cert") trustedCert)

    Constructs a `TrustedCertificateEntry` with a
    trusted `Certificate`.

    Parameters:
    :   `trustedCert` - the trusted `Certificate`

    Throws:
    :   `NullPointerException` - if
        `trustedCert` is `null`
  + ### TrustedCertificateEntry

    public TrustedCertificateEntry([Certificate](cert/Certificate.md "class in java.security.cert") trustedCert,
    [Set](../util/Set.md "interface in java.util")<[KeyStore.Entry.Attribute](KeyStore.Entry.Attribute.md "interface in java.security")> attributes)

    Constructs a `TrustedCertificateEntry` with a
    trusted `Certificate` and associated entry attributes.

    The specified `attributes` is cloned before it is stored
    in the new `TrustedCertificateEntry` object.

    Parameters:
    :   `trustedCert` - the trusted `Certificate`
    :   `attributes` - the attributes

    Throws:
    :   `NullPointerException` - if `trustedCert` or
        `attributes` is `null`

    Since:
    :   1.8
* ## Method Details

  + ### getTrustedCertificate

    public [Certificate](cert/Certificate.md "class in java.security.cert") getTrustedCertificate()

    Gets the trusted `Certificate` from this entry.

    Returns:
    :   the trusted `Certificate` from this entry
  + ### getAttributes

    public [Set](../util/Set.md "interface in java.util")<[KeyStore.Entry.Attribute](KeyStore.Entry.Attribute.md "interface in java.security")> getAttributes()

    Retrieves the attributes associated with an entry.

    Specified by:
    :   `getAttributes` in interface `KeyStore.Entry`

    Returns:
    :   an unmodifiable `Set` of attributes, possibly empty

    Since:
    :   1.8
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a string representation of this TrustedCertificateEntry.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this TrustedCertificateEntry.