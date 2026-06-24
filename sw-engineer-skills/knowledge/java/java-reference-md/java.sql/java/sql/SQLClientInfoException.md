Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Class SQLClientInfoException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.sql.SQLException](SQLException.md "class in java.sql")

java.sql.SQLClientInfoException

All Implemented Interfaces:
:   `Serializable`, `Iterable<Throwable>`

---

public class SQLClientInfoException
extends [SQLException](SQLException.md "class in java.sql")

The subclass of [`SQLException`](SQLException.md "class in java.sql") is thrown when one or more client info properties
could not be set on a `Connection`. In addition to the information provided
by `SQLException`, a `SQLClientInfoException` provides a list of client info
properties that were not set.
Some databases do not allow multiple client info properties to be set
atomically. For those databases, it is possible that some of the client
info properties had been set even though the `Connection.setClientInfo`
method threw an exception. An application can use the `getFailedProperties`
method to retrieve a list of client info properties that were not set. The
properties are identified by passing a
`Map<String,ClientInfoStatus>` to
the appropriate `SQLClientInfoException` constructor.

Since:
:   1.6

See Also:
:   * [`ClientInfoStatus`](ClientInfoStatus.md "enum class in java.sql")
    * [`Connection.setClientInfo(java.lang.String, java.lang.String)`](Connection.md#setClientInfo(java.lang.String,java.lang.String))
    * [Serialized Form](../../../serialized-form.md#java.sql.SQLClientInfoException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SQLClientInfoException()`

  Constructs a `SQLClientInfoException` Object.

  `SQLClientInfoException(String reason,
  String SQLState,
  int vendorCode,
  Map<String,ClientInfoStatus> failedProperties)`

  Constructs a `SQLClientInfoException` object initialized with a
  given `reason`, `SQLState`,
  `vendorCode` and `failedProperties`.

  `SQLClientInfoException(String reason,
  String SQLState,
  int vendorCode,
  Map<String,ClientInfoStatus> failedProperties,
  Throwable cause)`

  Constructs a `SQLClientInfoException` object initialized with a
  given `reason`, `SQLState`,
  `cause`, `vendorCode` and
  `failedProperties`.

  `SQLClientInfoException(String reason,
  String SQLState,
  Map<String,ClientInfoStatus> failedProperties)`

  Constructs a `SQLClientInfoException` object initialized with a
  given `reason`, `SQLState` and
  `failedProperties`.

  `SQLClientInfoException(String reason,
  String SQLState,
  Map<String,ClientInfoStatus> failedProperties,
  Throwable cause)`

  Constructs a `SQLClientInfoException` object initialized with a
  given `reason`, `SQLState`, `cause`
  and `failedProperties`.

  `SQLClientInfoException(String reason,
  Map<String,ClientInfoStatus> failedProperties)`

  Constructs a `SQLClientInfoException` object initialized with a
  given `reason` and `failedProperties`.

  `SQLClientInfoException(String reason,
  Map<String,ClientInfoStatus> failedProperties,
  Throwable cause)`

  Constructs a `SQLClientInfoException` object initialized with a
  given `reason`, `cause` and
  `failedProperties`.

  `SQLClientInfoException(Map<String,ClientInfoStatus> failedProperties)`

  Constructs a `SQLClientInfoException` object initialized with a
  given `failedProperties`.

  `SQLClientInfoException(Map<String,ClientInfoStatus> failedProperties,
  Throwable cause)`

  Constructs a `SQLClientInfoException` object initialized with
  a given `cause` and `failedProperties`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Map<String,ClientInfoStatus>`

  `getFailedProperties()`

  Returns the list of client info properties that could not be set.

  ### Methods inherited from class java.sql.[SQLException](SQLException.md "class in java.sql")

  `getErrorCode, getNextException, getSQLState, iterator, setNextException`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.[Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach, spliterator`

* ## Constructor Details

  + ### SQLClientInfoException

    public SQLClientInfoException()

    Constructs a `SQLClientInfoException` Object.
    The `reason`,
    `SQLState`, and failedProperties list are initialized to
    `null` and the vendor code is initialized to 0.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Since:
    :   1.6
  + ### SQLClientInfoException

    public SQLClientInfoException([Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")> failedProperties)

    Constructs a `SQLClientInfoException` object initialized with a
    given `failedProperties`.
    The `reason` and `SQLState` are initialized
    to `null` and the vendor code is initialized to 0.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Parameters:
    :   `failedProperties` - A Map containing the property values that could not
        be set. The keys in the Map
        contain the names of the client info
        properties that could not be set and
        the values contain one of the reason codes
        defined in `ClientInfoStatus`

    Since:
    :   1.6
  + ### SQLClientInfoException

    public SQLClientInfoException([Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")> failedProperties,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLClientInfoException` object initialized with
    a given `cause` and `failedProperties`.
    The `reason` is initialized to `null` if
    `cause==null` or to `cause.toString()` if
    `cause!=null` and the vendor code is initialized to 0.

    Parameters:
    :   `failedProperties` - A Map containing the property values that could not
        be set. The keys in the Map
        contain the names of the client info
        properties that could not be set and
        the values contain one of the reason codes
        defined in `ClientInfoStatus`
    :   `cause` - the (which is saved for later retrieval by the `getCause()` method); may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6
  + ### SQLClientInfoException

    public SQLClientInfoException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")> failedProperties)

    Constructs a `SQLClientInfoException` object initialized with a
    given `reason` and `failedProperties`.
    The `SQLState` is initialized
    to `null` and the vendor code is initialized to 0.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Parameters:
    :   `reason` - a description of the exception
    :   `failedProperties` - A Map containing the property values that could not
        be set. The keys in the Map
        contain the names of the client info
        properties that could not be set and
        the values contain one of the reason codes
        defined in `ClientInfoStatus`

    Since:
    :   1.6
  + ### SQLClientInfoException

    public SQLClientInfoException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")> failedProperties,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLClientInfoException` object initialized with a
    given `reason`, `cause` and
    `failedProperties`.
    The `SQLState` is initialized
    to `null` and the vendor code is initialized to 0.

    Parameters:
    :   `reason` - a description of the exception
    :   `failedProperties` - A Map containing the property values that could not
        be set. The keys in the Map
        contain the names of the client info
        properties that could not be set and
        the values contain one of the reason codes
        defined in `ClientInfoStatus`
    :   `cause` - the underlying reason for this `SQLException` (which is saved for later retrieval by the `getCause()` method); may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6
  + ### SQLClientInfoException

    public SQLClientInfoException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    [Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")> failedProperties)

    Constructs a `SQLClientInfoException` object initialized with a
    given `reason`, `SQLState` and
    `failedProperties`.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method. The vendor code
    is initialized to 0.

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `failedProperties` - A Map containing the property values that could not
        be set. The keys in the Map
        contain the names of the client info
        properties that could not be set and
        the values contain one of the reason codes
        defined in `ClientInfoStatus`

    Since:
    :   1.6
  + ### SQLClientInfoException

    public SQLClientInfoException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    [Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")> failedProperties,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLClientInfoException` object initialized with a
    given `reason`, `SQLState`, `cause`
    and `failedProperties`. The vendor code is initialized to 0.

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `failedProperties` - A Map containing the property values that could not
        be set. The keys in the Map
        contain the names of the client info
        properties that could not be set and
        the values contain one of the reason codes
        defined in `ClientInfoStatus`
    :   `cause` - the underlying reason for this `SQLException` (which is saved for later retrieval by the `getCause()` method); may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6
  + ### SQLClientInfoException

    public SQLClientInfoException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int vendorCode,
    [Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")> failedProperties)

    Constructs a `SQLClientInfoException` object initialized with a
    given `reason`, `SQLState`,
    `vendorCode` and `failedProperties`.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `vendorCode` - a database vendor-specific exception code
    :   `failedProperties` - A Map containing the property values that could not
        be set. The keys in the Map
        contain the names of the client info
        properties that could not be set and
        the values contain one of the reason codes
        defined in `ClientInfoStatus`

    Since:
    :   1.6
  + ### SQLClientInfoException

    public SQLClientInfoException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int vendorCode,
    [Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")> failedProperties,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLClientInfoException` object initialized with a
    given `reason`, `SQLState`,
    `cause`, `vendorCode` and
    `failedProperties`.

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `vendorCode` - a database vendor-specific exception code
    :   `failedProperties` - A Map containing the property values that could not
        be set. The keys in the Map
        contain the names of the client info
        properties that could not be set and
        the values contain one of the reason codes
        defined in `ClientInfoStatus`
    :   `cause` - the underlying reason for this `SQLException` (which is saved for later retrieval by the `getCause()` method); may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6
* ## Method Details

  + ### getFailedProperties

    public [Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")> getFailedProperties()

    Returns the list of client info properties that could not be set. The
    keys in the Map contain the names of the client info
    properties that could not be set and the values contain one of the
    reason codes defined in `ClientInfoStatus`

    Returns:
    :   Map list containing the client info properties that could
        not be set

    Since:
    :   1.6