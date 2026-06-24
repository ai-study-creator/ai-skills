Module [java.management](../../../module-summary.md)

Package [javax.management.loading](package-summary.md)

# Interface PrivateClassLoader

All Known Implementing Classes:
:   `PrivateMLet`

---

public interface PrivateClassLoader

Marker interface indicating that a ClassLoader should not be added
to the [`ClassLoaderRepository`](ClassLoaderRepository.md "interface in javax.management.loading"). When a ClassLoader is
registered as an MBean in the MBean server, it is added to the
MBean server's ClassLoaderRepository unless it implements this
interface.

Since:
:   1.5