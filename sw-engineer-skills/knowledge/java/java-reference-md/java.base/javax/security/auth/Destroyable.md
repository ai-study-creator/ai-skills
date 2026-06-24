Module [java.base](../../../module-summary.md)

Package [javax.security.auth](package-summary.md)

# Interface Destroyable

All Known Subinterfaces:
:   `DHPrivateKey`, `DSAPrivateKey`, `ECPrivateKey`, `EdECPrivateKey`, `PBEKey`, `PrivateKey`, `RSAMultiPrimePrivateCrtKey`, `RSAPrivateCrtKey`, `RSAPrivateKey`, `SecretKey`, `XECPrivateKey`

All Known Implementing Classes:
:   `EncryptionKey`, `KerberosCredMessage`, `KerberosKey`, `KerberosTicket`, `KeyStore.PasswordProtection`, `SecretKeySpec`, `X500PrivateCredential`

---

public interface Destroyable

Objects such as credentials may optionally implement this interface
to provide the capability to destroy its contents.

Since:
:   1.4

See Also:
:   * [`Subject`](Subject.md "class in javax.security.auth")

* ## Method Summary

  All MethodsInstance MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default void`

  `destroy()`

  Destroy this `Object`.

  `default boolean`

  `isDestroyed()`

  Determine if this `Object` has been destroyed.

* ## Method Details

  + ### destroy

    default void destroy()
    throws [DestroyFailedException](DestroyFailedException.md "class in javax.security.auth")

    Destroy this `Object`.

    Sensitive information associated with this `Object`
    is destroyed or cleared. Subsequent calls to certain methods
    on this `Object` will result in an
    `IllegalStateException` being thrown.

    Throws:
    :   `DestroyFailedException` - if the destroy operation fails.
    :   `SecurityException` - if the caller does not have permission
        to destroy this `Object`.
  + ### isDestroyed

    default boolean isDestroyed()

    Determine if this `Object` has been destroyed.

    Returns:
    :   true if this `Object` has been destroyed,
        false otherwise.