# Module java.rmi

---

module java.rmi

Defines the Remote Method Invocation (RMI) API.

The JDK implementation of this module includes
the *rmiregistry* tool to start a remote
object registry.

Since:
:   9

* ## Packages

  Exports

  Package

  Description

  [java.rmi](java/rmi/package-summary.md)

  Provides the RMI package.

  [java.rmi.dgc](java/rmi/dgc/package-summary.md)

  Provides classes and interface for RMI distributed
  garbage-collection (DGC).

  [java.rmi.registry](java/rmi/registry/package-summary.md)

  Provides a class and two interfaces for the RMI registry.

  [java.rmi.server](java/rmi/server/package-summary.md)

  Provides classes and interfaces for supporting the server side of RMI.

  [javax.rmi.ssl](javax/rmi/ssl/package-summary.md)

  Provides implementations of [`RMIClientSocketFactory`](java/rmi/server/RMIClientSocketFactory.md "interface in java.rmi.server")
  and [`RMIServerSocketFactory`](java/rmi/server/RMIServerSocketFactory.md "interface in java.rmi.server") over
  the Secure Sockets Layer (SSL) or Transport Layer Security (TLS) protocols.
* ## Services

  Uses

  Type

  Description

  [RMIClassLoaderSpi](java/rmi/server/RMIClassLoaderSpi.md "class in java.rmi.server")

  `RMIClassLoaderSpi` is the service provider interface for
  `RMIClassLoader`.