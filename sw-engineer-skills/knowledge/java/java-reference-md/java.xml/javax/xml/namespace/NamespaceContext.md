Module [java.xml](../../../module-summary.md)

Package [javax.xml.namespace](package-summary.md)

# Interface NamespaceContext

---

public interface NamespaceContext

Interface for read only XML Namespace context processing.

An XML Namespace has the properties:

* Namespace URI:
  Namespace name expressed as a URI to which the prefix is bound
* prefix: syntactically, this is the part of the attribute name
  following the `XMLConstants.XMLNS_ATTRIBUTE`
  ("xmlns") in the Namespace declaration

example:
`<element xmlns:prefix="http://Namespace-name-URI">`

All `get*(*)` methods operate in the current scope
for Namespace URI and prefix resolution.

Note that a Namespace URI can be bound to
**multiple** prefixes in the current scope. This can
occur when multiple `XMLConstants.XMLNS_ATTRIBUTE`
("xmlns") Namespace declarations occur in the same Start-Tag and
refer to the same Namespace URI. e.g.  

```
 <element xmlns:prefix1="http://Namespace-name-URI"
          xmlns:prefix2="http://Namespace-name-URI">
```

This can also occur when the same Namespace URI is used in multiple
`XMLConstants.XMLNS_ATTRIBUTE` ("xmlns") Namespace
declarations in the logical parent element hierarchy. e.g.  

```
 <parent xmlns:prefix1="http://Namespace-name-URI">
   <child xmlns:prefix2="http://Namespace-name-URI">
     ...
   </child>
 </parent>
```

A prefix can only be bound to a **single**
Namespace URI in the current scope.

Since:
:   1.5

See Also:
:   * [`javax.xml.XMLConstants for declarations of common XML values`](../XMLConstants.md "class in javax.xml")
    * [XML Schema Part2: Datatypes](http://www.w3.org/TR/xmlschema-2/#QName)
    * [Namespaces in XML](http://www.w3.org/TR/REC-xml-names/)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getNamespaceURI(String prefix)`

  Get Namespace URI bound to a prefix in the current scope.

  `String`

  `getPrefix(String namespaceURI)`

  Get prefix bound to Namespace URI in the current scope.

  `Iterator<String>`

  `getPrefixes(String namespaceURI)`

  Get all prefixes bound to a Namespace URI in the current
  scope.

* ## Method Details

  + ### getNamespaceURI

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getNamespaceURI([String](../../../../java.base/java/lang/String.md "class in java.lang") prefix)

    Get Namespace URI bound to a prefix in the current scope.

    When requesting a Namespace URI by prefix, the following
    table describes the returned Namespace URI value for all
    possible prefix values:

    Return value for specified prefixes

    | prefix parameter | Namespace URI return value |
    | --- | --- |
    | `DEFAULT_NS_PREFIX` ("") | default Namespace URI in the current scope or  `XMLConstants.NULL_NS_URI("")` when there is no default Namespace URI in the current scope |
    | bound prefix | Namespace URI bound to prefix in current scope |
    | unbound prefix | `XMLConstants.NULL_NS_URI("")` |
    | `XMLConstants.XML_NS_PREFIX` ("xml") | `XMLConstants.XML_NS_URI` ("http://www.w3.org/XML/1998/namespace") |
    | `XMLConstants.XMLNS_ATTRIBUTE` ("xmlns") | `XMLConstants.XMLNS_ATTRIBUTE_NS_URI` ("http://www.w3.org/2000/xmlns/") |
    | `null` | `IllegalArgumentException` is thrown |

    Parameters:
    :   `prefix` - prefix to look up

    Returns:
    :   Namespace URI bound to prefix in the current scope

    Throws:
    :   `IllegalArgumentException` - When `prefix` is
        `null`
  + ### getPrefix

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getPrefix([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI)

    Get prefix bound to Namespace URI in the current scope.

    To get all prefixes bound to a Namespace URI in the current
    scope, use [`getPrefixes(String namespaceURI)`](#getPrefixes(java.lang.String)).

    When requesting a prefix by Namespace URI, the following
    table describes the returned prefix value for all Namespace URI
    values:

    Return value for specified Namespace URIs

    | Namespace URI parameter | prefix value returned |
    | --- | --- |
    | `<default Namespace URI>` | `XMLConstants.DEFAULT_NS_PREFIX` ("") |
    | bound Namespace URI | prefix bound to Namespace URI in the current scope, if multiple prefixes are bound to the Namespace URI in the current scope, a single arbitrary prefix, whose choice is implementation dependent, is returned |
    | unbound Namespace URI | `null` |
    | `XMLConstants.XML_NS_URI` ("http://www.w3.org/XML/1998/namespace") | `XMLConstants.XML_NS_PREFIX` ("xml") |
    | `XMLConstants.XMLNS_ATTRIBUTE_NS_URI` ("http://www.w3.org/2000/xmlns/") | `XMLConstants.XMLNS_ATTRIBUTE` ("xmlns") |
    | `null` | `IllegalArgumentException` is thrown |

    Parameters:
    :   `namespaceURI` - URI of Namespace to lookup

    Returns:
    :   prefix bound to Namespace URI in current context

    Throws:
    :   `IllegalArgumentException` - When `namespaceURI` is
        `null`
  + ### getPrefixes

    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getPrefixes([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI)

    Get all prefixes bound to a Namespace URI in the current
    scope.

    An Iterator over String elements is returned in an arbitrary,
    **implementation dependent**, order.

    **The `Iterator` is
    *not* modifiable. e.g. the
    `remove()` method will throw
    `UnsupportedOperationException`.**

    When requesting prefixes by Namespace URI, the following
    table describes the returned prefixes value for all Namespace
    URI values:

    Return value for specified Namespace URIs

    | Namespace URI parameter | prefixes value returned |
    | --- | --- |
    | bound Namespace URI, including the `<default Namespace URI>` | `Iterator` over prefixes bound to Namespace URI in the current scope in an arbitrary, **implementation dependent**, order |
    | unbound Namespace URI | empty `Iterator` |
    | `XMLConstants.XML_NS_URI` ("http://www.w3.org/XML/1998/namespace") | `Iterator` with one element set to `XMLConstants.XML_NS_PREFIX` ("xml") |
    | `XMLConstants.XMLNS_ATTRIBUTE_NS_URI` ("http://www.w3.org/2000/xmlns/") | `Iterator` with one element set to `XMLConstants.XMLNS_ATTRIBUTE` ("xmlns") |
    | `null` | `IllegalArgumentException` is thrown |

    Parameters:
    :   `namespaceURI` - URI of Namespace to lookup

    Returns:
    :   `Iterator` for all prefixes bound to the
        Namespace URI in the current scope

    Throws:
    :   `IllegalArgumentException` - When `namespaceURI` is
        `null`