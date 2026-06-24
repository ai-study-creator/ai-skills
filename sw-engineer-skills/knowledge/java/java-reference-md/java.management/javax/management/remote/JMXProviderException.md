Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Class JMXProviderException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

javax.management.remote.JMXProviderException

All Implemented Interfaces:
:   `Serializable`

---

public class JMXProviderException
extends [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

Exception thrown by [`JMXConnectorFactory`](JMXConnectorFactory.md "class in javax.management.remote") and
[`JMXConnectorServerFactory`](JMXConnectorServerFactory.md "class in javax.management.remote") when a provider exists for
the required protocol but cannot be used for some reason.

Since:
:   1.5

See Also:
:   * [`JMXConnectorFactory.newJMXConnector(javax.management.remote.JMXServiceURL, java.util.Map<java.lang.String, ?>)`](JMXConnectorFactory.md#newJMXConnector(javax.management.remote.JMXServiceURL,java.util.Map))
    * [`JMXConnectorServerFactory.newJMXConnectorServer(javax.management.remote.JMXServiceURL, java.util.Map<java.lang.String, ?>, javax.management.MBeanServer)`](JMXConnectorServerFactory.md#newJMXConnectorServer(javax.management.remote.JMXServiceURL,java.util.Map,javax.management.MBeanServer))
    * [Serialized Form](../../../../serialized-form.md#javax.management.remote.JMXProviderException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JMXProviderException()`

  Constructs a `JMXProviderException` with no
  specified detail message.

  `JMXProviderException(String message)`

  Constructs a `JMXProviderException` with the
  specified detail message.

  `JMXProviderException(String message,
  Throwable cause)`

  Constructs a `JMXProviderException` with the
  specified detail message and nested exception.
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

  + ### JMXProviderException

    public JMXProviderException()

    Constructs a `JMXProviderException` with no
    specified detail message.
  + ### JMXProviderException

    public JMXProviderException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a `JMXProviderException` with the
    specified detail message.

    Parameters:
    :   `message` - the detail message
  + ### JMXProviderException

    public JMXProviderException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `JMXProviderException` with the
    specified detail message and nested exception.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the nested exception
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