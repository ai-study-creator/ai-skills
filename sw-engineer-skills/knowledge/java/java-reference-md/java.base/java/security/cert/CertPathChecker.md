Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Interface CertPathChecker

All Known Implementing Classes:
:   `PKIXCertPathChecker`, `PKIXRevocationChecker`

---

public interface CertPathChecker

Performs one or more checks on each `Certificate` of a
`CertPath`.

A `CertPathChecker` implementation is typically created to extend
a certification path validation algorithm. For example, an implementation
may check for and process a critical private extension of each certificate
in a certification path.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `check(Certificate cert)`

  Performs the check(s) on the specified certificate using its internal
  state.

  `void`

  `init(boolean forward)`

  Initializes the internal state of this `CertPathChecker`.

  `boolean`

  `isForwardCheckingSupported()`

  Indicates if forward checking is supported.

* ## Method Details

  + ### init

    void init(boolean forward)
    throws [CertPathValidatorException](CertPathValidatorException.md "class in java.security.cert")

    Initializes the internal state of this `CertPathChecker`.

    The `forward` flag specifies the order that certificates will
    be passed to the [`check`](#check(java.security.cert.Certificate)) method (forward or reverse).

    Parameters:
    :   `forward` - the order that certificates are presented to the
        `check` method. If `true`, certificates are
        presented from target to trust anchor (forward); if
        `false`, from trust anchor to target (reverse).

    Throws:
    :   `CertPathValidatorException` - if this `CertPathChecker` is
        unable to check certificates in the specified order
  + ### isForwardCheckingSupported

    boolean isForwardCheckingSupported()

    Indicates if forward checking is supported. Forward checking refers
    to the ability of the `CertPathChecker` to perform its checks
    when certificates are presented to the `check` method in the
    forward direction (from target to trust anchor).

    Returns:
    :   `true` if forward checking is supported, `false`
        otherwise
  + ### check

    void check([Certificate](Certificate.md "class in java.security.cert") cert)
    throws [CertPathValidatorException](CertPathValidatorException.md "class in java.security.cert")

    Performs the check(s) on the specified certificate using its internal
    state. The certificates are presented in the order specified by the
    `init` method.

    Parameters:
    :   `cert` - the `Certificate` to be checked

    Throws:
    :   `CertPathValidatorException` - if the specified certificate does
        not pass the check