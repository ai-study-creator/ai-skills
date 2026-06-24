Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class AlgorithmParameters

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.AlgorithmParameters

---

public class AlgorithmParameters
extends [Object](../lang/Object.md "class in java.lang")

This class is used as an opaque representation of cryptographic parameters.

An `AlgorithmParameters` object for managing the parameters
for a particular algorithm can be obtained by
calling one of the `getInstance` factory methods
(static methods that return instances of a given class).

Once an `AlgorithmParameters` object is obtained, it must be
initialized via a call to `init`, using an appropriate parameter
specification or parameter encoding.

A transparent parameter specification is obtained from an
`AlgorithmParameters` object via a call to
`getParameterSpec`, and a byte encoding of the parameters is
obtained via a call to `getEncoded`.

Every implementation of the Java platform is required to support the
following standard `AlgorithmParameters` algorithms:

* `AES`
* `DESede`
* `DiffieHellman`
* `DSA`

These algorithms are described in the [AlgorithmParameters section](../../../../specs/security/standard-names.md#algorithmparameters-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

Since:
:   1.2

See Also:
:   * [`AlgorithmParameterSpec`](spec/AlgorithmParameterSpec.md "interface in java.security.spec")
    * [`DSAParameterSpec`](spec/DSAParameterSpec.md "class in java.security.spec")
    * [`KeyPairGenerator`](KeyPairGenerator.md "class in java.security")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AlgorithmParameters(AlgorithmParametersSpi paramSpi,
  Provider provider,
  String algorithm)`

  Creates an `AlgorithmParameters` object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final String`

  `getAlgorithm()`

  Returns the name of the algorithm associated with this parameter object.

  `final byte[]`

  `getEncoded()`

  Returns the parameters in their primary encoding format.

  `final byte[]`

  `getEncoded(String format)`

  Returns the parameters encoded in the specified scheme.

  `static AlgorithmParameters`

  `getInstance(String algorithm)`

  Returns a parameter object for the specified algorithm.

  `static AlgorithmParameters`

  `getInstance(String algorithm,
  String provider)`

  Returns a parameter object for the specified algorithm.

  `static AlgorithmParameters`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a parameter object for the specified algorithm.

  `final <T extends AlgorithmParameterSpec>  
  T`

  `getParameterSpec(Class<T> paramSpec)`

  Returns a (transparent) specification of this parameter object.

  `final Provider`

  `getProvider()`

  Returns the provider of this parameter object.

  `final void`

  `init(byte[] params)`

  Imports the specified parameters and decodes them according to the
  primary decoding format for parameters.

  `final void`

  `init(byte[] params,
  String format)`

  Imports the parameters from `params` and decodes them
  according to the specified decoding scheme.

  `final void`

  `init(AlgorithmParameterSpec paramSpec)`

  Initializes this parameter object using the parameters
  specified in `paramSpec`.

  `final String`

  `toString()`

  Returns a formatted string describing the parameters.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AlgorithmParameters

    protected AlgorithmParameters([AlgorithmParametersSpi](AlgorithmParametersSpi.md "class in java.security") paramSpi,
    [Provider](Provider.md "class in java.security") provider,
    [String](../lang/String.md "class in java.lang") algorithm)

    Creates an `AlgorithmParameters` object.

    Parameters:
    :   `paramSpi` - the delegate
    :   `provider` - the provider
    :   `algorithm` - the algorithm
* ## Method Details

  + ### getAlgorithm

    public final [String](../lang/String.md "class in java.lang") getAlgorithm()

    Returns the name of the algorithm associated with this parameter object.

    Returns:
    :   the algorithm name.
  + ### getInstance

    public static [AlgorithmParameters](AlgorithmParameters.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Returns a parameter object for the specified algorithm.

    This method traverses the list of registered security providers,
    starting with the most preferred provider.
    A new `AlgorithmParameters` object encapsulating the
    `AlgorithmParametersSpi` implementation from the first
    provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    The returned parameter object must be initialized via a call to
    `init`, using an appropriate parameter specification or
    parameter encoding.

    Parameters:
    :   `algorithm` - the name of the algorithm requested.
        See the AlgorithmParameters section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#algorithmparameters-algorithms)
        for information about standard algorithm names.

    Returns:
    :   the new parameter object

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports an
        `AlgorithmParametersSpi` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [AlgorithmParameters](AlgorithmParameters.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm,
    [String](../lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](NoSuchProviderException.md "class in java.security")

    Returns a parameter object for the specified algorithm.

    A new `AlgorithmParameters` object encapsulating the
    `AlgorithmParametersSpi` implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    The returned parameter object must be initialized via a call to
    `init`, using an appropriate parameter specification or
    parameter encoding.

    Parameters:
    :   `algorithm` - the name of the algorithm requested.
        See the AlgorithmParameters section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#algorithmparameters-algorithms)
        for information about standard algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   the new parameter object

    Throws:
    :   `IllegalArgumentException` - if the provider name is `null`
        or empty
    :   `NoSuchAlgorithmException` - if an `AlgorithmParametersSpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [AlgorithmParameters](AlgorithmParameters.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm,
    [Provider](Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Returns a parameter object for the specified algorithm.

    A new `AlgorithmParameters` object encapsulating the
    `AlgorithmParametersSpi` implementation from the specified
    provider is returned. Note that the specified provider
    does not have to be registered in the provider list.

    The returned parameter object must be initialized via a call to
    `init`, using an appropriate parameter specification or
    parameter encoding.

    Parameters:
    :   `algorithm` - the name of the algorithm requested.
        See the AlgorithmParameters section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#algorithmparameters-algorithms)
        for information about standard algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   the new parameter object

    Throws:
    :   `IllegalArgumentException` - if the provider is `null`
    :   `NoSuchAlgorithmException` - if an
        `AlgorithmParameterGeneratorSpi`
        implementation for the specified algorithm is not available
        from the specified `Provider` object
    :   `NullPointerException` - if `algorithm` is `null`

    Since:
    :   1.4

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](Provider.md "class in java.security") getProvider()

    Returns the provider of this parameter object.

    Returns:
    :   the provider of this parameter object
  + ### init

    public final void init([AlgorithmParameterSpec](spec/AlgorithmParameterSpec.md "interface in java.security.spec") paramSpec)
    throws [InvalidParameterSpecException](spec/InvalidParameterSpecException.md "class in java.security.spec")

    Initializes this parameter object using the parameters
    specified in `paramSpec`.

    Parameters:
    :   `paramSpec` - the parameter specification.

    Throws:
    :   `InvalidParameterSpecException` - if the given parameter
        specification is inappropriate for the initialization of this parameter
        object, or if this parameter object has already been initialized.
  + ### init

    public final void init(byte[] params)
    throws [IOException](../io/IOException.md "class in java.io")

    Imports the specified parameters and decodes them according to the
    primary decoding format for parameters. The primary decoding
    format for parameters is ASN.1, if an ASN.1 specification for this type
    of parameters exists.

    Parameters:
    :   `params` - the encoded parameters.

    Throws:
    :   `IOException` - on decoding errors, or if this parameter object
        has already been initialized.
  + ### init

    public final void init(byte[] params,
    [String](../lang/String.md "class in java.lang") format)
    throws [IOException](../io/IOException.md "class in java.io")

    Imports the parameters from `params` and decodes them
    according to the specified decoding scheme.
    If `format` is `null`, the
    primary decoding format for parameters is used. The primary decoding
    format is ASN.1, if an ASN.1 specification for these parameters
    exists.

    Parameters:
    :   `params` - the encoded parameters.
    :   `format` - the name of the decoding scheme.

    Throws:
    :   `IOException` - on decoding errors, or if this parameter object
        has already been initialized.
  + ### getParameterSpec

    public final <T extends [AlgorithmParameterSpec](spec/AlgorithmParameterSpec.md "interface in java.security.spec")> T getParameterSpec([Class](../lang/Class.md "class in java.lang")<T> paramSpec)
    throws [InvalidParameterSpecException](spec/InvalidParameterSpecException.md "class in java.security.spec")

    Returns a (transparent) specification of this parameter object.
    `paramSpec` identifies the specification class in which
    the parameters should be returned. It could, for example, be
    `DSAParameterSpec.class`, to indicate that the
    parameters should be returned in an instance of the
    `DSAParameterSpec` class.

    Type Parameters:
    :   `T` - the type of the parameter specification to be returned

    Parameters:
    :   `paramSpec` - the specification class in which
        the parameters should be returned.

    Returns:
    :   the parameter specification.

    Throws:
    :   `InvalidParameterSpecException` - if the requested parameter
        specification is inappropriate for this parameter object, or if this
        parameter object has not been initialized.
  + ### getEncoded

    public final byte[] getEncoded()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the parameters in their primary encoding format.
    The primary encoding format for parameters is ASN.1, if an ASN.1
    specification for this type of parameters exists.

    Returns:
    :   the parameters encoded using their primary encoding format.

    Throws:
    :   `IOException` - on encoding errors, or if this parameter object
        has not been initialized.
  + ### getEncoded

    public final byte[] getEncoded([String](../lang/String.md "class in java.lang") format)
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the parameters encoded in the specified scheme.
    If `format` is `null`, the
    primary encoding format for parameters is used. The primary encoding
    format is ASN.1, if an ASN.1 specification for these parameters
    exists.

    Parameters:
    :   `format` - the name of the encoding format.

    Returns:
    :   the parameters encoded using the specified encoding scheme.

    Throws:
    :   `IOException` - on encoding errors, or if this parameter object
        has not been initialized.
  + ### toString

    public final [String](../lang/String.md "class in java.lang") toString()

    Returns a formatted string describing the parameters.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a formatted string describing the parameters, or `null`
        if this parameter object has not been initialized.