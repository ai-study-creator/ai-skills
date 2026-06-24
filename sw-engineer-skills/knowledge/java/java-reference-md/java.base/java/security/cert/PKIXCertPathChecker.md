Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class PKIXCertPathChecker

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.PKIXCertPathChecker

All Implemented Interfaces:
:   `Cloneable`, `CertPathChecker`

Direct Known Subclasses:
:   `PKIXRevocationChecker`

---

public abstract class PKIXCertPathChecker
extends [Object](../../lang/Object.md "class in java.lang")
implements [CertPathChecker](CertPathChecker.md "interface in java.security.cert"), [Cloneable](../../lang/Cloneable.md "interface in java.lang")

An abstract class that performs one or more checks on an
`X509Certificate`.

A concrete implementation of the `PKIXCertPathChecker` class
can be created to extend the PKIX certification path validation algorithm.
For example, an implementation may check for and process a critical private
extension of each certificate in a certification path.

Instances of `PKIXCertPathChecker` are passed as parameters
using the [`setCertPathCheckers`](PKIXParameters.md#setCertPathCheckers(java.util.List))
or [`addCertPathChecker`](PKIXParameters.md#addCertPathChecker(java.security.cert.PKIXCertPathChecker)) methods
of the `PKIXParameters` and `PKIXBuilderParameters`
class. Each of the `PKIXCertPathChecker`s [`check`](#check(java.security.cert.Certificate,java.util.Collection))
methods will be called, in turn, for each certificate processed by a PKIX
`CertPathValidator` or `CertPathBuilder`
implementation.

A `PKIXCertPathChecker` may be called multiple times on
successive certificates in a certification path. Concrete subclasses
are expected to maintain any internal state that may be necessary to
check successive certificates. The [`init`](#init(boolean)) method is used
to initialize the internal state of the checker so that the certificates
of a new certification path may be checked. A stateful implementation
**must** override the [`clone`](#clone()) method if necessary in
order to allow a PKIX `CertPathBuilder` to efficiently
backtrack and try other paths. In these situations, the
`CertPathBuilder` is able to restore prior path validation
states by restoring the cloned `PKIXCertPathChecker`s.

The order in which the certificates are presented to the
`PKIXCertPathChecker` may be either in the forward direction
(from target to most-trusted CA) or in the reverse direction (from
most-trusted CA to target). A `PKIXCertPathChecker` implementation
**must** support reverse checking (the ability to perform its checks when
it is presented with certificates in the reverse direction) and **may**
support forward checking (the ability to perform its checks when it is
presented with certificates in the forward direction). The
[`isForwardCheckingSupported`](#isForwardCheckingSupported()) method
indicates whether forward checking is supported.

Additional input parameters required for executing the check may be
specified through constructors of concrete implementations of this class.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`PKIXParameters`](PKIXParameters.md "class in java.security.cert")
    * [`PKIXBuilderParameters`](PKIXBuilderParameters.md "class in java.security.cert")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PKIXCertPathChecker()`

  Default constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `check(Certificate cert)`

  Performs the check(s) on the specified certificate using its internal
  state.

  `abstract void`

  `check(Certificate cert,
  Collection<String> unresolvedCritExts)`

  Performs the check(s) on the specified certificate using its internal
  state and removes any critical extensions that it processes from the
  specified collection of OID strings that represent the unresolved
  critical extensions.

  `Object`

  `clone()`

  Returns a clone of this object.

  `abstract Set<String>`

  `getSupportedExtensions()`

  Returns an immutable `Set` of X.509 certificate extensions
  that this `PKIXCertPathChecker` supports (i.e.

  `abstract void`

  `init(boolean forward)`

  Initializes the internal state of this `PKIXCertPathChecker`.

  `abstract boolean`

  `isForwardCheckingSupported()`

  Indicates if forward checking is supported.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PKIXCertPathChecker

    protected PKIXCertPathChecker()

    Default constructor.
* ## Method Details

  + ### init

    public abstract void init(boolean forward)
    throws [CertPathValidatorException](CertPathValidatorException.md "class in java.security.cert")

    Initializes the internal state of this `PKIXCertPathChecker`.

    The `forward` flag specifies the order that
    certificates will be passed to the [`check`](#check(java.security.cert.Certificate,java.util.Collection)) method
    (forward or reverse). A `PKIXCertPathChecker` **must**
    support reverse checking and **may** support forward checking.

    Specified by:
    :   `init` in interface `CertPathChecker`

    Parameters:
    :   `forward` - the order that certificates are presented to
        the `check` method. If `true`, certificates
        are presented from target to most-trusted CA (forward); if
        `false`, from most-trusted CA to target (reverse).

    Throws:
    :   `CertPathValidatorException` - if this
        `PKIXCertPathChecker` is unable to check certificates in
        the specified order; it should never be thrown if the forward flag
        is false since reverse checking must be supported
  + ### isForwardCheckingSupported

    public abstract boolean isForwardCheckingSupported()

    Indicates if forward checking is supported. Forward checking refers
    to the ability of the `PKIXCertPathChecker` to perform
    its checks when certificates are presented to the `check`
    method in the forward direction (from target to most-trusted CA).

    Specified by:
    :   `isForwardCheckingSupported` in interface `CertPathChecker`

    Returns:
    :   `true` if forward checking is supported,
        `false` otherwise
  + ### getSupportedExtensions

    public abstract [Set](../../util/Set.md "interface in java.util")<[String](../../lang/String.md "class in java.lang")> getSupportedExtensions()

    Returns an immutable `Set` of X.509 certificate extensions
    that this `PKIXCertPathChecker` supports (i.e. recognizes, is
    able to process), or `null` if no extensions are supported.

    Each element of the set is a `String` representing the
    Object Identifier (OID) of the X.509 extension that is supported.
    The OID is represented by a set of nonnegative integers separated by
    periods.

    All X.509 certificate extensions that a `PKIXCertPathChecker`
    might possibly be able to process should be included in the set.

    Returns:
    :   an immutable `Set` of X.509 extension OIDs (in
        `String` format) supported by this
        `PKIXCertPathChecker`, or `null` if no
        extensions are supported
  + ### check

    public abstract void check([Certificate](Certificate.md "class in java.security.cert") cert,
    [Collection](../../util/Collection.md "interface in java.util")<[String](../../lang/String.md "class in java.lang")> unresolvedCritExts)
    throws [CertPathValidatorException](CertPathValidatorException.md "class in java.security.cert")

    Performs the check(s) on the specified certificate using its internal
    state and removes any critical extensions that it processes from the
    specified collection of OID strings that represent the unresolved
    critical extensions. The certificates are presented in the order
    specified by the `init` method.

    Parameters:
    :   `cert` - the `Certificate` to be checked
    :   `unresolvedCritExts` - a `Collection` of OID strings
        representing the current set of unresolved critical extensions

    Throws:
    :   `CertPathValidatorException` - if the specified certificate does
        not pass the check
  + ### check

    public void check([Certificate](Certificate.md "class in java.security.cert") cert)
    throws [CertPathValidatorException](CertPathValidatorException.md "class in java.security.cert")

    Performs the check(s) on the specified certificate using its internal
    state. The certificates are presented in the order specified by the
    `init` method.

    This implementation calls
    `check(cert, java.util.Collections.<String>emptySet())`.

    Specified by:
    :   `check` in interface `CertPathChecker`

    Parameters:
    :   `cert` - the `Certificate` to be checked

    Throws:
    :   `CertPathValidatorException` - if the specified certificate does
        not pass the check
  + ### clone

    public [Object](../../lang/Object.md "class in java.lang") clone()

    Returns a clone of this object. Calls the `Object.clone()`
    method.
    All subclasses which maintain state must support and
    override this method, if necessary.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a copy of this `PKIXCertPathChecker`

    See Also:
    :   - [`Cloneable`](../../lang/Cloneable.md "interface in java.lang")