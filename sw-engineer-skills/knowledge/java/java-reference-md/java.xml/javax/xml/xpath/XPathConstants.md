Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Class XPathConstants

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.xpath.XPathConstants

---

public class XPathConstants
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

XPath constants.

Since:
:   1.5

See Also:
:   * [XML Path Language (XPath) Version 1.0](http://www.w3.org/TR/xpath)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final QName`

  `BOOLEAN`

  The XPath 1.0 boolean data type.

  `static final String`

  `DOM_OBJECT_MODEL`

  The URI for the DOM object model, "http://java.sun.com/jaxp/xpath/dom".

  `static final QName`

  `NODE`

  The XPath 1.0 NodeSet data type.

  `static final QName`

  `NODESET`

  The XPath 1.0 NodeSet data type.

  `static final QName`

  `NUMBER`

  The XPath 1.0 number data type.

  `static final QName`

  `STRING`

  The XPath 1.0 string data type.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### NUMBER

    public static final [QName](../namespace/QName.md "class in javax.xml.namespace") NUMBER

    The XPath 1.0 number data type.

    Maps to Java [`Double`](../../../../java.base/java/lang/Double.md "class in java.lang").
  + ### STRING

    public static final [QName](../namespace/QName.md "class in javax.xml.namespace") STRING

    The XPath 1.0 string data type.

    Maps to Java [`String`](../../../../java.base/java/lang/String.md "class in java.lang").
  + ### BOOLEAN

    public static final [QName](../namespace/QName.md "class in javax.xml.namespace") BOOLEAN

    The XPath 1.0 boolean data type.

    Maps to Java [`Boolean`](../../../../java.base/java/lang/Boolean.md "class in java.lang").
  + ### NODESET

    public static final [QName](../namespace/QName.md "class in javax.xml.namespace") NODESET

    The XPath 1.0 NodeSet data type.

    Maps to Java [`NodeList`](../../../org/w3c/dom/NodeList.md "interface in org.w3c.dom").
  + ### NODE

    public static final [QName](../namespace/QName.md "class in javax.xml.namespace") NODE

    The XPath 1.0 NodeSet data type.

    Maps to Java [`Node`](../../../org/w3c/dom/Node.md "interface in org.w3c.dom").
  + ### DOM\_OBJECT\_MODEL

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") DOM\_OBJECT\_MODEL

    The URI for the DOM object model, "http://java.sun.com/jaxp/xpath/dom".

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.xml.xpath.XPathConstants.DOM_OBJECT_MODEL)