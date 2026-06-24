Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Class XPathType

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dsig.spec.XPathType

---

public class XPathType
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

The XML Schema Definition of the `XPath` element as defined in the
[W3C Recommendation for XML-Signature XPath Filter 2.0](http://www.w3.org/TR/xmldsig-filter2):

```
 <schema xmlns="http://www.w3.org/2001/XMLSchema"
         xmlns:xf="http://www.w3.org/2002/06/xmldsig-filter2"
         targetNamespace="http://www.w3.org/2002/06/xmldsig-filter2"
         version="0.1" elementFormDefault="qualified">

 <element name="XPath"
          type="xf:XPathType"/>

 <complexType name="XPathType">
   <simpleContent>
     <extension base="string">
       <attribute name="Filter">
         <simpleType>
           <restriction base="string">
             <enumeration value="intersect"/>
             <enumeration value="subtract"/>
             <enumeration value="union"/>
           </restriction>
         </simpleType>
       </attribute>
     </extension>
   </simpleContent>
 </complexType>
```

Since:
:   1.6

See Also:
:   * [`XPathFilter2ParameterSpec`](XPathFilter2ParameterSpec.md "class in javax.xml.crypto.dsig.spec")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `XPathType.Filter`

  Represents the filter set operation.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XPathType(String expression,
  XPathType.Filter filter)`

  Creates an `XPathType` instance with the specified XPath
  expression and filter.

  `XPathType(String expression,
  XPathType.Filter filter,
  Map<String,String> namespaceMap)`

  Creates an `XPathType` instance with the specified XPath
  expression, filter, and namespace map.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getExpression()`

  Returns the XPath expression to be evaluated.

  `XPathType.Filter`

  `getFilter()`

  Returns the filter operation.

  `Map<String,String>`

  `getNamespaceMap()`

  Returns a map of namespace prefixes.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### XPathType

    public XPathType([String](../../../../../../java.base/java/lang/String.md "class in java.lang") expression,
    [XPathType.Filter](XPathType.Filter.md "class in javax.xml.crypto.dsig.spec") filter)

    Creates an `XPathType` instance with the specified XPath
    expression and filter.

    Parameters:
    :   `expression` - the XPath expression to be evaluated
    :   `filter` - the filter operation ([`XPathType.Filter.INTERSECT`](XPathType.Filter.md#INTERSECT),
        [`XPathType.Filter.SUBTRACT`](XPathType.Filter.md#SUBTRACT), or [`XPathType.Filter.UNION`](XPathType.Filter.md#UNION))

    Throws:
    :   `NullPointerException` - if `expression` or
        `filter` is `null`
  + ### XPathType

    public XPathType([String](../../../../../../java.base/java/lang/String.md "class in java.lang") expression,
    [XPathType.Filter](XPathType.Filter.md "class in javax.xml.crypto.dsig.spec") filter,
    [Map](../../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../../java.base/java/lang/String.md "class in java.lang"),[String](../../../../../../java.base/java/lang/String.md "class in java.lang")> namespaceMap)

    Creates an `XPathType` instance with the specified XPath
    expression, filter, and namespace map. The map is copied to protect
    against subsequent modification.

    Parameters:
    :   `expression` - the XPath expression to be evaluated
    :   `filter` - the filter operation ([`XPathType.Filter.INTERSECT`](XPathType.Filter.md#INTERSECT),
        [`XPathType.Filter.SUBTRACT`](XPathType.Filter.md#SUBTRACT), or [`XPathType.Filter.UNION`](XPathType.Filter.md#UNION))
    :   `namespaceMap` - the map of namespace prefixes. Each key is a
        namespace prefix `String` that maps to a corresponding
        namespace URI `String`.

    Throws:
    :   `NullPointerException` - if `expression`,
        `filter` or `namespaceMap` are
        `null`
    :   `ClassCastException` - if any of the map's keys or entries are
        not of type `String`
* ## Method Details

  + ### getExpression

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getExpression()

    Returns the XPath expression to be evaluated.

    Returns:
    :   the XPath expression to be evaluated
  + ### getFilter

    public [XPathType.Filter](XPathType.Filter.md "class in javax.xml.crypto.dsig.spec") getFilter()

    Returns the filter operation.

    Returns:
    :   the filter operation
  + ### getNamespaceMap

    public [Map](../../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../../java.base/java/lang/String.md "class in java.lang"),[String](../../../../../../java.base/java/lang/String.md "class in java.lang")> getNamespaceMap()

    Returns a map of namespace prefixes. Each key is a namespace prefix
    `String` that maps to a corresponding namespace URI
    `String`.

    This implementation returns an [`unmodifiable map`](../../../../../../java.base/java/util/Collections.md#unmodifiableMap(java.util.Map)).

    Returns:
    :   a `Map` of namespace prefixes to namespace URIs
        (may be empty, but never `null`)