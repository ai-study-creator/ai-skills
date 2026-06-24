Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Class XSLTTransformParameterSpec

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dsig.spec.XSLTTransformParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`, `TransformParameterSpec`

---

public final class XSLTTransformParameterSpec
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [TransformParameterSpec](TransformParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

Parameters for the [XSLT Transform Algorithm](http://www.w3.org/TR/1999/REC-xslt-19991116).
The parameters include a namespace-qualified stylesheet element.

An `XSLTTransformParameterSpec` is instantiated with a
mechanism-dependent (ex: DOM) stylesheet element. For example:

```
   DOMStructure stylesheet = new DOMStructure(element)
   XSLTTransformParameterSpec spec = new XSLTransformParameterSpec(stylesheet);
```

where `element` is an [`Element`](../../../../../../java.xml/org/w3c/dom/Element.md "interface in org.w3c.dom") containing
the namespace-qualified stylesheet element.

Since:
:   1.6

See Also:
:   * [`Transform`](../Transform.md "interface in javax.xml.crypto.dsig")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XSLTTransformParameterSpec(XMLStructure stylesheet)`

  Creates an `XSLTTransformParameterSpec` with the specified
  stylesheet.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `XMLStructure`

  `getStylesheet()`

  Returns the stylesheet.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### XSLTTransformParameterSpec

    public XSLTTransformParameterSpec([XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto") stylesheet)

    Creates an `XSLTTransformParameterSpec` with the specified
    stylesheet.

    Parameters:
    :   `stylesheet` - the XSLT stylesheet to be used

    Throws:
    :   `NullPointerException` - if `stylesheet` is
        `null`
* ## Method Details

  + ### getStylesheet

    public [XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto") getStylesheet()

    Returns the stylesheet.

    Returns:
    :   the stylesheet