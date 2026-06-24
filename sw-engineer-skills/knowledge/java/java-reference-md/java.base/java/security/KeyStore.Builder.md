Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyStore.Builder

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyStore.Builder

Enclosing class:
:   `KeyStore`

---

public abstract static class KeyStore.Builder
extends [Object](../lang/Object.md "class in java.lang")

A description of a to-be-instantiated `KeyStore` object.

An instance of this class encapsulates the information needed to
instantiate and initialize a `KeyStore` object. That process is
triggered when the [getKeyStore()](#getKeyStore()) method is called.

This makes it possible to decouple configuration from `KeyStore`
object creation and e.g. delay a password prompt until it is
needed.

Since:
:   1.5

See Also:
:   * [`KeyStore`](KeyStore.md "class in java.security")
    * [`KeyStoreBuilderParameters`](../../javax/net/ssl/KeyStoreBuilderParameters.md "class in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Builder()`

  Construct a new `Builder`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract KeyStore`

  `getKeyStore()`

  Returns the `KeyStore` described by this object.

  `abstract KeyStore.ProtectionParameter`

  `getProtectionParameter(String alias)`

  Returns the `ProtectionParameter` that should be used to obtain
  the [`Entry`](KeyStore.Entry.md "interface in java.security") with the given alias.

  `static KeyStore.Builder`

  `newInstance(File file,
  KeyStore.ProtectionParameter protection)`

  Returns a new `Builder` object.

  `static KeyStore.Builder`

  `newInstance(String type,
  Provider provider,
  File file,
  KeyStore.ProtectionParameter protection)`

  Returns a new `Builder` object.

  `static KeyStore.Builder`

  `newInstance(String type,
  Provider provider,
  KeyStore.ProtectionParameter protection)`

  Returns a new `Builder` object.

  `static KeyStore.Builder`

  `newInstance(KeyStore keyStore,
  KeyStore.ProtectionParameter protectionParameter)`

  Returns a new `Builder` that encapsulates the given
  `KeyStore`.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Builder

    protected Builder()

    Construct a new `Builder`.
* ## Method Details

  + ### getKeyStore

    public abstract [KeyStore](KeyStore.md "class in java.security") getKeyStore()
    throws [KeyStoreException](KeyStoreException.md "class in java.security")

    Returns the `KeyStore` described by this object.

    Returns:
    :   the `KeyStore` described by this object

    Throws:
    :   `KeyStoreException` - if an error occurred during the
        operation, for example if the `KeyStore` could not be
        instantiated or loaded
  + ### getProtectionParameter

    public abstract [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security") getProtectionParameter([String](../lang/String.md "class in java.lang") alias)
    throws [KeyStoreException](KeyStoreException.md "class in java.security")

    Returns the `ProtectionParameter` that should be used to obtain
    the [`Entry`](KeyStore.Entry.md "interface in java.security") with the given alias.
    The `getKeyStore` method must be invoked before this
    method may be called.

    Parameters:
    :   `alias` - the alias of the `KeyStore` entry

    Returns:
    :   the `ProtectionParameter` that should be used to obtain
        the [`Entry`](KeyStore.Entry.md "interface in java.security") with the given alias.

    Throws:
    :   `NullPointerException` - if alias is `null`
    :   `KeyStoreException` - if an error occurred during the
        operation
    :   `IllegalStateException` - if the `getKeyStore` method has
        not been invoked prior to calling this method
  + ### newInstance

    public static [KeyStore.Builder](KeyStore.Builder.md "class in java.security") newInstance([KeyStore](KeyStore.md "class in java.security") keyStore,
    [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security") protectionParameter)

    Returns a new `Builder` that encapsulates the given
    `KeyStore`.
    The [getKeyStore()](#getKeyStore()) method of the returned object
    will return `keyStore`, the [getProtectionParameter()](#getProtectionParameter(java.lang.String)) method will
    return `protectionParameters`.

    This is useful if an existing `KeyStore` object needs to be
    used with builder-based APIs.

    Parameters:
    :   `keyStore` - the `KeyStore` to be encapsulated
    :   `protectionParameter` - the `ProtectionParameter` used to
        protect the `KeyStore` entries

    Returns:
    :   a new `Builder` object

    Throws:
    :   `NullPointerException` - if `keyStore` or
        `protectionParameter` is `null`
    :   `IllegalArgumentException` - if the `keyStore` has not been
        initialized
  + ### newInstance

    public static [KeyStore.Builder](KeyStore.Builder.md "class in java.security") newInstance([String](../lang/String.md "class in java.lang") type,
    [Provider](Provider.md "class in java.security") provider,
    [File](../io/File.md "class in java.io") file,
    [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security") protection)

    Returns a new `Builder` object.

    The first call to the [`getKeyStore()`](#getKeyStore()) method on the returned
    builder will create a `KeyStore` of type `type` and call
    its [`load()`](KeyStore.md#load(java.io.InputStream,char%5B%5D)) method.
    The `inputStream` argument is constructed from
    `file`.
    If `protection` is a
    `PasswordProtection`, the password is obtained by
    calling the `getPassword` method.
    Otherwise, if `protection` is a
    `CallbackHandlerProtection`, the password is obtained
    by invoking the CallbackHandler.

    Subsequent calls to [`getKeyStore()`](#getKeyStore()) return the same object
    as the initial call. If the initial call failed with a
    `KeyStoreException`, subsequent calls also throw a
    `KeyStoreException`.

    The `KeyStore` is instantiated from `provider` if
    non-null. Otherwise, all installed providers are searched.

    Calls to [`getProtectionParameter()`](#getProtectionParameter(java.lang.String))
    will return a [`PasswordProtection`](KeyStore.PasswordProtection.md "class in java.security")
    object encapsulating the password that was used to invoke the
    `load` method.

    *Note* that the [`getKeyStore()`](#getKeyStore()) method is executed
    within the [`AccessControlContext`](AccessControlContext.md "class in java.security") of the code invoking this
    method.

    Parameters:
    :   `type` - the type of `KeyStore` to be constructed
    :   `provider` - the provider from which the `KeyStore` is to
        be instantiated (or `null`)
    :   `file` - the File that contains the `KeyStore` data
    :   `protection` - the `ProtectionParameter` securing the
        `KeyStore` data

    Returns:
    :   a new `Builder` object

    Throws:
    :   `NullPointerException` - if type, file or protection is
        `null`
    :   `IllegalArgumentException` - if protection is not an instance
        of either PasswordProtection or CallbackHandlerProtection; or
        if file does not exist or does not refer to a normal file
  + ### newInstance

    public static [KeyStore.Builder](KeyStore.Builder.md "class in java.security") newInstance([File](../io/File.md "class in java.io") file,
    [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security") protection)

    Returns a new `Builder` object.

    The first call to the [`getKeyStore()`](#getKeyStore()) method on the returned
    builder will create a `KeyStore` using `file` to detect
    the keystore type and then call its [`load()`](KeyStore.md#load(java.io.InputStream,char%5B%5D))
    method.
    It uses the same algorithm to determine the keystore type as
    described in [`KeyStore.getInstance(File, LoadStoreParameter)`](KeyStore.md#getInstance(java.io.File,java.security.KeyStore.LoadStoreParameter)).
    The `inputStream` argument is constructed from `file`.
    If `protection` is a `PasswordProtection`, the password
    is obtained by calling the `getPassword` method.
    Otherwise, if `protection` is a
    `CallbackHandlerProtection`,
    the password is obtained by invoking the CallbackHandler.

    Subsequent calls to [`getKeyStore()`](#getKeyStore()) return the same object
    as the initial call. If the initial call failed with a
    `KeyStoreException`, subsequent calls also throw a
    `KeyStoreException`.

    Calls to [`getProtectionParameter()`](#getProtectionParameter(java.lang.String))
    will return a [`PasswordProtection`](KeyStore.PasswordProtection.md "class in java.security")
    object encapsulating the password that was used to invoke the
    `load` method.

    *Note* that the [`getKeyStore()`](#getKeyStore()) method is executed
    within the [`AccessControlContext`](AccessControlContext.md "class in java.security") of the code invoking this
    method.

    Parameters:
    :   `file` - the File that contains the `KeyStore` data
    :   `protection` - the `ProtectionParameter` securing the
        `KeyStore` data

    Returns:
    :   a new `Builder` object

    Throws:
    :   `NullPointerException` - if file or protection is `null`
    :   `IllegalArgumentException` - if protection is not an instance
        of either PasswordProtection or CallbackHandlerProtection; or
        if file does not exist or does not refer to a normal file

    Since:
    :   9
  + ### newInstance

    public static [KeyStore.Builder](KeyStore.Builder.md "class in java.security") newInstance([String](../lang/String.md "class in java.lang") type,
    [Provider](Provider.md "class in java.security") provider,
    [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security") protection)

    Returns a new `Builder` object.

    Each call to the [`getKeyStore()`](#getKeyStore()) method on the returned
    builder will return a new `KeyStore` object of type
    `type`.
    Its [`load()`](KeyStore.md#load(java.security.KeyStore.LoadStoreParameter))
    method is invoked using a
    `LoadStoreParameter` that encapsulates
    `protection`.

    The `KeyStore` is instantiated from `provider` if
    non-null. Otherwise, all installed providers are searched.

    Calls to [`getProtectionParameter()`](#getProtectionParameter(java.lang.String))
    will return `protection`.

    *Note* that the [`getKeyStore()`](#getKeyStore()) method is executed
    within the [`AccessControlContext`](AccessControlContext.md "class in java.security") of the code invoking this
    method.

    Parameters:
    :   `type` - the type of `KeyStore` to be constructed
    :   `provider` - the provider from which the `KeyStore` is to
        be instantiated (or `null`)
    :   `protection` - the `ProtectionParameter` securing the
        `Keystore`

    Returns:
    :   a new `Builder` object

    Throws:
    :   `NullPointerException` - if type or protection is `null`