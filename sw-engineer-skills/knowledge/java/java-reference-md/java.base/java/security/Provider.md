Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class Provider

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.util.Dictionary](../util/Dictionary.md "class in java.util")<[Object](../lang/Object.md "class in java.lang"),[Object](../lang/Object.md "class in java.lang")>

[java.util.Hashtable](../util/Hashtable.md "class in java.util")<[Object](../lang/Object.md "class in java.lang"),[Object](../lang/Object.md "class in java.lang")>

[java.util.Properties](../util/Properties.md "class in java.util")

java.security.Provider

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Map<Object,Object>`

Direct Known Subclasses:
:   `AuthProvider`

---

public abstract class Provider
extends [Properties](../util/Properties.md "class in java.util")

This class represents a "provider" for the
Java Security API, where a provider implements some or all parts of
Java Security. Services that a provider may implement include:

* Algorithms (such as DSA, RSA, or SHA-256).* Key generation, conversion, and management facilities (such as for
    algorithm-specific keys).

Some provider implementations may encounter unrecoverable internal
errors during their operation, for example a failure to communicate with a
security token. A [`ProviderException`](ProviderException.md "class in java.security") should be used to indicate
such errors.

Please note that a provider can be used to implement any security
service in Java that uses a pluggable architecture with a choice
of implementations that fit underneath.

The service type `Provider` is reserved for use by the
security framework. Services of this type cannot be added, removed,
or modified by applications.
The following attributes are automatically placed in each Provider object:

**Attributes Automatically Placed in a Provider Object**

| Name | Value |
| --- | --- |
| `Provider.id name` | `String.valueOf(provider.getName())` || `Provider.id version` | `String.valueOf(provider.getVersionStr())` || `Provider.id info` | `String.valueOf(provider.getInfo())` || `Provider.id className` | `provider.getClass().getName()` |

Each provider has a name and a version string. A provider normally
identifies itself with a file named `java.security.Provider`
in the resource directory `META-INF/services`.
Security providers are looked up via the [`ServiceLoader`](../util/ServiceLoader.md "class in java.util") mechanism
using the [`application class loader`](../lang/ClassLoader.md#getSystemClassLoader()).

Providers may be configured such that they are automatically
installed and made available at runtime via the
[`Security.getProviders()`](Security.md#getProviders()) method.
The mechanism for configuring and installing security providers is
implementation-specific.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.Provider)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `Provider.Service`

  The description of a security service.
* ## Field Summary

  ### Fields inherited from class java.util.[Properties](../util/Properties.md "class in java.util")

  `defaults`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Provider(String name,
  double version,
  String info)`

  Deprecated.

  use [`Provider(String, String, String)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String)) instead.

  `protected`

  `Provider(String name,
  String versionStr,
  String info)`

  Constructs a `Provider` with the specified name, version string,
  and information.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `clear()`

  Clears this `Provider` so that it no longer contains the properties
  used to look up facilities implemented by the `Provider`.

  `Object`

  `compute(Object key,
  BiFunction<? super Object,? super Object,? extends Object> remappingFunction)`

  Attempts to compute a mapping for the specified key and its
  current mapped value (or `null` if there is no current
  mapping).

  `Object`

  `computeIfAbsent(Object key,
  Function<? super Object,? extends Object> mappingFunction)`

  If the specified key is not already associated with a value (or
  is mapped to `null`), attempts to compute its value using
  the given mapping function and enters it into this map unless
  `null`.

  `Object`

  `computeIfPresent(Object key,
  BiFunction<? super Object,? super Object,? extends Object> remappingFunction)`

  If the value for the specified key is present and non-null, attempts to
  compute a new mapping given the key and its current mapped value.

  `Provider`

  `configure(String configArg)`

  Apply the supplied configuration argument to this `Provider`
  instance and return the configured `Provider`.

  `Enumeration<Object>`

  `elements()`

  Returns an enumeration of the values in this hashtable.

  `Set<Map.Entry<Object,Object>>`

  `entrySet()`

  Returns an unmodifiable Set view of the property entries contained
  in this `Provider`.

  `void`

  `forEach(BiConsumer<? super Object,? super Object> action)`

  Performs the given action for each entry in this map until all entries
  have been processed or the action throws an exception.

  `Object`

  `get(Object key)`

  Returns the value to which the specified key is mapped,
  or `null` if this map contains no mapping for the key.

  `String`

  `getInfo()`

  Returns a human-readable description of the `Provider` and its
  services.

  `String`

  `getName()`

  Returns the name of this `Provider`.

  `Object`

  `getOrDefault(Object key,
  Object defaultValue)`

  Returns the value to which the specified key is mapped, or
  `defaultValue` if this map contains no mapping for the key.

  `String`

  `getProperty(String key)`

  Searches for the property with the specified key in this property list.

  `Provider.Service`

  `getService(String type,
  String algorithm)`

  Get the service describing this Provider's implementation of the
  specified type of this algorithm or alias.

  `Set<Provider.Service>`

  `getServices()`

  Get an unmodifiable Set of all services supported by
  this `Provider`.

  `double`

  `getVersion()`

  Deprecated.

  use [`getVersionStr()`](#getVersionStr()) instead.

  `String`

  `getVersionStr()`

  Returns the version string for this `Provider`.

  `boolean`

  `isConfigured()`

  Check if this `Provider` instance has been configured.

  `Enumeration<Object>`

  `keys()`

  Returns an enumeration of the keys in this hashtable.

  `Set<Object>`

  `keySet()`

  Returns an unmodifiable Set view of the property keys contained in
  this `Provider`.

  `void`

  `load(InputStream inStream)`

  Reads a property list (key and element pairs) from the input stream.

  `Object`

  `merge(Object key,
  Object value,
  BiFunction<? super Object,? super Object,? extends Object> remappingFunction)`

  If the specified key is not already associated with a value or is
  associated with `null`, associates it with the given value.

  `Object`

  `put(Object key,
  Object value)`

  Sets the `key` property to have the specified
  `value`.

  `void`

  `putAll(Map<?,?> t)`

  Copies all the mappings from the specified Map to this `Provider`.

  `Object`

  `putIfAbsent(Object key,
  Object value)`

  If the specified key is not already associated with a value (or is mapped
  to `null`) associates it with the given value and returns
  `null`, else returns the current value.

  `protected void`

  `putService(Provider.Service s)`

  Add a service.

  `Object`

  `remove(Object key)`

  Removes the `key` property (and its corresponding
  `value`).

  `boolean`

  `remove(Object key,
  Object value)`

  Removes the entry for the specified key only if it is currently
  mapped to the specified value.

  `protected void`

  `removeService(Provider.Service s)`

  Remove a service previously added using
  [`putService()`](#putService(java.security.Provider.Service)).

  `Object`

  `replace(Object key,
  Object value)`

  Replaces the entry for the specified key only if it is
  currently mapped to some value.

  `boolean`

  `replace(Object key,
  Object oldValue,
  Object newValue)`

  Replaces the entry for the specified key only if currently
  mapped to the specified value.

  `void`

  `replaceAll(BiFunction<? super Object,? super Object,? extends Object> function)`

  Replaces each entry's value with the result of invoking the given
  function on that entry, in the order entries are returned by an entry
  set iterator, until all entries have been processed or the function
  throws an exception.

  `String`

  `toString()`

  Returns a string with the name and the version string
  of this `Provider`.

  `Collection<Object>`

  `values()`

  Returns an unmodifiable Collection view of the property values
  contained in this `Provider`.

  ### Methods inherited from class java.util.[Properties](../util/Properties.md "class in java.util")

  `clone, contains, containsKey, containsValue, equals, getProperty, hashCode, isEmpty, list, list, load, loadFromXML, propertyNames, rehash, save, setProperty, size, store, store, storeToXML, storeToXML, storeToXML, stringPropertyNames`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Provider

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="9")
    protected Provider([String](../lang/String.md "class in java.lang") name,
    double version,
    [String](../lang/String.md "class in java.lang") info)

    Deprecated.

    use [`Provider(String, String, String)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String)) instead.

    Constructs a `Provider` with the specified name, version number,
    and information. Calling this constructor is equivalent to call the
    [`Provider(String, String, String)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String)) with `name`
    name, `Double.toString(version)`, and `info`.

    Parameters:
    :   `name` - the provider name.
    :   `version` - the provider version number.
    :   `info` - a description of the provider and its services.
  + ### Provider

    protected Provider([String](../lang/String.md "class in java.lang") name,
    [String](../lang/String.md "class in java.lang") versionStr,
    [String](../lang/String.md "class in java.lang") info)

    Constructs a `Provider` with the specified name, version string,
    and information.

    The version string contains a version number optionally followed
    by other information separated by one of the characters of '+', '-'.
    The format for the version number is:
    > ```
    >      ^[0-9]+(\.[0-9]+)*
    > ```

    In order to return the version number in a double, when there are
    more than two components (separated by '.' as defined above), only
    the first two components are retained. The resulting string is then
    passed to [`Double.valueOf(String)`](../lang/Double.md#valueOf(java.lang.String)) to generate version number,
    i.e. [`getVersion()`](#getVersion()).

    If the conversion failed, value 0 will be used.

    Parameters:
    :   `name` - the provider name.
    :   `versionStr` - the provider version string.
    :   `info` - a description of the provider and its services.

    Since:
    :   9
* ## Method Details

  + ### configure

    public [Provider](Provider.md "class in java.security") configure([String](../lang/String.md "class in java.lang") configArg)

    Apply the supplied configuration argument to this `Provider`
    instance and return the configured `Provider`. Note that if
    this `Provider` cannot be configured in-place, a new
    `Provider` will be created and returned. Therefore,
    callers should always use the returned `Provider`.

    Parameters:
    :   `configArg` - the configuration information for configuring this
        provider.

    Returns:
    :   a `Provider` configured with the supplied configuration
        argument.

    Throws:
    :   `UnsupportedOperationException` - if a configuration argument is
        not supported.
    :   `NullPointerException` - if the supplied configuration argument is
        `null`.
    :   `InvalidParameterException` - if the supplied configuration argument
        is invalid.

    Since:
    :   9
  + ### isConfigured

    public boolean isConfigured()

    Check if this `Provider` instance has been configured.

    Returns:
    :   `true` if no further configuration is needed,
        `false` otherwise.

    Since:
    :   9
  + ### getName

    public [String](../lang/String.md "class in java.lang") getName()

    Returns the name of this `Provider`.

    Returns:
    :   the name of this `Provider`.
  + ### getVersion

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="9")
    public double getVersion()

    Deprecated.

    use [`getVersionStr()`](#getVersionStr()) instead.

    Returns the version number for this `Provider`.

    Returns:
    :   the version number for this `Provider`.
  + ### getVersionStr

    public [String](../lang/String.md "class in java.lang") getVersionStr()

    Returns the version string for this `Provider`.

    Returns:
    :   the version string for this `Provider`.

    Since:
    :   9
  + ### getInfo

    public [String](../lang/String.md "class in java.lang") getInfo()

    Returns a human-readable description of the `Provider` and its
    services. This may return an HTML page, with relevant links.

    Returns:
    :   a description of the `Provider` and its services.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a string with the name and the version string
    of this `Provider`.

    Overrides:
    :   `toString` in class `Properties`

    Returns:
    :   the string with the name and the version string
        for this `Provider`.
  + ### clear

    public void clear()

    Clears this `Provider` so that it no longer contains the properties
    used to look up facilities implemented by the `Provider`.

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the string `"clearProviderProperties."+name`
    (where `name` is the provider name) to see if it's ok to clear
    this provider.

    Specified by:
    :   `clear` in interface `Map<Object,Object>`

    Overrides:
    :   `clear` in class `Properties`

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to clear this provider

    Since:
    :   1.2
  + ### load

    public void load([InputStream](../io/InputStream.md "class in java.io") inStream)
    throws [IOException](../io/IOException.md "class in java.io")

    Reads a property list (key and element pairs) from the input stream.

    Overrides:
    :   `load` in class `Properties`

    Parameters:
    :   `inStream` - the input stream.

    Throws:
    :   `IOException` - if an error occurred when reading from the
        input stream.

    See Also:
    :   - [`Properties.load(java.io.Reader)`](../util/Properties.md#load(java.io.Reader))
  + ### putAll

    public void putAll([Map](../util/Map.md "interface in java.util")<?,?> t)

    Copies all the mappings from the specified Map to this `Provider`.
    These mappings will replace any properties that this `Provider` had
    for any of the keys currently in the specified Map.

    Specified by:
    :   `putAll` in interface `Map<Object,Object>`

    Overrides:
    :   `putAll` in class `Properties`

    Parameters:
    :   `t` - mappings to be stored in this map

    Since:
    :   1.2
  + ### entrySet

    public [Set](../util/Set.md "interface in java.util")<[Map.Entry](../util/Map.Entry.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang"),[Object](../lang/Object.md "class in java.lang")>> entrySet()

    Returns an unmodifiable Set view of the property entries contained
    in this `Provider`.

    Specified by:
    :   `entrySet` in interface `Map<Object,Object>`

    Overrides:
    :   `entrySet` in class `Properties`

    Returns:
    :   a set view of the mappings contained in this map

    Since:
    :   1.2

    See Also:
    :   - [`Map.Entry`](../util/Map.Entry.md "interface in java.util")
  + ### keySet

    public [Set](../util/Set.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang")> keySet()

    Returns an unmodifiable Set view of the property keys contained in
    this `Provider`.

    Specified by:
    :   `keySet` in interface `Map<Object,Object>`

    Overrides:
    :   `keySet` in class `Properties`

    Returns:
    :   a set view of the keys contained in this map

    Since:
    :   1.2
  + ### values

    public [Collection](../util/Collection.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang")> values()

    Returns an unmodifiable Collection view of the property values
    contained in this `Provider`.

    Specified by:
    :   `values` in interface `Map<Object,Object>`

    Overrides:
    :   `values` in class `Properties`

    Returns:
    :   a collection view of the values contained in this map

    Since:
    :   1.2
  + ### put

    public [Object](../lang/Object.md "class in java.lang") put([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value)

    Sets the `key` property to have the specified
    `value`.

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the string `"putProviderProperty."+name`,
    where `name` is the provider name, to see if it's ok to set this
    provider's property values.

    Specified by:
    :   `put` in interface `Map<Object,Object>`

    Overrides:
    :   `put` in class `Properties`

    Parameters:
    :   `key` - the hashtable key
    :   `value` - the value

    Returns:
    :   the previous value of the specified key in this hashtable,
        or `null` if it did not have one

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to set property values.

    Since:
    :   1.2

    See Also:
    :   - [`Object.equals(Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`Hashtable.get(Object)`](../util/Hashtable.md#get(java.lang.Object))
  + ### putIfAbsent

    public [Object](../lang/Object.md "class in java.lang") putIfAbsent([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value)

    If the specified key is not already associated with a value (or is mapped
    to `null`) associates it with the given value and returns
    `null`, else returns the current value.

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the string `"putProviderProperty."+name`,
    where `name` is the provider name, to see if it's ok to set this
    provider's property values.

    Specified by:
    :   `putIfAbsent` in interface `Map<Object,Object>`

    Overrides:
    :   `putIfAbsent` in class `Properties`

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `value` - value to be associated with the specified key

    Returns:
    :   the previous value associated with the specified key, or
        `null` if there was no mapping for the key.
        (A `null` return can also indicate that the map
        previously associated `null` with the key,
        if the implementation supports null values.)

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to set property values.

    Since:
    :   1.8
  + ### remove

    public [Object](../lang/Object.md "class in java.lang") remove([Object](../lang/Object.md "class in java.lang") key)

    Removes the `key` property (and its corresponding
    `value`).

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the string `"removeProviderProperty."+name`,
    where `name` is the provider name, to see if it's ok to remove this
    provider's properties.

    Specified by:
    :   `remove` in interface `Map<Object,Object>`

    Overrides:
    :   `remove` in class `Properties`

    Parameters:
    :   `key` - the key that needs to be removed

    Returns:
    :   the value to which the key had been mapped in this hashtable,
        or `null` if the key did not have a mapping

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to remove this provider's properties.

    Since:
    :   1.2
  + ### remove

    public boolean remove([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value)

    Removes the entry for the specified key only if it is currently
    mapped to the specified value.

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the string `"removeProviderProperty."+name`,
    where `name` is the provider name, to see if it's ok to remove this
    provider's properties.

    Specified by:
    :   `remove` in interface `Map<Object,Object>`

    Overrides:
    :   `remove` in class `Properties`

    Parameters:
    :   `key` - key with which the specified value is associated
    :   `value` - value expected to be associated with the specified key

    Returns:
    :   `true` if the value was removed

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to remove this provider's properties.

    Since:
    :   1.8
  + ### replace

    public boolean replace([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") oldValue,
    [Object](../lang/Object.md "class in java.lang") newValue)

    Replaces the entry for the specified key only if currently
    mapped to the specified value.

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the string `"putProviderProperty."+name`,
    where `name` is the provider name, to see if it's ok to set this
    provider's property values.

    Specified by:
    :   `replace` in interface `Map<Object,Object>`

    Overrides:
    :   `replace` in class `Properties`

    Parameters:
    :   `key` - key with which the specified value is associated
    :   `oldValue` - value expected to be associated with the specified key
    :   `newValue` - value to be associated with the specified key

    Returns:
    :   `true` if the value was replaced

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to set property values.

    Since:
    :   1.8
  + ### replace

    public [Object](../lang/Object.md "class in java.lang") replace([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value)

    Replaces the entry for the specified key only if it is
    currently mapped to some value.

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the string `"putProviderProperty."+name`,
    where `name` is the provider name, to see if it's ok to set this
    provider's property values.

    Specified by:
    :   `replace` in interface `Map<Object,Object>`

    Overrides:
    :   `replace` in class `Properties`

    Parameters:
    :   `key` - key with which the specified value is associated
    :   `value` - value to be associated with the specified key

    Returns:
    :   the previous value associated with the specified key, or
        `null` if there was no mapping for the key.
        (A `null` return can also indicate that the map
        previously associated `null` with the key,
        if the implementation supports null values.)

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to set property values.

    Since:
    :   1.8
  + ### replaceAll

    public void replaceAll([BiFunction](../util/function/BiFunction.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? super [Object](../lang/Object.md "class in java.lang"),? extends [Object](../lang/Object.md "class in java.lang")> function)

    Replaces each entry's value with the result of invoking the given
    function on that entry, in the order entries are returned by an entry
    set iterator, until all entries have been processed or the function
    throws an exception.

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the string `"putProviderProperty."+name`,
    where `name` is the provider name, to see if it's ok to set this
    provider's property values.

    Specified by:
    :   `replaceAll` in interface `Map<Object,Object>`

    Overrides:
    :   `replaceAll` in class `Properties`

    Parameters:
    :   `function` - the function to apply to each entry

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to set property values.

    Since:
    :   1.8
  + ### compute

    public [Object](../lang/Object.md "class in java.lang") compute([Object](../lang/Object.md "class in java.lang") key,
    [BiFunction](../util/function/BiFunction.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? super [Object](../lang/Object.md "class in java.lang"),? extends [Object](../lang/Object.md "class in java.lang")> remappingFunction)

    Attempts to compute a mapping for the specified key and its
    current mapped value (or `null` if there is no current
    mapping).

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the strings `"putProviderProperty."+name`
    and `"removeProviderProperty."+name`, where `name` is the
    provider name, to see if it's ok to set this provider's property values
    and remove this provider's properties.

    Specified by:
    :   `compute` in interface `Map<Object,Object>`

    Overrides:
    :   `compute` in class `Properties`

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `remappingFunction` - the remapping function to compute a value

    Returns:
    :   the new value associated with the specified key, or null if none

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to set property values or remove properties.

    Since:
    :   1.8
  + ### computeIfAbsent

    public [Object](../lang/Object.md "class in java.lang") computeIfAbsent([Object](../lang/Object.md "class in java.lang") key,
    [Function](../util/function/Function.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? extends [Object](../lang/Object.md "class in java.lang")> mappingFunction)

    If the specified key is not already associated with a value (or
    is mapped to `null`), attempts to compute its value using
    the given mapping function and enters it into this map unless
    `null`.

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the strings `"putProviderProperty."+name`
    and `"removeProviderProperty."+name`, where `name` is the
    provider name, to see if it's ok to set this provider's property values
    and remove this provider's properties.

    Specified by:
    :   `computeIfAbsent` in interface `Map<Object,Object>`

    Overrides:
    :   `computeIfAbsent` in class `Properties`

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `mappingFunction` - the mapping function to compute a value

    Returns:
    :   the current (existing or computed) value associated with
        the specified key, or null if the computed value is null

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to set property values and remove properties.

    Since:
    :   1.8
  + ### computeIfPresent

    public [Object](../lang/Object.md "class in java.lang") computeIfPresent([Object](../lang/Object.md "class in java.lang") key,
    [BiFunction](../util/function/BiFunction.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? super [Object](../lang/Object.md "class in java.lang"),? extends [Object](../lang/Object.md "class in java.lang")> remappingFunction)

    If the value for the specified key is present and non-null, attempts to
    compute a new mapping given the key and its current mapped value.

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the strings `"putProviderProperty."+name`
    and `"removeProviderProperty."+name`, where `name` is the
    provider name, to see if it's ok to set this provider's property values
    and remove this provider's properties.

    Specified by:
    :   `computeIfPresent` in interface `Map<Object,Object>`

    Overrides:
    :   `computeIfPresent` in class `Properties`

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `remappingFunction` - the remapping function to compute a value

    Returns:
    :   the new value associated with the specified key, or null if none

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to set property values or remove properties.

    Since:
    :   1.8
  + ### merge

    public [Object](../lang/Object.md "class in java.lang") merge([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value,
    [BiFunction](../util/function/BiFunction.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? super [Object](../lang/Object.md "class in java.lang"),? extends [Object](../lang/Object.md "class in java.lang")> remappingFunction)

    If the specified key is not already associated with a value or is
    associated with `null`, associates it with the given value.
    Otherwise, replaces the value with the results of the given remapping
    function, or removes if the result is `null`. This method may be
    of use when combining multiple mapped values for a key.

    If a security manager is enabled, its `checkSecurityAccess`
    method is called with the strings `"putProviderProperty."+name`
    and `"removeProviderProperty."+name`, where `name` is the
    provider name, to see if it's ok to set this provider's property values
    and remove this provider's properties.

    Specified by:
    :   `merge` in interface `Map<Object,Object>`

    Overrides:
    :   `merge` in class `Properties`

    Parameters:
    :   `key` - key with which the resulting value is to be associated
    :   `value` - the non-null value to be merged with the existing value
        associated with the key or, if no existing value or a null value
        is associated with the key, to be associated with the key
    :   `remappingFunction` - the remapping function to recompute a value if
        present

    Returns:
    :   the new value associated with the specified key, or null if no
        value is associated with the key

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method
        denies access to set property values or remove properties.

    Since:
    :   1.8
  + ### get

    public [Object](../lang/Object.md "class in java.lang") get([Object](../lang/Object.md "class in java.lang") key)

    Description copied from class: `Hashtable`

    Returns the value to which the specified key is mapped,
    or `null` if this map contains no mapping for the key.

    More formally, if this map contains a mapping from a key
    `k` to a value `v` such that `(key.equals(k))`,
    then this method returns `v`; otherwise it returns
    `null`. (There can be at most one such mapping.)

    Specified by:
    :   `get` in interface `Map<Object,Object>`

    Overrides:
    :   `get` in class `Properties`

    Parameters:
    :   `key` - the key whose associated value is to be returned

    Returns:
    :   the value to which the specified key is mapped, or
        `null` if this map contains no mapping for the key

    See Also:
    :   - [`Hashtable.put(Object, Object)`](../util/Hashtable.md#put(K,V))
  + ### getOrDefault

    public [Object](../lang/Object.md "class in java.lang") getOrDefault([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") defaultValue)

    Description copied from interface: `Map`

    Returns the value to which the specified key is mapped, or
    `defaultValue` if this map contains no mapping for the key.

    Specified by:
    :   `getOrDefault` in interface `Map<Object,Object>`

    Overrides:
    :   `getOrDefault` in class `Properties`

    Parameters:
    :   `key` - the key whose associated value is to be returned
    :   `defaultValue` - the default mapping of the key

    Returns:
    :   the value to which the specified key is mapped, or
        `defaultValue` if this map contains no mapping for the key

    Since:
    :   1.8
  + ### forEach

    public void forEach([BiConsumer](../util/function/BiConsumer.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? super [Object](../lang/Object.md "class in java.lang")> action)

    Description copied from interface: `Map`

    Performs the given action for each entry in this map until all entries
    have been processed or the action throws an exception. Unless
    otherwise specified by the implementing class, actions are performed in
    the order of entry set iteration (if an iteration order is specified.)
    Exceptions thrown by the action are relayed to the caller.

    Specified by:
    :   `forEach` in interface `Map<Object,Object>`

    Overrides:
    :   `forEach` in class `Properties`

    Parameters:
    :   `action` - The action to be performed for each entry

    Since:
    :   1.8
  + ### keys

    public [Enumeration](../util/Enumeration.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang")> keys()

    Description copied from class: `Hashtable`

    Returns an enumeration of the keys in this hashtable.
    Use the Enumeration methods on the returned object to fetch the keys
    sequentially. If the hashtable is structurally modified while enumerating
    over the keys then the results of enumerating are undefined.

    Overrides:
    :   `keys` in class `Properties`

    Returns:
    :   an enumeration of the keys in this hashtable.

    See Also:
    :   - [`Enumeration`](../util/Enumeration.md "interface in java.util")
        - [`Hashtable.elements()`](../util/Hashtable.md#elements())
        - [`Hashtable.keySet()`](../util/Hashtable.md#keySet())
        - [`Map`](../util/Map.md "interface in java.util")
  + ### elements

    public [Enumeration](../util/Enumeration.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang")> elements()

    Description copied from class: `Hashtable`

    Returns an enumeration of the values in this hashtable.
    Use the Enumeration methods on the returned object to fetch the elements
    sequentially. If the hashtable is structurally modified while enumerating
    over the values then the results of enumerating are undefined.

    Overrides:
    :   `elements` in class `Properties`

    Returns:
    :   an enumeration of the values in this hashtable.

    See Also:
    :   - [`Enumeration`](../util/Enumeration.md "interface in java.util")
        - [`Hashtable.keys()`](../util/Hashtable.md#keys())
        - [`Hashtable.values()`](../util/Hashtable.md#values())
        - [`Map`](../util/Map.md "interface in java.util")
  + ### getProperty

    public [String](../lang/String.md "class in java.lang") getProperty([String](../lang/String.md "class in java.lang") key)

    Description copied from class: `Properties`

    Searches for the property with the specified key in this property list.
    If the key is not found in this property list, the default property list,
    and its defaults, recursively, are then checked. The method returns
    `null` if the property is not found.

    Overrides:
    :   `getProperty` in class `Properties`

    Parameters:
    :   `key` - the property key.

    Returns:
    :   the value in this property list with the specified key value.

    See Also:
    :   - [`Properties.setProperty(java.lang.String, java.lang.String)`](../util/Properties.md#setProperty(java.lang.String,java.lang.String))
        - [`Properties.defaults`](../util/Properties.md#defaults)
  + ### getService

    public [Provider.Service](Provider.Service.md "class in java.security") getService([String](../lang/String.md "class in java.lang") type,
    [String](../lang/String.md "class in java.lang") algorithm)

    Get the service describing this Provider's implementation of the
    specified type of this algorithm or alias. If no such
    implementation exists, this method returns `null`. If there are two
    matching services, one added to this provider using
    [`putService()`](#putService(java.security.Provider.Service)) and one added via [`put()`](#put(java.lang.Object,java.lang.Object)),
    the service added via [`putService()`](#putService(java.security.Provider.Service)) is returned.

    Parameters:
    :   `type` - the type of [`service`](Provider.Service.md "class in java.security") requested
        (for example, `MessageDigest`)
    :   `algorithm` - the case-insensitive algorithm name (or alternate
        alias) of the service requested (for example, `SHA-1`)

    Returns:
    :   the service describing this Provider's matching service
        or `null` if no such service exists

    Throws:
    :   `NullPointerException` - if type or algorithm is `null`

    Since:
    :   1.5
  + ### getServices

    public [Set](../util/Set.md "interface in java.util")<[Provider.Service](Provider.Service.md "class in java.security")> getServices()

    Get an unmodifiable Set of all services supported by
    this `Provider`.

    Returns:
    :   an unmodifiable Set of all services supported by
        this `Provider`

    Since:
    :   1.5
  + ### putService

    protected void putService([Provider.Service](Provider.Service.md "class in java.security") s)

    Add a service. If a service of the same type with the same algorithm
    name exists, and it was added using [`putService()`](#putService(java.security.Provider.Service)),
    it is replaced by the new service.
    This method also places information about this service
    in the provider's Hashtable values in the format described in the
    .

    Also, if there is a security manager, its
    `checkSecurityAccess` method is called with the string
    `"putProviderProperty."+name`, where `name` is
    the provider name, to see if it's ok to set this provider's property
    values. If the default implementation of `checkSecurityAccess`
    is used (that is, that method is not overridden), then this results in
    a call to the security manager's `checkPermission` method with
    a `SecurityPermission("putProviderProperty."+name)`
    permission.

    Parameters:
    :   `s` - the Service to add

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method denies
        access to set property values.
    :   `NullPointerException` - if s is `null`

    Since:
    :   1.5
  + ### removeService

    protected void removeService([Provider.Service](Provider.Service.md "class in java.security") s)

    Remove a service previously added using
    [`putService()`](#putService(java.security.Provider.Service)). The specified service is removed from
    this `Provider`. It will no longer be returned by
    [`getService()`](#getService(java.lang.String,java.lang.String)) and its information will be removed
    from this provider's Hashtable.

    Also, if there is a security manager, its
    `checkSecurityAccess` method is called with the string
    `"removeProviderProperty."+name`, where `name` is
    the provider name, to see if it's ok to remove this provider's
    properties. If the default implementation of
    `checkSecurityAccess` is used (that is, that method is not
    overridden), then this results in a call to the security manager's
    `checkPermission` method with a
    `SecurityPermission("removeProviderProperty."+name)`
    permission.

    Parameters:
    :   `s` - the Service to be removed

    Throws:
    :   `SecurityException` - if a security manager exists and its [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String)) method denies
        access to remove this provider's properties.
    :   `NullPointerException` - if s is `null`

    Since:
    :   1.5