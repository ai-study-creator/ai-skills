Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Enum Class JDBCType

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[JDBCType](JDBCType.md "enum class in java.sql")>

java.sql.JDBCType

All Implemented Interfaces:
:   `Serializable`, `Comparable<JDBCType>`, `Constable`, `SQLType`

---

public enum JDBCType
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[JDBCType](JDBCType.md "enum class in java.sql")>
implements [SQLType](SQLType.md "interface in java.sql")

Defines the constants that are used to identify generic
SQL types, called JDBC types.

Since:
:   1.8

See Also:
:   * [`SQLType`](SQLType.md "interface in java.sql")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ARRAY`

  Identifies the generic SQL type `ARRAY`.

  `BIGINT`

  Identifies the generic SQL type `BIGINT`.

  `BINARY`

  Identifies the generic SQL type `BINARY`.

  `BIT`

  Identifies the generic SQL type `BIT`.

  `BLOB`

  Identifies the generic SQL type `BLOB`.

  `BOOLEAN`

  Identifies the generic SQL type `BOOLEAN`.

  `CHAR`

  Identifies the generic SQL type `CHAR`.

  `CLOB`

  Identifies the generic SQL type `CLOB`.

  `DATALINK`

  Identifies the generic SQL type `DATALINK`.

  `DATE`

  Identifies the generic SQL type `DATE`.

  `DECIMAL`

  Identifies the generic SQL type `DECIMAL`.

  `DISTINCT`

  Identifies the generic SQL type `DISTINCT`.

  `DOUBLE`

  Identifies the generic SQL type `DOUBLE`.

  `FLOAT`

  Identifies the generic SQL type `FLOAT`.

  `INTEGER`

  Identifies the generic SQL type `INTEGER`.

  `JAVA_OBJECT`

  Indicates that the SQL type
  is database-specific and gets mapped to a Java object that can be
  accessed via the methods getObject and setObject.

  `LONGNVARCHAR`

  Identifies the generic SQL type `LONGNVARCHAR`.

  `LONGVARBINARY`

  Identifies the generic SQL type `LONGVARBINARY`.

  `LONGVARCHAR`

  Identifies the generic SQL type `LONGVARCHAR`.

  `NCHAR`

  Identifies the generic SQL type `NCHAR`.

  `NCLOB`

  Identifies the generic SQL type `NCLOB`.

  `NULL`

  Identifies the generic SQL value `NULL`.

  `NUMERIC`

  Identifies the generic SQL type `NUMERIC`.

  `NVARCHAR`

  Identifies the generic SQL type `NVARCHAR`.

  `OTHER`

  Indicates that the SQL type
  is database-specific and gets mapped to a Java object that can be
  accessed via the methods getObject and setObject.

  `REAL`

  Identifies the generic SQL type `REAL`.

  `REF`

  Identifies the generic SQL type `REF`.

  `REF_CURSOR`

  Identifies the generic SQL type `REF_CURSOR`.

  `ROWID`

  Identifies the SQL type `ROWID`.

  `SMALLINT`

  Identifies the generic SQL type `SMALLINT`.

  `SQLXML`

  Identifies the generic SQL type `SQLXML`.

  `STRUCT`

  Identifies the generic SQL type `STRUCT`.

  `TIME`

  Identifies the generic SQL type `TIME`.

  `TIME_WITH_TIMEZONE`

  Identifies the generic SQL type `TIME_WITH_TIMEZONE`.

  `TIMESTAMP`

  Identifies the generic SQL type `TIMESTAMP`.

  `TIMESTAMP_WITH_TIMEZONE`

  Identifies the generic SQL type `TIMESTAMP_WITH_TIMEZONE`.

  `TINYINT`

  Identifies the generic SQL type `TINYINT`.

  `VARBINARY`

  Identifies the generic SQL type `VARBINARY`.

  `VARCHAR`

  Identifies the generic SQL type `VARCHAR`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

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

  `static JDBCType`

  `valueOf(int type)`

  Returns the `JDBCType` that corresponds to the specified
  `Types` value

  `static JDBCType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static JDBCType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### BIT

    public static final [JDBCType](JDBCType.md "enum class in java.sql") BIT

    Identifies the generic SQL type `BIT`.
  + ### TINYINT

    public static final [JDBCType](JDBCType.md "enum class in java.sql") TINYINT

    Identifies the generic SQL type `TINYINT`.
  + ### SMALLINT

    public static final [JDBCType](JDBCType.md "enum class in java.sql") SMALLINT

    Identifies the generic SQL type `SMALLINT`.
  + ### INTEGER

    public static final [JDBCType](JDBCType.md "enum class in java.sql") INTEGER

    Identifies the generic SQL type `INTEGER`.
  + ### BIGINT

    public static final [JDBCType](JDBCType.md "enum class in java.sql") BIGINT

    Identifies the generic SQL type `BIGINT`.
  + ### FLOAT

    public static final [JDBCType](JDBCType.md "enum class in java.sql") FLOAT

    Identifies the generic SQL type `FLOAT`.
  + ### REAL

    public static final [JDBCType](JDBCType.md "enum class in java.sql") REAL

    Identifies the generic SQL type `REAL`.
  + ### DOUBLE

    public static final [JDBCType](JDBCType.md "enum class in java.sql") DOUBLE

    Identifies the generic SQL type `DOUBLE`.
  + ### NUMERIC

    public static final [JDBCType](JDBCType.md "enum class in java.sql") NUMERIC

    Identifies the generic SQL type `NUMERIC`.
  + ### DECIMAL

    public static final [JDBCType](JDBCType.md "enum class in java.sql") DECIMAL

    Identifies the generic SQL type `DECIMAL`.
  + ### CHAR

    public static final [JDBCType](JDBCType.md "enum class in java.sql") CHAR

    Identifies the generic SQL type `CHAR`.
  + ### VARCHAR

    public static final [JDBCType](JDBCType.md "enum class in java.sql") VARCHAR

    Identifies the generic SQL type `VARCHAR`.
  + ### LONGVARCHAR

    public static final [JDBCType](JDBCType.md "enum class in java.sql") LONGVARCHAR

    Identifies the generic SQL type `LONGVARCHAR`.
  + ### DATE

    public static final [JDBCType](JDBCType.md "enum class in java.sql") DATE

    Identifies the generic SQL type `DATE`.
  + ### TIME

    public static final [JDBCType](JDBCType.md "enum class in java.sql") TIME

    Identifies the generic SQL type `TIME`.
  + ### TIMESTAMP

    public static final [JDBCType](JDBCType.md "enum class in java.sql") TIMESTAMP

    Identifies the generic SQL type `TIMESTAMP`.
  + ### BINARY

    public static final [JDBCType](JDBCType.md "enum class in java.sql") BINARY

    Identifies the generic SQL type `BINARY`.
  + ### VARBINARY

    public static final [JDBCType](JDBCType.md "enum class in java.sql") VARBINARY

    Identifies the generic SQL type `VARBINARY`.
  + ### LONGVARBINARY

    public static final [JDBCType](JDBCType.md "enum class in java.sql") LONGVARBINARY

    Identifies the generic SQL type `LONGVARBINARY`.
  + ### NULL

    public static final [JDBCType](JDBCType.md "enum class in java.sql") NULL

    Identifies the generic SQL value `NULL`.
  + ### OTHER

    public static final [JDBCType](JDBCType.md "enum class in java.sql") OTHER

    Indicates that the SQL type
    is database-specific and gets mapped to a Java object that can be
    accessed via the methods getObject and setObject.
  + ### JAVA\_OBJECT

    public static final [JDBCType](JDBCType.md "enum class in java.sql") JAVA\_OBJECT

    Indicates that the SQL type
    is database-specific and gets mapped to a Java object that can be
    accessed via the methods getObject and setObject.
  + ### DISTINCT

    public static final [JDBCType](JDBCType.md "enum class in java.sql") DISTINCT

    Identifies the generic SQL type `DISTINCT`.
  + ### STRUCT

    public static final [JDBCType](JDBCType.md "enum class in java.sql") STRUCT

    Identifies the generic SQL type `STRUCT`.
  + ### ARRAY

    public static final [JDBCType](JDBCType.md "enum class in java.sql") ARRAY

    Identifies the generic SQL type `ARRAY`.
  + ### BLOB

    public static final [JDBCType](JDBCType.md "enum class in java.sql") BLOB

    Identifies the generic SQL type `BLOB`.
  + ### CLOB

    public static final [JDBCType](JDBCType.md "enum class in java.sql") CLOB

    Identifies the generic SQL type `CLOB`.
  + ### REF

    public static final [JDBCType](JDBCType.md "enum class in java.sql") REF

    Identifies the generic SQL type `REF`.
  + ### DATALINK

    public static final [JDBCType](JDBCType.md "enum class in java.sql") DATALINK

    Identifies the generic SQL type `DATALINK`.
  + ### BOOLEAN

    public static final [JDBCType](JDBCType.md "enum class in java.sql") BOOLEAN

    Identifies the generic SQL type `BOOLEAN`.
  + ### ROWID

    public static final [JDBCType](JDBCType.md "enum class in java.sql") ROWID

    Identifies the SQL type `ROWID`.
  + ### NCHAR

    public static final [JDBCType](JDBCType.md "enum class in java.sql") NCHAR

    Identifies the generic SQL type `NCHAR`.
  + ### NVARCHAR

    public static final [JDBCType](JDBCType.md "enum class in java.sql") NVARCHAR

    Identifies the generic SQL type `NVARCHAR`.
  + ### LONGNVARCHAR

    public static final [JDBCType](JDBCType.md "enum class in java.sql") LONGNVARCHAR

    Identifies the generic SQL type `LONGNVARCHAR`.
  + ### NCLOB

    public static final [JDBCType](JDBCType.md "enum class in java.sql") NCLOB

    Identifies the generic SQL type `NCLOB`.
  + ### SQLXML

    public static final [JDBCType](JDBCType.md "enum class in java.sql") SQLXML

    Identifies the generic SQL type `SQLXML`.
  + ### REF\_CURSOR

    public static final [JDBCType](JDBCType.md "enum class in java.sql") REF\_CURSOR

    Identifies the generic SQL type `REF_CURSOR`.
  + ### TIME\_WITH\_TIMEZONE

    public static final [JDBCType](JDBCType.md "enum class in java.sql") TIME\_WITH\_TIMEZONE

    Identifies the generic SQL type `TIME_WITH_TIMEZONE`.
  + ### TIMESTAMP\_WITH\_TIMEZONE

    public static final [JDBCType](JDBCType.md "enum class in java.sql") TIMESTAMP\_WITH\_TIMEZONE

    Identifies the generic SQL type `TIMESTAMP_WITH_TIMEZONE`.
