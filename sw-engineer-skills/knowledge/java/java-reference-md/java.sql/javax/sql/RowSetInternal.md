Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Interface RowSetInternal

---

public interface RowSetInternal

The interface that a `RowSet` object implements in order to
present itself to a `RowSetReader` or `RowSetWriter`
object. The `RowSetInternal` interface contains
methods that let the reader or writer access and modify the internal
state of the rowset.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Connection`

  `getConnection()`

  Retrieves the `Connection` object that was passed to this
  `RowSet` object.

  `ResultSet`

  `getOriginal()`

  Retrieves a `ResultSet` object containing the original
  value of this `RowSet` object.

  `ResultSet`

  `getOriginalRow()`

  Retrieves a `ResultSet` object containing the original value
  of the current row only.

  `Object[]`

  `getParams()`

  Retrieves the parameters that have been set for this
  `RowSet` object's command.

  `void`

  `setMetaData(RowSetMetaData md)`

  Sets the given `RowSetMetaData` object as the
  `RowSetMetaData` object for this `RowSet`
  object.

* ## Method Details

  + ### getParams

    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getParams()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Retrieves the parameters that have been set for this
    `RowSet` object's command.

    Returns:
    :   an array of the current parameter values for this `RowSet`
        object's command

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getConnection

    [Connection](../../java/sql/Connection.md "interface in java.sql") getConnection()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Retrieves the `Connection` object that was passed to this
    `RowSet` object.

    Returns:
    :   the `Connection` object passed to the rowset
        or `null` if none was passed

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### setMetaData

    void setMetaData([RowSetMetaData](RowSetMetaData.md "interface in javax.sql") md)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the given `RowSetMetaData` object as the
    `RowSetMetaData` object for this `RowSet`
    object. The `RowSetReader` object associated with the rowset
    will use `RowSetMetaData` methods to set the values giving
    information about the rowset's columns.

    Parameters:
    :   `md` - the `RowSetMetaData` object that will be set with
        information about the rowset's columns

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getOriginal

    [ResultSet](../../java/sql/ResultSet.md "interface in java.sql") getOriginal()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Retrieves a `ResultSet` object containing the original
    value of this `RowSet` object.

    The cursor is positioned before the first row in the result set.
    Only rows contained in the result set returned by the method
    `getOriginal` are said to have an original value.

    Returns:
    :   the original value of the rowset

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getOriginalRow

    [ResultSet](../../java/sql/ResultSet.md "interface in java.sql") getOriginalRow()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Retrieves a `ResultSet` object containing the original value
    of the current row only. If the current row has no original value,
    an empty result set is returned. If there is no current row,
    an exception is thrown.

    Returns:
    :   the original value of the current row as a `ResultSet`
        object

    Throws:
    :   `SQLException` - if a database access error occurs or this method
        is called while the cursor is on the insert row, before the
        first row, or after the last row