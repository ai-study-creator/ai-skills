Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.login](package-summary.md)

# Class AppConfigurationEntry

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

javax.security.auth.login.AppConfigurationEntry

---

public class AppConfigurationEntry
extends [Object](../../../../java/lang/Object.md "class in java.lang")

This class represents a single `LoginModule` entry
configured for the application specified in the
`getAppConfigurationEntry(String appName)`
method in the `Configuration` class. Each respective
`AppConfigurationEntry` contains a `LoginModule` name,
a control flag (specifying whether this `LoginModule` is
REQUIRED, REQUISITE, SUFFICIENT, or OPTIONAL), and LoginModule-specific
options. Please refer to the `Configuration` class for
more information on the different control flags and their semantics.

Since:
:   1.4

See Also:
:   * [`Configuration`](Configuration.md "class in javax.security.auth.login")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `AppConfigurationEntry.LoginModuleControlFlag`

  This class represents whether a `LoginModule`
  is REQUIRED, REQUISITE, SUFFICIENT or OPTIONAL.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AppConfigurationEntry(String loginModuleName,
  AppConfigurationEntry.LoginModuleControlFlag controlFlag,
  Map<String,?> options)`

  Default constructor for this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AppConfigurationEntry.LoginModuleControlFlag`

  `getControlFlag()`

  Return the controlFlag
  (either REQUIRED, REQUISITE, SUFFICIENT, or OPTIONAL)
  for this `LoginModule`.

  `String`

  `getLoginModuleName()`

  Get the class name of the configured `LoginModule`.

  `Map<String,?>`

  `getOptions()`

  Get the options configured for this `LoginModule`.

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AppConfigurationEntry

    public AppConfigurationEntry([String](../../../../java/lang/String.md "class in java.lang") loginModuleName,
    [AppConfigurationEntry.LoginModuleControlFlag](AppConfigurationEntry.LoginModuleControlFlag.md "class in javax.security.auth.login") controlFlag,
    [Map](../../../../java/util/Map.md "interface in java.util")<[String](../../../../java/lang/String.md "class in java.lang"),?> options)

    Default constructor for this class.

    This entry represents a single `LoginModule`
    entry configured for the application specified in the
    `getAppConfigurationEntry(String appName)`
    method from the `Configuration` class.

    Parameters:
    :   `loginModuleName` - String representing the class name of the
        `LoginModule` configured for the
        specified application.
    :   `controlFlag` - either REQUIRED, REQUISITE, SUFFICIENT,
        or OPTIONAL.
    :   `options` - the options configured for this `LoginModule`.

    Throws:
    :   `IllegalArgumentException` - if `loginModuleName`
        is null, if `LoginModuleName`
        has a length of 0, if `controlFlag`
        is not either REQUIRED, REQUISITE, SUFFICIENT
        or OPTIONAL, or if `options` is null.
* ## Method Details

  + ### getLoginModuleName

    public [String](../../../../java/lang/String.md "class in java.lang") getLoginModuleName()

    Get the class name of the configured `LoginModule`.

    Returns:
    :   the class name of the configured `LoginModule` as
        a String.
  + ### getControlFlag

    public [AppConfigurationEntry.LoginModuleControlFlag](AppConfigurationEntry.LoginModuleControlFlag.md "class in javax.security.auth.login") getControlFlag()

    Return the controlFlag
    (either REQUIRED, REQUISITE, SUFFICIENT, or OPTIONAL)
    for this `LoginModule`.

    Returns:
    :   the controlFlag
        (either REQUIRED, REQUISITE, SUFFICIENT, or OPTIONAL)
        for this `LoginModule`.
  + ### getOptions

    public [Map](../../../../java/util/Map.md "interface in java.util")<[String](../../../../java/lang/String.md "class in java.lang"),?> getOptions()

    Get the options configured for this `LoginModule`.

    Returns:
    :   the options configured for this `LoginModule`
        as an unmodifiable `Map`.