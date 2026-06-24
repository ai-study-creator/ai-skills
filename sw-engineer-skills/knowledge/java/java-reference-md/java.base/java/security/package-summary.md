Module [java.base](../../module-summary.md)

# Package java.security

---

package java.security

Provides the classes and interfaces for the security framework.
This includes classes that implement an easily configurable,
fine-grained access control security architecture.
This package also supports
the generation and storage of cryptographic public key pairs,
as well as a number of exportable cryptographic operations
including those for message digest and signature generation. Finally,
this package provides classes that support signed/guarded objects
and secure random number generation.
Many of the classes provided in this package (the cryptographic
and secure random number generator classes in particular) are
provider-based. The class itself defines a programming interface
to which applications may write. The implementations themselves may
then be written by independent third-party vendors and plugged
in seamlessly as needed. Therefore, application developers may
take advantage of any number of provider-based implementations
without having to add or rewrite code.

## Package Specification

* PKCS #8: Private-Key Information Syntax Standard, Version 1.2,
  November 1993
* [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md)

## Related Documentation

For further documentation, please see:





* (for example `keytool` and `jarsigner`),

Since:
:   1.1

* Related Packages

  Package

  Description

  [java.security.cert](cert/package-summary.md)

  Provides classes and interfaces for parsing and managing
  certificates, certificate revocation lists (CRLs), and
  certification paths.

  [java.security.interfaces](interfaces/package-summary.md)

  Provides interfaces for generating RSA (Rivest, Shamir and
  Adleman AsymmetricCipher algorithm)
  keys as defined in the RSA Laboratory Technical Note
  PKCS#1, and DSA (Digital Signature
  Algorithm) keys as defined in NIST's FIPS-186.

  [java.security.spec](spec/package-summary.md)

  Provides classes and interfaces for key specifications and algorithm
  parameter specifications.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [AccessControlContext](AccessControlContext.md "class in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is only useful in conjunction with
  [the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release.

  [AccessControlException](AccessControlException.md "class in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is only useful in conjunction with
  [the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release.

  [AccessController](AccessController.md "class in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is only useful in conjunction with
  [the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release.

  [AlgorithmConstraints](AlgorithmConstraints.md "interface in java.security")

  This interface specifies constraints for cryptographic algorithms,
  keys (key sizes), and other algorithm parameters.

  [AlgorithmParameterGenerator](AlgorithmParameterGenerator.md "class in java.security")

  The `AlgorithmParameterGenerator` class is used to generate a
  set of
  parameters to be used with a certain algorithm.

  [AlgorithmParameterGeneratorSpi](AlgorithmParameterGeneratorSpi.md "class in java.security")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `AlgorithmParameterGenerator` class, which
  is used to generate a set of parameters to be used with a certain algorithm.

  [AlgorithmParameters](AlgorithmParameters.md "class in java.security")

  This class is used as an opaque representation of cryptographic parameters.

  [AlgorithmParametersSpi](AlgorithmParametersSpi.md "class in java.security")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `AlgorithmParameters` class, which is used to manage
  algorithm parameters.

  [AllPermission](AllPermission.md "class in java.security")

  The `AllPermission` is a permission that implies all other permissions.

  [AuthProvider](AuthProvider.md "class in java.security")

  This class defines login and logout methods for a provider.

  [BasicPermission](BasicPermission.md "class in java.security")

  The `BasicPermission` class extends the `Permission` class, and
  can be used as the base class for permissions that want to
  follow the same naming convention as `BasicPermission`.

  [Certificate](Certificate.md "interface in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is deprecated and subject to removal in a future
  version of Java SE.

  [CodeSigner](CodeSigner.md "class in java.security")

  This class encapsulates information about a code signer.

  [CodeSource](CodeSource.md "class in java.security")

  This class extends the concept of a codebase to
  encapsulate not only the location (URL) but also the certificate chains
  that were used to verify signed code originating from that location.

  [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security")

  An enumeration of cryptographic primitives.

  [DigestException](DigestException.md "class in java.security")

  This is the generic Message Digest exception.

  [DigestInputStream](DigestInputStream.md "class in java.security")

  A transparent stream that updates the associated message digest using
  the bits going through the stream.

  [DigestOutputStream](DigestOutputStream.md "class in java.security")

  A transparent stream that updates the associated message digest using
  the bits going through the stream.

  [DomainCombiner](DomainCombiner.md "interface in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is only useful in conjunction with
  [the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release.

  [DomainLoadStoreParameter](DomainLoadStoreParameter.md "class in java.security")

  Configuration data that specifies the keystores in a keystore domain.

  [DrbgParameters](DrbgParameters.md "class in java.security")

  This class specifies the parameters used by a DRBG (Deterministic
  Random Bit Generator).

  [DrbgParameters.Capability](DrbgParameters.Capability.md "enum class in java.security")

  The reseedable and prediction resistance capabilities of a DRBG.

  [DrbgParameters.Instantiation](DrbgParameters.Instantiation.md "class in java.security")

  DRBG parameters for instantiation.

  [DrbgParameters.NextBytes](DrbgParameters.NextBytes.md "class in java.security")

  DRBG parameters for random bits generation.

  [DrbgParameters.Reseed](DrbgParameters.Reseed.md "class in java.security")

  DRBG parameters for reseed.

  [GeneralSecurityException](GeneralSecurityException.md "class in java.security")

  The `GeneralSecurityException` class is a generic
  security exception class that provides type safety for all the
  security-related exception classes that extend from it.

  [Guard](Guard.md "interface in java.security")

  This interface represents a guard, which is an object that is used
  to protect access to another object.

  [GuardedObject](GuardedObject.md "class in java.security")

  A GuardedObject is an object that is used to protect access to
  another object.

  [Identity](Identity.md "class in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is deprecated and subject to removal in a future
  version of Java SE.

  [IdentityScope](IdentityScope.md "class in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is deprecated and subject to removal in a future
  version of Java SE.

  [InvalidAlgorithmParameterException](InvalidAlgorithmParameterException.md "class in java.security")

  This is the exception for invalid or inappropriate algorithm parameters.

  [InvalidKeyException](InvalidKeyException.md "class in java.security")

  This is the exception for invalid Keys (invalid encoding, wrong
  length, uninitialized, etc.).

  [InvalidParameterException](InvalidParameterException.md "class in java.security")

  This exception, designed for use by the JCA/JCE engine classes,
  is thrown when an invalid parameter is passed
  to a method.

  [Key](Key.md "interface in java.security")

  The `Key` interface is the top-level interface for all keys.

  [KeyException](KeyException.md "class in java.security")

  This is the basic key exception.

  [KeyFactory](KeyFactory.md "class in java.security")

  Key factories are used to convert *keys* (opaque
  cryptographic keys of type `Key`) into *key specifications*
  (transparent representations of the underlying key material), and vice
  versa.

  [KeyFactorySpi](KeyFactorySpi.md "class in java.security")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `KeyFactory` class.

  [KeyManagementException](KeyManagementException.md "class in java.security")

  This is the general key management exception for all operations
  dealing with key management.

  [KeyPair](KeyPair.md "class in java.security")

  This class is a simple holder for a key pair (a public key and a
  private key).

  [KeyPairGenerator](KeyPairGenerator.md "class in java.security")

  The `KeyPairGenerator` class is used to generate pairs of
  public and private keys.

  [KeyPairGeneratorSpi](KeyPairGeneratorSpi.md "class in java.security")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `KeyPairGenerator` class, which is used to generate
  pairs of public and private keys.

  [KeyRep](KeyRep.md "class in java.security")

  Standardized representation for serialized Key objects.

  [KeyRep.Type](KeyRep.Type.md "enum class in java.security")

  Key type.

  [KeyStore](KeyStore.md "class in java.security")

  This class represents a storage facility for cryptographic
  keys and certificates.

  [KeyStore.Builder](KeyStore.Builder.md "class in java.security")

  A description of a to-be-instantiated `KeyStore` object.

  [KeyStore.CallbackHandlerProtection](KeyStore.CallbackHandlerProtection.md "class in java.security")

  A `ProtectionParameter` encapsulating a CallbackHandler.

  [KeyStore.Entry](KeyStore.Entry.md "interface in java.security")

  A marker interface for `KeyStore` entry types.

  [KeyStore.Entry.Attribute](KeyStore.Entry.Attribute.md "interface in java.security")

  An attribute associated with a keystore entry.

  [KeyStore.LoadStoreParameter](KeyStore.LoadStoreParameter.md "interface in java.security")

  A marker interface for `KeyStore`
  [`load`](KeyStore.md#load(java.security.KeyStore.LoadStoreParameter))
  and
  [`store`](KeyStore.md#store(java.security.KeyStore.LoadStoreParameter))
  parameters.

  [KeyStore.PasswordProtection](KeyStore.PasswordProtection.md "class in java.security")

  A password-based implementation of `ProtectionParameter`.

  [KeyStore.PrivateKeyEntry](KeyStore.PrivateKeyEntry.md "class in java.security")

  A `KeyStore` entry that holds a `PrivateKey`
  and corresponding certificate chain.

  [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security")

  A marker interface for keystore protection parameters.

  [KeyStore.SecretKeyEntry](KeyStore.SecretKeyEntry.md "class in java.security")

  A `KeyStore` entry that holds a `SecretKey`.

  [KeyStore.TrustedCertificateEntry](KeyStore.TrustedCertificateEntry.md "class in java.security")

  A `KeyStore` entry that holds a trusted
  `Certificate`.

  [KeyStoreException](KeyStoreException.md "class in java.security")

  This is the generic KeyStore exception.

  [KeyStoreSpi](KeyStoreSpi.md "class in java.security")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `KeyStore` class.

  [MessageDigest](MessageDigest.md "class in java.security")

  This `MessageDigest` class provides applications the functionality of a
  message digest algorithm, such as SHA-1 or SHA-256.

  [MessageDigestSpi](MessageDigestSpi.md "class in java.security")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `MessageDigest` class, which provides the functionality
  of a message digest algorithm, such as MD5 or SHA.

  [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

  This exception is thrown when a particular cryptographic algorithm is
  requested but is not available in the environment.

  [NoSuchProviderException](NoSuchProviderException.md "class in java.security")

  This exception is thrown when a particular security provider is
  requested but is not available in the environment.

  [Permission](Permission.md "class in java.security")

  Abstract class for representing access to a system resource.

  [PermissionCollection](PermissionCollection.md "class in java.security")

  Abstract class representing a collection of Permission objects.

  [Permissions](Permissions.md "class in java.security")

  This class represents a heterogeneous collection of permissions.

  [PKCS12Attribute](PKCS12Attribute.md "class in java.security")

  An attribute associated with a PKCS12 keystore entry.

  [Policy](Policy.md "class in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is only useful in conjunction with
  [the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release.

  [Policy.Parameters](Policy.Parameters.md "interface in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is only useful in conjunction with
  [the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.

  [PolicySpi](PolicySpi.md "class in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is only useful in conjunction with
  [the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release.

  [Principal](Principal.md "interface in java.security")

  This interface represents the abstract notion of a `Principal`, which
  can be used to represent any entity, such as an individual, a
  corporation, and a login id.

  [PrivateKey](PrivateKey.md "interface in java.security")

  A private key.

  [PrivilegedAction](PrivilegedAction.md "interface in java.security")<T>

  A computation to be performed with privileges enabled.

  [PrivilegedActionException](PrivilegedActionException.md "class in java.security")

  This exception is thrown by
  `doPrivileged(PrivilegedExceptionAction)` and
  `doPrivileged(PrivilegedExceptionAction,
  AccessControlContext context)` to indicate
  that the action being performed threw a checked exception.

  [PrivilegedExceptionAction](PrivilegedExceptionAction.md "interface in java.security")<T>

  A computation to be performed with privileges enabled, that throws one or
  more checked exceptions.

  [ProtectionDomain](ProtectionDomain.md "class in java.security")

  The `ProtectionDomain` class encapsulates the characteristics of a
  domain, which encloses a set of classes whose instances are granted a set
  of permissions when being executed on behalf of a given set of Principals.

  [Provider](Provider.md "class in java.security")

  This class represents a "provider" for the
  Java Security API, where a provider implements some or all parts of
  Java Security.

  [Provider.Service](Provider.Service.md "class in java.security")

  The description of a security service.

  [ProviderException](ProviderException.md "class in java.security")

  A runtime exception for `Provider` exceptions (such as
  misconfiguration errors or unrecoverable internal errors),
  which may be subclassed by Providers to
  throw specialized, provider-specific runtime errors.

  [PublicKey](PublicKey.md "interface in java.security")

  A public key.

  [SecureClassLoader](SecureClassLoader.md "class in java.security")

  This class extends `ClassLoader` with additional support for defining
  classes with an associated code source and permissions which are
  retrieved by the system policy by default.

  [SecureRandom](SecureRandom.md "class in java.security")

  This class provides a cryptographically strong random number
  generator (RNG).

  [SecureRandomParameters](SecureRandomParameters.md "interface in java.security")

  A marker interface for parameters used in various `SecureRandom`
  methods.

  [SecureRandomSpi](SecureRandomSpi.md "class in java.security")

  This class defines the *Service Provider Interface* (**SPI**)
  for the [`SecureRandom`](SecureRandom.md "class in java.security") class.

  [Security](Security.md "class in java.security")

  This class centralizes all security properties and common security
  methods.

  [SecurityPermission](SecurityPermission.md "class in java.security")

  This class is for security permissions.

  [Signature](Signature.md "class in java.security")

  The `Signature` class is used to provide applications the functionality
  of a digital signature algorithm.

  [SignatureException](SignatureException.md "class in java.security")

  This is the generic Signature exception.

  [SignatureSpi](SignatureSpi.md "class in java.security")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `Signature` class, which is used to provide the
  functionality of a digital signature algorithm.

  [SignedObject](SignedObject.md "class in java.security")

  `SignedObject` is a class for the purpose of creating authentic
  runtime objects whose integrity cannot be compromised without being
  detected.

  [Signer](Signer.md "class in java.security")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is deprecated and subject to removal in a future
  version of Java SE.

  [Timestamp](Timestamp.md "class in java.security")

  This class encapsulates information about a signed timestamp.

  [UnrecoverableEntryException](UnrecoverableEntryException.md "class in java.security")

  This exception is thrown if an entry in the keystore cannot be recovered.

  [UnrecoverableKeyException](UnrecoverableKeyException.md "class in java.security")

  This exception is thrown if a key in the keystore cannot be recovered.

  [UnresolvedPermission](UnresolvedPermission.md "class in java.security")

  The `UnresolvedPermission` class is used to hold Permissions that
  were "unresolved" when the Policy was initialized.

  [URIParameter](URIParameter.md "class in java.security")

  A parameter that contains a URI pointing to data intended for a
  PolicySpi or ConfigurationSpi implementation.