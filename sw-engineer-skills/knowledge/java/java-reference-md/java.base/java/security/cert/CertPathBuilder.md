Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertPathBuilder

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CertPathBuilder

---

public class CertPathBuilder
extends [Object](../../lang/Object.md "class in java.lang")

A class for building certification paths (also known as certificate chains).

This class uses a provider-based architecture.
To create a `CertPathBuilder`, call
one of the static `getInstance` methods, passing in the
algorithm name of the `CertPathBuilder` desired and optionally
the name of the provider desired.

Once a `CertPathBuilder` object has been created, certification
paths can be constructed by calling the [`build`](#build(java.security.cert.CertPathParameters)) method and
passing it an algorithm-specific set of parameters. If successful, the
result (including the `CertPath` that was built) is returned
in an object that implements the `CertPathBuilderResult`
interface.

The [`getRevocationChecker()`](#getRevocationChecker()) method allows an application to specify
additional algorithm-specific parameters and options used by the
`CertPathBuilder` when checking the revocation status of certificates.
Here is an example demonstrating how it is used with the PKIX algorithm:

```
 CertPathBuilder cpb = CertPathBuilder.getInstance("PKIX");
 PKIXRevocationChecker rc = (PKIXRevocationChecker)cpb.getRevocationChecker();
 rc.setOptions(EnumSet.of(Option.PREFER_CRLS));
 params.addCertPathChecker(rc);
 CertPathBuilderResult cpbr = cpb.build(params);
```

Every implementation of the Java platform is required to support the
following standard `CertPathBuilder` algorithm:

* `PKIX`

This algorithm is described in the [CertPathBuilder section](../../../../../specs/security/standard-names.md#certpathbuilder-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

**Concurrent Access**

The static methods of this class are guaranteed to be thread-safe.
Multiple threads may concurrently invoke the static methods defined in
this class with no ill effects.

However, this is not true for the non-static methods defined by this class.
Unless otherwise documented by a specific provider, threads that need to
access a single `CertPathBuilder` instance concurrently should
synchronize amongst themselves and provide the necessary locking. Multiple
threads each manipulating a different `CertPathBuilder` instance
need not synchronize.

Since:
:   1.4

See Also:
:   * [`CertPath`](CertPath.md "class in java.security.cert")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CertPathBuilder(CertPathBuilderSpi builderSpi,
  Provider provider,
  String algorithm)`

  Creates a `CertPathBuilder` object of the given algorithm,
  and encapsulates the given provider implementation (SPI object) in it.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final CertPathBuilderResult`

  `build(CertPathParameters params)`

  Attempts to build a certification path using the specified algorithm
  parameter set.

  `final String`

  `getAlgorithm()`

  Returns the name of the algorithm of this `CertPathBuilder`.

  `static final String`

  `getDefaultType()`

  Returns the default `CertPathBuilder` type as specified by
  the `certpathbuilder.type` security property, or the string
  "PKIX" if no such property exists.

  `static CertPathBuilder`

  `getInstance(String algorithm)`

  Returns a `CertPathBuilder` object that implements the
  specified algorithm.

  `static CertPathBuilder`

  `getInstance(String algorithm,
  String provider)`

  Returns a `CertPathBuilder` object that implements the
  specified algorithm.

  `static CertPathBuilder`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a `CertPathBuilder` object that implements the
  specified algorithm.

  `final Provider`

  `getProvider()`

  Returns the provider of this `CertPathBuilder`.

  `final CertPathChecker`

  `getRevocationChecker()`

  Returns a `CertPathChecker` that the encapsulated
  `CertPathBuilderSpi` implementation uses to check the revocation
  status of certificates.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CertPathBuilder

    protected CertPathBuilder([CertPathBuilderSpi](CertPathBuilderSpi.md "class in java.security.cert") builderSpi,
    [Provider](../Provider.md "class in java.security") provider,
    [String](../../lang/String.md "class in java.lang") algorithm)

    Creates a `CertPathBuilder` object of the given algorithm,
    and encapsulates the given provider implementation (SPI object) in it.

    Parameters:
    :   `builderSpi` - the provider implementation
    :   `provider` - the provider
    :   `algorithm` - the algorithm name
* ## Method Details

  + ### getInstance

    public static [CertPathBuilder](CertPathBuilder.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security")

    Returns a `CertPathBuilder` object that implements the
    specified algorithm.

    This method traverses the list of registered security Providers,
    starting with the most preferred Provider.
    A new CertPathBuilder object encapsulating the
    CertPathBuilderSpi implementation from the first
    Provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the requested `CertPathBuilder`
        algorithm. See the CertPathBuilder section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certpathbuilder-algorithms)
        for information about standard algorithm names.

    Returns:
    :   a `CertPathBuilder` object that implements the
        specified algorithm

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `CertPathBuilderSpi` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getInstance

    public static [CertPathBuilder](CertPathBuilder.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") algorithm,
    [String](../../lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../NoSuchProviderException.md "class in java.security")

    Returns a `CertPathBuilder` object that implements the
    specified algorithm.

    A new CertPathBuilder object encapsulating the
    CertPathBuilderSpi implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the requested `CertPathBuilder`
        algorithm. See the CertPathBuilder section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certpathbuilder-algorithms)
        for information about standard algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   a `CertPathBuilder` object that implements the
        specified algorithm

    Throws:
    :   `IllegalArgumentException` - if the `provider` is
        `null` or empty
    :   `NoSuchAlgorithmException` - if a `CertPathBuilderSpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getInstance

    public static [CertPathBuilder](CertPathBuilder.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") algorithm,
    [Provider](../Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security")

    Returns a `CertPathBuilder` object that implements the
    specified algorithm.

    A new CertPathBuilder object encapsulating the
    CertPathBuilderSpi implementation from the specified Provider
    object is returned. Note that the specified Provider object
    does not have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the name of the requested `CertPathBuilder`
        algorithm. See the CertPathBuilder section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certpathbuilder-algorithms)
        for information about standard algorithm names.
    :   `provider` - the provider.

    Returns:
    :   a `CertPathBuilder` object that implements the
        specified algorithm

    Throws:
    :   `IllegalArgumentException` - if the `provider` is
        `null`
    :   `NoSuchAlgorithmException` - if a `CertPathBuilderSpi`
        implementation for the specified algorithm is not available
        from the specified `Provider` object
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](../Provider.md "class in java.security") getProvider()

    Returns the provider of this `CertPathBuilder`.

    Returns:
    :   the provider of this `CertPathBuilder`
  + ### getAlgorithm

    public final [String](../../lang/String.md "class in java.lang") getAlgorithm()

    Returns the name of the algorithm of this `CertPathBuilder`.

    Returns:
    :   the name of the algorithm of this `CertPathBuilder`
  + ### build

    public final [CertPathBuilderResult](CertPathBuilderResult.md "interface in java.security.cert") build([CertPathParameters](CertPathParameters.md "interface in java.security.cert") params)
    throws [CertPathBuilderException](CertPathBuilderException.md "class in java.security.cert"),
    [InvalidAlgorithmParameterException](../InvalidAlgorithmParameterException.md "class in java.security")

    Attempts to build a certification path using the specified algorithm
    parameter set.

    Parameters:
    :   `params` - the algorithm parameters

    Returns:
    :   the result of the build algorithm

    Throws:
    :   `CertPathBuilderException` - if the builder is unable to construct
        a certification path that satisfies the specified parameters
    :   `InvalidAlgorithmParameterException` - if the specified parameters
        are inappropriate for this `CertPathBuilder`
  + ### getDefaultType

    public static final [String](../../lang/String.md "class in java.lang") getDefaultType()

    Returns the default `CertPathBuilder` type as specified by
    the `certpathbuilder.type` security property, or the string
    "PKIX" if no such property exists.

    The default `CertPathBuilder` type can be used by
    applications that do not want to use a hard-coded type when calling one
    of the `getInstance` methods, and want to provide a default
    type in case a user does not specify its own.

    The default `CertPathBuilder` type can be changed by
    setting the value of the `certpathbuilder.type` security property
    to the desired type.

    Returns:
    :   the default `CertPathBuilder` type as specified
        by the `certpathbuilder.type` security property, or the string
        "PKIX" if no such property exists.

    See Also:
    :   - [`security properties`](../Security.md "class in java.security")
  + ### getRevocationChecker

    public final [CertPathChecker](CertPathChecker.md "interface in java.security.cert") getRevocationChecker()

    Returns a `CertPathChecker` that the encapsulated
    `CertPathBuilderSpi` implementation uses to check the revocation
    status of certificates. A PKIX implementation returns objects of
    type `PKIXRevocationChecker`. Each invocation of this method
    returns a new instance of `CertPathChecker`.

    The primary purpose of this method is to allow callers to specify
    additional input parameters and options specific to revocation checking.
    See the class description for an example.

    Returns:
    :   a `CertPathChecker`

    Throws:
    :   `UnsupportedOperationException` - if the service provider does not
        support this method

    Since:
    :   1.8