Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface SQLOutput

All Known Implementing Classes:
:   `SQLOutputImpl`

---

public interface SQLOutput

The output stream for writing the attributes of a user-defined
type back to the database. This interface, used
only for custom mapping, is used by the driver, and its
methods are never directly invoked by a programmer.

When an object of a class implementing the interface
`SQLData` is passed as an argument to an SQL statement, the
JDBC driver calls the method `SQLData.getSQLType` to
determine the kind of SQL
datum being passed to the database.
The driver then creates an instance of `SQLOutput` and
passes it to the method `SQLData.writeSQL`.
The method `writeSQL` in turn calls the
appropriate `SQLOutput` *writer* methods
`writeBoolean`, `writeCharacterStream`, and so on)
to write data from the `SQLData` object to
the `SQLOutput` output stream as the
representation of an SQL user-defined type.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `void`

  `writeArray(Array x)`

  Writes an SQL `ARRAY` value to the stream.

  `void`

  `writeAsciiStream(InputStream x)`

  Writes the next attribute to the stream as a stream of ASCII characters.

  `void`

  `writeBigDecimal(BigDecimal x)`

  Writes the next attribute to the stream as a java.math.BigDecimal object.

  `void`

  `writeBinaryStream(InputStream x)`

  Writes the next attribute to the stream as a stream of uninterpreted
  bytes.

  `void`

  `writeBlob(Blob x)`

  Writes an SQL `BLOB` value to the stream.

  `void`

  `writeBoolean(boolean x)`

  Writes the next attribute to the stream as a Java boolean.

  `void`

  `writeByte(byte x)`

  Writes the next attribute to the stream as a Java byte.

  `void`

  `writeBytes(byte[] x)`

  Writes the next attribute to the stream as an array of bytes.

  `void`

  `writeCharacterStream(Reader x)`

  Writes the next attribute to the stream as a stream of Unicode characters.

  `void`

  `writeClob(Clob x)`

  Writes an SQL `CLOB` value to the stream.

  `void`

  `writeDate(Date x)`

  Writes the next attribute to the stream as a java.sql.Date object.

  `void`

  `writeDouble(double x)`

  Writes the next attribute to the stream as a Java double.

  `void`

  `writeFloat(float x)`

  Writes the next attribute to the stream as a Java float.

  `void`

  `writeInt(int x)`

  Writes the next attribute to the stream as a Java int.

  `void`

  `writeLong(long x)`

  Writes the next attribute to the stream as a Java long.

  `void`

  `writeNClob(NClob x)`

  Writes an SQL `NCLOB` value to the stream.

  `void`

  `writeNString(String x)`

  Writes the next attribute to the stream as a `String`
  in the Java programming language.

  `default void`

  `writeObject(Object x,
  SQLType targetSqlType)`

  Writes to the stream the data contained in the given object.

  `void`

  `writeObject(SQLData x)`

  Writes to the stream the data contained in the given
  `SQLData` object.

  `void`

  `writeRef(Ref x)`

  Writes an SQL `REF` value to the stream.

  `void`

  `writeRowId(RowId x)`

  Writes an SQL `ROWID` value to the stream.

  `void`

  `writeShort(short x)`

  Writes the next attribute to the stream as a Java short.

  `void`

  `writeSQLXML(SQLXML x)`

  Writes an SQL `XML` value to the stream.

  `void`

  `writeString(String x)`

  Writes the next attribute to the stream as a `String`
  in the Java programming language.

  `void`

  `writeStruct(Struct x)`

  Writes an SQL structured type value to the stream.

  `void`

  `writeTime(Time x)`

  Writes the next attribute to the stream as a java.sql.Time object.

  `void`

  `writeTimestamp(Timestamp x)`

  Writes the next attribute to the stream as a java.sql.Timestamp object.

  `void`

  `writeURL(URL x)`

  Writes a SQL `DATALINK` value to the stream.

