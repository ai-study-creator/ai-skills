Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Interface RowSetMetaData

All Superinterfaces:
:   `ResultSetMetaData`, `Wrapper`

All Known Implementing Classes:
:   `RowSetMetaDataImpl`

---

public interface RowSetMetaData
extends [ResultSetMetaData](../../java/sql/ResultSetMetaData.md "interface in java.sql")

An object that contains information about the columns in a
`RowSet` object. This interface is
an extension of the `ResultSetMetaData` interface with
methods for setting the values in a `RowSetMetaData` object.
When a `RowSetReader` object reads data into a `RowSet`
object, it creates a `RowSetMetaData` object and initializes it
using the methods in the `RowSetMetaData` interface. Then the
reader passes the `RowSetMetaData` object to the rowset.

The methods in this interface are invoked internally when an application
calls the method `RowSet.execute`; an application
programmer would not use them directly.

Since:
:   1.4

* ## Field Summary

  ### Fields inherited from interface java.sql.[ResultSetMetaData](../../java/sql/ResultSetMetaData.md "interface in java.sql")

  `columnNoNulls, columnNullable, columnNullableUnknown`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `setAutoIncrement(int columnIndex,
  boolean property)`

  Sets whether the designated column is automatically numbered,
  The default is for a `RowSet` object's
  columns not to be automatically numbered.

  `void`

  `setCaseSensitive(int columnIndex,
  boolean property)`

  Sets whether the designated column is case sensitive.

  `void`

  `setCatalogName(int columnIndex,
  String catalogName)`

  Sets the designated column's table's catalog name, if any, to the given
  `String`.

  `void`

  `setColumnCount(int columnCount)`

  Sets the number of columns in the `RowSet` object to
  the given number.

  `void`

  `setColumnDisplaySize(int columnIndex,
  int size)`

  Sets the designated column's normal maximum width in chars to the
  given `int`.

  `void`

  `setColumnLabel(int columnIndex,
  String label)`

  Sets the suggested column title for use in printouts and
  displays, if any, to the given `String`.

  `void`

  `setColumnName(int columnIndex,
  String columnName)`

  Sets the name of the designated column to the given `String`.

  `void`

  `setColumnType(int columnIndex,
  int SQLType)`

  Sets the designated column's SQL type to the one given.

  `void`

  `setColumnTypeName(int columnIndex,
  String typeName)`

  Sets the designated column's type name that is specific to the
  data source, if any, to the given `String`.

  `void`

  `setCurrency(int columnIndex,
  boolean property)`

  Sets whether the designated column is a cash value.

  `void`

  `setNullable(int columnIndex,
  int property)`

  Sets whether the designated column's value can be set to
  `NULL`.

  `void`

  `setPrecision(int columnIndex,
  int precision)`

  Sets the designated column's number of decimal digits to the
  given `int`.

  `void`

  `setScale(int columnIndex,
  int scale)`

  Sets the designated column's number of digits to the
  right of the decimal point to the given `int`.

  `void`

  `setSchemaName(int columnIndex,
  String schemaName)`

  Sets the name of the designated column's table's schema, if any, to
  the given `String`.

  `void`

  `setSearchable(int columnIndex,
  boolean property)`

  Sets whether the designated column can be used in a where clause.

  `void`

  `setSigned(int columnIndex,
  boolean property)`

  Sets whether the designated column is a signed number.

  `void`

  `setTableName(int columnIndex,
  String tableName)`

  Sets the designated column's table name, if any, to the given
  `String`.

  ### Methods inherited from interface java.sql.[ResultSetMetaData](../../java/sql/ResultSetMetaData.md "interface in java.sql")

  `getCatalogName, getColumnClassName, getColumnCount, getColumnDisplaySize, getColumnLabel, getColumnName, getColumnType, getColumnTypeName, getPrecision, getScale, getSchemaName, getTableName, isAutoIncrement, isCaseSensitive, isCurrency, isDefinitelyWritable, isNullable, isReadOnly, isSearchable, isSigned, isWritable`

  ### Methods inherited from interface java.sql.[Wrapper](../../java/sql/Wrapper.md "interface in java.sql")

  `isWrapperFor, unwrap`