* ## Method Details

  + ### values

    public static [JDBCType](JDBCType.md "enum class in java.sql")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [JDBCType](JDBCType.md "enum class in java.sql") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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
  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the `SQLType` name that represents a SQL data type.

    Specified by:
    :   `getName` in interface `SQLType`

    Returns:
    :   The name of this `SQLType`.
  + ### getVendor

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getVendor()

    Returns the name of the vendor that supports this data type.

    Specified by:
    :   `getVendor` in interface `SQLType`

    Returns:
    :   The name of the vendor for this data type which is
        java.sql for JDBCType.
  + ### getVendorTypeNumber

    public [Integer](../../../java.base/java/lang/Integer.md "class in java.lang") getVendorTypeNumber()

    Returns the vendor specific type number for the data type.

    Specified by:
    :   `getVendorTypeNumber` in interface `SQLType`

    Returns:
    :   An Integer representing the data type. For `JDBCType`,
        the value will be the same value as in `Types` for the data type.
  + ### valueOf

    public static [JDBCType](JDBCType.md "enum class in java.sql") valueOf(int type)

    Returns the `JDBCType` that corresponds to the specified
    `Types` value

    Parameters:
    :   `type` - `Types` value

    Returns:
    :   The `JDBCType` constant

    Throws:
    :   `IllegalArgumentException` - if this enum type has no constant with
        the specified `Types` value

    See Also:
    :   - [`Types`](Types.md "class in java.sql")