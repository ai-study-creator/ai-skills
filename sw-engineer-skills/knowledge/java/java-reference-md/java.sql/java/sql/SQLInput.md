Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface SQLInput

All Known Implementing Classes:
:   `SQLInputImpl`

---

public interface SQLInput

An input stream that contains a stream of values representing an
instance of an SQL structured type or an SQL distinct type.
This interface, used only for custom mapping, is used by the driver
behind the scenes, and a programmer never directly invokes
`SQLInput` methods. The *reader* methods
(`readLong`, `readBytes`, and so on)
provide a way for an implementation of the `SQLData`
interface to read the values in an `SQLInput` object.
And as described in `SQLData`, calls to reader methods must
be made in the order that their corresponding attributes appear in the
SQL definition of the type.
The method `wasNull` is used to determine whether
the last value read was SQL `NULL`.

When the method `getObject` is called with an
object of a class implementing the interface `SQLData`,
the JDBC driver calls the method `SQLData.getSQLType`
to determine the SQL type of the user-defined type (UDT)
being custom mapped. The driver
creates an instance of `SQLInput`, populating it with the
attributes of the UDT. The driver then passes the input
stream to the method `SQLData.readSQL`, which in turn
calls the `SQLInput` reader methods
in its implementation for reading the
attributes from the input stream.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `Array`

  `readArray()`

  Reads an SQL `ARRAY` value from the stream and returns it as an
  `Array` object in the Java programming language.

  `InputStream`

  `readAsciiStream()`

  Reads the next attribute in the stream and returns it as a stream of ASCII characters.

  `BigDecimal`

  `readBigDecimal()`

  Reads the next attribute in the stream and returns it as a `java.math.BigDecimal`
  object in the Java programming language.

  `InputStream`

  `readBinaryStream()`

  Reads the next attribute in the stream and returns it as a stream of uninterpreted
  bytes.

  `Blob`

  `readBlob()`

  Reads an SQL `BLOB` value from the stream and returns it as a
  `Blob` object in the Java programming language.

  `boolean`

  `readBoolean()`

  Reads the next attribute in the stream and returns it as a `boolean`
  in the Java programming language.

  `byte`

  `readByte()`

  Reads the next attribute in the stream and returns it as a `byte`
  in the Java programming language.

  `byte[]`

  `readBytes()`

  Reads the next attribute in the stream and returns it as an array of bytes
  in the Java programming language.

  `Reader`

  `readCharacterStream()`

  Reads the next attribute in the stream and returns it as a stream of Unicode characters.

  `Clob`

  `readClob()`

  Reads an SQL `CLOB` value from the stream and returns it as a
  `Clob` object in the Java programming language.

  `Date`

  `readDate()`

  Reads the next attribute in the stream and returns it as a `java.sql.Date` object.

  `double`

  `readDouble()`

  Reads the next attribute in the stream and returns it as a `double`
  in the Java programming language.

  `float`

  `readFloat()`

  Reads the next attribute in the stream and returns it as a `float`
  in the Java programming language.

  `int`

  `readInt()`

  Reads the next attribute in the stream and returns it as an `int`
  in the Java programming language.

  `long`

  `readLong()`

  Reads the next attribute in the stream and returns it as a `long`
  in the Java programming language.

  `NClob`

  `readNClob()`

  Reads an SQL `NCLOB` value from the stream and returns it as a
  `NClob` object in the Java programming language.

  `String`

  `readNString()`

  Reads the next attribute in the stream and returns it as a `String`
  in the Java programming language.

  `Object`

  `readObject()`

  Reads the datum at the head of the stream and returns it as an
  `Object` in the Java programming language.

  `default <T> T`

  `readObject(Class<T> type)`

  Reads the next attribute in the stream and returns it as an
  `Object` in the Java programming language.

  `Ref`

  `readRef()`

  Reads an SQL `REF` value from the stream and returns it as a
  `Ref` object in the Java programming language.

  `RowId`

  `readRowId()`

  Reads an SQL `ROWID` value from the stream and returns it as a
  `RowId` object in the Java programming language.

  `short`

  `readShort()`

  Reads the next attribute in the stream and returns it as a `short`
  in the Java programming language.

  `SQLXML`

  `readSQLXML()`

  Reads an SQL `XML` value from the stream and returns it as a
  `SQLXML` object in the Java programming language.

  `String`

  `readString()`

  Reads the next attribute in the stream and returns it as a `String`
  in the Java programming language.

  `Time`

  `readTime()`

  Reads the next attribute in the stream and returns it as a `java.sql.Time` object.

  `Timestamp`

  `readTimestamp()`

  Reads the next attribute in the stream and returns it as a `java.sql.Timestamp` object.

  `URL`

  `readURL()`

  Reads an SQL `DATALINK` value from the stream and returns it as a
  `java.net.URL` object in the Java programming language.

  `boolean`

  `wasNull()`

  Retrieves whether the last value read was SQL `NULL`.

