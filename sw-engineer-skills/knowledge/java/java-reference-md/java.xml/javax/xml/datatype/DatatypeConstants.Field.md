Module [java.xml](../../../module-summary.md)

Package [javax.xml.datatype](package-summary.md)

# Class DatatypeConstants.Field

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.datatype.DatatypeConstants.Field

Enclosing class:
:   `DatatypeConstants`

---

public static final class DatatypeConstants.Field
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Type-safe enum class that represents six fields
of the [`Duration`](Duration.md "class in javax.xml.datatype") class.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getId()`

  Get id of this Field.

  `String`

  `toString()`

  Returns a field name in English.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a field name in English. This method
    is intended to be used for debugging/diagnosis
    and not for display to end-users.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a non-null valid String constant.
  + ### getId

    public int getId()

    Get id of this Field.

    Returns:
    :   Id of field.