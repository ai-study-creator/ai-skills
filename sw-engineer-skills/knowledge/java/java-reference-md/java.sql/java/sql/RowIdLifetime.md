Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Enum Class RowIdLifetime

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[RowIdLifetime](RowIdLifetime.md "enum class in java.sql")>

java.sql.RowIdLifetime

All Implemented Interfaces:
:   `Serializable`, `Comparable<RowIdLifetime>`, `Constable`

---

public enum RowIdLifetime
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[RowIdLifetime](RowIdLifetime.md "enum class in java.sql")>

Enumeration for RowId life-time values.

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ROWID_UNSUPPORTED`

  Indicates that this data source does not support the ROWID type.

  `ROWID_VALID_FOREVER`

  Indicates that the lifetime of a RowId from this data source is, effectively,
  unlimited.

  `ROWID_VALID_OTHER`

  Indicates that the lifetime of a RowId from this data source is indeterminate;
  but not one of ROWID\_VALID\_TRANSACTION, ROWID\_VALID\_SESSION, or,
  ROWID\_VALID\_FOREVER.

  `ROWID_VALID_SESSION`

  Indicates that the lifetime of a RowId from this data source is at least the
  containing session.

  `ROWID_VALID_TRANSACTION`

  Indicates that the lifetime of a RowId from this data source is at least the
  containing transaction.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static RowIdLifetime`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static RowIdLifetime[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### ROWID\_UNSUPPORTED

    public static final [RowIdLifetime](RowIdLifetime.md "enum class in java.sql") ROWID\_UNSUPPORTED

    Indicates that this data source does not support the ROWID type.
  + ### ROWID\_VALID\_OTHER

    public static final [RowIdLifetime](RowIdLifetime.md "enum class in java.sql") ROWID\_VALID\_OTHER

    Indicates that the lifetime of a RowId from this data source is indeterminate;
    but not one of ROWID\_VALID\_TRANSACTION, ROWID\_VALID\_SESSION, or,
    ROWID\_VALID\_FOREVER.
  + ### ROWID\_VALID\_SESSION

    public static final [RowIdLifetime](RowIdLifetime.md "enum class in java.sql") ROWID\_VALID\_SESSION

    Indicates that the lifetime of a RowId from this data source is at least the
    containing session.
  + ### ROWID\_VALID\_TRANSACTION

    public static final [RowIdLifetime](RowIdLifetime.md "enum class in java.sql") ROWID\_VALID\_TRANSACTION

    Indicates that the lifetime of a RowId from this data source is at least the
    containing transaction.
  + ### ROWID\_VALID\_FOREVER

    public static final [RowIdLifetime](RowIdLifetime.md "enum class in java.sql") ROWID\_VALID\_FOREVER

    Indicates that the lifetime of a RowId from this data source is, effectively,
    unlimited.
* ## Method Details

  + ### values

    public static [RowIdLifetime](RowIdLifetime.md "enum class in java.sql")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [RowIdLifetime](RowIdLifetime.md "enum class in java.sql") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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