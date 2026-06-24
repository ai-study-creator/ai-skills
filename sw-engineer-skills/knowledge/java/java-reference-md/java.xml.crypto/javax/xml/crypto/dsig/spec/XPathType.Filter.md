Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Class XPathType.Filter

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dsig.spec.XPathType.Filter

Enclosing class:
:   `XPathType`

---

public static class XPathType.Filter
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

Represents the filter set operation.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final XPathType.Filter`

  `INTERSECT`

  The intersect filter operation.

  `static final XPathType.Filter`

  `SUBTRACT`

  The subtract filter operation.

  `static final XPathType.Filter`

  `UNION`

  The union filter operation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  Returns the string form of the operation.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### INTERSECT

    public static final [XPathType.Filter](XPathType.Filter.md "class in javax.xml.crypto.dsig.spec") INTERSECT

    The intersect filter operation.
  + ### SUBTRACT

    public static final [XPathType.Filter](XPathType.Filter.md "class in javax.xml.crypto.dsig.spec") SUBTRACT

    The subtract filter operation.
  + ### UNION

    public static final [XPathType.Filter](XPathType.Filter.md "class in javax.xml.crypto.dsig.spec") UNION

    The union filter operation.
* ## Method Details

  + ### toString

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the string form of the operation.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string form of the operation