Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Interface HostnameVerifier

---

public interface HostnameVerifier

This class is the base interface for hostname verification.

During handshaking, if the URL's hostname and
the server's identification hostname mismatch, the
verification mechanism can call back to implementers of this
interface to determine if this connection should be allowed.

The policies can be certificate-based
or may depend on other authentication schemes.

These callbacks are used when the default rules for URL hostname
verification fail.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `verify(String hostname,
  SSLSession session)`

  Verify that the host name is an acceptable match with
  the server's authentication scheme.

* ## Method Details

  + ### verify

    boolean verify([String](../../../java/lang/String.md "class in java.lang") hostname,
    [SSLSession](SSLSession.md "interface in javax.net.ssl") session)

    Verify that the host name is an acceptable match with
    the server's authentication scheme.

    Parameters:
    :   `hostname` - the host name
    :   `session` - SSLSession used on the connection to host

    Returns:
    :   true if the host name is acceptable