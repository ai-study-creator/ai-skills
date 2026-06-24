Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.spi](package-summary.md)

# Class SyncFactoryException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.sql.SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

javax.sql.rowset.spi.SyncFactoryException

All Implemented Interfaces:
:   `Serializable`, `Iterable<Throwable>`

---

public class SyncFactoryException
extends [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

Indicates an error with `SyncFactory` mechanism. A disconnected
RowSet implementation cannot be used without a `SyncProvider`
being successfully instantiated

Since:
:   1.5

See Also:
:   * [`SyncFactory`](SyncFactory.md "class in javax.sql.rowset.spi")
    * [`SyncFactoryException`](SyncFactoryException.md "class in javax.sql.rowset.spi")
    * [Serialized Form](../../../../../serialized-form.md#javax.sql.rowset.spi.SyncFactoryException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SyncFactoryException()`

  Creates new `SyncFactoryException` without detail message.

  `SyncFactoryException(String msg)`

  Constructs an `SyncFactoryException` with the specified
  detail message.
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

  + ### SyncFactoryException

    public SyncFactoryException()

    Creates new `SyncFactoryException` without detail message.
  + ### SyncFactoryException

    public SyncFactoryException([String](../../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Constructs an `SyncFactoryException` with the specified
    detail message.

    Parameters:
    :   `msg` - the detail message.