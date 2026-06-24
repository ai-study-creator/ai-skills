Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class ServiceConfigurationError

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Error](../lang/Error.md "class in java.lang")

java.util.ServiceConfigurationError

All Implemented Interfaces:
:   `Serializable`

---

public class ServiceConfigurationError
extends [Error](../lang/Error.md "class in java.lang")

Error thrown when something goes wrong while locating, loading, or
instantiating a service provider.

Since:
:   1.6

See Also:
:   * [`ServiceLoader`](ServiceLoader.md "class in java.util")
    * [Serialized Form](../../../serialized-form.md#java.util.ServiceConfigurationError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ServiceConfigurationError(String msg)`

  Constructs a new instance with the specified message.

  `ServiceConfigurationError(String msg,
  Throwable cause)`

  Constructs a new instance with the specified message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ServiceConfigurationError

    public ServiceConfigurationError([String](../lang/String.md "class in java.lang") msg)

    Constructs a new instance with the specified message.

    Parameters:
    :   `msg` - The message, or `null` if there is no message
  + ### ServiceConfigurationError

    public ServiceConfigurationError([String](../lang/String.md "class in java.lang") msg,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs a new instance with the specified message and cause.

    Parameters:
    :   `msg` - The message, or `null` if there is no message
    :   `cause` - The cause, or `null` if the cause is nonexistent
        or unknown