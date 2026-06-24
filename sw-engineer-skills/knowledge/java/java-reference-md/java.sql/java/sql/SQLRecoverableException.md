Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Class SQLRecoverableException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.sql.SQLException](SQLException.md "class in java.sql")

java.sql.SQLRecoverableException

All Implemented Interfaces:
:   `Serializable`, `Iterable<Throwable>`

---

public class SQLRecoverableException
extends [SQLException](SQLException.md "class in java.sql")

The subclass of [`SQLException`](SQLException.md "class in java.sql") thrown in situations where a
previously failed operation might be able to succeed if the application performs
some recovery steps and retries the entire transaction or in the case of a
distributed transaction, the transaction branch. At a minimum,
the recovery operation must include closing the current connection and getting
a new connection.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.sql.SQLRecoverableException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SQLRecoverableException()`

  Constructs a `SQLRecoverableException` object.

  `SQLRecoverableException(String reason)`

  Constructs a `SQLRecoverableException` object
  with a given `reason`.

  `SQLRecoverableException(String reason,
  String SQLState)`

  Constructs a `SQLRecoverableException` object
  with a given `reason` and `SQLState`.

  `SQLRecoverableException(String reason,
  String SQLState,
  int vendorCode)`

  Constructs a `SQLRecoverableException` object
  with a given `reason`, `SQLState` and
  `vendorCode`.

  `SQLRecoverableException(String reason,
  String SQLState,
  int vendorCode,
  Throwable cause)`

  Constructs a `SQLRecoverableException` object
  with a given
  `reason`, `SQLState`, `vendorCode`
  and `cause`.

  `SQLRecoverableException(String reason,
  String SQLState,
  Throwable cause)`

  Constructs a `SQLRecoverableException` object
  with a given
  `reason`, `SQLState` and `cause`.

  `SQLRecoverableException(String reason,
  Throwable cause)`

  Constructs a `SQLRecoverableException` object
  with a given
  `reason` and `cause`.

  `SQLRecoverableException(Throwable cause)`

  Constructs a `SQLRecoverableException` object
  with a given `cause`.
* ## Method Summary

  ### Methods inherited from class java.sql.[SQLException](SQLException.md "class in java.sql")

  `getErrorCode, getNextException, getSQLState, iterator, setNextException`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.[Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach, spliterator`

* ## Constructor Details

  + ### SQLRecoverableException

    public SQLRecoverableException()

    Constructs a `SQLRecoverableException` object.
    The `reason`, `SQLState` are initialized
    to `null` and the vendor code is initialized to 0.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Since:
    :   1.6
  + ### SQLRecoverableException

    public SQLRecoverableException([String](../../../java.base/java/lang/String.md "class in java.lang") reason)

    Constructs a `SQLRecoverableException` object
    with a given `reason`. The `SQLState`
    is initialized to `null` and the vendor code is initialized
    to 0.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Parameters:
    :   `reason` - a description of the exception

    Since:
    :   1.6
  + ### SQLRecoverableException

    public SQLRecoverableException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState)

    Constructs a `SQLRecoverableException` object
    with a given `reason` and `SQLState`.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method. The vendor code
    is initialized to 0.

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception

    Since:
    :   1.6
  + ### SQLRecoverableException

    public SQLRecoverableException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int vendorCode)

    Constructs a `SQLRecoverableException` object
    with a given `reason`, `SQLState` and
    `vendorCode`.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `vendorCode` - a database vendor specific exception code

    Since:
    :   1.6
  + ### SQLRecoverableException

    public SQLRecoverableException([Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLRecoverableException` object
    with a given `cause`.
    The `SQLState` is initialized
    to `null` and the vendor code is initialized to 0.
    The `reason` is initialized to `null` if
    `cause==null` or to `cause.toString()` if
    `cause!=null`.

    Parameters:
    :   `cause` - the underlying reason for this `SQLException` (which is saved for later retrieval by the `getCause()` method); may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6
  + ### SQLRecoverableException

    public SQLRecoverableException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLRecoverableException` object
    with a given
    `reason` and `cause`.
    The `SQLState` is initialized to `null`
    and the vendor code is initialized to 0.

    Parameters:
    :   `reason` - a description of the exception.
    :   `cause` - the underlying reason for this `SQLException` (which is saved for later retrieval by the `getCause()` method); may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6
  + ### SQLRecoverableException

    public SQLRecoverableException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLRecoverableException` object
    with a given
    `reason`, `SQLState` and `cause`.
    The vendor code is initialized to 0.

    Parameters:
    :   `reason` - a description of the exception.
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `cause` - the underlying reason for this `SQLException` (which is saved for later retrieval by the `getCause()` method); may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6
  + ### SQLRecoverableException

    public SQLRecoverableException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int vendorCode,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLRecoverableException` object
    with a given
    `reason`, `SQLState`, `vendorCode`
    and `cause`.

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `vendorCode` - a database vendor-specific exception code
    :   `cause` - the underlying reason for this `SQLException` (which is saved for later retrieval by the `getCause()` method); may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6