* ## Method Details

  + ### setColumnCount

    void setColumnCount(int columnCount)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the number of columns in the `RowSet` object to
    the given number.

    Parameters:
    :   `columnCount` - the number of columns in the `RowSet` object

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setAutoIncrement

    void setAutoIncrement(int columnIndex,
    boolean property)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets whether the designated column is automatically numbered,
    The default is for a `RowSet` object's
    columns not to be automatically numbered.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `property` - `true` if the column is automatically
        numbered; `false` if it is not

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setCaseSensitive

    void setCaseSensitive(int columnIndex,
    boolean property)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets whether the designated column is case sensitive.
    The default is `false`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `property` - `true` if the column is case sensitive;
        `false` if it is not

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setSearchable

    void setSearchable(int columnIndex,
    boolean property)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets whether the designated column can be used in a where clause.
    The default is `false`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `property` - `true` if the column can be used in a
        `WHERE` clause; `false` if it cannot

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setCurrency

    void setCurrency(int columnIndex,
    boolean property)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets whether the designated column is a cash value.
    The default is `false`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `property` - `true` if the column is a cash value;
        `false` if it is not

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setNullable

    void setNullable(int columnIndex,
    int property)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets whether the designated column's value can be set to
    `NULL`.
    The default is `ResultSetMetaData.columnNullableUnknown`

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `property` - one of the following constants:
        `ResultSetMetaData.columnNoNulls`,
        `ResultSetMetaData.columnNullable`, or
        `ResultSetMetaData.columnNullableUnknown`

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setSigned

    void setSigned(int columnIndex,
    boolean property)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets whether the designated column is a signed number.
    The default is `false`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `property` - `true` if the column is a signed number;
        `false` if it is not

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setColumnDisplaySize

    void setColumnDisplaySize(int columnIndex,
    int size)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the designated column's normal maximum width in chars to the
    given `int`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `size` - the normal maximum number of characters for
        the designated column

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setColumnLabel

    void setColumnLabel(int columnIndex,
    [String](../../../java.base/java/lang/String.md "class in java.lang") label)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the suggested column title for use in printouts and
    displays, if any, to the given `String`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `label` - the column title

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setColumnName

    void setColumnName(int columnIndex,
    [String](../../../java.base/java/lang/String.md "class in java.lang") columnName)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the name of the designated column to the given `String`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `columnName` - the designated column's name

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setSchemaName

    void setSchemaName(int columnIndex,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaName)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the name of the designated column's table's schema, if any, to
    the given `String`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `schemaName` - the schema name

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setPrecision

    void setPrecision(int columnIndex,
    int precision)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the designated column's number of decimal digits to the
    given `int`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `precision` - the total number of decimal digits

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setScale

    void setScale(int columnIndex,
    int scale)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the designated column's number of digits to the
    right of the decimal point to the given `int`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `scale` - the number of digits to right of decimal point

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setTableName

    void setTableName(int columnIndex,
    [String](../../../java.base/java/lang/String.md "class in java.lang") tableName)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the designated column's table name, if any, to the given
    `String`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `tableName` - the column's table name

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setCatalogName

    void setCatalogName(int columnIndex,
    [String](../../../java.base/java/lang/String.md "class in java.lang") catalogName)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the designated column's table's catalog name, if any, to the given
    `String`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `catalogName` - the column's catalog name

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setColumnType

    void setColumnType(int columnIndex,
    int SQLType)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the designated column's SQL type to the one given.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `SQLType` - the column's SQL type

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`Types`](../../java/sql/Types.md "class in java.sql")
  + ### setColumnTypeName

    void setColumnTypeName(int columnIndex,
    [String](../../../java.base/java/lang/String.md "class in java.lang") typeName)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the designated column's type name that is specific to the
    data source, if any, to the given `String`.

    Parameters:
    :   `columnIndex` - the first column is 1, the second is 2, ...
    :   `typeName` - data source specific type name.

    Throws:
    :   `SQLException` - if a database access error occurs