* ## Method Details

  + ### readString

    [String](../../../java.base/java/lang/String.md "class in java.lang") readString()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `String`
    in the Java programming language.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readBoolean

    boolean readBoolean()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `boolean`
    in the Java programming language.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `false`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readByte

    byte readByte()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `byte`
    in the Java programming language.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `0`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readShort

    short readShort()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `short`
    in the Java programming language.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `0`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readInt

    int readInt()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as an `int`
    in the Java programming language.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `0`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readLong

    long readLong()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `long`
    in the Java programming language.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `0`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readFloat

    float readFloat()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `float`
    in the Java programming language.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `0`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readDouble

    double readDouble()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `double`
    in the Java programming language.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `0`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readBigDecimal

    [BigDecimal](../../../java.base/java/math/BigDecimal.md "class in java.math") readBigDecimal()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `java.math.BigDecimal`
    object in the Java programming language.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readBytes

    byte[] readBytes()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as an array of bytes
    in the Java programming language.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readDate

    [Date](Date.md "class in java.sql") readDate()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `java.sql.Date` object.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readTime

    [Time](Time.md "class in java.sql") readTime()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `java.sql.Time` object.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readTimestamp

    [Timestamp](Timestamp.md "class in java.sql") readTimestamp()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `java.sql.Timestamp` object.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readCharacterStream

    [Reader](../../../java.base/java/io/Reader.md "class in java.io") readCharacterStream()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a stream of Unicode characters.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readAsciiStream

    [InputStream](../../../java.base/java/io/InputStream.md "class in java.io") readAsciiStream()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a stream of ASCII characters.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readBinaryStream

    [InputStream](../../../java.base/java/io/InputStream.md "class in java.io") readBinaryStream()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a stream of uninterpreted
    bytes.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readObject

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") readObject()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the datum at the head of the stream and returns it as an
    `Object` in the Java programming language. The
    actual type of the object returned is determined by the default type
    mapping, and any customizations present in this stream's type map.

    A type map is registered with the stream by the JDBC driver before the
    stream is passed to the application.

    When the datum at the head of the stream is an SQL `NULL`,
    the method returns `null`. If the datum is an SQL structured or distinct
    type, it determines the SQL type of the datum at the head of the stream.
    If the stream's type map has an entry for that SQL type, the driver
    constructs an object of the appropriate class and calls the method
    `SQLData.readSQL` on that object, which reads additional data from the
    stream, using the protocol described for that method.

    Returns:
    :   the datum at the head of the stream as an `Object` in the
        Java programming language;`null` if the datum is SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readRef

    [Ref](Ref.md "interface in java.sql") readRef()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads an SQL `REF` value from the stream and returns it as a
    `Ref` object in the Java programming language.

    Returns:
    :   a `Ref` object representing the SQL `REF` value
        at the head of the stream; `null` if the value read is
        SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readBlob

    [Blob](Blob.md "interface in java.sql") readBlob()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads an SQL `BLOB` value from the stream and returns it as a
    `Blob` object in the Java programming language.

    Returns:
    :   a `Blob` object representing data of the SQL `BLOB` value
        at the head of the stream; `null` if the value read is
        SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readClob

    [Clob](Clob.md "interface in java.sql") readClob()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads an SQL `CLOB` value from the stream and returns it as a
    `Clob` object in the Java programming language.

    Returns:
    :   a `Clob` object representing data of the SQL `CLOB` value
        at the head of the stream; `null` if the value read is
        SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readArray

    [Array](Array.md "interface in java.sql") readArray()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads an SQL `ARRAY` value from the stream and returns it as an
    `Array` object in the Java programming language.

    Returns:
    :   an `Array` object representing data of the SQL
        `ARRAY` value at the head of the stream; `null`
        if the value read is SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### wasNull

    boolean wasNull()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether the last value read was SQL `NULL`.

    Returns:
    :   `true` if the most recently read SQL value was SQL
        `NULL`; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### readURL

    [URL](../../../java.base/java/net/URL.md "class in java.net") readURL()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads an SQL `DATALINK` value from the stream and returns it as a
    `java.net.URL` object in the Java programming language.

    Returns:
    :   a `java.net.URL` object.

    Throws:
    :   `SQLException` - if a database access error occurs,
        or if a URL is malformed
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.4
  + ### readNClob

    [NClob](NClob.md "interface in java.sql") readNClob()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads an SQL `NCLOB` value from the stream and returns it as a
    `NClob` object in the Java programming language.

    Returns:
    :   a `NClob` object representing data of the SQL `NCLOB` value
        at the head of the stream; `null` if the value read is
        SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.6
  + ### readNString

    [String](../../../java.base/java/lang/String.md "class in java.lang") readNString()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `String`
    in the Java programming language. It is intended for use when
    accessing `NCHAR`,`NVARCHAR`
    and `LONGNVARCHAR` columns.

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.6
  + ### readSQLXML

    [SQLXML](SQLXML.md "interface in java.sql") readSQLXML()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads an SQL `XML` value from the stream and returns it as a
    `SQLXML` object in the Java programming language.

    Returns:
    :   a `SQLXML` object representing data of the SQL `XML` value
        at the head of the stream; `null` if the value read is
        SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.6
  + ### readRowId

    [RowId](RowId.md "interface in java.sql") readRowId()
    throws [SQLException](SQLException.md "class in java.sql")

    Reads an SQL `ROWID` value from the stream and returns it as a
    `RowId` object in the Java programming language.

    Returns:
    :   a `RowId` object representing data of the SQL `ROWID` value
        at the head of the stream; `null` if the value read is
        SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.6
  + ### readObject

    default <T> T readObject([Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> type)
    throws [SQLException](SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as an
    `Object` in the Java programming language. The
    actual type of the object returned is determined by the specified
    Java data type, and any customizations present in this
    stream's type map.

    A type map is registered with the stream by the JDBC driver before the
    stream is passed to the application.

    When the attribute at the head of the stream is an SQL `NULL`
    the method returns `null`. If the attribute is an SQL
    structured or distinct
    type, it determines the SQL type of the attribute at the head of the stream.
    If the stream's type map has an entry for that SQL type, the driver
    constructs an object of the appropriate class and calls the method
    `SQLData.readSQL` on that object, which reads additional data from the
    stream, using the protocol described for that method.

    The default implementation will throw `SQLFeatureNotSupportedException`

    Type Parameters:
    :   `T` - the type of the class modeled by this Class object

    Parameters:
    :   `type` - Class representing the Java data type to convert the attribute to.

    Returns:
    :   the attribute at the head of the stream as an `Object` in the
        Java programming language;`null` if the attribute is SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.8