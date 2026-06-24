Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface NClob

All Superinterfaces:
:   `Clob`

---

public interface NClob
extends [Clob](Clob.md "interface in java.sql")

The mapping in the Java programming language
for the SQL `NCLOB` type.
An SQL `NCLOB` is a built-in type
that stores a Character Large Object using the National Character Set
as a column value in a row of a database table.

The `NClob` interface extends the `Clob` interface
which provides methods for getting the
length of an SQL `NCLOB` value,
for materializing a `NCLOB` value on the client, and for
searching for a substring or `NCLOB` object within a
`NCLOB` value. A `NClob` object, just like a `Clob` object, is valid for the duration
of the transaction in which it was created.
Methods in the interfaces [`ResultSet`](ResultSet.md "interface in java.sql"),
[`CallableStatement`](CallableStatement.md "interface in java.sql"), and [`PreparedStatement`](PreparedStatement.md "interface in java.sql"), such as
`getNClob` and `setNClob` allow a programmer to
access an SQL `NCLOB` value. In addition, this interface
has methods for updating a `NCLOB` value.

All methods on the `NClob` interface must be fully implemented if the
JDBC driver supports the data type.

Since:
:   1.6

* ## Method Summary

  ### Methods inherited from interface java.sql.[Clob](Clob.md "interface in java.sql")

  `free, getAsciiStream, getCharacterStream, getCharacterStream, getSubString, length, position, position, setAsciiStream, setCharacterStream, setString, setString, truncate`