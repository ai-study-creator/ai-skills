Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class AlgorithmParameterGeneratorSpi

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.AlgorithmParameterGeneratorSpi

---

public abstract class AlgorithmParameterGeneratorSpi
extends [Object](../lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `AlgorithmParameterGenerator` class, which
is used to generate a set of parameters to be used with a certain algorithm.

All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a parameter generator for a particular algorithm.

In case the client does not explicitly initialize the
AlgorithmParameterGenerator (via a call to an `engineInit`
method), each provider must supply (and document) a default initialization.
See the Keysize Restriction sections of the
document for information on the AlgorithmParameterGenerator defaults
used by JDK providers.
However, note that defaults may vary across different providers.
Additionally, the default value for a provider may change in a future
version. Therefore, it is recommended to explicitly initialize the
`AlgorithmParameterGenerator` instead of relying on
provider-specific defaults.

Since:
:   1.2

See Also:
:   * [`AlgorithmParameterGenerator`](AlgorithmParameterGenerator.md "class in java.security")
    * [`AlgorithmParameters`](AlgorithmParameters.md "class in java.security")
    * [`AlgorithmParameterSpec`](spec/AlgorithmParameterSpec.md "interface in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AlgorithmParameterGeneratorSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `protected abstract AlgorithmParameters`

  `engineGenerateParameters()`

  Generates the parameters.

  `protected abstract void`

  `engineInit(int size,
  SecureRandom random)`

  Initializes this parameter generator for a certain size
  and source of randomness.

  `protected abstract void`

  `engineInit(AlgorithmParameterSpec genParamSpec,
  SecureRandom random)`

  Initializes this parameter generator with a set of
  algorithm-specific parameter generation values.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AlgorithmParameterGeneratorSpi

    public AlgorithmParameterGeneratorSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineInit

    protected abstract void engineInit(int size,
    [SecureRandom](SecureRandom.md "class in java.security") random)

    Initializes this parameter generator for a certain size
    and source of randomness.

    Parameters:
    :   `size` - the size (number of bits).
    :   `random` - the source of randomness.
  + ### engineInit

    protected abstract void engineInit([AlgorithmParameterSpec](spec/AlgorithmParameterSpec.md "interface in java.security.spec") genParamSpec,
    [SecureRandom](SecureRandom.md "class in java.security") random)
    throws [InvalidAlgorithmParameterException](InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this parameter generator with a set of
    algorithm-specific parameter generation values.

    Parameters:
    :   `genParamSpec` - the set of algorithm-specific parameter generation values.
    :   `random` - the source of randomness.

    Throws:
    :   `InvalidAlgorithmParameterException` - if the given parameter
        generation values are inappropriate for this parameter generator.
  + ### engineGenerateParameters

    protected abstract [AlgorithmParameters](AlgorithmParameters.md "class in java.security") engineGenerateParameters()

    Generates the parameters.

    Returns:
    :   the new `AlgorithmParameters` object.