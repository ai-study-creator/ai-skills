Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dom](package-summary.md)

# Class DOMCryptoContext

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dom.DOMCryptoContext

All Implemented Interfaces:
:   `XMLCryptoContext`

Direct Known Subclasses:
:   `DOMSignContext`, `DOMValidateContext`

---

public class DOMCryptoContext
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [XMLCryptoContext](../XMLCryptoContext.md "interface in javax.xml.crypto")

This class provides a DOM-specific implementation of the
[`XMLCryptoContext`](../XMLCryptoContext.md "interface in javax.xml.crypto") interface. It also includes additional
methods that are specific to a DOM-based implementation for registering
and retrieving elements that contain attributes of type ID.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DOMCryptoContext()`

  Default constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `get(Object key)`

  This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to get the object
  that the specified key maps to.

  `String`

  `getBaseURI()`

  Returns the base URI.

  `String`

  `getDefaultNamespacePrefix()`

  Returns the default namespace prefix.

  `Element`

  `getElementById(String idValue)`

  Returns the `Element` with the specified ID attribute value.

  `KeySelector`

  `getKeySelector()`

  Returns the key selector for finding a key.

  `String`

  `getNamespacePrefix(String namespaceURI,
  String defaultPrefix)`

  This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to get the prefix
  that the specified URI maps to.

  `Object`

  `getProperty(String name)`

  This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to get the object
  that the specified name maps to.

  `URIDereferencer`

  `getURIDereferencer()`

  Returns a `URIDereferencer` that is used to dereference
  [`URIReference`](../URIReference.md "interface in javax.xml.crypto")s.

  `Iterator<Map.Entry<String,Element>>`

  `iterator()`

  Returns a read-only iterator over the set of Id/Element mappings of
  this `DOMCryptoContext`.

  `Object`

  `put(Object key,
  Object value)`

  This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to map the key
  to the specified object.

  `String`

  `putNamespacePrefix(String namespaceURI,
  String prefix)`

  This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to map the URI
  to the specified prefix.

  `void`

  `setBaseURI(String baseURI)`

  Sets the base URI.

  `void`

  `setDefaultNamespacePrefix(String defaultPrefix)`

  Sets the default namespace prefix.

  `void`

  `setIdAttributeNS(Element element,
  String namespaceURI,
  String localName)`

  Registers the element's attribute specified by the namespace URI and
  local name to be of type ID.

  `void`

  `setKeySelector(KeySelector ks)`

  Sets the key selector for finding a key.

  `Object`

  `setProperty(String name,
  Object value)`

  This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to map the name
  to the specified object.

  `void`

  `setURIDereferencer(URIDereferencer dereferencer)`

  Sets a `URIDereferencer` that is used to dereference
  [`URIReference`](../URIReference.md "interface in javax.xml.crypto")s.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DOMCryptoContext

    protected DOMCryptoContext()

    Default constructor. (For invocation by subclass constructors).
* ## Method Details

  + ### getNamespacePrefix

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getNamespacePrefix([String](../../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") defaultPrefix)

    This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to get the prefix
    that the specified URI maps to. It returns the `defaultPrefix`
    if it maps to `null`.

    Specified by:
    :   `getNamespacePrefix` in interface `XMLCryptoContext`

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
    :   - [`XMLCryptoContext.putNamespacePrefix(String, String)`](../XMLCryptoContext.md#putNamespacePrefix(java.lang.String,java.lang.String))
  + ### putNamespacePrefix

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") putNamespacePrefix([String](../../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") prefix)

    This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to map the URI
    to the specified prefix.

    Specified by:
    :   `putNamespacePrefix` in interface `XMLCryptoContext`

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
    :   - [`XMLCryptoContext.getNamespacePrefix(String, String)`](../XMLCryptoContext.md#getNamespacePrefix(java.lang.String,java.lang.String))
  + ### getDefaultNamespacePrefix

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDefaultNamespacePrefix()

    Description copied from interface: `XMLCryptoContext`

    Returns the default namespace prefix. The default namespace prefix
    is the prefix for all namespace URIs not explicitly set by the
    [`putNamespacePrefix`](../XMLCryptoContext.md#putNamespacePrefix(java.lang.String,java.lang.String)) method.

    Specified by:
    :   `getDefaultNamespacePrefix` in interface `XMLCryptoContext`

    Returns:
    :   the default namespace prefix, or `null` if none has
        been set.

    See Also:
    :   - [`XMLCryptoContext.setDefaultNamespacePrefix(String)`](../XMLCryptoContext.md#setDefaultNamespacePrefix(java.lang.String))
  + ### setDefaultNamespacePrefix

    public void setDefaultNamespacePrefix([String](../../../../../java.base/java/lang/String.md "class in java.lang") defaultPrefix)

    Description copied from interface: `XMLCryptoContext`

    Sets the default namespace prefix. This sets the namespace prefix for
    all namespace URIs not explicitly set by the [`putNamespacePrefix`](../XMLCryptoContext.md#putNamespacePrefix(java.lang.String,java.lang.String)) method.

    Specified by:
    :   `setDefaultNamespacePrefix` in interface `XMLCryptoContext`

    Parameters:
    :   `defaultPrefix` - the default namespace prefix, or `null`
        to remove the current setting. Specify the empty string
        (`""`) to bind no prefix.

    See Also:
    :   - [`XMLCryptoContext.getDefaultNamespacePrefix()`](../XMLCryptoContext.md#getDefaultNamespacePrefix())
  + ### getBaseURI

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getBaseURI()

    Description copied from interface: `XMLCryptoContext`

    Returns the base URI.

    Specified by:
    :   `getBaseURI` in interface `XMLCryptoContext`

    Returns:
    :   the base URI, or `null` if not specified

    See Also:
    :   - [`XMLCryptoContext.setBaseURI(String)`](../XMLCryptoContext.md#setBaseURI(java.lang.String))
  + ### setBaseURI

    public void setBaseURI([String](../../../../../java.base/java/lang/String.md "class in java.lang") baseURI)

    Description copied from interface: `XMLCryptoContext`

    Sets the base URI.

    Specified by:
    :   `setBaseURI` in interface `XMLCryptoContext`

    Parameters:
    :   `baseURI` - the base URI, or `null` to remove current
        value

    Throws:
    :   `IllegalArgumentException` - if `baseURI` is not RFC
        2396 compliant

    See Also:
    :   - [`XMLCryptoContext.getBaseURI()`](../XMLCryptoContext.md#getBaseURI())
  + ### getURIDereferencer

    public [URIDereferencer](../URIDereferencer.md "interface in javax.xml.crypto") getURIDereferencer()

    Description copied from interface: `XMLCryptoContext`

    Returns a `URIDereferencer` that is used to dereference
    [`URIReference`](../URIReference.md "interface in javax.xml.crypto")s.

    Specified by:
    :   `getURIDereferencer` in interface `XMLCryptoContext`

    Returns:
    :   the `URIDereferencer`, or `null` if not
        specified

    See Also:
    :   - [`XMLCryptoContext.setURIDereferencer(URIDereferencer)`](../XMLCryptoContext.md#setURIDereferencer(javax.xml.crypto.URIDereferencer))
  + ### setURIDereferencer

    public void setURIDereferencer([URIDereferencer](../URIDereferencer.md "interface in javax.xml.crypto") dereferencer)

    Description copied from interface: `XMLCryptoContext`

    Sets a `URIDereferencer` that is used to dereference
    [`URIReference`](../URIReference.md "interface in javax.xml.crypto")s. The specified `URIDereferencer`
    is used in place of an implementation's default
    `URIDereferencer`.

    Specified by:
    :   `setURIDereferencer` in interface `XMLCryptoContext`

    Parameters:
    :   `dereferencer` - the `URIDereferencer`, or
        `null` to remove any current setting

    See Also:
    :   - [`XMLCryptoContext.getURIDereferencer()`](../XMLCryptoContext.md#getURIDereferencer())
  + ### getProperty

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to get the object
    that the specified name maps to.

    Specified by:
    :   `getProperty` in interface `XMLCryptoContext`

    Parameters:
    :   `name` - the name of the property

    Returns:
    :   the current value of the specified property, or
        `null` if it does not have a value

    Throws:
    :   `NullPointerException` - if `name` is `null`

    See Also:
    :   - [`XMLCryptoContext.setProperty(String, Object)`](../XMLCryptoContext.md#setProperty(java.lang.String,java.lang.Object))
  + ### setProperty

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") setProperty([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") value)

    This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to map the name
    to the specified object.

    Specified by:
    :   `setProperty` in interface `XMLCryptoContext`

    Parameters:
    :   `name` - the name of the property
    :   `value` - the value of the property to be set

    Returns:
    :   the previous value of the specified property, or
        `null` if it did not have a value

    Throws:
    :   `NullPointerException` - if `name` is `null`

    See Also:
    :   - [`XMLCryptoContext.getProperty(String)`](../XMLCryptoContext.md#getProperty(java.lang.String))
  + ### getKeySelector

    public [KeySelector](../KeySelector.md "class in javax.xml.crypto") getKeySelector()

    Description copied from interface: `XMLCryptoContext`

    Returns the key selector for finding a key.

    Specified by:
    :   `getKeySelector` in interface `XMLCryptoContext`

    Returns:
    :   the key selector, or `null` if not specified

    See Also:
    :   - [`XMLCryptoContext.setKeySelector(KeySelector)`](../XMLCryptoContext.md#setKeySelector(javax.xml.crypto.KeySelector))
  + ### setKeySelector

    public void setKeySelector([KeySelector](../KeySelector.md "class in javax.xml.crypto") ks)

    Description copied from interface: `XMLCryptoContext`

    Sets the key selector for finding a key.

    Specified by:
    :   `setKeySelector` in interface `XMLCryptoContext`

    Parameters:
    :   `ks` - the key selector, or `null` to remove the current
        setting

    See Also:
    :   - [`XMLCryptoContext.getKeySelector()`](../XMLCryptoContext.md#getKeySelector())
  + ### getElementById

    public [Element](../../../../../java.xml/org/w3c/dom/Element.md "interface in org.w3c.dom") getElementById([String](../../../../../java.base/java/lang/String.md "class in java.lang") idValue)

    Returns the `Element` with the specified ID attribute value.

    This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to get the
    element that the specified attribute value maps to.

    Parameters:
    :   `idValue` - the value of the ID

    Returns:
    :   the `Element` with the specified ID attribute value,
        or `null` if none.

    Throws:
    :   `NullPointerException` - if `idValue` is `null`

    See Also:
    :   - [`setIdAttributeNS(org.w3c.dom.Element, java.lang.String, java.lang.String)`](#setIdAttributeNS(org.w3c.dom.Element,java.lang.String,java.lang.String))
  + ### setIdAttributeNS

    public void setIdAttributeNS([Element](../../../../../java.xml/org/w3c/dom/Element.md "interface in org.w3c.dom") element,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Registers the element's attribute specified by the namespace URI and
    local name to be of type ID. The attribute must have a non-empty value.

    This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to map the
    attribute's value to the specified element.

    Parameters:
    :   `element` - the element
    :   `namespaceURI` - the namespace URI of the attribute (specify
        `null` if not applicable)
    :   `localName` - the local name of the attribute

    Throws:
    :   `IllegalArgumentException` - if `localName` is not an
        attribute of the specified element or it does not contain a specific
        value
    :   `NullPointerException` - if `element` or
        `localName` is `null`

    See Also:
    :   - [`getElementById(java.lang.String)`](#getElementById(java.lang.String))
  + ### iterator

    public [Iterator](../../../../../java.base/java/util/Iterator.md "interface in java.util")<[Map.Entry](../../../../../java.base/java/util/Map.Entry.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),[Element](../../../../../java.xml/org/w3c/dom/Element.md "interface in org.w3c.dom")>> iterator()

    Returns a read-only iterator over the set of Id/Element mappings of
    this `DOMCryptoContext`. Attempts to modify the set via the
    [`Iterator.remove()`](../../../../../java.base/java/util/Iterator.md#remove()) method throw an
    `UnsupportedOperationException`. The mappings are returned
    in no particular order. Each element in the iteration is represented as a
    [`Map.Entry`](../../../../../java.base/java/util/Map.Entry.md "interface in java.util"). If the `DOMCryptoContext` is
    modified while an iteration is in progress, the results of the
    iteration are undefined.

    Returns:
    :   a read-only iterator over the set of mappings
  + ### get

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") get([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") key)

    This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to get the object
    that the specified key maps to.

    Specified by:
    :   `get` in interface `XMLCryptoContext`

    Parameters:
    :   `key` - the key whose associated value is to be returned

    Returns:
    :   the value to which this context maps the specified key, or
        `null` if there is no mapping for the key

    See Also:
    :   - [`XMLCryptoContext.put(Object, Object)`](../XMLCryptoContext.md#put(java.lang.Object,java.lang.Object))
  + ### put

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") put([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") value)

    This implementation uses an internal [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util") to map the key
    to the specified object.

    Specified by:
    :   `put` in interface `XMLCryptoContext`

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
    :   - [`XMLCryptoContext.get(Object)`](../XMLCryptoContext.md#get(java.lang.Object))