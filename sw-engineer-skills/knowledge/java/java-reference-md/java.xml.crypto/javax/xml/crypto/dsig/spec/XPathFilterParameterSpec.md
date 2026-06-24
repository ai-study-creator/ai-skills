Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Class XPathFilterParameterSpec

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dsig.spec.XPathFilterParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`, `TransformParameterSpec`

---

public final class XPathFilterParameterSpec
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [TransformParameterSpec](TransformParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

Parameters for the [XPath Filtering Transform Algorithm](http://www.w3.org/TR/xmldsig-core/#sec-XPath).
The parameters include the XPath expression and an optional `Map`
of additional namespace prefix mappings. The XML Schema Definition of
the XPath Filtering transform parameters is defined as:

```
 <element name="XPath" type="string"/>
```

Since:
:   1.6

See Also:
:   * [`Transform`](../Transform.md "interface in javax.xml.crypto.dsig")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XPathFilterParameterSpec(String xPath)`

  Creates an `XPathFilterParameterSpec` with the specified
  XPath expression.

  `XPathFilterParameterSpec(String xPath,
  Map<String,String> namespaceMap)`

  Creates an `XPathFilterParameterSpec` with the specified
  XPath expression and namespace map.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Map<String,String>`

  `getNamespaceMap()`

  Returns a map of namespace prefixes.

  `String`

  `getXPath()`

  Returns the XPath expression to be evaluated.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### XPathFilterParameterSpec

    public XPathFilterParameterSpec([String](../../../../../../java.base/java/lang/String.md "class in java.lang") xPath)

    Creates an `XPathFilterParameterSpec` with the specified
    XPath expression.

    Parameters:
    :   `xPath` - the XPath expression to be evaluated

    Throws:
    :   `NullPointerException` - if `xPath` is `null`
  + ### XPathFilterParameterSpec

    public XPathFilterParameterSpec([String](../../../../../../java.base/java/lang/String.md "class in java.lang") xPath,
    [Map](../../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../../java.base/java/lang/String.md "class in java.lang"),[String](../../../../../../java.base/java/lang/String.md "class in java.lang")> namespaceMap)

    Creates an `XPathFilterParameterSpec` with the specified
    XPath expression and namespace map. The map is copied to protect against
    subsequent modification.

    Parameters:
    :   `xPath` - the XPath expression to be evaluated
    :   `namespaceMap` - the map of namespace prefixes. Each key is a
        namespace prefix `String` that maps to a corresponding
        namespace URI `String`.

    Throws:
    :   `NullPointerException` - if `xPath` or
        `namespaceMap` are `null`
    :   `ClassCastException` - if any of the map's keys or entries are not
        of type `String`
* ## Method Details

  + ### getXPath

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getXPath()

    Returns the XPath expression to be evaluated.

    Returns:
    :   the XPath expression to be evaluated
  + ### getNamespaceMap

    public [Map](../../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../../java.base/java/lang/String.md "class in java.lang"),[String](../../../../../../java.base/java/lang/String.md "class in java.lang")> getNamespaceMap()

    Returns a map of namespace prefixes. Each key is a namespace prefix
    `String` that maps to a corresponding namespace URI
    `String`.

    This implementation returns an [`unmodifiable map`](../../../../../../java.base/java/util/Collections.md#unmodifiableMap(java.util.Map)).

    Returns:
    :   a `Map` of namespace prefixes to namespace URIs (may
        be empty, but never `null`)