Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyStore.SecretKeyEntry

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyStore.SecretKeyEntry

All Implemented Interfaces:
:   `KeyStore.Entry`

Enclosing class:
:   `KeyStore`

---

public static final class KeyStore.SecretKeyEntry
extends [Object](../lang/Object.md "class in java.lang")
implements [KeyStore.Entry](KeyStore.Entry.md "interface in java.security")

A `KeyStore` entry that holds a `SecretKey`.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.security.[KeyStore.Entry](KeyStore.Entry.md "interface in java.security")

  `KeyStore.Entry.Attribute`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SecretKeyEntry(SecretKey secretKey)`

  Constructs a `SecretKeyEntry` with a
  `SecretKey`.

  `SecretKeyEntry(SecretKey secretKey,
  Set<KeyStore.Entry.Attribute> attributes)`

  Constructs a `SecretKeyEntry` with a `SecretKey` and
  associated entry attributes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Set<KeyStore.Entry.Attribute>`

  `getAttributes()`

  Retrieves the attributes associated with an entry.

  `SecretKey`

  `getSecretKey()`

  Gets the `SecretKey` from this entry.

  `String`

  `toString()`

  Returns a string representation of this SecretKeyEntry.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SecretKeyEntry

    public SecretKeyEntry([SecretKey](../../javax/crypto/SecretKey.md "interface in javax.crypto") secretKey)

    Constructs a `SecretKeyEntry` with a
    `SecretKey`.

    Parameters:
    :   `secretKey` - the `SecretKey`

    Throws:
    :   `NullPointerException` - if `secretKey`
        is `null`
  + ### SecretKeyEntry

    public SecretKeyEntry([SecretKey](../../javax/crypto/SecretKey.md "interface in javax.crypto") secretKey,
    [Set](../util/Set.md "interface in java.util")<[KeyStore.Entry.Attribute](KeyStore.Entry.Attribute.md "interface in java.security")> attributes)

    Constructs a `SecretKeyEntry` with a `SecretKey` and
    associated entry attributes.

    The specified `attributes` is cloned before it is stored
    in the new `SecretKeyEntry` object.

    Parameters:
    :   `secretKey` - the `SecretKey`
    :   `attributes` - the attributes

    Throws:
    :   `NullPointerException` - if `secretKey` or
        `attributes` is `null`

    Since:
    :   1.8
* ## Method Details

  + ### getSecretKey

    public [SecretKey](../../javax/crypto/SecretKey.md "interface in javax.crypto") getSecretKey()

    Gets the `SecretKey` from this entry.

    Returns:
    :   the `SecretKey` from this entry
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

    Returns a string representation of this SecretKeyEntry.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this SecretKeyEntry.