Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class AlgorithmParameterGenerator

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.AlgorithmParameterGenerator

---

public class AlgorithmParameterGenerator
extends [Object](../lang/Object.md "class in java.lang")

The `AlgorithmParameterGenerator` class is used to generate a
set of
parameters to be used with a certain algorithm. Parameter generators
are constructed using the `getInstance` factory methods
(static methods that return instances of a given class).

The object that will generate the parameters can be initialized
in two different ways: in an algorithm-independent manner, or in an
algorithm-specific manner:

* The algorithm-independent approach uses the fact that all parameter
  generators share the concept of a "size" and a
  source of randomness. The measure of size is universally shared
  by all algorithm parameters, though it is interpreted differently
  for different algorithms. For example, in the case of parameters for
  the *DSA* algorithm, "size" corresponds to the size
  of the prime modulus (in bits).
  When using this approach, algorithm-specific parameter generation
  values - if any - default to some standard values, unless they can be
  derived from the specified size.* The other approach initializes a parameter generator object
    using algorithm-specific semantics, which are represented by a set of
    algorithm-specific parameter generation values. To generate
    Diffie-Hellman system parameters, for example, the parameter generation
    values usually
    consist of the size of the prime modulus and the size of the
    random exponent, both specified in number of bits.

In case the client does not explicitly initialize the
`AlgorithmParameterGenerator` (via a call to an `init` method),
each provider must supply (and document) a default initialization.
See the Keysize Restriction sections of the
document for information on the AlgorithmParameterGenerator defaults
used by JDK providers.
However, note that defaults may vary across different providers.
Additionally, the default value for a provider may change in a future
version. Therefore, it is recommended to explicitly initialize the
`AlgorithmParameterGenerator` instead of relying on provider-specific
defaults.

Every implementation of the Java platform is required to support the
following standard `AlgorithmParameterGenerator` algorithms and
keysizes in parentheses:

* `DiffieHellman` (1024, 2048)
* `DSA` (1024, 2048)

