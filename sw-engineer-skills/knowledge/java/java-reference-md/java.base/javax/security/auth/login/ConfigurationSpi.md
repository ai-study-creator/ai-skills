Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.login](package-summary.md)

# Class ConfigurationSpi

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

javax.security.auth.login.ConfigurationSpi

---

public abstract class ConfigurationSpi
extends [Object](../../../../java/lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `Configuration` class.
All the abstract methods in this class must be implemented by each
service provider who wishes to supply a Configuration implementation.

Subclass implementations of this abstract class must provide
a public constructor that takes a `Configuration.Parameters`
object as an input parameter. This constructor also must throw
an IllegalArgumentException if it does not understand the
`Configuration.Parameters` input.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ConfigurationSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected abstract AppConfigurationEntry[]`

  `engineGetAppConfigurationEntry(String name)`

  Retrieve the AppConfigurationEntries for the specified `name`.

  `protected void`

  `engineRefresh()`

  Refresh and reload the Configuration.

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ConfigurationSpi

    public ConfigurationSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineGetAppConfigurationEntry

    protected abstract [AppConfigurationEntry](AppConfigurationEntry.md "class in javax.security.auth.login")[] engineGetAppConfigurationEntry([String](../../../../java/lang/String.md "class in java.lang") name)

    Retrieve the AppConfigurationEntries for the specified `name`.

    Parameters:
    :   `name` - the name used to index the Configuration.

    Returns:
    :   an array of AppConfigurationEntries for the specified
        `name`, or null if there are no entries.
  + ### engineRefresh

    protected void engineRefresh()

    Refresh and reload the Configuration.

    This method causes this Configuration object to refresh/reload its
    contents in an implementation-dependent manner.
    For example, if this Configuration object stores its entries in a file,
    calling `refresh` may cause the file to be re-read.

    The default implementation of this method does nothing.
    This method should be overridden if a refresh operation is supported
    by the implementation.

    Throws:
    :   `SecurityException` - if the caller does not have permission
        to refresh its Configuration.