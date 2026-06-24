Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface SQLType

All Known Implementing Classes:
:   `JDBCType`

---

public interface SQLType

An object that is used to identify a generic SQL type, called a JDBC type or
a vendor specific data type.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Returns the `SQLType` name that represents a SQL data type.

  `String`

  `getVendor()`

  Returns the name of the vendor that supports this data type.

  `Integer`

  `getVendorTypeNumber()`

  Returns the vendor specific type number for the data type.

* ## Method Details

  + ### getName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the `SQLType` name that represents a SQL data type.

    Returns:
    :   The name of this `SQLType`.
  + ### getVendor

    [String](../../../java.base/java/lang/String.md "class in java.lang") getVendor()

    Returns the name of the vendor that supports this data type. The value
    returned typically is the package name for this vendor.

    Returns:
    :   The name of the vendor for this data type
  + ### getVendorTypeNumber

    [Integer](../../../java.base/java/lang/Integer.md "class in java.lang") getVendorTypeNumber()

    Returns the vendor specific type number for the data type.

    Returns:
    :   An Integer representing the vendor specific data type