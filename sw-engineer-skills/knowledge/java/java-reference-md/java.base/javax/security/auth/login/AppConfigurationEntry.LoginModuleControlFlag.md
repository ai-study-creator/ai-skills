Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.login](package-summary.md)

# Class AppConfigurationEntry.LoginModuleControlFlag

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

javax.security.auth.login.AppConfigurationEntry.LoginModuleControlFlag

Enclosing class:
:   `AppConfigurationEntry`

---

public static class AppConfigurationEntry.LoginModuleControlFlag
extends [Object](../../../../java/lang/Object.md "class in java.lang")

This class represents whether a `LoginModule`
is REQUIRED, REQUISITE, SUFFICIENT or OPTIONAL.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final AppConfigurationEntry.LoginModuleControlFlag`

  `OPTIONAL`

  Optional `LoginModule`.

  `static final AppConfigurationEntry.LoginModuleControlFlag`

  `REQUIRED`

  Required `LoginModule`.

  `static final AppConfigurationEntry.LoginModuleControlFlag`

  `REQUISITE`

  Requisite `LoginModule`.

  `static final AppConfigurationEntry.LoginModuleControlFlag`

  `SUFFICIENT`

  Sufficient `LoginModule`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  Return a String representation of this controlFlag.

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### REQUIRED

    public static final [AppConfigurationEntry.LoginModuleControlFlag](AppConfigurationEntry.LoginModuleControlFlag.md "class in javax.security.auth.login") REQUIRED

    Required `LoginModule`.
  + ### REQUISITE

    public static final [AppConfigurationEntry.LoginModuleControlFlag](AppConfigurationEntry.LoginModuleControlFlag.md "class in javax.security.auth.login") REQUISITE

    Requisite `LoginModule`.
  + ### SUFFICIENT

    public static final [AppConfigurationEntry.LoginModuleControlFlag](AppConfigurationEntry.LoginModuleControlFlag.md "class in javax.security.auth.login") SUFFICIENT

    Sufficient `LoginModule`.
  + ### OPTIONAL

    public static final [AppConfigurationEntry.LoginModuleControlFlag](AppConfigurationEntry.LoginModuleControlFlag.md "class in javax.security.auth.login") OPTIONAL

    Optional `LoginModule`.
* ## Method Details

  + ### toString

    public [String](../../../../java/lang/String.md "class in java.lang") toString()

    Return a String representation of this controlFlag.

    The String has the format, "LoginModuleControlFlag: *flag*",
    where *flag* is either *required*, *requisite*,
    *sufficient*, or *optional*.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a String representation of this controlFlag.