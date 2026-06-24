Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.spi](package-summary.md)

# Class SyncProviderException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.sql.SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

javax.sql.rowset.spi.SyncProviderException

All Implemented Interfaces:
:   `Serializable`, `Iterable<Throwable>`

---

public class SyncProviderException
extends [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

Indicates an error with the `SyncProvider` mechanism. This exception
is created by a `SyncProvider` abstract class extension if it
encounters violations in reading from or writing to the originating data source.

If it is implemented to do so, the `SyncProvider` object may also create a
`SyncResolver` object and either initialize the `SyncProviderException`
object with it at construction time or set it with the `SyncProvider` object at
a later time.

The method `acceptChanges` will throw this exception after the writer
has finished checking for conflicts and has found one or more conflicts. An
application may catch a `SyncProviderException` object and call its
`getSyncResolver` method to get its `SyncResolver` object.
See the code fragment in the interface comment for
[`SyncResolver`](SyncResolver.md) for an example.
This `SyncResolver` object will mirror the `RowSet`
object that generated the exception, except that it will contain only the values
from the data source that are in conflict. All other values in the `SyncResolver`
object will be `null`.

The `SyncResolver` object may be used to examine and resolve
each conflict in a row and then go to the next row with a conflict to
repeat the procedure.

A `SyncProviderException` object may or may not contain a description of the
condition causing the exception. The inherited method `getMessage` may be
called to retrieve the description if there is one.

Since:
:   1.5

See Also:
:   * [`SyncFactory`](SyncFactory.md "class in javax.sql.rowset.spi")
    * [`SyncResolver`](SyncResolver.md "interface in javax.sql.rowset.spi")
    * [`SyncFactoryException`](SyncFactoryException.md "class in javax.sql.rowset.spi")
    * [Serialized Form](../../../../../serialized-form.md#javax.sql.rowset.spi.SyncProviderException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SyncProviderException()`

  Creates a new `SyncProviderException` object without a detail message.

  `SyncProviderException(String msg)`

  Constructs a `SyncProviderException` object with the specified
  detail message.

  `SyncProviderException(SyncResolver syncResolver)`

  Constructs a `SyncProviderException` object with the specified
  `SyncResolver` instance.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `SyncResolver`

  `getSyncResolver()`

  Retrieves the `SyncResolver` object that has been set for
  this `SyncProviderException` object, or
  if none has been set, an instance of the default `SyncResolver`
  implementation included in the reference implementation.

  `void`

  `setSyncResolver(SyncResolver syncResolver)`

  Sets the `SyncResolver` object for this
  `SyncProviderException` object to the one supplied.

  ### Methods inherited from class java.sql.[SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

  `getErrorCode, getNextException, getSQLState, iterator, setNextException`

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.[Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach, spliterator`

* ## Constructor Details

  + ### SyncProviderException

    public SyncProviderException()

    Creates a new `SyncProviderException` object without a detail message.
  + ### SyncProviderException

    public SyncProviderException([String](../../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Constructs a `SyncProviderException` object with the specified
    detail message.

    Parameters:
    :   `msg` - the detail message
  + ### SyncProviderException

    public SyncProviderException([SyncResolver](SyncResolver.md "interface in javax.sql.rowset.spi") syncResolver)

    Constructs a `SyncProviderException` object with the specified
    `SyncResolver` instance.

    Parameters:
    :   `syncResolver` - the `SyncResolver` instance used to
        to process the synchronization conflicts

    Throws:
    :   `IllegalArgumentException` - if the `SyncResolver` object
        is `null`.
* ## Method Details

  + ### getSyncResolver

    public [SyncResolver](SyncResolver.md "interface in javax.sql.rowset.spi") getSyncResolver()

    Retrieves the `SyncResolver` object that has been set for
    this `SyncProviderException` object, or
    if none has been set, an instance of the default `SyncResolver`
    implementation included in the reference implementation.

    If a `SyncProviderException` object is thrown, an application
    may use this method to generate a `SyncResolver` object
    with which to resolve the conflict or conflicts that caused the
    exception to be thrown.

    Returns:
    :   the `SyncResolver` object set for this
        `SyncProviderException` object or, if none has
        been set, an instance of the default `SyncResolver`
        implementation. In addition, the default `SyncResolver`
        implementation is also returned if the `SyncResolver()` or
        `SyncResolver(String)` constructors are used to instantiate
        the `SyncResolver` instance.
  + ### setSyncResolver

    public void setSyncResolver([SyncResolver](SyncResolver.md "interface in javax.sql.rowset.spi") syncResolver)

    Sets the `SyncResolver` object for this
    `SyncProviderException` object to the one supplied.
    If the argument supplied is `null`, a call to the method
    `getSyncResolver` will return the default reference
    implementation of the `SyncResolver` interface.

    Parameters:
    :   `syncResolver` - the `SyncResolver` object to be set;
        cannot be `null`

    Throws:
    :   `IllegalArgumentException` - if the `SyncResolver` object
        is `null`.

    See Also:
    :   - [`getSyncResolver()`](#getSyncResolver())