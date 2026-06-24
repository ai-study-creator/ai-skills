Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.serial](package-summary.md)

# Class SerialException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.sql.SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

javax.sql.rowset.serial.SerialException

All Implemented Interfaces:
:   `Serializable`, `Iterable<Throwable>`

---

public class SerialException
extends [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

Indicates and an error with the serialization or de-serialization of
SQL types such as `BLOB, CLOB, STRUCT or ARRAY` in
addition to SQL types such as `DATALINK and JAVAOBJECT`

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.sql.rowset.serial.SerialException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SerialException()`

  Creates a new `SerialException` without a
  message.

  `SerialException(String msg)`

  Creates a new `SerialException` with the
  specified message.
* ## Method Summary

  ### Methods inherited from class java.sql.[SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

  `getErrorCode, getNextException, getSQLState, iterator, setNextException`

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.[Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach, spliterator`

* ## Constructor Details

  + ### SerialException

    public SerialException()

    Creates a new `SerialException` without a
    message.
  + ### SerialException

    public SerialException([String](../../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Creates a new `SerialException` with the
    specified message.

    Parameters:
    :   `msg` - the detail message