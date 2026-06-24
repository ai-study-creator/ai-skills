Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Interface XMLCryptoContext

All Known Subinterfaces:
:   `XMLSignContext`, `XMLValidateContext`

All Known Implementing Classes:
:   `DOMCryptoContext`, `DOMSignContext`, `DOMValidateContext`

---

public interface XMLCryptoContext

Contains common context information for XML cryptographic operations.

This interface contains methods for setting and retrieving properties
that affect the processing of XML signatures or XML encrypted structures.

Note that `XMLCryptoContext` instances can contain information
and state specific to the XML cryptographic structure it is used with.
The results are unpredictable if an `XMLCryptoContext` is
used with multiple structures (for example, you should not use the same
[`XMLValidateContext`](dsig/XMLValidateContext.md "interface in javax.xml.crypto.dsig") instance to validate two
different [`XMLSignature`](dsig/XMLSignature.md "interface in javax.xml.crypto.dsig") objects).

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `get(Object key)`

  Returns the value to which this context maps the specified key.

  `String`

  `getBaseURI()`

  Returns the base URI.

  `String`

  `getDefaultNamespacePrefix()`

  Returns the default namespace prefix.

  `KeySelector`

  `getKeySelector()`

  Returns the key selector for finding a key.

  `String`

  `getNamespacePrefix(String namespaceURI,
  String defaultPrefix)`

  Returns the namespace prefix that the specified namespace URI is
  associated with.

  `Object`

  `getProperty(String name)`

  Returns the value of the specified property.

  `URIDereferencer`

  `getURIDereferencer()`

  Returns a `URIDereferencer` that is used to dereference
  [`URIReference`](URIReference.md "interface in javax.xml.crypto")s.

  `Object`

  `put(Object key,
  Object value)`

  Associates the specified value with the specified key in this context.

  `String`

  `putNamespacePrefix(String namespaceURI,
  String prefix)`

  Maps the specified namespace URI to the specified prefix.

  `void`

  `setBaseURI(String baseURI)`

  Sets the base URI.

  `void`

  `setDefaultNamespacePrefix(String defaultPrefix)`

  Sets the default namespace prefix.

  `void`

  `setKeySelector(KeySelector ks)`

  Sets the key selector for finding a key.

  `Object`

  `setProperty(String name,
  Object value)`

  Sets the specified property.

  `void`

  `setURIDereferencer(URIDereferencer dereferencer)`

  Sets a `URIDereferencer` that is used to dereference
  [`URIReference`](URIReference.md "interface in javax.xml.crypto")s.

