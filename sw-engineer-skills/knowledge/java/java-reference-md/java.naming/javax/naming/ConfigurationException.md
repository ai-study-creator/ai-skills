Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class ConfigurationException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.ConfigurationException

All Implemented Interfaces:
:   `Serializable`

---

public class ConfigurationException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when there is a configuration problem.
This can arise when installation of a provider was
not done correctly, or if there are configuration problems with the
server, or if configuration information required to access
the provider or service is malformed or missing.
For example, a request to use SSL as the security protocol when
the service provider software was not configured with the SSL
component would cause such an exception. Another example is
if the provider requires that a URL be specified as one of the
environment properties but the client failed to provide it.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.ConfigurationException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ConfigurationException()`

  Constructs a new instance of ConfigurationException with
  all name resolution fields and explanation initialized to null.

  `ConfigurationException(String explanation)`

  Constructs a new instance of ConfigurationException using an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ConfigurationException

    public ConfigurationException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of ConfigurationException using an
    explanation. All other fields default to null.

    Parameters:
    :   `explanation` - A possibly null string containing
        additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### ConfigurationException

    public ConfigurationException()

    Constructs a new instance of ConfigurationException with
    all name resolution fields and explanation initialized to null.