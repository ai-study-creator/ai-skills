Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface KeyStore.Entry

All Known Implementing Classes:
:   `KeyStore.PrivateKeyEntry`, `KeyStore.SecretKeyEntry`, `KeyStore.TrustedCertificateEntry`

Enclosing class:
:   `KeyStore`

---

public static interface KeyStore.Entry

A marker interface for `KeyStore` entry types.

Since:
:   1.5

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `KeyStore.Entry.Attribute`

  An attribute associated with a keystore entry.
* ## Method Summary

  All MethodsInstance MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default Set<KeyStore.Entry.Attribute>`

  `getAttributes()`

  Retrieves the attributes associated with an entry.

* ## Method Details

  + ### getAttributes

    default [Set](../util/Set.md "interface in java.util")<[KeyStore.Entry.Attribute](KeyStore.Entry.Attribute.md "interface in java.security")> getAttributes()

    Retrieves the attributes associated with an entry.

    Returns:
    :   an unmodifiable `Set` of attributes, possibly empty

    Since:
    :   1.8