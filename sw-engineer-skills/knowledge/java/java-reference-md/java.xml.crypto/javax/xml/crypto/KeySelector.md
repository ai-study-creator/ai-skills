Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Class KeySelector

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.KeySelector

---

public abstract class KeySelector
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A selector that finds and returns a key using the data contained in a
[`KeyInfo`](dsig/keyinfo/KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo") object. An example of an implementation of
this class is one that searches a [`KeyStore`](../../../../java.base/java/security/KeyStore.md "class in java.security") for
trusted keys that match information contained in a `KeyInfo`.

Whether or not the returned key is trusted and the mechanisms
used to determine that is implementation-specific.

Since:
:   1.6

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `KeySelector.Purpose`

  The purpose of the key that is to be selected.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `KeySelector()`

  Default no-args constructor; intended for invocation by subclasses only.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract KeySelectorResult`

  `select(KeyInfo keyInfo,
  KeySelector.Purpose purpose,
  AlgorithmMethod method,
  XMLCryptoContext context)`

  Attempts to find a key that satisfies the specified constraints.

  `static KeySelector`

  `singletonKeySelector(Key key)`

  Returns a `KeySelector` that always selects the specified
  key, regardless of the `KeyInfo` passed to it.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeySelector

    protected KeySelector()

    Default no-args constructor; intended for invocation by subclasses only.
* ## Method Details

  + ### select

    public abstract [KeySelectorResult](KeySelectorResult.md "interface in javax.xml.crypto") select([KeyInfo](dsig/keyinfo/KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo") keyInfo,
    [KeySelector.Purpose](KeySelector.Purpose.md "class in javax.xml.crypto") purpose,
    [AlgorithmMethod](AlgorithmMethod.md "interface in javax.xml.crypto") method,
    [XMLCryptoContext](XMLCryptoContext.md "interface in javax.xml.crypto") context)
    throws [KeySelectorException](KeySelectorException.md "class in javax.xml.crypto")

    Attempts to find a key that satisfies the specified constraints.

    Parameters:
    :   `keyInfo` - a `KeyInfo` (may be `null`)
    :   `purpose` - the key's purpose ([`KeySelector.Purpose.SIGN`](KeySelector.Purpose.md#SIGN),
        [`KeySelector.Purpose.VERIFY`](KeySelector.Purpose.md#VERIFY), [`KeySelector.Purpose.ENCRYPT`](KeySelector.Purpose.md#ENCRYPT), or
        [`KeySelector.Purpose.DECRYPT`](KeySelector.Purpose.md#DECRYPT))
    :   `method` - the algorithm method that this key is to be used for.
        Only keys that are compatible with the algorithm and meet the
        constraints of the specified algorithm should be returned.
    :   `context` - an `XMLCryptoContext` that may contain
        useful information for finding an appropriate key. If this key
        selector supports resolving [`RetrievalMethod`](dsig/keyinfo/RetrievalMethod.md "interface in javax.xml.crypto.dsig.keyinfo") types, the
        context's `baseURI` and `dereferencer`
        parameters (if specified) should be used by the selector to
        resolve and dereference the URI.

    Returns:
    :   the result of the key selector

    Throws:
    :   `KeySelectorException` - if an exceptional condition occurs while
        attempting to find a key. Note that an inability to find a key is not
        considered an exception (`null` should be
        returned in that case). However, an error condition (ex: network
        communications failure) that prevented the `KeySelector`
        from finding a potential key should be considered an exception.
    :   `ClassCastException` - if the data type of `method`
        is not supported by this key selector
  + ### singletonKeySelector

    public static [KeySelector](KeySelector.md "class in javax.xml.crypto") singletonKeySelector([Key](../../../../java.base/java/security/Key.md "interface in java.security") key)

    Returns a `KeySelector` that always selects the specified
    key, regardless of the `KeyInfo` passed to it.

    Parameters:
    :   `key` - the sole key to be stored in the key selector

    Returns:
    :   a key selector that always selects the specified key

    Throws:
    :   `NullPointerException` - if `key` is `null`