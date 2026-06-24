Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class PKIXRevocationChecker

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.security.cert.PKIXCertPathChecker](PKIXCertPathChecker.md "class in java.security.cert")

java.security.cert.PKIXRevocationChecker

All Implemented Interfaces:
:   `Cloneable`, `CertPathChecker`

---

public abstract class PKIXRevocationChecker
extends [PKIXCertPathChecker](PKIXCertPathChecker.md "class in java.security.cert")

A `PKIXCertPathChecker` for checking the revocation status of
certificates with the PKIX algorithm.

A `PKIXRevocationChecker` checks the revocation status of
certificates with the Online Certificate Status Protocol (OCSP) or
Certificate Revocation Lists (CRLs). OCSP is described in RFC 2560 and
is a network protocol for determining the status of a certificate. A CRL
is a time-stamped list identifying revoked certificates, and RFC 5280
describes an algorithm for determining the revocation status of certificates
using CRLs.

Each `PKIXRevocationChecker` must be able to check the revocation
status of certificates with OCSP and CRLs. By default, OCSP is the
preferred mechanism for checking revocation status, with CRLs as the
fallback mechanism. However, this preference can be switched to CRLs with
the [`PREFER_CRLS`](PKIXRevocationChecker.Option.md#PREFER_CRLS) option. In addition, the fallback
mechanism can be disabled with the [`NO_FALLBACK`](PKIXRevocationChecker.Option.md#NO_FALLBACK)
option.

A `PKIXRevocationChecker` is obtained by calling the
[`getRevocationChecker`](CertPathValidator.md#getRevocationChecker()) method
of a PKIX `CertPathValidator`. Additional parameters and options
specific to revocation can be set (by calling the
[`setOcspResponder`](#setOcspResponder(java.net.URI)) method for instance). The
`PKIXRevocationChecker` is added to a `PKIXParameters` object
using the [`addCertPathChecker`](PKIXParameters.md#addCertPathChecker(java.security.cert.PKIXCertPathChecker))
or [`setCertPathCheckers`](PKIXParameters.md#setCertPathCheckers(java.util.List)) method,
and then the `PKIXParameters` is passed along with the `CertPath`
to be validated to the [`validate`](CertPathValidator.md#validate(java.security.cert.CertPath,java.security.cert.CertPathParameters)) method
of a PKIX `CertPathValidator`. When supplying a revocation checker in
this manner, it will be used to check revocation irrespective of the setting
of the [`RevocationEnabled`](PKIXParameters.md#isRevocationEnabled()) flag,
and will override the default revocation checking mechanism of the PKIX
service provider. Similarly, a `PKIXRevocationChecker` may be added
to a `PKIXBuilderParameters` object for use with a PKIX
`CertPathBuilder`.

Note that when a `PKIXRevocationChecker` is added to
`PKIXParameters`, it clones the `PKIXRevocationChecker`;
thus any subsequent modifications to the `PKIXRevocationChecker`
have no effect.

Any parameter that is not set (or is set to `null`) will be set to
the default value for that parameter.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single object
concurrently should synchronize amongst themselves and provide the
necessary locking. Multiple threads each manipulating separate objects
need not synchronize.

Since:
:   1.8

See Also:
:   * [*RFC 2560: X.509
      Internet Public Key Infrastructure Online Certificate Status Protocol -
      OCSP*](http://www.ietf.org/rfc/rfc2560.txt)
    * [*RFC 5280:
      Internet X.509 Public Key Infrastructure Certificate and Certificate
      Revocation List (CRL) Profile*](http://www.ietf.org/rfc/rfc5280.txt)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `PKIXRevocationChecker.Option`

  Various revocation options that can be specified for the revocation
  checking mechanism.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PKIXRevocationChecker()`

  Default constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `PKIXRevocationChecker`

  `clone()`

  Returns a clone of this object.

  `List<Extension>`

  `getOcspExtensions()`

  Gets the optional OCSP request extensions.

  `URI`

  `getOcspResponder()`

  Gets the URI that identifies the location of the OCSP responder.

  `X509Certificate`

  `getOcspResponderCert()`

  Gets the OCSP responder's certificate.

  `Map<X509Certificate,byte[]>`

  `getOcspResponses()`

  Gets the OCSP responses.

  `Set<PKIXRevocationChecker.Option>`

  `getOptions()`

  Gets the revocation options.

  `abstract List<CertPathValidatorException>`

  `getSoftFailExceptions()`

  Returns a list containing the exceptions that are ignored by the
  revocation checker when the [`SOFT_FAIL`](PKIXRevocationChecker.Option.md#SOFT_FAIL) option
  is set.

  `void`

  `setOcspExtensions(List<Extension> extensions)`

  Sets the optional OCSP request extensions.

  `void`

  `setOcspResponder(URI uri)`

  Sets the URI that identifies the location of the OCSP responder.

  `void`

  `setOcspResponderCert(X509Certificate cert)`

  Sets the OCSP responder's certificate.

  `void`

  `setOcspResponses(Map<X509Certificate,byte[]> responses)`

  Sets the OCSP responses.

  `void`

  `setOptions(Set<PKIXRevocationChecker.Option> options)`

  Sets the revocation options.

  ### Methods inherited from class java.security.cert.[PKIXCertPathChecker](PKIXCertPathChecker.md "class in java.security.cert")

  `check, check, getSupportedExtensions, init, isForwardCheckingSupported`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PKIXRevocationChecker

    protected PKIXRevocationChecker()

    Default constructor.
* ## Method Details

  + ### setOcspResponder

    public void setOcspResponder([URI](../../net/URI.md "class in java.net") uri)

    Sets the URI that identifies the location of the OCSP responder. This
    overrides the `ocsp.responderURL` security property and any
    responder specified in a certificate's Authority Information Access
    Extension, as defined in RFC 5280.

    Parameters:
    :   `uri` - the responder URI
  + ### getOcspResponder

    public [URI](../../net/URI.md "class in java.net") getOcspResponder()

    Gets the URI that identifies the location of the OCSP responder. This
    overrides the `ocsp.responderURL` security property. If this
    parameter or the `ocsp.responderURL` property is not set, the
    location is determined from the certificate's Authority Information
    Access Extension, as defined in RFC 5280.

    Returns:
    :   the responder URI, or `null` if not set
  + ### setOcspResponderCert

    public void setOcspResponderCert([X509Certificate](X509Certificate.md "class in java.security.cert") cert)

    Sets the OCSP responder's certificate. This overrides the
    `ocsp.responderCertSubjectName`,
    `ocsp.responderCertIssuerName`,
    and `ocsp.responderCertSerialNumber` security properties.

    Parameters:
    :   `cert` - the responder's certificate
  + ### getOcspResponderCert

    public [X509Certificate](X509Certificate.md "class in java.security.cert") getOcspResponderCert()

    Gets the OCSP responder's certificate. This overrides the
    `ocsp.responderCertSubjectName`,
    `ocsp.responderCertIssuerName`,
    and `ocsp.responderCertSerialNumber` security properties. If this
    parameter or the aforementioned properties are not set, then the
    responder's certificate is determined as specified in RFC 2560.

    Returns:
    :   the responder's certificate, or `null` if not set
  + ### setOcspExtensions

    public void setOcspExtensions([List](../../util/List.md "interface in java.util")<[Extension](Extension.md "interface in java.security.cert")> extensions)

    Sets the optional OCSP request extensions.

    Parameters:
    :   `extensions` - a list of extensions. The list is copied to protect
        against subsequent modification.
  + ### getOcspExtensions

    public [List](../../util/List.md "interface in java.util")<[Extension](Extension.md "interface in java.security.cert")> getOcspExtensions()

    Gets the optional OCSP request extensions.

    Returns:
    :   an unmodifiable list of extensions. The list is empty if no
        extensions have been specified.
  + ### setOcspResponses

    public void setOcspResponses([Map](../../util/Map.md "interface in java.util")<[X509Certificate](X509Certificate.md "class in java.security.cert"),byte[]> responses)

    Sets the OCSP responses. These responses are used to determine
    the revocation status of the specified certificates when OCSP is used.

    Parameters:
    :   `responses` - a map of OCSP responses. Each key is an
        `X509Certificate` that maps to the corresponding
        DER-encoded OCSP response for that certificate. A deep copy of
        the map is performed to protect against subsequent modification.
  + ### getOcspResponses

    public [Map](../../util/Map.md "interface in java.util")<[X509Certificate](X509Certificate.md "class in java.security.cert"),byte[]> getOcspResponses()

    Gets the OCSP responses. These responses are used to determine
    the revocation status of the specified certificates when OCSP is used.

    Returns:
    :   a map of OCSP responses. Each key is an
        `X509Certificate` that maps to the corresponding
        DER-encoded OCSP response for that certificate. A deep copy of
        the map is returned to protect against subsequent modification.
        Returns an empty map if no responses have been specified.
  + ### setOptions

    public void setOptions([Set](../../util/Set.md "interface in java.util")<[PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert")> options)

    Sets the revocation options.

    Parameters:
    :   `options` - a set of revocation options. The set is copied to protect
        against subsequent modification.
  + ### getOptions

    public [Set](../../util/Set.md "interface in java.util")<[PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert")> getOptions()

    Gets the revocation options.

    Returns:
    :   an unmodifiable set of revocation options. The set is empty if
        no options have been specified.
  + ### getSoftFailExceptions

    public abstract [List](../../util/List.md "interface in java.util")<[CertPathValidatorException](CertPathValidatorException.md "class in java.security.cert")> getSoftFailExceptions()

    Returns a list containing the exceptions that are ignored by the
    revocation checker when the [`SOFT_FAIL`](PKIXRevocationChecker.Option.md#SOFT_FAIL) option
    is set. The list is cleared each time [`init`](PKIXCertPathChecker.md#init(boolean)) is called.
    The list is ordered in ascending order according to the certificate
    index returned by [`getIndex`](CertPathValidatorException.md#getIndex())
    method of each entry.

    An implementation of `PKIXRevocationChecker` is responsible for
    adding the ignored exceptions to the list.

    Returns:
    :   an unmodifiable list containing the ignored exceptions. The list
        is empty if no exceptions have been ignored.
  + ### clone

    public [PKIXRevocationChecker](PKIXRevocationChecker.md "class in java.security.cert") clone()

    Description copied from class: `PKIXCertPathChecker`

    Returns a clone of this object. Calls the `Object.clone()`
    method.
    All subclasses which maintain state must support and
    override this method, if necessary.

    Overrides:
    :   `clone` in class `PKIXCertPathChecker`

    Returns:
    :   a copy of this `PKIXCertPathChecker`

    See Also:
    :   - [`Cloneable`](../../lang/Cloneable.md "interface in java.lang")