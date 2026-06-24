Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface KeyStore.ProtectionParameter

All Known Implementing Classes:
:   `KeyStore.CallbackHandlerProtection`, `KeyStore.PasswordProtection`

Enclosing class:
:   `KeyStore`

---

public static interface KeyStore.ProtectionParameter

A marker interface for keystore protection parameters.

The information stored in a `ProtectionParameter`
object protects the contents of a keystore.
For example, protection parameters may be used to check
the integrity of keystore data, or to protect the
confidentiality of sensitive keystore data
(such as a `PrivateKey`).

Since:
:   1.5