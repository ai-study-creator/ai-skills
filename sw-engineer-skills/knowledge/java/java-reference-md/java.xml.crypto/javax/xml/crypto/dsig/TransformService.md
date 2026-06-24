Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Class TransformService

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dsig.TransformService

All Implemented Interfaces:
:   `AlgorithmMethod`, `Transform`, `XMLStructure`

---

public abstract class TransformService
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Transform](Transform.md "interface in javax.xml.crypto.dsig")

A Service Provider Interface for transform and canonicalization algorithms.

Each instance of `TransformService` supports a specific
transform or canonicalization algorithm and XML mechanism type. To create a
`TransformService`, call one of the static
[`getInstance`](#getInstance(java.lang.String,java.lang.String)) methods, passing in the algorithm URI and
XML mechanism type desired, for example:
> `TransformService ts = TransformService.getInstance(Transform.XPATH2, "DOM");`

`TransformService` implementations are registered and loaded
using the [`Provider`](../../../../../java.base/java/security/Provider.md "class in java.security") mechanism. Each
`TransformService` service provider implementation should include
a `MechanismType` service attribute that identifies the XML
mechanism type that it supports. If the attribute is not specified,
"DOM" is assumed. For example, a service provider that supports the
XPath Filter 2 Transform and DOM mechanism would be specified in the
`Provider` subclass as:

```
     put("TransformService." + Transform.XPATH2,
         "org.example.XPath2TransformService");
     put("TransformService." + Transform.XPATH2 + " MechanismType", "DOM");
```

`TransformService` implementations that support the DOM
mechanism type must abide by the DOM interoperability requirements defined
in the [DOM Mechanism
Requirements](package-summary.md#dom_req). See the `TransformService` section in the [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-xmlsignaturefactorykeyinfofactorytransformservice-mechanisms) for a list of
standard algorithm URIs and mechanism types.

Once a `TransformService` has been created, it can be used
to process `Transform` or `CanonicalizationMethod`
objects. If the `Transform` or `CanonicalizationMethod`
exists in XML form (for example, when validating an existing
`XMLSignature`), the [`init(XMLStructure, XMLCryptoContext)`](#init(javax.xml.crypto.XMLStructure,javax.xml.crypto.XMLCryptoContext))
method must be first called to initialize the transform and provide document
context (even if there are no parameters). Alternatively, if the
`Transform` or `CanonicalizationMethod` is being
created from scratch, the [`init(TransformParameterSpec)`](#init(javax.xml.crypto.dsig.spec.TransformParameterSpec)) method
is called to initialize the transform with parameters and the
[`marshalParams`](#marshalParams(javax.xml.crypto.XMLStructure,javax.xml.crypto.XMLCryptoContext)) method is called to marshal the
parameters to XML and provide the transform with document context. Finally,
the [`transform`](Transform.md#transform(javax.xml.crypto.Data,javax.xml.crypto.XMLCryptoContext)) method is called to perform the
transformation.

**Concurrent Access**

The static methods of this class are guaranteed to be thread-safe.
Multiple threads may concurrently invoke the static methods defined in this
class with no ill effects.

However, this is not true for the non-static methods defined by this
class. Unless otherwise documented by a specific provider, threads that
need to access a single `TransformService` instance
concurrently should synchronize amongst themselves and provide the
necessary locking. Multiple threads each manipulating a different
`TransformService` instance need not synchronize.

Since:
:   1.6

* ## Field Summary

  ### Fields inherited from interface javax.xml.crypto.dsig.[Transform](Transform.md "interface in javax.xml.crypto.dsig")

  `BASE64, ENVELOPED, XPATH, XPATH2, XSLT`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TransformService()`

  Default constructor, for invocation by subclasses.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final String`

  `getAlgorithm()`

  Returns the URI of the algorithm supported by this
  `TransformService`.

  `static TransformService`

  `getInstance(String algorithm,
  String mechanismType)`

  Returns a `TransformService` that supports the specified
  algorithm URI (ex: [`Transform.XPATH2`](Transform.md#XPATH2)) and mechanism type
  (ex: DOM).

  `static TransformService`

  `getInstance(String algorithm,
  String mechanismType,
  String provider)`

  Returns a `TransformService` that supports the specified
  algorithm URI (ex: [`Transform.XPATH2`](Transform.md#XPATH2)) and mechanism type
  (ex: DOM) as supplied by the specified provider.

  `static TransformService`

  `getInstance(String algorithm,
  String mechanismType,
  Provider provider)`

  Returns a `TransformService` that supports the specified
  algorithm URI (ex: [`Transform.XPATH2`](Transform.md#XPATH2)) and mechanism type
  (ex: DOM) as supplied by the specified provider.

  `final String`

  `getMechanismType()`

  Returns the mechanism type supported by this `TransformService`.

  `final Provider`

  `getProvider()`

  Returns the provider of this `TransformService`.

  `abstract void`

  `init(TransformParameterSpec params)`

  Initializes this `TransformService` with the specified
  parameters.

  `abstract void`

  `init(XMLStructure parent,
  XMLCryptoContext context)`

  Initializes this `TransformService` with the specified
  parameters and document context.

  `abstract void`

  `marshalParams(XMLStructure parent,
  XMLCryptoContext context)`

  Marshals the algorithm-specific parameters.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.xml.crypto.dsig.[Transform](Transform.md "interface in javax.xml.crypto.dsig")

  `getParameterSpec, transform, transform`

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Constructor Details

  + ### TransformService

    protected TransformService()

    Default constructor, for invocation by subclasses.
* ## Method Details

  + ### getInstance

    public static [TransformService](TransformService.md "class in javax.xml.crypto.dsig") getInstance([String](../../../../../java.base/java/lang/String.md "class in java.lang") algorithm,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") mechanismType)
    throws [NoSuchAlgorithmException](../../../../../java.base/java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `TransformService` that supports the specified
    algorithm URI (ex: [`Transform.XPATH2`](Transform.md#XPATH2)) and mechanism type
    (ex: DOM).

    This method uses the standard JCA provider lookup mechanism to
    locate and instantiate a `TransformService` implementation
    of the desired algorithm and `MechanismType` service
    attribute. It traverses the list of registered security
    `Provider`s, starting with the most preferred
    `Provider`. A new `TransformService` object
    from the first `Provider` that supports the specified
    algorithm and mechanism type is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../../../java.base/java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the URI of the algorithm. See the
        `TransformService` section in the
        [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-transform-transformservice-algorithms) for a list of
        standard transform algorithms.
    :   `mechanismType` - the type of the XML processing mechanism and
        representation. See the `TransformService` section in the
        [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-xmlsignaturefactorykeyinfofactorytransformservice-mechanisms) for a list of
        standard mechanism types.

    Returns:
    :   a new `TransformService`

    Throws:
    :   `NullPointerException` - if `algorithm` or
        `mechanismType` is `null`
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `TransformService` implementation for the specified
        algorithm and mechanism type

    See Also:
    :   - [`Provider`](../../../../../java.base/java/security/Provider.md "class in java.security")
  + ### getInstance

    public static [TransformService](TransformService.md "class in javax.xml.crypto.dsig") getInstance([String](../../../../../java.base/java/lang/String.md "class in java.lang") algorithm,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") mechanismType,
    [Provider](../../../../../java.base/java/security/Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../../../../../java.base/java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `TransformService` that supports the specified
    algorithm URI (ex: [`Transform.XPATH2`](Transform.md#XPATH2)) and mechanism type
    (ex: DOM) as supplied by the specified provider. Note that the specified
    `Provider` object does not have to be registered in the
    provider list.

    Parameters:
    :   `algorithm` - the URI of the algorithm. See the
        `TransformService` section in the
        [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-transform-transformservice-algorithms) for a list of
        standard transform algorithms.
    :   `mechanismType` - the type of the XML processing mechanism and
        representation. See the `TransformService` section in the
        [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-xmlsignaturefactorykeyinfofactorytransformservice-mechanisms) for a list of
        standard mechanism types.
    :   `provider` - the `Provider` object

    Returns:
    :   a new `TransformService`

    Throws:
    :   `NullPointerException` - if `provider`,
        `algorithm`, or `mechanismType` is
        `null`
    :   `NoSuchAlgorithmException` - if a `TransformService`
        implementation for the specified algorithm and mechanism type is not
        available from the specified `Provider` object

    See Also:
    :   - [`Provider`](../../../../../java.base/java/security/Provider.md "class in java.security")
  + ### getInstance

    public static [TransformService](TransformService.md "class in javax.xml.crypto.dsig") getInstance([String](../../../../../java.base/java/lang/String.md "class in java.lang") algorithm,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") mechanismType,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](../../../../../java.base/java/security/NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../../../../../java.base/java/security/NoSuchProviderException.md "class in java.security")

    Returns a `TransformService` that supports the specified
    algorithm URI (ex: [`Transform.XPATH2`](Transform.md#XPATH2)) and mechanism type
    (ex: DOM) as supplied by the specified provider. The specified provider
    must be registered in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../../../java.base/java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the URI of the algorithm. See the
        `TransformService` section in the
        [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-transform-transformservice-algorithms) for a list of
        standard transform algorithms.
    :   `mechanismType` - the type of the XML processing mechanism and
        representation. See the `TransformService` section in the
        [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-xmlsignaturefactorykeyinfofactorytransformservice-mechanisms) for a list of
        standard mechanism types.
    :   `provider` - the string name of the provider

    Returns:
    :   a new `TransformService`

    Throws:
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `provider`,
        `mechanismType`, or `algorithm` is
        `null`
    :   `NoSuchAlgorithmException` - if a `TransformService`
        implementation for the specified algorithm and mechanism type is not
        available from the specified provider

    See Also:
    :   - [`Provider`](../../../../../java.base/java/security/Provider.md "class in java.security")
  + ### getMechanismType

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getMechanismType()

    Returns the mechanism type supported by this `TransformService`.

    Returns:
    :   the mechanism type
  + ### getAlgorithm

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the URI of the algorithm supported by this
    `TransformService`.

    Specified by:
    :   `getAlgorithm` in interface `AlgorithmMethod`

    Returns:
    :   the algorithm URI
  + ### getProvider

    public final [Provider](../../../../../java.base/java/security/Provider.md "class in java.security") getProvider()

    Returns the provider of this `TransformService`.

    Returns:
    :   the provider
  + ### init

    public abstract void init([TransformParameterSpec](spec/TransformParameterSpec.md "interface in javax.xml.crypto.dsig.spec") params)
    throws [InvalidAlgorithmParameterException](../../../../../java.base/java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this `TransformService` with the specified
    parameters.

    If the parameters exist in XML form, the
    [`init(XMLStructure, XMLCryptoContext)`](#init(javax.xml.crypto.XMLStructure,javax.xml.crypto.XMLCryptoContext)) method should be used to
    initialize the `TransformService`.

    Parameters:
    :   `params` - the algorithm parameters (may be `null` if
        not required or optional)

    Throws:
    :   `InvalidAlgorithmParameterException` - if the specified parameters
        are invalid for this algorithm
  + ### marshalParams

    public abstract void marshalParams([XMLStructure](../XMLStructure.md "interface in javax.xml.crypto") parent,
    [XMLCryptoContext](../XMLCryptoContext.md "interface in javax.xml.crypto") context)
    throws [MarshalException](../MarshalException.md "class in javax.xml.crypto")

    Marshals the algorithm-specific parameters. If there are no parameters
    to be marshalled, this method returns without throwing an exception.

    Parameters:
    :   `parent` - a mechanism-specific structure containing the parent
        node that the marshalled parameters should be appended to
    :   `context` - the `XMLCryptoContext` containing
        additional context (may be `null` if not applicable)

    Throws:
    :   `ClassCastException` - if the type of `parent` or
        `context` is not compatible with this
        `TransformService`
    :   `NullPointerException` - if `parent` is `null`
    :   `MarshalException` - if the parameters cannot be marshalled
  + ### init

    public abstract void init([XMLStructure](../XMLStructure.md "interface in javax.xml.crypto") parent,
    [XMLCryptoContext](../XMLCryptoContext.md "interface in javax.xml.crypto") context)
    throws [InvalidAlgorithmParameterException](../../../../../java.base/java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this `TransformService` with the specified
    parameters and document context.

    Parameters:
    :   `parent` - a mechanism-specific structure containing the parent
        structure
    :   `context` - the `XMLCryptoContext` containing
        additional context (may be `null` if not applicable)

    Throws:
    :   `ClassCastException` - if the type of `parent` or
        `context` is not compatible with this
        `TransformService`
    :   `NullPointerException` - if `parent` is `null`
    :   `InvalidAlgorithmParameterException` - if the specified parameters
        are invalid for this algorithm