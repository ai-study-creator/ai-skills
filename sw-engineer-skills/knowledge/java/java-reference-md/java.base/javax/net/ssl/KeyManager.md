Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Interface KeyManager

All Known Subinterfaces:
:   `X509KeyManager`

All Known Implementing Classes:
:   `X509ExtendedKeyManager`

---

public interface KeyManager

This is the base interface for JSSE key managers.

`KeyManager`s are responsible for managing the
key material which is used to authenticate the local SSLSocket
to its peer. If no key material is available, the socket will
be unable to present authentication credentials.

`KeyManager`s are created by either
using a `KeyManagerFactory`,
or by implementing one of the `KeyManager` subclasses.

Since:
:   1.4

See Also:
:   * [`KeyManagerFactory`](KeyManagerFactory.md "class in javax.net.ssl")