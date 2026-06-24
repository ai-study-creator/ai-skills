Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Interface TrustManager

All Known Subinterfaces:
:   `X509TrustManager`

All Known Implementing Classes:
:   `X509ExtendedTrustManager`

---

public interface TrustManager

This is the base interface for JSSE trust managers.

`TrustManager`s are responsible for managing the trust material
that is used when making trust decisions, and for deciding whether
credentials presented by a peer should be accepted.

`TrustManager`s are created by either
using a `TrustManagerFactory`,
or by implementing one of the `TrustManager` subclasses.

Since:
:   1.4

See Also:
:   * [`TrustManagerFactory`](TrustManagerFactory.md "class in javax.net.ssl")