These algorithms are described in the [AlgorithmParameterGenerator section](../../../../specs/security/standard-names.md#algorithmparametergenerator-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

Since:
:   1.2

See Also:
:   * [`AlgorithmParameters`](AlgorithmParameters.md "class in java.security")
    * [`AlgorithmParameterSpec`](spec/AlgorithmParameterSpec.md "interface in java.security.spec")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AlgorithmParameterGenerator(AlgorithmParameterGeneratorSpi paramGenSpi,
  Provider provider,
  String algorithm)`

  Creates an `AlgorithmParameterGenerator` object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final AlgorithmParameters`

  `generateParameters()`

  Generates the parameters.

  `final String`

  `getAlgorithm()`

  Returns the standard name of the algorithm this parameter
  generator is associated with.

  `static AlgorithmParameterGenerator`

  `getInstance(String algorithm)`

  Returns an `AlgorithmParameterGenerator` object for generating
  a set of parameters to be used with the specified algorithm.

  `static AlgorithmParameterGenerator`

  `getInstance(String algorithm,
  String provider)`

  Returns an `AlgorithmParameterGenerator` object for generating
  a set of parameters to be used with the specified algorithm.

  `static AlgorithmParameterGenerator`

  `getInstance(String algorithm,
  Provider provider)`

  Returns an `AlgorithmParameterGenerator` object for generating
  a set of parameters to be used with the specified algorithm.

  `final Provider`

  `getProvider()`

  Returns the provider of this algorithm parameter generator object.

  `final void`

  `init(int size)`

  Initializes this parameter generator for a certain size.

  `final void`

  `init(int size,
  SecureRandom random)`

  Initializes this parameter generator for a certain size and source
  of randomness.

  `final void`

  `init(AlgorithmParameterSpec genParamSpec)`

  Initializes this parameter generator with a set of algorithm-specific
  parameter generation values.

  `final void`

  `init(AlgorithmParameterSpec genParamSpec,
  SecureRandom random)`

  Initializes this parameter generator with a set of algorithm-specific
  parameter generation values.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AlgorithmParameterGenerator

    protected AlgorithmParameterGenerator([AlgorithmParameterGeneratorSpi](AlgorithmParameterGeneratorSpi.md "class in java.security") paramGenSpi,
    [Provider](Provider.md "class in java.security") provider,
    [String](../lang/String.md "class in java.lang") algorithm)

    Creates an `AlgorithmParameterGenerator` object.

    Parameters:
    :   `paramGenSpi` - the delegate
    :   `provider` - the provider
    :   `algorithm` - the algorithm
* ## Method Details

  + ### getAlgorithm

    public final [String](../lang/String.md "class in java.lang") getAlgorithm()

    Returns the standard name of the algorithm this parameter
    generator is associated with.

    Returns:
    :   the string name of the algorithm.
  + ### getInstance

    public static [AlgorithmParameterGenerator](AlgorithmParameterGenerator.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Returns an `AlgorithmParameterGenerator` object for generating
    a set of parameters to be used with the specified algorithm.

    This method traverses the list of registered security providers,
    starting with the most preferred provider.
    A new `AlgorithmParameterGenerator` object encapsulating the
    `AlgorithmParameterGeneratorSpi` implementation from the first
    provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the algorithm this
        parameter generator is associated with.
        See the AlgorithmParameterGenerator section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#algorithmparametergenerator-algorithms)
        for information about standard algorithm names.

    Returns:
    :   the new `AlgorithmParameterGenerator` object

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports an
        `AlgorithmParameterGeneratorSpi` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [AlgorithmParameterGenerator](AlgorithmParameterGenerator.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm,
    [String](../lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](NoSuchProviderException.md "class in java.security")

    Returns an `AlgorithmParameterGenerator` object for generating
    a set of parameters to be used with the specified algorithm.

    A new `AlgorithmParameterGenerator` object encapsulating the
    `AlgorithmParameterGeneratorSpi` implementation from the
    specified provider is returned. The specified provider must be
    registered in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the algorithm this
        parameter generator is associated with.
        See the AlgorithmParameterGenerator section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#algorithmparametergenerator-algorithms)
        for information about standard algorithm names.
    :   `provider` - the string name of the `Provider`.

    Returns:
    :   the new `AlgorithmParameterGenerator` object

    Throws:
    :   `IllegalArgumentException` - if the provider name is `null`
        or empty
    :   `NoSuchAlgorithmException` - if an
        `AlgorithmParameterGeneratorSpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [AlgorithmParameterGenerator](AlgorithmParameterGenerator.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm,
    [Provider](Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Returns an `AlgorithmParameterGenerator` object for generating
    a set of parameters to be used with the specified algorithm.

    A new `AlgorithmParameterGenerator` object encapsulating the
    `AlgorithmParameterGeneratorSpi` implementation from the specified
    provider is returned. Note that the specified provider does not
    have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the string name of the algorithm this
        parameter generator is associated with.
        See the AlgorithmParameterGenerator section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#algorithmparametergenerator-algorithms)
        for information about standard algorithm names.
    :   `provider` - the `Provider` object.

    Returns:
    :   the new `AlgorithmParameterGenerator` object

    Throws:
    :   `IllegalArgumentException` - if the specified provider is
        `null`
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

    Returns the provider of this algorithm parameter generator object.

    Returns:
    :   the provider of this algorithm parameter generator object
  + ### init

    public final void init(int size)

    Initializes this parameter generator for a certain size.
    To create the parameters, the `SecureRandom`
    implementation of the highest-priority installed provider is used as
    the source of randomness.
    (If none of the installed providers supply an implementation of
    `SecureRandom`, a system-provided source of randomness is
    used.)

    Parameters:
    :   `size` - the size (number of bits).
  + ### init

    public final void init(int size,
    [SecureRandom](SecureRandom.md "class in java.security") random)

    Initializes this parameter generator for a certain size and source
    of randomness.

    Parameters:
    :   `size` - the size (number of bits).
    :   `random` - the source of randomness.
  + ### init

    public final void init([AlgorithmParameterSpec](spec/AlgorithmParameterSpec.md "interface in java.security.spec") genParamSpec)
    throws [InvalidAlgorithmParameterException](InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this parameter generator with a set of algorithm-specific
    parameter generation values.
    To generate the parameters, the `SecureRandom`
    implementation of the highest-priority installed provider is used as
    the source of randomness.
    (If none of the installed providers supply an implementation of
    `SecureRandom`, a system-provided source of randomness is
    used.)

    Parameters:
    :   `genParamSpec` - the set of algorithm-specific parameter generation values.

    Throws:
    :   `InvalidAlgorithmParameterException` - if the given parameter
        generation values are inappropriate for this parameter generator.
  + ### init

    public final void init([AlgorithmParameterSpec](spec/AlgorithmParameterSpec.md "interface in java.security.spec") genParamSpec,
    [SecureRandom](SecureRandom.md "class in java.security") random)
    throws [InvalidAlgorithmParameterException](InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this parameter generator with a set of algorithm-specific
    parameter generation values.

    Parameters:
    :   `genParamSpec` - the set of algorithm-specific parameter generation values.
    :   `random` - the source of randomness.

    Throws:
    :   `InvalidAlgorithmParameterException` - if the given parameter
        generation values are inappropriate for this parameter generator.
  + ### generateParameters

    public final [AlgorithmParameters](AlgorithmParameters.md "class in java.security") generateParameters()

    Generates the parameters.

    Returns:
    :   the new `AlgorithmParameters` object.