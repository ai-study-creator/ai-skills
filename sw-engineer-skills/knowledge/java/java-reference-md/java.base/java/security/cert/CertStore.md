Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertStore

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CertStore

---

public class CertStore
extends [Object](../../lang/Object.md "class in java.lang")

A class for retrieving `Certificate`s and `CRL`s
from a repository.

This class uses a provider-based architecture.
To create a `CertStore`, call one of the static
`getInstance` methods, passing in the type of
`CertStore` desired, any applicable initialization parameters
and optionally the name of the provider desired.

Once the `CertStore` has been created, it can be used to
retrieve `Certificate`s and `CRL`s by calling its
[`getCertificates`](#getCertificates(java.security.cert.CertSelector)) and
[`getCRLs`](#getCRLs(java.security.cert.CRLSelector)) methods.

Unlike a [`KeyStore`](../KeyStore.md "class in java.security"), which provides access
to a cache of private keys and trusted certificates, a
`CertStore` is designed to provide access to a potentially
vast repository of untrusted certificates and CRLs. For example, an LDAP
implementation of `CertStore` provides access to certificates
and CRLs stored in one or more directories using the LDAP protocol and the
schema as defined in the RFC service attribute.

Every implementation of the Java platform is required to support the
following standard `CertStore` type:

* `Collection`

This type is described in the [CertStore section](../../../../../specs/security/standard-names.md#certstore-types) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other types are supported.

**Concurrent Access**

All public methods of `CertStore` objects must be thread-safe.
That is, multiple threads may concurrently invoke these methods on a
single `CertStore` object (or more than one) with no
ill effects. This allows a `CertPathBuilder` to search for a
CRL while simultaneously searching for further certificates, for instance.

The static methods of this class are also guaranteed to be thread-safe.
Multiple threads may concurrently invoke the static methods defined in
this class with no ill effects.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CertStore(CertStoreSpi storeSpi,
  Provider provider,
  String type,
  CertStoreParameters params)`

  Creates a `CertStore` object of the given type, and
  encapsulates the given provider implementation (SPI object) in it.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Collection<? extends Certificate>`

  `getCertificates(CertSelector selector)`

  Returns a `Collection` of `Certificate`s that
  match the specified selector.

  `final CertStoreParameters`

  `getCertStoreParameters()`

  Returns the parameters used to initialize this `CertStore`.

  `final Collection<? extends CRL>`

  `getCRLs(CRLSelector selector)`

  Returns a `Collection` of `CRL`s that
  match the specified selector.

  `static final String`

  `getDefaultType()`

  Returns the default `CertStore` type as specified by the
  `certstore.type` security property, or the string
  "LDAP" if no such property exists.

  `static CertStore`

  `getInstance(String type,
  CertStoreParameters params)`

  Returns a `CertStore` object that implements the specified
  `CertStore` type and is initialized with the specified
  parameters.

  `static CertStore`

  `getInstance(String type,
  CertStoreParameters params,
  String provider)`

  Returns a `CertStore` object that implements the specified
  `CertStore` type.

  `static CertStore`

  `getInstance(String type,
  CertStoreParameters params,
  Provider provider)`

  Returns a `CertStore` object that implements the specified
  `CertStore` type.

  `final Provider`

  `getProvider()`

  Returns the provider of this `CertStore`.

  `final String`

  `getType()`

  Returns the type of this `CertStore`.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CertStore

    protected CertStore([CertStoreSpi](CertStoreSpi.md "class in java.security.cert") storeSpi,
    [Provider](../Provider.md "class in java.security") provider,
    [String](../../lang/String.md "class in java.lang") type,
    [CertStoreParameters](CertStoreParameters.md "interface in java.security.cert") params)

    Creates a `CertStore` object of the given type, and
    encapsulates the given provider implementation (SPI object) in it.

    Parameters:
    :   `storeSpi` - the provider implementation
    :   `provider` - the provider
    :   `type` - the type
    :   `params` - the initialization parameters (may be `null`)
* ## Method Details

  + ### getCertificates

    public final [Collection](../../util/Collection.md "interface in java.util")<? extends [Certificate](Certificate.md "class in java.security.cert")> getCertificates([CertSelector](CertSelector.md "interface in java.security.cert") selector)
    throws [CertStoreException](CertStoreException.md "class in java.security.cert")

    Returns a `Collection` of `Certificate`s that
    match the specified selector. If no `Certificate`s
    match the selector, an empty `Collection` will be returned.

    For some `CertStore` types, the resulting
    `Collection` may not contain **all** of the
    `Certificate`s that match the selector. For instance,
    an LDAP `CertStore` may not search all entries in the
    directory. Instead, it may just search entries that are likely to
    contain the `Certificate`s it is looking for.

    Some `CertStore` implementations (especially LDAP
    `CertStore`s) may throw a `CertStoreException`
    unless a non-null `CertSelector` is provided that
    includes specific criteria that can be used to find the certificates.
    Issuer and/or subject names are especially useful criteria.

    Parameters:
    :   `selector` - A `CertSelector` used to select which
        `Certificate`s should be returned. Specify `null`
        to return all `Certificate`s (if supported).

    Returns:
    :   A `Collection` of `Certificate`s that
        match the specified selector (never `null`)

    Throws:
    :   `CertStoreException` - if an exception occurs
  + ### getCRLs

    public final [Collection](../../util/Collection.md "interface in java.util")<? extends [CRL](CRL.md "class in java.security.cert")> getCRLs([CRLSelector](CRLSelector.md "interface in java.security.cert") selector)
    throws [CertStoreException](CertStoreException.md "class in java.security.cert")

    Returns a `Collection` of `CRL`s that
    match the specified selector. If no `CRL`s
    match the selector, an empty `Collection` will be returned.

    For some `CertStore` types, the resulting
    `Collection` may not contain **all** of the
    `CRL`s that match the selector. For instance,
    an LDAP `CertStore` may not search all entries in the
    directory. Instead, it may just search entries that are likely to
    contain the `CRL`s it is looking for.

    Some `CertStore` implementations (especially LDAP
    `CertStore`s) may throw a `CertStoreException`
    unless a non-null `CRLSelector` is provided that
    includes specific criteria that can be used to find the CRLs.
    Issuer names and/or the certificate to be checked are especially useful.

    Parameters:
    :   `selector` - A `CRLSelector` used to select which
        `CRL`s should be returned. Specify `null`
        to return all `CRL`s (if supported).

    Returns:
    :   A `Collection` of `CRL`s that
        match the specified selector (never `null`)

    Throws:
    :   `CertStoreException` - if an exception occurs
  + ### getInstance

    public static [CertStore](CertStore.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") type,
    [CertStoreParameters](CertStoreParameters.md "interface in java.security.cert") params)
    throws [InvalidAlgorithmParameterException](../InvalidAlgorithmParameterException.md "class in java.security"),
    [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security")

    Returns a `CertStore` object that implements the specified
    `CertStore` type and is initialized with the specified
    parameters.

    This method traverses the list of registered security Providers,
    starting with the most preferred Provider.
    A new CertStore object encapsulating the
    CertStoreSpi implementation from the first
    Provider that supports the specified type is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../Security.md#getProviders()) method.

    The `CertStore` that is returned is initialized with the
    specified `CertStoreParameters`. The type of parameters
    needed may vary between different types of `CertStore`s.
    Note that the specified `CertStoreParameters` object is
    cloned.

    Parameters:
    :   `type` - the name of the requested `CertStore` type.
        See the CertStore section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certstore-types)
        for information about standard types.
    :   `params` - the initialization parameters (may be `null`).

    Returns:
    :   a `CertStore` object that implements the specified
        `CertStore` type

    Throws:
    :   `InvalidAlgorithmParameterException` - if the specified
        initialization parameters are inappropriate for this
        `CertStore`
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `CertStoreSpi` implementation for the specified type
    :   `NullPointerException` - if `type` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getInstance

    public static [CertStore](CertStore.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") type,
    [CertStoreParameters](CertStoreParameters.md "interface in java.security.cert") params,
    [String](../../lang/String.md "class in java.lang") provider)
    throws [InvalidAlgorithmParameterException](../InvalidAlgorithmParameterException.md "class in java.security"),
    [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../NoSuchProviderException.md "class in java.security")

    Returns a `CertStore` object that implements the specified
    `CertStore` type.

    A new CertStore object encapsulating the
    CertStoreSpi implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../Security.md#getProviders()) method.

    The `CertStore` that is returned is initialized with the
    specified `CertStoreParameters`. The type of parameters
    needed may vary between different types of `CertStore`s.
    Note that the specified `CertStoreParameters` object is
    cloned.

    Parameters:
    :   `type` - the requested `CertStore` type.
        See the CertStore section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certstore-types)
        for information about standard types.
    :   `params` - the initialization parameters (may be `null`).
    :   `provider` - the name of the provider.

    Returns:
    :   a `CertStore` object that implements the
        specified type

    Throws:
    :   `IllegalArgumentException` - if the `provider` is
        `null` or empty
    :   `InvalidAlgorithmParameterException` - if the specified
        initialization parameters are inappropriate for this
        `CertStore`
    :   `NoSuchAlgorithmException` - if a `CertStoreSpi`
        implementation for the specified type is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `type` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getInstance

    public static [CertStore](CertStore.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") type,
    [CertStoreParameters](CertStoreParameters.md "interface in java.security.cert") params,
    [Provider](../Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../InvalidAlgorithmParameterException.md "class in java.security")

    Returns a `CertStore` object that implements the specified
    `CertStore` type.

    A new CertStore object encapsulating the
    CertStoreSpi implementation from the specified Provider
    object is returned. Note that the specified Provider object
    does not have to be registered in the provider list.

    The `CertStore` that is returned is initialized with the
    specified `CertStoreParameters`. The type of parameters
    needed may vary between different types of `CertStore`s.
    Note that the specified `CertStoreParameters` object is
    cloned.

    Parameters:
    :   `type` - the requested `CertStore` type.
        See the CertStore section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certstore-types)
        for information about standard types.
    :   `params` - the initialization parameters (may be `null`).
    :   `provider` - the provider.

    Returns:
    :   a `CertStore` object that implements the
        specified type

    Throws:
    :   `IllegalArgumentException` - if the `provider` is
        null
    :   `InvalidAlgorithmParameterException` - if the specified
        initialization parameters are inappropriate for this
        `CertStore`
    :   `NoSuchAlgorithmException` - if a `CertStoreSpi`
        implementation for the specified type is not available
        from the specified Provider object
    :   `NullPointerException` - if `type` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getCertStoreParameters

    public final [CertStoreParameters](CertStoreParameters.md "interface in java.security.cert") getCertStoreParameters()

    Returns the parameters used to initialize this `CertStore`.
    Note that the `CertStoreParameters` object is cloned before
    it is returned.

    Returns:
    :   the parameters used to initialize this `CertStore`
        (may be `null`)
  + ### getType

    public final [String](../../lang/String.md "class in java.lang") getType()

    Returns the type of this `CertStore`.

    Returns:
    :   the type of this `CertStore`
  + ### getProvider

    public final [Provider](../Provider.md "class in java.security") getProvider()

    Returns the provider of this `CertStore`.

    Returns:
    :   the provider of this `CertStore`
  + ### getDefaultType

    public static final [String](../../lang/String.md "class in java.lang") getDefaultType()

    Returns the default `CertStore` type as specified by the
    `certstore.type` security property, or the string
    "LDAP" if no such property exists.

    The default `CertStore` type can be used by applications
    that do not want to use a hard-coded type when calling one of the
    `getInstance` methods, and want to provide a default
    `CertStore` type in case a user does not specify its own.

    The default `CertStore` type can be changed by setting
    the value of the `certstore.type` security property to the
    desired type.

    Returns:
    :   the default `CertStore` type as specified by the
        `certstore.type` security property, or the string
        "LDAP" if no such property exists.

    See Also:
    :   - [`security properties`](../Security.md "class in java.security")