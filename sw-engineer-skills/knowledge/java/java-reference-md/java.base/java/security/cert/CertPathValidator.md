Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertPathValidator

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CertPathValidator

---

public class CertPathValidator
extends [Object](../../lang/Object.md "class in java.lang")

A class for validating certification paths (also known as certificate
chains).

This class uses a provider-based architecture.
To create a `CertPathValidator`,
call one of the static `getInstance` methods, passing in the
algorithm name of the `CertPathValidator` desired and
optionally the name of the provider desired.

Once a `CertPathValidator` object has been created, it can
be used to validate certification paths by calling the [`validate`](#validate(java.security.cert.CertPath,java.security.cert.CertPathParameters)) method and passing it the `CertPath` to be validated
and an algorithm-specific set of parameters. If successful, the result is
returned in an object that implements the
`CertPathValidatorResult` interface.

The [`getRevocationChecker()`](#getRevocationChecker()) method allows an application to specify
additional algorithm-specific parameters and options used by the
`CertPathValidator` when checking the revocation status of
certificates. Here is an example demonstrating how it is used with the PKIX
algorithm:

```
 CertPathValidator cpv = CertPathValidator.getInstance("PKIX");
 PKIXRevocationChecker rc = (PKIXRevocationChecker)cpv.getRevocationChecker();
 rc.setOptions(EnumSet.of(Option.SOFT_FAIL));
 params.addCertPathChecker(rc);
 CertPathValidatorResult cpvr = cpv.validate(path, params);
```

Every implementation of the Java platform is required to support the
following standard `CertPathValidator` algorithm:

* `PKIX`

This algorithm is described in the [CertPathValidator section](../../../../../specs/security/standard-names.md#certpathvalidator-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

**Concurrent Access**

The static methods of this class are guaranteed to be thread-safe.
Multiple threads may concurrently invoke the static methods defined in
this class with no ill effects.

However, this is not true for the non-static methods defined by this class.
Unless otherwise documented by a specific provider, threads that need to
access a single `CertPathValidator` instance concurrently should
synchronize amongst themselves and provide the necessary locking. Multiple
threads each manipulating a different `CertPathValidator`
instance need not synchronize.

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

  `CertPathValidator(CertPathValidatorSpi validatorSpi,
  Provider provider,
  String algorithm)`

  Creates a `CertPathValidator` object of the given algorithm,
  and encapsulates the given provider implementation (SPI object) in it.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final String`

  `getAlgorithm()`

  Returns the algorithm name of this `CertPathValidator`.

  `static final String`

  `getDefaultType()`

  Returns the default `CertPathValidator` type as specified by
  the `certpathvalidator.type` security property, or the string
  "PKIX" if no such property exists.

  `static CertPathValidator`

  `getInstance(String algorithm)`

  Returns a `CertPathValidator` object that implements the
  specified algorithm.

  `static CertPathValidator`

  `getInstance(String algorithm,
  String provider)`

  Returns a `CertPathValidator` object that implements the
  specified algorithm.

  `static CertPathValidator`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a `CertPathValidator` object that implements the
  specified algorithm.

  `final Provider`

  `getProvider()`

  Returns the `Provider` of this
  `CertPathValidator`.

  `final CertPathChecker`

  `getRevocationChecker()`

  Returns a `CertPathChecker` that the encapsulated
  `CertPathValidatorSpi` implementation uses to check the revocation
  status of certificates.

  `final CertPathValidatorResult`

  `validate(CertPath certPath,
  CertPathParameters params)`

  Validates the specified certification path using the specified
  algorithm parameter set.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CertPathValidator

    protected CertPathValidator([CertPathValidatorSpi](CertPathValidatorSpi.md "class in java.security.cert") validatorSpi,
    [Provider](../Provider.md "class in java.security") provider,
    [String](../../lang/String.md "class in java.lang") algorithm)

    Creates a `CertPathValidator` object of the given algorithm,
    and encapsulates the given provider implementation (SPI object) in it.

    Parameters:
    :   `validatorSpi` - the provider implementation
    :   `provider` - the provider
    :   `algorithm` - the algorithm name
* ## Method Details

  + ### getInstance

    public static [CertPathValidator](CertPathValidator.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security")

    Returns a `CertPathValidator` object that implements the
    specified algorithm.

    This method traverses the list of registered security Providers,
    starting with the most preferred Provider.
    A new CertPathValidator object encapsulating the
    CertPathValidatorSpi implementation from the first
    Provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the requested `CertPathValidator`
        algorithm. See the CertPathValidator section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certpathvalidator-algorithms)
        for information about standard algorithm names.

    Returns:
    :   a `CertPathValidator` object that implements the
        specified algorithm

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `CertPathValidatorSpi` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getInstance

    public static [CertPathValidator](CertPathValidator.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") algorithm,
    [String](../../lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../NoSuchProviderException.md "class in java.security")

    Returns a `CertPathValidator` object that implements the
    specified algorithm.

    A new CertPathValidator object encapsulating the
    CertPathValidatorSpi implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the requested `CertPathValidator`
        algorithm. See the CertPathValidator section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certpathvalidator-algorithms)
        for information about standard algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   a `CertPathValidator` object that implements the
        specified algorithm

    Throws:
    :   `IllegalArgumentException` - if the `provider` is
        `null` or empty
    :   `NoSuchAlgorithmException` - if a `CertPathValidatorSpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getInstance

    public static [CertPathValidator](CertPathValidator.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") algorithm,
    [Provider](../Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security")

    Returns a `CertPathValidator` object that implements the
    specified algorithm.

    A new CertPathValidator object encapsulating the
    CertPathValidatorSpi implementation from the specified Provider
    object is returned. Note that the specified Provider object
    does not have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the name of the requested `CertPathValidator`
        algorithm. See the CertPathValidator section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certpathvalidator-algorithms)
        for information about standard algorithm names.
    :   `provider` - the provider.

    Returns:
    :   a `CertPathValidator` object that implements the
        specified algorithm

    Throws:
    :   `IllegalArgumentException` - if the `provider` is
        `null`
    :   `NoSuchAlgorithmException` - if a `CertPathValidatorSpi`
        implementation for the specified algorithm is not available
        from the specified Provider object
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](../Provider.md "class in java.security") getProvider()

    Returns the `Provider` of this
    `CertPathValidator`.

    Returns:
    :   the `Provider` of this `CertPathValidator`
  + ### getAlgorithm

    public final [String](../../lang/String.md "class in java.lang") getAlgorithm()

    Returns the algorithm name of this `CertPathValidator`.

    Returns:
    :   the algorithm name of this `CertPathValidator`
  + ### validate

    public final [CertPathValidatorResult](CertPathValidatorResult.md "interface in java.security.cert") validate([CertPath](CertPath.md "class in java.security.cert") certPath,
    [CertPathParameters](CertPathParameters.md "interface in java.security.cert") params)
    throws [CertPathValidatorException](CertPathValidatorException.md "class in java.security.cert"),
    [InvalidAlgorithmParameterException](../InvalidAlgorithmParameterException.md "class in java.security")

    Validates the specified certification path using the specified
    algorithm parameter set.

    The `CertPath` specified must be of a type that is
    supported by the validation algorithm, otherwise an
    `InvalidAlgorithmParameterException` will be thrown. For
    example, a `CertPathValidator` that implements the PKIX
    algorithm validates `CertPath` objects of type X.509.

    Parameters:
    :   `certPath` - the `CertPath` to be validated
    :   `params` - the algorithm parameters

    Returns:
    :   the result of the validation algorithm

    Throws:
    :   `CertPathValidatorException` - if the `CertPath`
        does not validate
    :   `InvalidAlgorithmParameterException` - if the specified
        parameters or the type of the specified `CertPath` are
        inappropriate for this `CertPathValidator`
  + ### getDefaultType

    public static final [String](../../lang/String.md "class in java.lang") getDefaultType()

    Returns the default `CertPathValidator` type as specified by
    the `certpathvalidator.type` security property, or the string
    "PKIX" if no such property exists.

    The default `CertPathValidator` type can be used by
    applications that do not want to use a hard-coded type when calling one
    of the `getInstance` methods, and want to provide a default
    type in case a user does not specify its own.

    The default `CertPathValidator` type can be changed by
    setting the value of the `certpathvalidator.type` security
    property to the desired type.

    Returns:
    :   the default `CertPathValidator` type as specified
        by the `certpathvalidator.type` security property, or the string
        "PKIX" if no such property exists.

    See Also:
    :   - [`security properties`](../Security.md "class in java.security")
  + ### getRevocationChecker

    public final [CertPathChecker](CertPathChecker.md "interface in java.security.cert") getRevocationChecker()

    Returns a `CertPathChecker` that the encapsulated
    `CertPathValidatorSpi` implementation uses to check the revocation
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