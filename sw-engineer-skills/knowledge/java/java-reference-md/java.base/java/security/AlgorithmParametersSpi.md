Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class AlgorithmParametersSpi

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.AlgorithmParametersSpi

---

public abstract class AlgorithmParametersSpi
extends [Object](../lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `AlgorithmParameters` class, which is used to manage
algorithm parameters.

All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply parameter management
for a particular algorithm.

Since:
:   1.2

See Also:
:   * [`AlgorithmParameters`](AlgorithmParameters.md "class in java.security")
    * [`AlgorithmParameterSpec`](spec/AlgorithmParameterSpec.md "interface in java.security.spec")
    * [`DSAParameterSpec`](spec/DSAParameterSpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AlgorithmParametersSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `protected abstract byte[]`

  `engineGetEncoded()`

  Returns the parameters in their primary encoding format.

  `protected abstract byte[]`

  `engineGetEncoded(String format)`

  Returns the parameters encoded in the specified format.

  `protected abstract <T extends AlgorithmParameterSpec>  
  T`

  `engineGetParameterSpec(Class<T> paramSpec)`

  Returns a (transparent) specification of this parameters
  object.

  `protected abstract void`

  `engineInit(byte[] params)`

  Imports the specified parameters and decodes them
  according to the primary decoding format for parameters.

  `protected abstract void`

  `engineInit(byte[] params,
  String format)`

  Imports the parameters from `params` and
  decodes them according to the specified decoding format.

  `protected abstract void`

  `engineInit(AlgorithmParameterSpec paramSpec)`

  Initializes this parameters object using the parameters
  specified in `paramSpec`.

  `protected abstract String`

  `engineToString()`

  Returns a formatted string describing the parameters.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AlgorithmParametersSpi

    public AlgorithmParametersSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineInit

    protected abstract void engineInit([AlgorithmParameterSpec](spec/AlgorithmParameterSpec.md "interface in java.security.spec") paramSpec)
    throws [InvalidParameterSpecException](spec/InvalidParameterSpecException.md "class in java.security.spec")

    Initializes this parameters object using the parameters
    specified in `paramSpec`.

    Parameters:
    :   `paramSpec` - the parameter specification.

    Throws:
    :   `InvalidParameterSpecException` - if the given parameter
        specification is inappropriate for the initialization of this parameter
        object.
  + ### engineInit

    protected abstract void engineInit(byte[] params)
    throws [IOException](../io/IOException.md "class in java.io")

    Imports the specified parameters and decodes them
    according to the primary decoding format for parameters.
    The primary decoding format for parameters is ASN.1, if an ASN.1
    specification for this type of parameters exists.

    Parameters:
    :   `params` - the encoded parameters.

    Throws:
    :   `IOException` - on decoding errors
  + ### engineInit

    protected abstract void engineInit(byte[] params,
    [String](../lang/String.md "class in java.lang") format)
    throws [IOException](../io/IOException.md "class in java.io")

    Imports the parameters from `params` and
    decodes them according to the specified decoding format.
    If `format` is `null`, the
    primary decoding format for parameters is used. The primary decoding
    format is ASN.1, if an ASN.1 specification for these parameters
    exists.

    Parameters:
    :   `params` - the encoded parameters.
    :   `format` - the name of the decoding format.

    Throws:
    :   `IOException` - on decoding errors
  + ### engineGetParameterSpec

    protected abstract <T extends [AlgorithmParameterSpec](spec/AlgorithmParameterSpec.md "interface in java.security.spec")>
    T engineGetParameterSpec([Class](../lang/Class.md "class in java.lang")<T> paramSpec)
    throws [InvalidParameterSpecException](spec/InvalidParameterSpecException.md "class in java.security.spec")

    Returns a (transparent) specification of this parameters
    object.
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
        specification is inappropriate for this parameter object.
  + ### engineGetEncoded

    protected abstract byte[] engineGetEncoded()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the parameters in their primary encoding format.
    The primary encoding format for parameters is ASN.1, if an ASN.1
    specification for this type of parameters exists.

    Returns:
    :   the parameters encoded using their primary encoding format.

    Throws:
    :   `IOException` - on encoding errors.
  + ### engineGetEncoded

    protected abstract byte[] engineGetEncoded([String](../lang/String.md "class in java.lang") format)
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the parameters encoded in the specified format.
    If `format` is `null`, the
    primary encoding format for parameters is used. The primary encoding
    format is ASN.1, if an ASN.1 specification for these parameters
    exists.

    Parameters:
    :   `format` - the name of the encoding format.

    Returns:
    :   the parameters encoded using the specified encoding scheme.

    Throws:
    :   `IOException` - on encoding errors.
  + ### engineToString

    protected abstract [String](../lang/String.md "class in java.lang") engineToString()

    Returns a formatted string describing the parameters.

    Returns:
    :   a formatted string describing the parameters.