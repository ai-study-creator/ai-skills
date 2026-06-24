Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertPathBuilderSpi

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CertPathBuilderSpi

---

public abstract class CertPathBuilderSpi
extends [Object](../../lang/Object.md "class in java.lang")

The *Service Provider Interface* (**SPI**)
for the [`CertPathBuilder`](CertPathBuilder.md "class in java.security.cert") class. All
`CertPathBuilder` implementations must include a class (the
SPI class) that extends this class (`CertPathBuilderSpi`) and
implements all of its methods. In general, instances of this class should
only be accessed through the `CertPathBuilder` class. For
details, see the Java Cryptography Architecture.

**Concurrent Access**

Instances of this class need not be protected against concurrent
access from multiple threads. Threads that need to access a single
`CertPathBuilderSpi` instance concurrently should synchronize
amongst themselves and provide the necessary locking before calling the
wrapping `CertPathBuilder` object.

However, implementations of `CertPathBuilderSpi` may still
encounter concurrency issues, since multiple threads each
manipulating a different `CertPathBuilderSpi` instance need not
synchronize.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertPathBuilderSpi()`

  The default constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract CertPathBuilderResult`

  `engineBuild(CertPathParameters params)`

  Attempts to build a certification path using the specified
  algorithm parameter set.

  `CertPathChecker`

  `engineGetRevocationChecker()`

  Returns a `CertPathChecker` that this implementation uses to
  check the revocation status of certificates.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CertPathBuilderSpi

    public CertPathBuilderSpi()

    The default constructor.
* ## Method Details

  + ### engineBuild

    public abstract [CertPathBuilderResult](CertPathBuilderResult.md "interface in java.security.cert") engineBuild([CertPathParameters](CertPathParameters.md "interface in java.security.cert") params)
    throws [CertPathBuilderException](CertPathBuilderException.md "class in java.security.cert"),
    [InvalidAlgorithmParameterException](../InvalidAlgorithmParameterException.md "class in java.security")

    Attempts to build a certification path using the specified
    algorithm parameter set.

    Parameters:
    :   `params` - the algorithm parameters

    Returns:
    :   the result of the build algorithm

    Throws:
    :   `CertPathBuilderException` - if the builder is unable to construct
        a certification path that satisfies the specified parameters
    :   `InvalidAlgorithmParameterException` - if the specified parameters
        are inappropriate for this `CertPathBuilder`
  + ### engineGetRevocationChecker

    public [CertPathChecker](CertPathChecker.md "interface in java.security.cert") engineGetRevocationChecker()

    Returns a `CertPathChecker` that this implementation uses to
    check the revocation status of certificates. A PKIX implementation
    returns objects of type `PKIXRevocationChecker`.

    The primary purpose of this method is to allow callers to specify
    additional input parameters and options specific to revocation checking.
    See the class description of `CertPathBuilder` for an example.

    This method was added to version 1.8 of the Java Platform Standard
    Edition. In order to maintain backwards compatibility with existing
    service providers, this method cannot be abstract and by default throws
    an `UnsupportedOperationException`.

    Returns:
    :   a `CertPathChecker` that this implementation uses to
        check the revocation status of certificates

    Throws:
    :   `UnsupportedOperationException` - if this method is not supported

    Since:
    :   1.8