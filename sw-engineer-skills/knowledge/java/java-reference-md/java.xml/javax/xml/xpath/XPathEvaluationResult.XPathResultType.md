Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Enum Class XPathEvaluationResult.XPathResultType

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath")>

javax.xml.xpath.XPathEvaluationResult.XPathResultType

All Implemented Interfaces:
:   `Serializable`, `Comparable<XPathEvaluationResult.XPathResultType>`, `Constable`

Enclosing interface:
:   `XPathEvaluationResult<T>`

---

public static enum XPathEvaluationResult.XPathResultType
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath")>

XPathResultType represents possible return types of an XPath evaluation.
Provided as an enum type, it allows the use of switch statement. At the
same time, a mapping is provided between the original QName types in
[`XPathConstants`](XPathConstants.md "class in javax.xml.xpath") and class types used in the generic methods.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ANY`

  Any type that represents any of the 5 other types listed below.

  `BOOLEAN`

  The XPath 1.0 boolean data type.

  `NODE`

  The XPath 1.0 Node data type.

  `NODESET`

  The XPath 1.0 NodeSet data type.

  `NUMBER`

  The XPath 1.0 Number data type.

  `STRING`

  The XPath 1.0 String data type.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static QName`

  `getQNameType(Class<?> clsType)`

  Returns the QName type as specified in [`XPathConstants`](XPathConstants.md "class in javax.xml.xpath") that
  corresponds to the specified class type.

  `static XPathEvaluationResult.XPathResultType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static XPathEvaluationResult.XPathResultType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### ANY

    public static final [XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath") ANY

    Any type that represents any of the 5 other types listed below.
    Maps to [`XPathEvaluationResult`](XPathEvaluationResult.md "interface in javax.xml.xpath").
  + ### BOOLEAN

    public static final [XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath") BOOLEAN

    The XPath 1.0 boolean data type. Maps to Java [`Boolean`](../../../../java.base/java/lang/Boolean.md "class in java.lang").
  + ### NUMBER

    public static final [XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath") NUMBER

    The XPath 1.0 Number data type. Maps to Java [`Number`](../../../../java.base/java/lang/Number.md "class in java.lang"). Of the
    subtypes of Number, only Double, Integer and Long are required.
  + ### STRING

    public static final [XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath") STRING

    The XPath 1.0 String data type. Maps to Java [`String`](../../../../java.base/java/lang/String.md "class in java.lang").
  + ### NODESET

    public static final [XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath") NODESET

    The XPath 1.0 NodeSet data type. Maps to [`XPathNodes`](XPathNodes.md "interface in javax.xml.xpath").
  + ### NODE

    public static final [XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath") NODE

    The XPath 1.0 Node data type. Maps to [`Node`](../../../org/w3c/dom/Node.md "interface in org.w3c.dom").
* ## Method Details

  + ### values

    public static [XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null
  + ### getQNameType

    public static [QName](../namespace/QName.md "class in javax.xml.namespace") getQNameType([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> clsType)

    Returns the QName type as specified in [`XPathConstants`](XPathConstants.md "class in javax.xml.xpath") that
    corresponds to the specified class type.

    Parameters:
    :   `clsType` - a class type that the enum type supports

    Returns:
    :   the QName type that matches with the specified class type,
        null if there is no match