* ## Method Details

  + ### writeString

    void writeString([String](../../../java.base/java/lang/String.md "class in java.lang") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a `String`
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeBoolean

    void writeBoolean(boolean x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a Java boolean.
    Writes the next attribute to the stream as a `String`
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeByte

    void writeByte(byte x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a Java byte.
    Writes the next attribute to the stream as a `String`
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeShort

    void writeShort(short x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a Java short.
    Writes the next attribute to the stream as a `String`
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeInt

    void writeInt(int x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a Java int.
    Writes the next attribute to the stream as a `String`
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeLong

    void writeLong(long x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a Java long.
    Writes the next attribute to the stream as a `String`
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeFloat

    void writeFloat(float x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a Java float.
    Writes the next attribute to the stream as a `String`
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeDouble

    void writeDouble(double x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a Java double.
    Writes the next attribute to the stream as a `String`
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeBigDecimal

    void writeBigDecimal([BigDecimal](../../../java.base/java/math/BigDecimal.md "class in java.math") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a java.math.BigDecimal object.
    Writes the next attribute to the stream as a `String`
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeBytes

    void writeBytes(byte[] x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as an array of bytes.
    Writes the next attribute to the stream as a `String`
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeDate

    void writeDate([Date](Date.md "class in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a java.sql.Date object.
    Writes the next attribute to the stream as a `java.sql.Date` object
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeTime

    void writeTime([Time](Time.md "class in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a java.sql.Time object.
    Writes the next attribute to the stream as a `java.sql.Date` object
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeTimestamp

    void writeTimestamp([Timestamp](Timestamp.md "class in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a java.sql.Timestamp object.
    Writes the next attribute to the stream as a `java.sql.Date` object
    in the Java programming language.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeCharacterStream

    void writeCharacterStream([Reader](../../../java.base/java/io/Reader.md "class in java.io") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a stream of Unicode characters.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeAsciiStream

    void writeAsciiStream([InputStream](../../../java.base/java/io/InputStream.md "class in java.io") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a stream of ASCII characters.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeBinaryStream

    void writeBinaryStream([InputStream](../../../java.base/java/io/InputStream.md "class in java.io") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a stream of uninterpreted
    bytes.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeObject

    void writeObject([SQLData](SQLData.md "interface in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes to the stream the data contained in the given
    `SQLData` object.
    When the `SQLData` object is `null`, this
    method writes an SQL `NULL` to the stream.
    Otherwise, it calls the `SQLData.writeSQL`
    method of the given object, which
    writes the object's attributes to the stream.
    The implementation of the method `SQLData.writeSQL`
    calls the appropriate `SQLOutput` writer method(s)
    for writing each of the object's attributes in order.
    The attributes must be read from an `SQLInput`
    input stream and written to an `SQLOutput`
    output stream in the same order in which they were
    listed in the SQL definition of the user-defined type.

    Parameters:
    :   `x` - the object representing data of an SQL structured or
        distinct type

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeRef

    void writeRef([Ref](Ref.md "interface in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes an SQL `REF` value to the stream.

    Parameters:
    :   `x` - a `Ref` object representing data of an SQL
        `REF` value

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeBlob

    void writeBlob([Blob](Blob.md "interface in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes an SQL `BLOB` value to the stream.

    Parameters:
    :   `x` - a `Blob` object representing data of an SQL
        `BLOB` value

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeClob

    void writeClob([Clob](Clob.md "interface in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes an SQL `CLOB` value to the stream.

    Parameters:
    :   `x` - a `Clob` object representing data of an SQL
        `CLOB` value

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeStruct

    void writeStruct([Struct](Struct.md "interface in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes an SQL structured type value to the stream.

    Parameters:
    :   `x` - a `Struct` object representing data of an SQL
        structured type

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeArray

    void writeArray([Array](Array.md "interface in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes an SQL `ARRAY` value to the stream.

    Parameters:
    :   `x` - an `Array` object representing data of an SQL
        `ARRAY` type

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### writeURL

    void writeURL([URL](../../../java.base/java/net/URL.md "class in java.net") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes a SQL `DATALINK` value to the stream.

    Parameters:
    :   `x` - a `java.net.URL` object representing the data
        of SQL DATALINK type

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.4
  + ### writeNString

    void writeNString([String](../../../java.base/java/lang/String.md "class in java.lang") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a `String`
    in the Java programming language. The driver converts this to a
    SQL `NCHAR` or
    `NVARCHAR` or `LONGNVARCHAR` value
    (depending on the argument's
    size relative to the driver's limits on `NVARCHAR` values)
    when it sends it to the stream.

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.6
  + ### writeNClob

    void writeNClob([NClob](NClob.md "interface in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes an SQL `NCLOB` value to the stream.

    Parameters:
    :   `x` - a `NClob` object representing data of an SQL
        `NCLOB` value

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.6
  + ### writeRowId

    void writeRowId([RowId](RowId.md "interface in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes an SQL `ROWID` value to the stream.

    Parameters:
    :   `x` - a `RowId` object representing data of an SQL
        `ROWID` value

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.6
  + ### writeSQLXML

    void writeSQLXML([SQLXML](SQLXML.md "interface in java.sql") x)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes an SQL `XML` value to the stream.

    Parameters:
    :   `x` - a `SQLXML` object representing data of an SQL
        `XML` value

    Throws:
    :   `SQLException` - if a database access error occurs,
        the `java.xml.transform.Result`,
        `Writer` or `OutputStream` has not been closed for the `SQLXML` object or
        if there is an error processing the XML value. The `getCause` method
        of the exception may provide a more detailed exception, for example, if the
        stream does not contain valid XML.
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.6
  + ### writeObject

    default void writeObject([Object](../../../java.base/java/lang/Object.md "class in java.lang") x,
    [SQLType](SQLType.md "interface in java.sql") targetSqlType)
    throws [SQLException](SQLException.md "class in java.sql")

    Writes to the stream the data contained in the given object. The
    object will be converted to the specified targetSqlType
    before being sent to the stream.

    When the `object` is `null`, this
    method writes an SQL `NULL` to the stream.

    If the object has a custom mapping (is of a class implementing the
    interface `SQLData`),
    the JDBC driver should call the method `SQLData.writeSQL` to
    write it to the SQL data stream.
    If, on the other hand, the object is of a class implementing
    `Ref`, `Blob`, `Clob`, `NClob`,
    `Struct`, `java.net.URL`,
    or `Array`, the driver should pass it to the database as a
    value of the corresponding SQL type.

    The default implementation will throw `SQLFeatureNotSupportedException`

    Parameters:
    :   `x` - the object containing the input parameter value
    :   `targetSqlType` - the SQL type to be sent to the database.

    Throws:
    :   `SQLException` - if a database access error occurs or
        if the Java Object specified by x is an InputStream
        or Reader object and the value of the scale parameter is less
        than zero
    :   `SQLFeatureNotSupportedException` - if
        the JDBC driver does not support this data type

    Since:
    :   1.8

    See Also:
    :   - [`JDBCType`](JDBCType.md "enum class in java.sql")
        - [`SQLType`](SQLType.md "interface in java.sql")