* ## Method Details

  + ### getBaseURI

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getBaseURI()

    Returns the base URI.

    Returns:
    :   the base URI, or `null` if not specified

    See Also:
    :   - [`setBaseURI(String)`](#setBaseURI(java.lang.String))
  + ### setBaseURI

    void setBaseURI([String](../../../../java.base/java/lang/String.md "class in java.lang") baseURI)

    Sets the base URI.

    Parameters:
    :   `baseURI` - the base URI, or `null` to remove current
        value

    Throws:
    :   `IllegalArgumentException` - if `baseURI` is not RFC
        2396 compliant

    See Also:
    :   - [`getBaseURI()`](#getBaseURI())
  + ### getKeySelector

    [KeySelector](KeySelector.md "class in javax.xml.crypto") getKeySelector()

    Returns the key selector for finding a key.

    Returns:
    :   the key selector, or `null` if not specified

    See Also:
    :   - [`setKeySelector(KeySelector)`](#setKeySelector(javax.xml.crypto.KeySelector))
  + ### setKeySelector

    void setKeySelector([KeySelector](KeySelector.md "class in javax.xml.crypto") ks)

    Sets the key selector for finding a key.

    Parameters:
    :   `ks` - the key selector, or `null` to remove the current
        setting

    See Also:
    :   - [`getKeySelector()`](#getKeySelector())
  + ### getURIDereferencer

    [URIDereferencer](URIDereferencer.md "interface in javax.xml.crypto") getURIDereferencer()

    Returns a `URIDereferencer` that is used to dereference
    [`URIReference`](URIReference.md "interface in javax.xml.crypto")s.

    Returns:
    :   the `URIDereferencer`, or `null` if not
        specified

    See Also:
    :   - [`setURIDereferencer(URIDereferencer)`](#setURIDereferencer(javax.xml.crypto.URIDereferencer))
  + ### setURIDereferencer

    void setURIDereferencer([URIDereferencer](URIDereferencer.md "interface in javax.xml.crypto") dereferencer)

    Sets a `URIDereferencer` that is used to dereference
    [`URIReference`](URIReference.md "interface in javax.xml.crypto")s. The specified `URIDereferencer`
    is used in place of an implementation's default
    `URIDereferencer`.

    Parameters:
    :   `dereferencer` - the `URIDereferencer`, or
        `null` to remove any current setting

    See Also:
    :   - [`getURIDereferencer()`](#getURIDereferencer())
  + ### getNamespacePrefix

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getNamespacePrefix([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") defaultPrefix)

    Returns the namespace prefix that the specified namespace URI is
    associated with. Returns the specified default prefix if the specified
    namespace URI has not been bound to a prefix. To bind a namespace URI
    to a prefix, call the [`putNamespacePrefix`](#putNamespacePrefix(java.lang.String,java.lang.String))
    method.

    Parameters:
    :   `namespaceURI` - a namespace URI
    :   `defaultPrefix` - the prefix to be returned in the event that the
        the specified namespace URI has not been bound to a prefix.

    Returns:
    :   the prefix that is associated with the specified namespace URI,
        or `defaultPrefix` if the URI is not registered. If
        the namespace URI is registered but has no prefix, an empty string
        (`""`) is returned.

    Throws:
    :   `NullPointerException` - if `namespaceURI` is
        `null`

    See Also:
    :   - [`putNamespacePrefix(String, String)`](#putNamespacePrefix(java.lang.String,java.lang.String))
  + ### putNamespacePrefix

    [String](../../../../java.base/java/lang/String.md "class in java.lang") putNamespacePrefix([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") prefix)

    Maps the specified namespace URI to the specified prefix. If there is
    already a prefix associated with the specified namespace URI, the old
    prefix is replaced by the specified prefix.

    Parameters:
    :   `namespaceURI` - a namespace URI
    :   `prefix` - a namespace prefix (or `null` to remove any
        existing mapping). Specifying the empty string (`""`)
        binds no prefix to the namespace URI.

    Returns:
    :   the previous prefix associated with the specified namespace
        URI, or `null` if there was none

    Throws:
    :   `NullPointerException` - if `namespaceURI` is
        `null`

    See Also:
    :   - [`getNamespacePrefix(String, String)`](#getNamespacePrefix(java.lang.String,java.lang.String))
  + ### getDefaultNamespacePrefix

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getDefaultNamespacePrefix()

    Returns the default namespace prefix. The default namespace prefix
    is the prefix for all namespace URIs not explicitly set by the
    [`putNamespacePrefix`](#putNamespacePrefix(java.lang.String,java.lang.String)) method.

    Returns:
    :   the default namespace prefix, or `null` if none has
        been set.

    See Also:
    :   - [`setDefaultNamespacePrefix(String)`](#setDefaultNamespacePrefix(java.lang.String))
  + ### setDefaultNamespacePrefix

    void setDefaultNamespacePrefix([String](../../../../java.base/java/lang/String.md "class in java.lang") defaultPrefix)

    Sets the default namespace prefix. This sets the namespace prefix for
    all namespace URIs not explicitly set by the [`putNamespacePrefix`](#putNamespacePrefix(java.lang.String,java.lang.String)) method.

    Parameters:
    :   `defaultPrefix` - the default namespace prefix, or `null`
        to remove the current setting. Specify the empty string
        (`""`) to bind no prefix.

    See Also:
    :   - [`getDefaultNamespacePrefix()`](#getDefaultNamespacePrefix())
  + ### setProperty

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") setProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Sets the specified property.

    Parameters:
    :   `name` - the name of the property
    :   `value` - the value of the property to be set

    Returns:
    :   the previous value of the specified property, or
        `null` if it did not have a value

    Throws:
    :   `NullPointerException` - if `name` is `null`

    See Also:
    :   - [`getProperty(String)`](#getProperty(java.lang.String))
  + ### getProperty

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the value of the specified property.

    Parameters:
    :   `name` - the name of the property

    Returns:
    :   the current value of the specified property, or
        `null` if it does not have a value

    Throws:
    :   `NullPointerException` - if `name` is `null`

    See Also:
    :   - [`setProperty(String, Object)`](#setProperty(java.lang.String,java.lang.Object))
  + ### get

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") get([Object](../../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns the value to which this context maps the specified key.

    More formally, if this context contains a mapping from a key
    `k` to a value `v` such that
    `(key==null ? k==null : key.equals(k))`, then this method
    returns `v`; otherwise it returns `null`. (There
    can be at most one such mapping.)

    This method is useful for retrieving arbitrary information that is
    specific to the cryptographic operation that this context is used for.

    Parameters:
    :   `key` - the key whose associated value is to be returned

    Returns:
    :   the value to which this context maps the specified key, or
        `null` if there is no mapping for the key

    See Also:
    :   - [`put(Object, Object)`](#put(java.lang.Object,java.lang.Object))
  + ### put

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") put([Object](../../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Associates the specified value with the specified key in this context.
    If the context previously contained a mapping for this key, the old
    value is replaced by the specified value.

    This method is useful for storing arbitrary information that is
    specific to the cryptographic operation that this context is used for.

    Parameters:
    :   `key` - key with which the specified value is to be associated with
    :   `value` - value to be associated with the specified key

    Returns:
    :   the previous value associated with the key, or `null`
        if there was no mapping for the key

    Throws:
    :   `IllegalArgumentException` - if some aspect of this key or value
        prevents it from being stored in this context

    See Also:
    :   - [`get(Object)`](#get(java.lang.Object))