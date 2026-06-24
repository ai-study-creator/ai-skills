Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Class JMXServerErrorException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

javax.management.remote.JMXServerErrorException

All Implemented Interfaces:
:   `Serializable`

---

public class JMXServerErrorException
extends [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

Exception thrown as the result of a remote [`MBeanServer`](../MBeanServer.md "interface in javax.management")
method invocation when an `Error` is thrown while
processing the invocation in the remote MBean server. A
`JMXServerErrorException` instance contains the original
`Error` that occurred as its cause.

Since:
:   1.5

See Also:
:   * [`ServerError`](../../../../java.rmi/java/rmi/ServerError.md "class in java.rmi")
    * [Serialized Form](../../../../serialized-form.md#javax.management.remote.JMXServerErrorException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JMXServerErrorException(String s,
  Error err)`

  Constructs a `JMXServerErrorException` with the specified
  detail message and nested error.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the cause of this throwable or `null` if the
  cause is nonexistent or unknown.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JMXServerErrorException

    public JMXServerErrorException([String](../../../../java.base/java/lang/String.md "class in java.lang") s,
    [Error](../../../../java.base/java/lang/Error.md "class in java.lang") err)

    Constructs a `JMXServerErrorException` with the specified
    detail message and nested error.

    Parameters:
    :   `s` - the detail message.
    :   `err` - the nested error. An instance of this class can be
        constructed where this parameter is null, but the standard
        connectors will never do so.
* ## Method Details

  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Description copied from class: `Throwable`

    Returns the cause of this throwable or `null` if the
    cause is nonexistent or unknown. (The cause is the throwable that
    caused this throwable to get thrown.)

    This implementation returns the cause that was supplied via one of
    the constructors requiring a `Throwable`, or that was set after
    creation with the [`Throwable.initCause(Throwable)`](../../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method. While it is
    typically unnecessary to override this method, a subclass can override
    it to return a cause set by some other means. This is appropriate for
    a "legacy chained throwable" that predates the addition of chained
    exceptions to `Throwable`. Note that it is *not*
    necessary to override any of the `PrintStackTrace` methods,
    all of which invoke the `getCause` method to determine the
    cause of a throwable.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this throwable or `null` if the
        cause is nonexistent or unknown.