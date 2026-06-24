Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface KeyStore.LoadStoreParameter

All Known Implementing Classes:
:   `DomainLoadStoreParameter`

Enclosing class:
:   `KeyStore`

---

public static interface KeyStore.LoadStoreParameter

A marker interface for `KeyStore`
[`load`](KeyStore.md#load(java.security.KeyStore.LoadStoreParameter))
and
[`store`](KeyStore.md#store(java.security.KeyStore.LoadStoreParameter))
parameters.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `KeyStore.ProtectionParameter`

  `getProtectionParameter()`

  Gets the parameter used to protect keystore data.

* ## Method Details

  + ### getProtectionParameter

    [KeyStore.ProtectionParameter](KeyStore.ProtectionParameter.md "interface in java.security") getProtectionParameter()

    Gets the parameter used to protect keystore data.

    Returns:
    :   the parameter used to protect keystore data, or `null`