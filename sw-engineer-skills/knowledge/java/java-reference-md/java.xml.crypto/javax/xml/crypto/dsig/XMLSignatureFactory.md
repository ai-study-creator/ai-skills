Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Class XMLSignatureFactory

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dsig.XMLSignatureFactory

---

public abstract class XMLSignatureFactory
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A factory for creating [`XMLSignature`](XMLSignature.md "interface in javax.xml.crypto.dsig") objects from scratch or
for unmarshalling an `XMLSignature` object from a corresponding
XML representation.

## XMLSignatureFactory Type

Each instance of `XMLSignatureFactory` supports a specific
XML mechanism type. To create an `XMLSignatureFactory`, call one
of the static [`getInstance`](#getInstance(java.lang.String)) methods, passing in the XML
mechanism type desired, for example:
> `XMLSignatureFactory factory = XMLSignatureFactory.getInstance("DOM");`

The objects that this factory produces will be based
on DOM and abide by the DOM interoperability requirements as defined in the
[DOM Mechanism Requirements](package-summary.md#dom_req).
See the `XMLSignatureFactory` section in the [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-xmlsignaturefactorykeyinfofactorytransformservice-mechanisms) for a list of
standard mechanism types.

`XMLSignatureFactory` implementations are registered and loaded
using the [`Provider`](../../../../../java.base/java/security/Provider.md "class in java.security") mechanism.
For example, a service provider that supports the
DOM mechanism would be specified in the `Provider` subclass as:

```
     put("XMLSignatureFactory.DOM", "org.example.DOMXMLSignatureFactory");
```

An implementation MUST minimally support the default mechanism type: DOM.

Note that a caller must use the same `XMLSignatureFactory`
instance to create the `XMLStructure`s of a particular
`XMLSignature` that is to be generated. The behavior is
undefined if `XMLStructure`s from different providers or
different mechanism types are used together.

Also, the `XMLStructure`s that are created by this factory
may contain state specific to the `XMLSignature` and are not
intended to be reusable.

## Creating XMLSignatures from scratch

Once the `XMLSignatureFactory` has been created, objects
can be instantiated by calling the appropriate method. For example, a
[`Reference`](Reference.md "interface in javax.xml.crypto.dsig") instance may be created by invoking one of the
[`newReference`](#newReference(java.lang.String,javax.xml.crypto.dsig.DigestMethod)) methods.

## Unmarshalling XMLSignatures from XML

Alternatively, an `XMLSignature` may be created from an
existing XML representation by invoking the [`unmarshalXMLSignature`](#unmarshalXMLSignature(javax.xml.crypto.dsig.XMLValidateContext)) method and passing it a mechanism-specific
[`XMLValidateContext`](XMLValidateContext.md "interface in javax.xml.crypto.dsig") instance containing the XML content:

```
 DOMValidateContext context = new DOMValidateContext(key, signatureElement);
 XMLSignature signature = factory.unmarshalXMLSignature(context);
```

Each `XMLSignatureFactory` must support the required
`XMLValidateContext` types for that factory type, but may support
others. A DOM `XMLSignatureFactory` must support [`DOMValidateContext`](dom/DOMValidateContext.md "class in javax.xml.crypto.dsig.dom") objects.

## Signing and marshalling XMLSignatures to XML

Each `XMLSignature` created by the factory can also be
marshalled to an XML representation and signed, by invoking the
[`sign`](XMLSignature.md#sign(javax.xml.crypto.dsig.XMLSignContext)) method of the
[`XMLSignature`](XMLSignature.md "interface in javax.xml.crypto.dsig") object and passing it a mechanism-specific
[`XMLSignContext`](XMLSignContext.md "interface in javax.xml.crypto.dsig") object containing the signing key and
marshalling parameters (see [`DOMSignContext`](dom/DOMSignContext.md "class in javax.xml.crypto.dsig.dom")).
For example:

```
    DOMSignContext context = new DOMSignContext(privateKey, document);
    signature.sign(context);
```

**Concurrent Access**

The static methods of this class are guaranteed to be thread-safe.
Multiple threads may concurrently invoke the static methods defined in this
class with no ill effects.

However, this is not true for the non-static methods defined by this
class. Unless otherwise documented by a specific provider, threads that
need to access a single `XMLSignatureFactory` instance
concurrently should synchronize amongst themselves and provide the
necessary locking. Multiple threads each manipulating a different
`XMLSignatureFactory` instance need not synchronize.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `XMLSignatureFactory()`

  Default constructor, for invocation by subclasses.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static XMLSignatureFactory`

  `getInstance()`

  Returns an `XMLSignatureFactory` that supports the
  default XML processing mechanism and representation type ("DOM").

  `static XMLSignatureFactory`

  `getInstance(String mechanismType)`

  Returns an `XMLSignatureFactory` that supports the
  specified XML processing mechanism and representation type (ex: "DOM").

  `static XMLSignatureFactory`

  `getInstance(String mechanismType,
  String provider)`

  Returns an `XMLSignatureFactory` that supports the
  requested XML processing mechanism and representation type (ex: "DOM"),
  as supplied by the specified provider.

  `static XMLSignatureFactory`

  `getInstance(String mechanismType,
  Provider provider)`

  Returns an `XMLSignatureFactory` that supports the
  requested XML processing mechanism and representation type (ex: "DOM"),
  as supplied by the specified provider.

  `final KeyInfoFactory`

  `getKeyInfoFactory()`

  Returns a `KeyInfoFactory` that creates `KeyInfo`
  objects.

  `final String`

  `getMechanismType()`

  Returns the type of the XML processing mechanism and representation
  supported by this `XMLSignatureFactory` (ex: "DOM").

  `final Provider`

  `getProvider()`

  Returns the provider of this `XMLSignatureFactory`.

  `abstract URIDereferencer`

  `getURIDereferencer()`

  Returns a reference to the `URIDereferencer` that is used by
  default to dereference URIs in [`Reference`](Reference.md "interface in javax.xml.crypto.dsig") objects.

  `abstract boolean`

  `isFeatureSupported(String feature)`

  Indicates whether a specified feature is supported.

  `abstract CanonicalizationMethod`

  `newCanonicalizationMethod(String algorithm,
  C14NMethodParameterSpec params)`

  Creates a `CanonicalizationMethod` for the specified
  algorithm URI and parameters.

  `abstract CanonicalizationMethod`

  `newCanonicalizationMethod(String algorithm,
  XMLStructure params)`

  Creates a `CanonicalizationMethod` for the specified
  algorithm URI and parameters.

  `abstract DigestMethod`

  `newDigestMethod(String algorithm,
  DigestMethodParameterSpec params)`

  Creates a `DigestMethod` for the specified algorithm URI
  and parameters.

  `abstract Manifest`

  `newManifest(List<? extends Reference> references)`

  Creates a `Manifest` containing the specified
  list of [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s.

  `abstract Manifest`

  `newManifest(List<? extends Reference> references,
  String id)`

  Creates a `Manifest` containing the specified
  list of [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s and optional id.

  `abstract Reference`

  `newReference(String uri,
  DigestMethod dm)`

  Creates a `Reference` with the specified URI and digest
  method.

  `abstract Reference`

  `newReference(String uri,
  DigestMethod dm,
  List<? extends Transform> transforms,
  String type,
  String id)`

  Creates a `Reference` with the specified parameters.

  `abstract Reference`

  `newReference(String uri,
  DigestMethod dm,
  List<? extends Transform> transforms,
  String type,
  String id,
  byte[] digestValue)`

  Creates a `Reference` with the specified parameters and
  pre-calculated digest value.

  `abstract Reference`

  `newReference(String uri,
  DigestMethod dm,
  List<? extends Transform> appliedTransforms,
  Data result,
  List<? extends Transform> transforms,
  String type,
  String id)`

  Creates a `Reference` with the specified parameters.

  `abstract SignatureMethod`

  `newSignatureMethod(String algorithm,
  SignatureMethodParameterSpec params)`

  Creates a `SignatureMethod` for the specified algorithm URI
  and parameters.

  `abstract SignatureProperties`

  `newSignatureProperties(List<? extends SignatureProperty> properties,
  String id)`

  Creates a `SignatureProperties` containing the specified
  list of [`SignatureProperty`](SignatureProperty.md "interface in javax.xml.crypto.dsig")s and optional id.

  `abstract SignatureProperty`

  `newSignatureProperty(List<? extends XMLStructure> content,
  String target,
  String id)`

  Creates a `SignatureProperty` containing the specified
  list of [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto")s, target URI and optional id.

  `abstract SignedInfo`

  `newSignedInfo(CanonicalizationMethod cm,
  SignatureMethod sm,
  List<? extends Reference> references)`

  Creates a `SignedInfo` with the specified canonicalization
  and signature methods, and list of one or more references.

  `abstract SignedInfo`

  `newSignedInfo(CanonicalizationMethod cm,
  SignatureMethod sm,
  List<? extends Reference> references,
  String id)`

  Creates a `SignedInfo` with the specified parameters.

  `abstract Transform`

  `newTransform(String algorithm,
  TransformParameterSpec params)`

  Creates a `Transform` for the specified algorithm URI
  and parameters.

  `abstract Transform`

  `newTransform(String algorithm,
  XMLStructure params)`

  Creates a `Transform` for the specified algorithm URI
  and parameters.

  `abstract XMLObject`

  `newXMLObject(List<? extends XMLStructure> content,
  String id,
  String mimeType,
  String encoding)`

  Creates an `XMLObject` from the specified parameters.

  `abstract XMLSignature`

  `newXMLSignature(SignedInfo si,
  KeyInfo ki)`

  Creates an `XMLSignature` and initializes it with the contents
  of the specified `SignedInfo` and `KeyInfo`
  objects.

  `abstract XMLSignature`

  `newXMLSignature(SignedInfo si,
  KeyInfo ki,
  List<? extends XMLObject> objects,
  String id,
  String signatureValueId)`

  Creates an `XMLSignature` and initializes it with the
  specified parameters.

  `abstract XMLSignature`

  `unmarshalXMLSignature(XMLValidateContext context)`

  Unmarshals a new `XMLSignature` instance from a
  mechanism-specific `XMLValidateContext` instance.

  `abstract XMLSignature`

  `unmarshalXMLSignature(XMLStructure xmlStructure)`

  Unmarshals a new `XMLSignature` instance from a
  mechanism-specific `XMLStructure` instance.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### XMLSignatureFactory

    protected XMLSignatureFactory()

    Default constructor, for invocation by subclasses.
* ## Method Details

  + ### getInstance

    public static [XMLSignatureFactory](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") getInstance([String](../../../../../java.base/java/lang/String.md "class in java.lang") mechanismType)

    Returns an `XMLSignatureFactory` that supports the
    specified XML processing mechanism and representation type (ex: "DOM").

    This method uses the standard JCA provider lookup mechanism to
    locate and instantiate an `XMLSignatureFactory`
    implementation of the desired mechanism type. It traverses the list of
    registered security `Provider`s, starting with the most
    preferred `Provider`. A new `XMLSignatureFactory`
    object from the first `Provider` that supports the specified
    mechanism is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../../../java.base/java/security/Security.md#getProviders()) method.

    Parameters:
    :   `mechanismType` - the type of the XML processing mechanism and
        representation. See the `XMLSignatureFactory` section in the
        [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-xmlsignaturefactorykeyinfofactorytransformservice-mechanisms) for a list of
        standard mechanism types.

    Returns:
    :   a new `XMLSignatureFactory`

    Throws:
    :   `NullPointerException` - if `mechanismType` is
        `null`
    :   `NoSuchMechanismException` - if no `Provider` supports an
        `XMLSignatureFactory` implementation for the specified
        mechanism

    See Also:
    :   - [`Provider`](../../../../../java.base/java/security/Provider.md "class in java.security")
  + ### getInstance

    public static [XMLSignatureFactory](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") getInstance([String](../../../../../java.base/java/lang/String.md "class in java.lang") mechanismType,
    [Provider](../../../../../java.base/java/security/Provider.md "class in java.security") provider)

    Returns an `XMLSignatureFactory` that supports the
    requested XML processing mechanism and representation type (ex: "DOM"),
    as supplied by the specified provider. Note that the specified
    `Provider` object does not have to be registered in the
    provider list.

    Parameters:
    :   `mechanismType` - the type of the XML processing mechanism and
        representation. See the `XMLSignatureFactory` section in the
        [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-xmlsignaturefactorykeyinfofactorytransformservice-mechanisms) for a list of
        standard mechanism types.
    :   `provider` - the `Provider` object

    Returns:
    :   a new `XMLSignatureFactory`

    Throws:
    :   `NullPointerException` - if `provider` or
        `mechanismType` is `null`
    :   `NoSuchMechanismException` - if an `XMLSignatureFactory`
        implementation for the specified mechanism is not available
        from the specified `Provider` object

    See Also:
    :   - [`Provider`](../../../../../java.base/java/security/Provider.md "class in java.security")
  + ### getInstance

    public static [XMLSignatureFactory](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") getInstance([String](../../../../../java.base/java/lang/String.md "class in java.lang") mechanismType,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") provider)
    throws [NoSuchProviderException](../../../../../java.base/java/security/NoSuchProviderException.md "class in java.security")

    Returns an `XMLSignatureFactory` that supports the
    requested XML processing mechanism and representation type (ex: "DOM"),
    as supplied by the specified provider. The specified provider must be
    registered in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../../../java.base/java/security/Security.md#getProviders()) method.

    Parameters:
    :   `mechanismType` - the type of the XML processing mechanism and
        representation. See the `XMLSignatureFactory` section in the
        [Java Security Standard Algorithm Names Specification](../../../../../../specs/security/standard-names.md#xml-signature-xmlsignaturefactorykeyinfofactorytransformservice-mechanisms) for a list of
        standard mechanism types.
    :   `provider` - the string name of the provider

    Returns:
    :   a new `XMLSignatureFactory`

    Throws:
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `provider` or
        `mechanismType` is `null`
    :   `NoSuchMechanismException` - if an `XMLSignatureFactory`
        implementation for the specified mechanism is not
        available from the specified provider

    See Also:
    :   - [`Provider`](../../../../../java.base/java/security/Provider.md "class in java.security")
  + ### getInstance

    public static [XMLSignatureFactory](XMLSignatureFactory.md "class in javax.xml.crypto.dsig") getInstance()

    Returns an `XMLSignatureFactory` that supports the
    default XML processing mechanism and representation type ("DOM").

    This method uses the standard JCA provider lookup mechanism to
    locate and instantiate an `XMLSignatureFactory`
    implementation of the default mechanism type. It traverses the list of
    registered security `Provider`s, starting with the most
    preferred `Provider`. A new `XMLSignatureFactory`
    object from the first `Provider` that supports the DOM
    mechanism is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../../../java.base/java/security/Security.md#getProviders()) method.

    Returns:
    :   a new `XMLSignatureFactory`

    Throws:
    :   `NoSuchMechanismException` - if no `Provider` supports an
        `XMLSignatureFactory` implementation for the DOM
        mechanism

    See Also:
    :   - [`Provider`](../../../../../java.base/java/security/Provider.md "class in java.security")
  + ### getMechanismType

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getMechanismType()

    Returns the type of the XML processing mechanism and representation
    supported by this `XMLSignatureFactory` (ex: "DOM").

    Returns:
    :   the XML processing mechanism type supported by this
        `XMLSignatureFactory`
  + ### getProvider

    public final [Provider](../../../../../java.base/java/security/Provider.md "class in java.security") getProvider()

    Returns the provider of this `XMLSignatureFactory`.

    Returns:
    :   the provider of this `XMLSignatureFactory`
  + ### newXMLSignature

    public abstract [XMLSignature](XMLSignature.md "interface in javax.xml.crypto.dsig") newXMLSignature([SignedInfo](SignedInfo.md "interface in javax.xml.crypto.dsig") si,
    [KeyInfo](keyinfo/KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo") ki)

    Creates an `XMLSignature` and initializes it with the contents
    of the specified `SignedInfo` and `KeyInfo`
    objects.

    Parameters:
    :   `si` - the signed info
    :   `ki` - the key info (may be `null`)

    Returns:
    :   an `XMLSignature`

    Throws:
    :   `NullPointerException` - if `si` is `null`
  + ### newXMLSignature

    public abstract [XMLSignature](XMLSignature.md "interface in javax.xml.crypto.dsig") newXMLSignature([SignedInfo](SignedInfo.md "interface in javax.xml.crypto.dsig") si,
    [KeyInfo](keyinfo/KeyInfo.md "interface in javax.xml.crypto.dsig.keyinfo") ki,
    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [XMLObject](XMLObject.md "interface in javax.xml.crypto.dsig")> objects,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") id,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") signatureValueId)

    Creates an `XMLSignature` and initializes it with the
    specified parameters.

    Parameters:
    :   `si` - the signed info
    :   `ki` - the key info (may be `null`)
    :   `objects` - a list of [`XMLObject`](XMLObject.md "interface in javax.xml.crypto.dsig")s (may be empty or
        `null`)
    :   `id` - the Id (may be `null`)
    :   `signatureValueId` - the SignatureValue Id (may be `null`)

    Returns:
    :   an `XMLSignature`

    Throws:
    :   `NullPointerException` - if `si` is `null`
    :   `ClassCastException` - if any of the `objects` are not of
        type `XMLObject`
  + ### newReference

    public abstract [Reference](Reference.md "interface in javax.xml.crypto.dsig") newReference([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [DigestMethod](DigestMethod.md "interface in javax.xml.crypto.dsig") dm)

    Creates a `Reference` with the specified URI and digest
    method.

    Parameters:
    :   `uri` - the reference URI (may be `null`)
    :   `dm` - the digest method

    Returns:
    :   a `Reference`

    Throws:
    :   `IllegalArgumentException` - if `uri` is not RFC 2396
        compliant
    :   `NullPointerException` - if `dm` is `null`
  + ### newReference

    public abstract [Reference](Reference.md "interface in javax.xml.crypto.dsig") newReference([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [DigestMethod](DigestMethod.md "interface in javax.xml.crypto.dsig") dm,
    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Transform](Transform.md "interface in javax.xml.crypto.dsig")> transforms,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") id)

    Creates a `Reference` with the specified parameters.

    Parameters:
    :   `uri` - the reference URI (may be `null`)
    :   `dm` - the digest method
    :   `transforms` - a list of [`Transform`](Transform.md "interface in javax.xml.crypto.dsig")s. The list is defensively
        copied to protect against subsequent modification. May be
        `null` or empty.
    :   `type` - the reference type, as a URI (may be `null`)
    :   `id` - the reference ID (may be `null`)

    Returns:
    :   a `Reference`

    Throws:
    :   `ClassCastException` - if any of the `transforms` are
        not of type `Transform`
    :   `IllegalArgumentException` - if `uri` is not RFC 2396
        compliant
    :   `NullPointerException` - if `dm` is `null`
  + ### newReference

    public abstract [Reference](Reference.md "interface in javax.xml.crypto.dsig") newReference([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [DigestMethod](DigestMethod.md "interface in javax.xml.crypto.dsig") dm,
    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Transform](Transform.md "interface in javax.xml.crypto.dsig")> transforms,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") id,
    byte[] digestValue)

    Creates a `Reference` with the specified parameters and
    pre-calculated digest value.

    This method is useful when the digest value of a
    `Reference` has been previously computed. See for example,
    the
    [OASIS-DSS (Digital Signature Services)](http://www.oasis-open.org/committees/tc_home.php?wg_abbrev=dss) specification.

    Parameters:
    :   `uri` - the reference URI (may be `null`)
    :   `dm` - the digest method
    :   `transforms` - a list of [`Transform`](Transform.md "interface in javax.xml.crypto.dsig")s. The list is defensively
        copied to protect against subsequent modification. May be
        `null` or empty.
    :   `type` - the reference type, as a URI (may be `null`)
    :   `id` - the reference ID (may be `null`)
    :   `digestValue` - the digest value. The array is cloned to protect
        against subsequent modification.

    Returns:
    :   a `Reference`

    Throws:
    :   `ClassCastException` - if any of the `transforms` are
        not of type `Transform`
    :   `IllegalArgumentException` - if `uri` is not RFC 2396
        compliant
    :   `NullPointerException` - if `dm` or
        `digestValue` is `null`
  + ### newReference

    public abstract [Reference](Reference.md "interface in javax.xml.crypto.dsig") newReference([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [DigestMethod](DigestMethod.md "interface in javax.xml.crypto.dsig") dm,
    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Transform](Transform.md "interface in javax.xml.crypto.dsig")> appliedTransforms,
    [Data](../Data.md "interface in javax.xml.crypto") result,
    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Transform](Transform.md "interface in javax.xml.crypto.dsig")> transforms,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") id)

    Creates a `Reference` with the specified parameters.

    This method is useful when a list of transforms have already been
    applied to the `Reference`. See for example,
    the
    [OASIS-DSS (Digital Signature Services)](http://www.oasis-open.org/committees/tc_home.php?wg_abbrev=dss) specification.

    When an `XMLSignature` containing this reference is
    generated, the specified `transforms` (if non-null) are
    applied to the specified `result`. The
    `Transforms` element of the resulting `Reference`
    element is set to the concatenation of the
    `appliedTransforms` and `transforms`.

    Parameters:
    :   `uri` - the reference URI (may be `null`)
    :   `dm` - the digest method
    :   `appliedTransforms` - a list of [`Transform`](Transform.md "interface in javax.xml.crypto.dsig")s that have
        already been applied. The list is defensively
        copied to protect against subsequent modification. The list must
        contain at least one entry.
    :   `result` - the result of processing the sequence of
        `appliedTransforms`
    :   `transforms` - a list of [`Transform`](Transform.md "interface in javax.xml.crypto.dsig")s that are to be applied
        when generating the signature. The list is defensively copied to
        protect against subsequent modification. May be `null`
        or empty.
    :   `type` - the reference type, as a URI (may be `null`)
    :   `id` - the reference ID (may be `null`)

    Returns:
    :   a `Reference`

    Throws:
    :   `ClassCastException` - if any of the transforms (in either list)
        are not of type `Transform`
    :   `IllegalArgumentException` - if `uri` is not RFC 2396
        compliant or `appliedTransforms` is empty
    :   `NullPointerException` - if `dm`,
        `appliedTransforms` or `result` is
        `null`
  + ### newSignedInfo

    public abstract [SignedInfo](SignedInfo.md "interface in javax.xml.crypto.dsig") newSignedInfo([CanonicalizationMethod](CanonicalizationMethod.md "interface in javax.xml.crypto.dsig") cm,
    [SignatureMethod](SignatureMethod.md "interface in javax.xml.crypto.dsig") sm,
    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Reference](Reference.md "interface in javax.xml.crypto.dsig")> references)

    Creates a `SignedInfo` with the specified canonicalization
    and signature methods, and list of one or more references.

    Parameters:
    :   `cm` - the canonicalization method
    :   `sm` - the signature method
    :   `references` - a list of one or more [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s. The list is
        defensively copied to protect against subsequent modification.

    Returns:
    :   a `SignedInfo`

    Throws:
    :   `ClassCastException` - if any of the references are not of
        type `Reference`
    :   `IllegalArgumentException` - if `references` is empty
    :   `NullPointerException` - if any of the parameters
        are `null`
  + ### newSignedInfo

    public abstract [SignedInfo](SignedInfo.md "interface in javax.xml.crypto.dsig") newSignedInfo([CanonicalizationMethod](CanonicalizationMethod.md "interface in javax.xml.crypto.dsig") cm,
    [SignatureMethod](SignatureMethod.md "interface in javax.xml.crypto.dsig") sm,
    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Reference](Reference.md "interface in javax.xml.crypto.dsig")> references,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") id)

    Creates a `SignedInfo` with the specified parameters.

    Parameters:
    :   `cm` - the canonicalization method
    :   `sm` - the signature method
    :   `references` - a list of one or more [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s. The list is
        defensively copied to protect against subsequent modification.
    :   `id` - the id (may be `null`)

    Returns:
    :   a `SignedInfo`

    Throws:
    :   `ClassCastException` - if any of the references are not of
        type `Reference`
    :   `IllegalArgumentException` - if `references` is empty
    :   `NullPointerException` - if `cm`, `sm`, or
        `references` are `null`
  + ### newXMLObject

    public abstract [XMLObject](XMLObject.md "interface in javax.xml.crypto.dsig") newXMLObject([List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")> content,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") id,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") mimeType,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") encoding)

    Creates an `XMLObject` from the specified parameters.

    Parameters:
    :   `content` - a list of [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto")s. The list
        is defensively copied to protect against subsequent modification.
        May be `null` or empty.
    :   `id` - the Id (may be `null`)
    :   `mimeType` - the mime type (may be `null`)
    :   `encoding` - the encoding (may be `null`)

    Returns:
    :   an `XMLObject`

    Throws:
    :   `ClassCastException` - if `content` contains any
        entries that are not of type [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto")
  + ### newManifest

    public abstract [Manifest](Manifest.md "interface in javax.xml.crypto.dsig") newManifest([List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Reference](Reference.md "interface in javax.xml.crypto.dsig")> references)

    Creates a `Manifest` containing the specified
    list of [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s.

    Parameters:
    :   `references` - a list of one or more `Reference`s. The list
        is defensively copied to protect against subsequent modification.

    Returns:
    :   a `Manifest`

    Throws:
    :   `NullPointerException` - if `references` is
        `null`
    :   `IllegalArgumentException` - if `references` is empty
    :   `ClassCastException` - if `references` contains any
        entries that are not of type [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")
  + ### newManifest

    public abstract [Manifest](Manifest.md "interface in javax.xml.crypto.dsig") newManifest([List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Reference](Reference.md "interface in javax.xml.crypto.dsig")> references,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") id)

    Creates a `Manifest` containing the specified
    list of [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")s and optional id.

    Parameters:
    :   `references` - a list of one or more `Reference`s. The list
        is defensively copied to protect against subsequent modification.
    :   `id` - the id (may be `null`)

    Returns:
    :   a `Manifest`

    Throws:
    :   `NullPointerException` - if `references` is
        `null`
    :   `IllegalArgumentException` - if `references` is empty
    :   `ClassCastException` - if `references` contains any
        entries that are not of type [`Reference`](Reference.md "interface in javax.xml.crypto.dsig")
  + ### newSignatureProperty

    public abstract [SignatureProperty](SignatureProperty.md "interface in javax.xml.crypto.dsig") newSignatureProperty([List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")> content,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") target,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") id)

    Creates a `SignatureProperty` containing the specified
    list of [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto")s, target URI and optional id.

    Parameters:
    :   `content` - a list of one or more `XMLStructure`s. The list
        is defensively copied to protect against subsequent modification.
    :   `target` - the target URI of the Signature that this property applies
        to
    :   `id` - the id (may be `null`)

    Returns:
    :   a `SignatureProperty`

    Throws:
    :   `NullPointerException` - if `content` or
        `target` is `null`
    :   `IllegalArgumentException` - if `content` is empty
    :   `ClassCastException` - if `content` contains any
        entries that are not of type [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto")
  + ### newSignatureProperties

    public abstract [SignatureProperties](SignatureProperties.md "interface in javax.xml.crypto.dsig") newSignatureProperties([List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [SignatureProperty](SignatureProperty.md "interface in javax.xml.crypto.dsig")> properties,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") id)

    Creates a `SignatureProperties` containing the specified
    list of [`SignatureProperty`](SignatureProperty.md "interface in javax.xml.crypto.dsig")s and optional id.

    Parameters:
    :   `properties` - a list of one or more `SignatureProperty`s.
        The list is defensively copied to protect against subsequent
        modification.
    :   `id` - the id (may be `null`)

    Returns:
    :   a `SignatureProperties`

    Throws:
    :   `NullPointerException` - if `properties`
        is `null`
    :   `IllegalArgumentException` - if `properties` is empty
    :   `ClassCastException` - if `properties` contains any
        entries that are not of type [`SignatureProperty`](SignatureProperty.md "interface in javax.xml.crypto.dsig")
  + ### newDigestMethod

    public abstract [DigestMethod](DigestMethod.md "interface in javax.xml.crypto.dsig") newDigestMethod([String](../../../../../java.base/java/lang/String.md "class in java.lang") algorithm,
    [DigestMethodParameterSpec](spec/DigestMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec") params)
    throws [NoSuchAlgorithmException](../../../../../java.base/java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../../../../../java.base/java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Creates a `DigestMethod` for the specified algorithm URI
    and parameters.

    Parameters:
    :   `algorithm` - the URI identifying the digest algorithm
    :   `params` - algorithm-specific digest parameters (may be
        `null`)

    Returns:
    :   the `DigestMethod`

    Throws:
    :   `InvalidAlgorithmParameterException` - if the specified parameters
        are inappropriate for the requested algorithm
    :   `NoSuchAlgorithmException` - if an implementation of the
        specified algorithm cannot be found
    :   `NullPointerException` - if `algorithm` is
        `null`
  + ### newSignatureMethod

    public abstract [SignatureMethod](SignatureMethod.md "interface in javax.xml.crypto.dsig") newSignatureMethod([String](../../../../../java.base/java/lang/String.md "class in java.lang") algorithm,
    [SignatureMethodParameterSpec](spec/SignatureMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec") params)
    throws [NoSuchAlgorithmException](../../../../../java.base/java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../../../../../java.base/java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Creates a `SignatureMethod` for the specified algorithm URI
    and parameters.

    Parameters:
    :   `algorithm` - the URI identifying the signature algorithm
    :   `params` - algorithm-specific signature parameters (may be
        `null`)

    Returns:
    :   the `SignatureMethod`

    Throws:
    :   `InvalidAlgorithmParameterException` - if the specified parameters
        are inappropriate for the requested algorithm
    :   `NoSuchAlgorithmException` - if an implementation of the
        specified algorithm cannot be found
    :   `NullPointerException` - if `algorithm` is
        `null`
  + ### newTransform

    public abstract [Transform](Transform.md "interface in javax.xml.crypto.dsig") newTransform([String](../../../../../java.base/java/lang/String.md "class in java.lang") algorithm,
    [TransformParameterSpec](spec/TransformParameterSpec.md "interface in javax.xml.crypto.dsig.spec") params)
    throws [NoSuchAlgorithmException](../../../../../java.base/java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../../../../../java.base/java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Creates a `Transform` for the specified algorithm URI
    and parameters.

    Parameters:
    :   `algorithm` - the URI identifying the transform algorithm
    :   `params` - algorithm-specific transform parameters (may be
        `null`)

    Returns:
    :   the `Transform`

    Throws:
    :   `InvalidAlgorithmParameterException` - if the specified parameters
        are inappropriate for the requested algorithm
    :   `NoSuchAlgorithmException` - if an implementation of the
        specified algorithm cannot be found
    :   `NullPointerException` - if `algorithm` is
        `null`
  + ### newTransform

    public abstract [Transform](Transform.md "interface in javax.xml.crypto.dsig") newTransform([String](../../../../../java.base/java/lang/String.md "class in java.lang") algorithm,
    [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto") params)
    throws [NoSuchAlgorithmException](../../../../../java.base/java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../../../../../java.base/java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Creates a `Transform` for the specified algorithm URI
    and parameters. The parameters are specified as a mechanism-specific
    `XMLStructure` (ex: [`DOMStructure`](../dom/DOMStructure.md "class in javax.xml.crypto.dom")). This method is
    useful when the parameters are in XML form or there is no standard
    class for specifying the parameters.

    Parameters:
    :   `algorithm` - the URI identifying the transform algorithm
    :   `params` - a mechanism-specific XML structure from which to
        unmarshal the parameters from (may be `null` if
        not required or optional)

    Returns:
    :   the `Transform`

    Throws:
    :   `ClassCastException` - if the type of `params` is
        inappropriate for this `XMLSignatureFactory`
    :   `InvalidAlgorithmParameterException` - if the specified parameters
        are inappropriate for the requested algorithm
    :   `NoSuchAlgorithmException` - if an implementation of the
        specified algorithm cannot be found
    :   `NullPointerException` - if `algorithm` is
        `null`
  + ### newCanonicalizationMethod

    public abstract [CanonicalizationMethod](CanonicalizationMethod.md "interface in javax.xml.crypto.dsig") newCanonicalizationMethod([String](../../../../../java.base/java/lang/String.md "class in java.lang") algorithm,
    [C14NMethodParameterSpec](spec/C14NMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec") params)
    throws [NoSuchAlgorithmException](../../../../../java.base/java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../../../../../java.base/java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Creates a `CanonicalizationMethod` for the specified
    algorithm URI and parameters.

    Parameters:
    :   `algorithm` - the URI identifying the canonicalization algorithm
    :   `params` - algorithm-specific canonicalization parameters (may be
        `null`)

    Returns:
    :   the `CanonicalizationMethod`

    Throws:
    :   `InvalidAlgorithmParameterException` - if the specified parameters
        are inappropriate for the requested algorithm
    :   `NoSuchAlgorithmException` - if an implementation of the
        specified algorithm cannot be found
    :   `NullPointerException` - if `algorithm` is
        `null`
  + ### newCanonicalizationMethod

    public abstract [CanonicalizationMethod](CanonicalizationMethod.md "interface in javax.xml.crypto.dsig") newCanonicalizationMethod([String](../../../../../java.base/java/lang/String.md "class in java.lang") algorithm,
    [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto") params)
    throws [NoSuchAlgorithmException](../../../../../java.base/java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../../../../../java.base/java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Creates a `CanonicalizationMethod` for the specified
    algorithm URI and parameters. The parameters are specified as a
    mechanism-specific `XMLStructure` (ex: [`DOMStructure`](../dom/DOMStructure.md "class in javax.xml.crypto.dom")).
    This method is useful when the parameters are in XML form or there is
    no standard class for specifying the parameters.

    Parameters:
    :   `algorithm` - the URI identifying the canonicalization algorithm
    :   `params` - a mechanism-specific XML structure from which to
        unmarshal the parameters from (may be `null` if
        not required or optional)

    Returns:
    :   the `CanonicalizationMethod`

    Throws:
    :   `ClassCastException` - if the type of `params` is
        inappropriate for this `XMLSignatureFactory`
    :   `InvalidAlgorithmParameterException` - if the specified parameters
        are inappropriate for the requested algorithm
    :   `NoSuchAlgorithmException` - if an implementation of the
        specified algorithm cannot be found
    :   `NullPointerException` - if `algorithm` is
        `null`
  + ### getKeyInfoFactory

    public final [KeyInfoFactory](keyinfo/KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo") getKeyInfoFactory()

    Returns a `KeyInfoFactory` that creates `KeyInfo`
    objects. The returned `KeyInfoFactory` has the same
    mechanism type and provider as this `XMLSignatureFactory`.

    Returns:
    :   a `KeyInfoFactory`

    Throws:
    :   `NoSuchMechanismException` - if a `KeyFactory`
        implementation with the same mechanism type and provider
        is not available
  + ### unmarshalXMLSignature

    public abstract [XMLSignature](XMLSignature.md "interface in javax.xml.crypto.dsig") unmarshalXMLSignature([XMLValidateContext](XMLValidateContext.md "interface in javax.xml.crypto.dsig") context)
    throws [MarshalException](../MarshalException.md "class in javax.xml.crypto")

    Unmarshals a new `XMLSignature` instance from a
    mechanism-specific `XMLValidateContext` instance.

    Parameters:
    :   `context` - a mechanism-specific context from which to unmarshal the
        signature from

    Returns:
    :   the `XMLSignature`

    Throws:
    :   `NullPointerException` - if `context` is
        `null`
    :   `ClassCastException` - if the type of `context` is
        inappropriate for this factory
    :   `MarshalException` - if an unrecoverable exception occurs
        during unmarshalling
  + ### unmarshalXMLSignature

    public abstract [XMLSignature](XMLSignature.md "interface in javax.xml.crypto.dsig") unmarshalXMLSignature([XMLStructure](../XMLStructure.md "interface in javax.xml.crypto") xmlStructure)
    throws [MarshalException](../MarshalException.md "class in javax.xml.crypto")

    Unmarshals a new `XMLSignature` instance from a
    mechanism-specific `XMLStructure` instance.
    This method is useful if you only want to unmarshal (and not
    validate) an `XMLSignature`.

    Parameters:
    :   `xmlStructure` - a mechanism-specific XML structure from which to
        unmarshal the signature from

    Returns:
    :   the `XMLSignature`

    Throws:
    :   `NullPointerException` - if `xmlStructure` is
        `null`
    :   `ClassCastException` - if the type of `xmlStructure` is
        inappropriate for this factory
    :   `MarshalException` - if an unrecoverable exception occurs
        during unmarshalling
  + ### isFeatureSupported

    public abstract boolean isFeatureSupported([String](../../../../../java.base/java/lang/String.md "class in java.lang") feature)

    Indicates whether a specified feature is supported.

    Parameters:
    :   `feature` - the feature name (as an absolute URI)

    Returns:
    :   `true` if the specified feature is supported,
        `false` otherwise

    Throws:
    :   `NullPointerException` - if `feature` is `null`
  + ### getURIDereferencer

    public abstract [URIDereferencer](../URIDereferencer.md "interface in javax.xml.crypto") getURIDereferencer()

    Returns a reference to the `URIDereferencer` that is used by
    default to dereference URIs in [`Reference`](Reference.md "interface in javax.xml.crypto.dsig") objects.

    Returns:
    :   a reference to the default `URIDereferencer` (never
        `null`)