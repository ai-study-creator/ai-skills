Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class DomainLoadStoreParameter

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.DomainLoadStoreParameter

All Implemented Interfaces:
:   `KeyStore.LoadStoreParameter`

---

public final class DomainLoadStoreParameter
extends [Object](../lang/Object.md "class in java.lang")
implements [KeyStore.LoadStoreParameter](KeyStore.LoadStoreParameter.md "interface in java.security")

Configuration data that specifies the keystores in a keystore domain.
A keystore domain is a collection of keystores that are presented as a
single logical keystore. The configuration data is used during
`KeyStore`
[`load`](KeyStore.md#load(java.security.KeyStore.LoadStoreParameter)) and
[`store`](KeyStore.md#store(java.security.KeyStore.LoadStoreParameter)) operations.

The following syntax is supported for configuration data:

```
     domain <domainName> [<property> ...] {
         keystore <keystoreName> [<property> ...] ;
         ...
     };
     ...
```

where `domainName` and `keystoreName` are identifiers
and `property` is a key/value pairing. The key and value are
separated by an 'equals' symbol and the value is enclosed in double
quotes. A property value may be either a printable string or a binary
string of colon-separated pairs of hexadecimal digits. Multivalued
properties are represented as a comma-separated list of values,
enclosed in square brackets.
See [`Arrays.toString(java.lang.Object[])`](../util/Arrays.md#toString(java.lang.Object%5B%5D)).

To ensure that keystore entries are uniquely identified, each
entry's alias is prefixed by its `keystoreName` followed
by the entry name separator and each `keystoreName` must be
unique within its domain. Entry name prefixes are omitted when
storing a keystore.

Properties are context-sensitive: properties that apply to
all the keystores in a domain are located in the domain clause,
and properties that apply only to a specific keystore are located
in that keystore's clause.
Unless otherwise specified, a property in a keystore clause overrides
a property of the same name in the domain clause. All property names
are case-insensitive. The following properties are supported:

`keystoreType="<type>"`
:   The keystore type.

`keystoreURI="<url>"`
:   The keystore location.

`keystoreProviderName="<name>"`
:   The name of the keystore's JCE provider.

`keystorePasswordEnv="<environment-variable>"`
:   The environment variable that stores a keystore password.
    Alternatively, passwords may be supplied to the constructor
    method in a `Map<String, ProtectionParameter>`.

`entryNameSeparator="<separator>"`
:   The separator between a keystore name prefix and an entry name.
    When specified, it applies to all the entries in a domain.
    Its default value is a space.

For example, configuration data for a simple keystore domain
comprising three keystores is shown below:

```
 domain app1 {
     keystore app1-truststore
         keystoreURI="file:///app1/etc/truststore.jks";

     keystore system-truststore
         keystoreURI="${java.home}/lib/security/cacerts";

     keystore app1-keystore
         keystoreType="PKCS12"
         keystoreURI="file:///app1/etc/keystore.p12";
 };
```

Since:
:   1.8

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DomainLoadStoreParameter(URI configuration,
  Map<String,KeyStore.ProtectionParameter> protectionParams)`

  Constructs a `DomainLoadStoreParameter` for a keystore domain with
  the parameters used to protect keystore data.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `URI`

  `getConfiguration()`

  Gets the identifier for the domain configuration data.

  `KeyStore.ProtectionParameter`

  `getProtectionParameter()`

  Gets the keystore protection parameters for this domain.

  `Map<String,KeyStore.ProtectionParameter>`

  `getProtectionParams()`

  Gets the keystore protection parameters for keystores in this
  domain.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DomainLoadStoreParameter

    public DomainLoadStoreParameter([URI](../net/URI.md "class in java.net") configuration,
    [Map](../util/Map.md "interface in java.util")<[String](../lang/String.md "class in java.lang"),[KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security")> protectionParams)

    Constructs a `DomainLoadStoreParameter` for a keystore domain with
    the parameters used to protect keystore data.

    Parameters:
    :   `configuration` - identifier for the domain configuration data.
        The name of the target domain should be specified in the
        `java.net.URI` fragment component when it is necessary
        to distinguish between several domain configurations at the
        same location.
    :   `protectionParams` - the map from keystore name to the parameter
        used to protect keystore data.
        A `java.util.Collections.EMPTY_MAP` should be used
        when protection parameters are not required or when they have
        been specified by properties in the domain configuration data.
        It is cloned to prevent subsequent modification.

    Throws:
    :   `NullPointerException` - if `configuration` or
        `protectionParams` is `null`
* ## Method Details

  + ### getConfiguration

    public [URI](../net/URI.md "class in java.net") getConfiguration()

    Gets the identifier for the domain configuration data.

    Returns:
    :   the identifier for the configuration data
  + ### getProtectionParams

    public [Map](../util/Map.md "interface in java.util")<[String](../lang/String.md "class in java.lang"),[KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security")> getProtectionParams()

    Gets the keystore protection parameters for keystores in this
    domain.

    Returns:
    :   an unmodifiable map of keystore names to protection
        parameters
  + ### getProtectionParameter

    public [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security") getProtectionParameter()

    Gets the keystore protection parameters for this domain.
    Keystore domains do not support a protection parameter.

    Specified by:
    :   `getProtectionParameter` in interface `KeyStore.LoadStoreParameter`

    Returns:
    :   always returns `null`