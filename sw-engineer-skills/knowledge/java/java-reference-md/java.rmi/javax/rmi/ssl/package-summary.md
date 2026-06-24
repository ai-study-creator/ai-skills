Module [java.rmi](../../../module-summary.md)

# Package javax.rmi.ssl

---

package javax.rmi.ssl

Provides implementations of [`RMIClientSocketFactory`](../../../java/rmi/server/RMIClientSocketFactory.md "interface in java.rmi.server")
and [`RMIServerSocketFactory`](../../../java/rmi/server/RMIServerSocketFactory.md "interface in java.rmi.server") over
the Secure Sockets Layer (SSL) or Transport Layer Security (TLS) protocols.

Since:
:   1.5

* Classes

  Class

  Description

  [SslRMIClientSocketFactory](SslRMIClientSocketFactory.md "class in javax.rmi.ssl")

  An `SslRMIClientSocketFactory` instance is used by the RMI
  runtime in order to obtain client sockets for RMI calls via SSL.

  [SslRMIServerSocketFactory](SslRMIServerSocketFactory.md "class in javax.rmi.ssl")

  An `SslRMIServerSocketFactory` instance is used by the RMI
  runtime in order to obtain server sockets for RMI calls via SSL.