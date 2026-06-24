Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class CertPathTrustManagerParameters

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.CertPathTrustManagerParameters

All Implemented Interfaces:
:   `ManagerFactoryParameters`

---

public class CertPathTrustManagerParameters
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [ManagerFactoryParameters](ManagerFactoryParameters.md "interface in javax.net.ssl")

A wrapper for CertPathParameters. This class is used to pass validation
settings to CertPath based [`TrustManager`](TrustManager.md "interface in javax.net.ssl")s using the
[`TrustManagerFactory.init()`](TrustManagerFactory.md#init(javax.net.ssl.ManagerFactoryParameters)) method.

Instances of this class are immutable.

Since:
:   1.5

See Also:
:   * [`X509TrustManager`](X509TrustManager.md "interface in javax.net.ssl")
    * [`TrustManagerFactory`](TrustManagerFactory.md "class in javax.net.ssl")
    * [`CertPathParameters`](../../../java/security/cert/CertPathParameters.md "interface in java.security.cert")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertPathTrustManagerParameters(CertPathParameters parameters)`

  Construct new CertPathTrustManagerParameters from the specified
  parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `CertPathParameters`

  `getParameters()`

  Return a clone of the CertPathParameters encapsulated by this class.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CertPathTrustManagerParameters

    public CertPathTrustManagerParameters([CertPathParameters](../../../java/security/cert/CertPathParameters.md "interface in java.security.cert") parameters)

    Construct new CertPathTrustManagerParameters from the specified
    parameters. The parameters are cloned to protect against subsequent
    modification.

    Parameters:
    :   `parameters` - the CertPathParameters to be used

    Throws:
    :   `NullPointerException` - if parameters is null
* ## Method Details

  + ### getParameters

    public [CertPathParameters](../../../java/security/cert/CertPathParameters.md "interface in java.security.cert") getParameters()

    Return a clone of the CertPathParameters encapsulated by this class.

    Returns:
    :   a clone of the CertPathParameters encapsulated by this class.