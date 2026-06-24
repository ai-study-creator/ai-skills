Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Class XPathFilter2ParameterSpec

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dsig.spec.XPathFilter2ParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`, `TransformParameterSpec`

---

public final class XPathFilter2ParameterSpec
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [TransformParameterSpec](TransformParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

Parameters for the W3C Recommendation
[XPath Filter 2.0 Transform Algorithm](http://www.w3.org/TR/xmldsig-filter2/).
The parameters include a list of one or more [`XPathType`](XPathType.md "class in javax.xml.crypto.dsig.spec") objects.

Since:
:   1.6

See Also:
:   * [`Transform`](../Transform.md "interface in javax.xml.crypto.dsig")
    * [`XPathFilterParameterSpec`](XPathFilterParameterSpec.md "class in javax.xml.crypto.dsig.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XPathFilter2ParameterSpec(List<XPathType> xPathList)`

  Creates an `XPathFilter2ParameterSpec`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `List<XPathType>`

  `getXPathList()`

  Returns a list of one or more [`XPathType`](XPathType.md "class in javax.xml.crypto.dsig.spec") objects.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### XPathFilter2ParameterSpec

    public XPathFilter2ParameterSpec([List](../../../../../../java.base/java/util/List.md "interface in java.util")<[XPathType](XPathType.md "class in javax.xml.crypto.dsig.spec")> xPathList)

    Creates an `XPathFilter2ParameterSpec`.

    Parameters:
    :   `xPathList` - a list of one or more [`XPathType`](XPathType.md "class in javax.xml.crypto.dsig.spec") objects. The
        list is defensively copied to protect against subsequent modification.

    Throws:
    :   `ClassCastException` - if `xPathList` contains any
        entries that are not of type [`XPathType`](XPathType.md "class in javax.xml.crypto.dsig.spec")
    :   `IllegalArgumentException` - if `xPathList` is empty
    :   `NullPointerException` - if `xPathList` is
        `null`
* ## Method Details

  + ### getXPathList

    public [List](../../../../../../java.base/java/util/List.md "interface in java.util")<[XPathType](XPathType.md "class in javax.xml.crypto.dsig.spec")> getXPathList()

    Returns a list of one or more [`XPathType`](XPathType.md "class in javax.xml.crypto.dsig.spec") objects.

    This implementation returns an [`unmodifiable list`](../../../../../../java.base/java/util/Collections.md#unmodifiableList(java.util.List)).

    Returns:
    :   a `List` of `XPathType` objects
        (never `null` or empty)