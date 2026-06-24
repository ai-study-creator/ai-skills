Module [java.xml](../../../module-summary.md)

Package [javax.xml.catalog](package-summary.md)

# Class CatalogFeatures.Builder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.catalog.CatalogFeatures.Builder

Enclosing class:
:   `CatalogFeatures`

---

public static class CatalogFeatures.Builder
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The Builder class for building the CatalogFeatures object.

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `CatalogFeatures`

  `build()`

  Returns a CatalogFeatures object built by this builder.

  `CatalogFeatures.Builder`

  `with(CatalogFeatures.Feature feature,
  String value)`

  Sets the value to a specified Feature.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### with

    public [CatalogFeatures.Builder](CatalogFeatures.Builder.md "class in javax.xml.catalog") with([CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog") feature,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Sets the value to a specified Feature.

    Parameters:
    :   `feature` - the Feature to be set
    :   `value` - the value to be set for the Feature

    Returns:
    :   this Builder instance

    Throws:
    :   `IllegalArgumentException` - if the value is not valid for the
        Feature or has the wrong syntax for the `javax.xml.catalog.files`
        property
  + ### build

    public [CatalogFeatures](CatalogFeatures.md "class in javax.xml.catalog") build()

    Returns a CatalogFeatures object built by this builder.

    Returns:
    :   an instance of CatalogFeatures