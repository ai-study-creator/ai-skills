Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class AuthProvider

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.util.Dictionary](../util/Dictionary.md "class in java.util")<[Object](../lang/Object.md "class in java.lang"),[Object](../lang/Object.md "class in java.lang")>

[java.util.Hashtable](../util/Hashtable.md "class in java.util")<[Object](../lang/Object.md "class in java.lang"),[Object](../lang/Object.md "class in java.lang")>

[java.util.Properties](../util/Properties.md "class in java.util")

[java.security.Provider](Provider.md "class in java.security")

java.security.AuthProvider

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Map<Object,Object>`

---

public abstract class AuthProvider
extends [Provider](Provider.md "class in java.security")

This class defines login and logout methods for a provider.

While callers may invoke `login` directly,
the provider may also invoke `login` on behalf of callers
if it determines that a login must be performed
prior to certain operations.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.AuthProvider)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.security.[Provider](Provider.md "class in java.security")

  `Provider.Service`
* ## Field Summary

  ### Fields inherited from class java.util.[Properties](../util/Properties.md "class in java.util")

  `defaults`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AuthProvider(String name,
  double version,
  String info)`

  Deprecated.

  use [`AuthProvider(String, String, String)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String)) instead.

  `protected`

  `AuthProvider(String name,
  String versionStr,
  String info)`

  Constructs a provider with the specified name, version string,
  and information.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `login(Subject subject,
  CallbackHandler handler)`

  Log in to this provider.

  `abstract void`

  `logout()`

  Log out from this provider.

  `abstract void`

  `setCallbackHandler(CallbackHandler handler)`

  Set a `CallbackHandler`.

  ### Methods inherited from class java.security.[Provider](Provider.md "class in java.security")

  `clear, compute, computeIfAbsent, computeIfPresent, configure, elements, entrySet, forEach, get, getInfo, getName, getOrDefault, getProperty, getService, getServices, getVersion, getVersionStr, isConfigured, keys, keySet, load, merge, put, putAll, putIfAbsent, putService, remove, remove, removeService, replace, replace, replaceAll, toString, values`

  ### Methods inherited from class java.util.[Properties](../util/Properties.md "class in java.util")

  `clone, contains, containsKey, containsValue, equals, getProperty, hashCode, isEmpty, list, list, load, loadFromXML, propertyNames, rehash, save, setProperty, size, store, store, storeToXML, storeToXML, storeToXML, stringPropertyNames`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AuthProvider

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="9")
    protected AuthProvider([String](../lang/String.md "class in java.lang") name,
    double version,
    [String](../lang/String.md "class in java.lang") info)

    Deprecated.

    use [`AuthProvider(String, String, String)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String)) instead.

    Constructs a provider with the specified name, version number,
    and information.

    Parameters:
    :   `name` - the provider name.
    :   `version` - the provider version number.
    :   `info` - a description of the provider and its services.
  + ### AuthProvider

    protected AuthProvider([String](../lang/String.md "class in java.lang") name,
    [String](../lang/String.md "class in java.lang") versionStr,
    [String](../lang/String.md "class in java.lang") info)

    Constructs a provider with the specified name, version string,
    and information.

    Parameters:
    :   `name` - the provider name.
    :   `versionStr` - the provider version string.
    :   `info` - a description of the provider and its services.

    Since:
    :   9
* ## Method Details

  + ### login

    public abstract void login([Subject](../../javax/security/auth/Subject.md "class in javax.security.auth") subject,
    [CallbackHandler](../../javax/security/auth/callback/CallbackHandler.md "interface in javax.security.auth.callback") handler)
    throws [LoginException](../../javax/security/auth/login/LoginException.md "class in javax.security.auth.login")

    Log in to this provider.

    The provider relies on a `CallbackHandler`
    to obtain authentication information from the caller
    (a PIN, for example). If the caller passes a `null`
    handler to this method, the provider uses the handler set in the
    `setCallbackHandler` method.
    If no handler was set in that method, the provider queries the
    *auth.login.defaultCallbackHandler* security property
    for the fully qualified class name of a default handler implementation.
    If the security property is not set,
    the provider is assumed to have alternative means
    for obtaining authentication information.

    Parameters:
    :   `subject` - the `Subject` which may contain
        principals/credentials used for authentication,
        or may be populated with additional principals/credentials
        after successful authentication has completed.
        This parameter may be `null`.
    :   `handler` - the `CallbackHandler` used by
        this provider to obtain authentication information
        from the caller, which may be `null`

    Throws:
    :   `IllegalStateException` - if the provider requires configuration
        and [`Provider.configure(java.lang.String)`](Provider.md#configure(java.lang.String)) has not been called
    :   `LoginException` - if the login operation fails
    :   `SecurityException` - if the caller does not pass a
        security check for
        `SecurityPermission("authProvider.name")`,
        where `name` is the value returned by
        this provider's `getName` method
  + ### logout

    public abstract void logout()
    throws [LoginException](../../javax/security/auth/login/LoginException.md "class in javax.security.auth.login")

    Log out from this provider.

    Throws:
    :   `IllegalStateException` - if the provider requires configuration
        and [`Provider.configure(java.lang.String)`](Provider.md#configure(java.lang.String)) has not been called
    :   `LoginException` - if the logout operation fails
    :   `SecurityException` - if the caller does not pass a
        security check for
        `SecurityPermission("authProvider.name")`,
        where `name` is the value returned by
        this provider's `getName` method
  + ### setCallbackHandler

    public abstract void setCallbackHandler([CallbackHandler](../../javax/security/auth/callback/CallbackHandler.md "interface in javax.security.auth.callback") handler)

    Set a `CallbackHandler`.

    The provider uses this handler if one is not passed to the
    `login` method. The provider also uses this handler
    if it invokes `login` on behalf of callers.
    In either case if a handler is not set via this method,
    the provider queries the
    *auth.login.defaultCallbackHandler* security property
    for the fully qualified class name of a default handler implementation.
    If the security property is not set,
    the provider is assumed to have alternative means
    for obtaining authentication information.

    Parameters:
    :   `handler` - a `CallbackHandler` for obtaining
        authentication information, which may be `null`

    Throws:
    :   `IllegalStateException` - if the provider requires configuration
        and [`Provider.configure(java.lang.String)`](Provider.md#configure(java.lang.String)) has not been called
    :   `SecurityException` - if the caller does not pass a
        security check for
        `SecurityPermission("authProvider.name")`,
        where `name` is the value returned by
        this provider's `getName` method