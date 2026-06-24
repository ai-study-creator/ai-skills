Module [java.xml](../../../module-summary.md)

Package [javax.xml.catalog](package-summary.md)

# Enum Class CatalogFeatures.Feature

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog")>

javax.xml.catalog.CatalogFeatures.Feature

All Implemented Interfaces:
:   `Serializable`, `Comparable<CatalogFeatures.Feature>`, `Constable`

Enclosing class:
:   `CatalogFeatures`

---

public static enum CatalogFeatures.Feature
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog")>

A Feature type as defined in the
[Catalog Features table](CatalogFeatures.md#CatalogFeatures).

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `DEFER`

  The `javax.xml.catalog.defer` property as described in
  item [DEFER](CatalogFeatures.md#DEFER) of the
  Catalog Features table.

  `FILES`

  The `javax.xml.catalog.files` property as described in
  item [FILES](CatalogFeatures.md#FILES) of the
  Catalog Features table.

  `PREFER`

  The `javax.xml.catalog.prefer` property as described in
  item [PREFER](CatalogFeatures.md#PREFER) of the
  Catalog Features table.

  `RESOLVE`

  The `javax.xml.catalog.resolve` property as described in
  item [RESOLVE](CatalogFeatures.md#RESOLVE) of the
  Catalog Features table.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `defaultValue()`

  Returns the default value of the property.

  `String`

  `getPropertyName()`

  Returns the name of the corresponding System Property.

  `static CatalogFeatures.Feature`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static CatalogFeatures.Feature[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### FILES

    public static final [CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog") FILES

    The `javax.xml.catalog.files` property as described in
    item [FILES](CatalogFeatures.md#FILES) of the
    Catalog Features table.
  + ### PREFER

    public static final [CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog") PREFER

    The `javax.xml.catalog.prefer` property as described in
    item [PREFER](CatalogFeatures.md#PREFER) of the
    Catalog Features table.
  + ### DEFER

    public static final [CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog") DEFER

    The `javax.xml.catalog.defer` property as described in
    item [DEFER](CatalogFeatures.md#DEFER) of the
    Catalog Features table.
  + ### RESOLVE

    public static final [CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog") RESOLVE

    The `javax.xml.catalog.resolve` property as described in
    item [RESOLVE](CatalogFeatures.md#RESOLVE) of the
    Catalog Features table.
* ## Method Details

  + ### values

    public static [CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

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
  + ### getPropertyName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getPropertyName()

    Returns the name of the corresponding System Property.

    Returns:
    :   the name of the System Property
  + ### defaultValue

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") defaultValue()

    Returns the default value of the property.

    Returns:
    :   the default value of the property