Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface ResultSetMetaData

All Superinterfaces:
:   `Wrapper`

All Known Subinterfaces:
:   `RowSetMetaData`

All Known Implementing Classes:
:   `RowSetMetaDataImpl`

---

public interface ResultSetMetaData
extends [Wrapper](Wrapper.md "interface in java.sql")

An object that can be used to get information about the types
and properties of the columns in a `ResultSet` object.
The following code fragment creates the `ResultSet` object rs,
creates the `ResultSetMetaData` object rsmd, and uses rsmd
to find out how many columns rs has and whether the first column in rs
can be used in a `WHERE` clause.

```
     ResultSet rs = stmt.executeQuery("SELECT a, b, c FROM TABLE2");
     ResultSetMetaData rsmd = rs.getMetaData();
     int numberOfColumns = rsmd.getColumnCount();
     boolean b = rsmd.isSearchable(1);
```

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `columnNoNulls`

  The constant indicating that a
  column does not allow `NULL` values.

  `static final int`

  `columnNullable`

  The constant indicating that a
  column allows `NULL` values.

  `static final int`

  `columnNullableUnknown`

  The constant indicating that the
  nullability of a column's values is unknown.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getCatalogName(int column)`

  Gets the designated column's table's catalog name.

  `String`

  `getColumnClassName(int column)`

  Returns the fully-qualified name of the Java class whose instances
  are manufactured if the method `ResultSet.getObject`
  is called to retrieve a value
  from the column.

  `int`

  `getColumnCount()`

  Returns the number of columns in this `ResultSet` object.

  `int`

  `getColumnDisplaySize(int column)`

  Indicates the designated column's normal maximum width in characters.

  `String`

  `getColumnLabel(int column)`

  Gets the designated column's suggested title for use in printouts and
  displays.

  `String`

  `getColumnName(int column)`

  Get the designated column's name.

  `int`

  `getColumnType(int column)`

  Retrieves the designated column's SQL type.

  `String`

  `getColumnTypeName(int column)`

  Retrieves the designated column's database-specific type name.

  `int`

  `getPrecision(int column)`

  Get the designated column's specified column size.

  `int`

  `getScale(int column)`

  Gets the designated column's number of digits to right of the decimal point.

  `String`

  `getSchemaName(int column)`

  Get the designated column's table's schema.

  `String`

  `getTableName(int column)`

  Gets the designated column's table name.

  `boolean`

  `isAutoIncrement(int column)`

  Indicates whether the designated column is automatically numbered.

  `boolean`

  `isCaseSensitive(int column)`

  Indicates whether a column's case matters.

  `boolean`

  `isCurrency(int column)`

  Indicates whether the designated column is a cash value.

  `boolean`

  `isDefinitelyWritable(int column)`

  Indicates whether a write on the designated column will definitely succeed.

  `int`

  `isNullable(int column)`

  Indicates the nullability of values in the designated column.

  `boolean`

  `isReadOnly(int column)`

  Indicates whether the designated column is definitely not writable.

  `boolean`

  `isSearchable(int column)`

  Indicates whether the designated column can be used in a where clause.

  `boolean`

  `isSigned(int column)`

  Indicates whether values in the designated column are signed numbers.

  `boolean`

  `isWritable(int column)`

  Indicates whether it is possible for a write on the designated column to succeed.

  ### Methods inherited from interface java.sql.[Wrapper](Wrapper.md "interface in java.sql")

  `isWrapperFor, unwrap`

* ## Field Details

  + ### columnNoNulls

    static final int columnNoNulls

    The constant indicating that a
    column does not allow `NULL` values.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.ResultSetMetaData.columnNoNulls)
  + ### columnNullable

    static final int columnNullable

    The constant indicating that a
    column allows `NULL` values.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.ResultSetMetaData.columnNullable)
  + ### columnNullableUnknown

    static final int columnNullableUnknown

    The constant indicating that the
    nullability of a column's values is unknown.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.ResultSetMetaData.columnNullableUnknown)
* ## Method Details

  + ### getColumnCount

    int getColumnCount()
    throws [SQLException](SQLException.md "class in java.sql")

    Returns the number of columns in this `ResultSet` object.

    Returns:
    :   the number of columns

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isAutoIncrement

    boolean isAutoIncrement(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether the designated column is automatically numbered.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isCaseSensitive

    boolean isCaseSensitive(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether a column's case matters.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isSearchable

    boolean isSearchable(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether the designated column can be used in a where clause.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isCurrency

    boolean isCurrency(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether the designated column is a cash value.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isNullable

    int isNullable(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates the nullability of values in the designated column.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   the nullability status of the given column; one of `columnNoNulls`,
        `columnNullable` or `columnNullableUnknown`

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isSigned

    boolean isSigned(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether values in the designated column are signed numbers.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getColumnDisplaySize

    int getColumnDisplaySize(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates the designated column's normal maximum width in characters.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   the normal maximum number of characters allowed as the width
        of the designated column

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getColumnLabel

    [String](../../../java.base/java/lang/String.md "class in java.lang") getColumnLabel(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Gets the designated column's suggested title for use in printouts and
    displays. The suggested title is usually specified by the SQL `AS`
    clause. If a SQL `AS` is not specified, the value returned from
    `getColumnLabel` will be the same as the value returned by the
    `getColumnName` method.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   the suggested column title

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getColumnName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getColumnName(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Get the designated column's name.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   column name

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getSchemaName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getSchemaName(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Get the designated column's table's schema.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   schema name or "" if not applicable

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getPrecision

    int getPrecision(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Get the designated column's specified column size.
    For numeric data, this is the maximum precision. For character data, this is the length in characters.
    For datetime datatypes, this is the length in characters of the String representation (assuming the
    maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes. For the ROWID datatype,
    this is the length in bytes. 0 is returned for data types where the
    column size is not applicable.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   precision

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getScale

    int getScale(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Gets the designated column's number of digits to right of the decimal point.
    0 is returned for data types where the scale is not applicable.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   scale

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getTableName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getTableName(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Gets the designated column's table name.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   table name or "" if not applicable

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getCatalogName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getCatalogName(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Gets the designated column's table's catalog name.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   the name of the catalog for the table in which the given column
        appears or "" if not applicable

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getColumnType

    int getColumnType(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the designated column's SQL type.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   SQL type from java.sql.Types

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`Types`](Types.md "class in java.sql")
  + ### getColumnTypeName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getColumnTypeName(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the designated column's database-specific type name.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   type name used by the database. If the column type is
        a user-defined type, then a fully-qualified type name is returned.

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isReadOnly

    boolean isReadOnly(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether the designated column is definitely not writable.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isWritable

    boolean isWritable(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether it is possible for a write on the designated column to succeed.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isDefinitelyWritable

    boolean isDefinitelyWritable(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether a write on the designated column will definitely succeed.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getColumnClassName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getColumnClassName(int column)
    throws [SQLException](SQLException.md "class in java.sql")

    Returns the fully-qualified name of the Java class whose instances
    are manufactured if the method `ResultSet.getObject`
    is called to retrieve a value
    from the column. `ResultSet.getObject` may return a subclass of the
    class returned by this method.

    Parameters:
    :   `column` - the first column is 1, the second is 2, ...

    Returns:
    :   the fully-qualified name of the class in the Java programming
        language that would be used by the method
        `ResultSet.getObject` to retrieve the value in the specified
        column. This is the class name used for custom mapping.

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2