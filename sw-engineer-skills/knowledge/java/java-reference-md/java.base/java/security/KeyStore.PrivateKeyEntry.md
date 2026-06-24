Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyStore.PrivateKeyEntry

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyStore.PrivateKeyEntry

All Implemented Interfaces:
:   `KeyStore.Entry`

Enclosing class:
:   `KeyStore`

---

public static final class KeyStore.PrivateKeyEntry
extends [Object](../lang/Object.md "class in java.lang")
implements [KeyStore.Entry](KeyStore.Entry.md "interface in java.security")

A `KeyStore` entry that holds a `PrivateKey`
and corresponding certificate chain.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.security.[KeyStore.Entry](KeyStore.Entry.md "interface in java.security")

  `KeyStore.Entry.Attribute`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrivateKeyEntry(PrivateKey privateKey,
  Certificate[] chain)`

  Constructs a `PrivateKeyEntry` with a
  `PrivateKey` and corresponding certificate chain.

  `PrivateKeyEntry(PrivateKey privateKey,
  Certificate[] chain,
  Set<KeyStore.Entry.Attribute> attributes)`

  Constructs a `PrivateKeyEntry` with a `PrivateKey` and
  corresponding certificate chain and associated entry attributes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Set<KeyStore.Entry.Attribute>`

  `getAttributes()`

  Retrieves the attributes associated with an entry.

  `Certificate`

  `getCertificate()`

  Gets the end entity `Certificate`
  from the certificate chain in this entry.

  `Certificate[]`

  `getCertificateChain()`

  Gets the `Certificate` chain from this entry.

  `PrivateKey`

  `getPrivateKey()`

  Gets the `PrivateKey` from this entry.

  `String`

  `toString()`

  Returns a string representation of this PrivateKeyEntry.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrivateKeyEntry

    public PrivateKeyEntry([PrivateKey](PrivateKey.md "interface in java.security") privateKey,
    [Certificate](cert/Certificate.md "class in java.security.cert")[] chain)

    Constructs a `PrivateKeyEntry` with a
    `PrivateKey` and corresponding certificate chain.

    The specified `chain` is cloned before it is stored
    in the new `PrivateKeyEntry` object.

    Parameters:
    :   `privateKey` - the `PrivateKey`
    :   `chain` - an array of `Certificate`s
        representing the certificate chain.
        The chain must be ordered and contain a
        `Certificate` at index 0
        corresponding to the private key.

    Throws:
    :   `NullPointerException` - if
        `privateKey` or `chain`
        is `null`
    :   `IllegalArgumentException` - if the specified chain has a
        length of 0, if the specified chain does not contain
        `Certificate`s of the same type,
        or if the `PrivateKey` algorithm
        does not match the algorithm of the `PublicKey`
        in the end entity `Certificate` (at index 0)
  + ### PrivateKeyEntry

    public PrivateKeyEntry([PrivateKey](PrivateKey.md "interface in java.security") privateKey,
    [Certificate](cert/Certificate.md "class in java.security.cert")[] chain,
    [Set](../util/Set.md "interface in java.util")<[KeyStore.Entry.Attribute](KeyStore.Entry.Attribute.md "interface in java.security")> attributes)

    Constructs a `PrivateKeyEntry` with a `PrivateKey` and
    corresponding certificate chain and associated entry attributes.

    The specified `chain` and `attributes` are cloned
    before they are stored in the new `PrivateKeyEntry` object.

    Parameters:
    :   `privateKey` - the `PrivateKey`
    :   `chain` - an array of `Certificate`s
        representing the certificate chain.
        The chain must be ordered and contain a
        `Certificate` at index 0
        corresponding to the private key.
    :   `attributes` - the attributes

    Throws:
    :   `NullPointerException` - if `privateKey`, `chain`
        or `attributes` is `null`
    :   `IllegalArgumentException` - if the specified chain has a
        length of 0, if the specified chain does not contain
        `Certificate`s of the same type,
        or if the `PrivateKey` algorithm
        does not match the algorithm of the `PublicKey`
        in the end entity `Certificate` (at index 0)

    Since:
    :   1.8
* ## Method Details

  + ### getPrivateKey

    public [PrivateKey](PrivateKey.md "interface in java.security") getPrivateKey()

    Gets the `PrivateKey` from this entry.

    Returns:
    :   the `PrivateKey` from this entry
  + ### getCertificateChain

    public [Certificate](cert/Certificate.md "class in java.security.cert")[] getCertificateChain()

    Gets the `Certificate` chain from this entry.

    The stored chain is cloned before being returned.

    Returns:
    :   an array of `Certificate`s corresponding
        to the certificate chain for the public key.
        If the certificates are of type X.509,
        the runtime type of the returned array is
        `X509Certificate[]`.
  + ### getCertificate

    public [Certificate](cert/Certificate.md "class in java.security.cert") getCertificate()

    Gets the end entity `Certificate`
    from the certificate chain in this entry.

    Returns:
    :   the end entity `Certificate` (at index 0)
        from the certificate chain in this entry.
        If the certificate is of type X.509,
        the runtime type of the returned certificate is
        `X509Certificate`.
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

    Returns a string representation of this PrivateKeyEntry.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this PrivateKeyEntry.