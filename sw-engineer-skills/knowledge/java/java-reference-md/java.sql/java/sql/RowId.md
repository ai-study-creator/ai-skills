Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface RowId

---

public interface RowId

The representation (mapping) in the Java programming language of an SQL ROWID
value. An SQL ROWID is a built-in type, a value of which can be thought of as
an address for its identified row in a database table. Whether that address
is logical or, in any respects, physical is determined by its originating data
source.

Methods in the interfaces `ResultSet`, `CallableStatement`,
and `PreparedStatement`, such as `getRowId` and `setRowId`
allow a programmer to access a SQL `ROWID` value. The `RowId`
interface provides a method
for representing the value of the `ROWID` as a byte array or as a
`String`.

The method `getRowIdLifetime` in the interface `DatabaseMetaData`,
can be used
to determine if a `RowId` object remains valid for the duration of the transaction in
which the `RowId` was created, the duration of the session in which
the `RowId` was created,
or, effectively, for as long as its identified row is not deleted. In addition
to specifying the duration of its valid lifetime outside its originating data
source, `getRowIdLifetime` specifies the duration of a `ROWID`
value's valid lifetime
within its originating data source. In this, it differs from a large object,
because there is no limit on the valid lifetime of a large object within its
originating data source.

All methods on the `RowId` interface must be fully implemented if the
JDBC driver supports the data type.

Since:
:   1.6

See Also:
:   * [`DatabaseMetaData`](DatabaseMetaData.md "interface in java.sql")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this `RowId` to the specified object.

  `byte[]`

  `getBytes()`

  Returns an array of bytes representing the value of the SQL `ROWID`
  designated by this `java.sql.RowId` object.

  `int`

  `hashCode()`

  Returns a hash code value of this `RowId` object.

  `String`

  `toString()`

  Returns a String representing the value of the SQL ROWID designated by this
  `java.sql.RowId` object.

* ## Method Details

  + ### equals

    boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this `RowId` to the specified object. The result is
    `true` if and only if the argument is not null and is a RowId
    object that represents the same ROWID as this object.

    It is important
    to consider both the origin and the valid lifetime of a `RowId`
    when comparing it to another `RowId`. If both are valid, and
    both are from the same table on the same data source, then if they are equal
    they identify
    the same row; if one or more is no longer guaranteed to be valid, or if
    they originate from different data sources, or different tables on the
    same data source, they may be equal but still
    not identify the same row.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the `Object` to compare this `RowId` object
        against.

    Returns:
    :   true if the `RowId`s are equal; false otherwise

    Since:
    :   1.6

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getBytes

    byte[] getBytes()

    Returns an array of bytes representing the value of the SQL `ROWID`
    designated by this `java.sql.RowId` object.

    Returns:
    :   an array of bytes, whose length is determined by the driver supplying
        the connection, representing the value of the ROWID designated by this
        java.sql.RowId object.
  + ### toString

    [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a String representing the value of the SQL ROWID designated by this
    `java.sql.RowId` object.

    Like `java.sql.Date.toString()`
    returns the contents of its DATE as the `String` "2004-03-17"
    rather than as DATE literal in SQL (which would have been the `String`
    DATE "2004-03-17"), toString()
    returns the contents of its ROWID in a form specific to the driver supplying
    the connection, and possibly not as a `ROWID` literal.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a String whose format is determined by the driver supplying the
        connection, representing the value of the `ROWID` designated
        by this `java.sql.RowId` object.
  + ### hashCode

    int hashCode()

    Returns a hash code value of this `RowId` object.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for the `RowId`

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))