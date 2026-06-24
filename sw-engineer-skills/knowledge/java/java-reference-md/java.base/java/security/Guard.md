Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface Guard

All Known Implementing Classes:
:   `AllPermission`, `AudioPermission`, `AuthPermission`, `AWTPermission`, `BasicPermission`, `DelegationPermission`, `FilePermission`, `LinkPermission`, `LoggingPermission`, `ManagementPermission`, `MBeanPermission`, `MBeanServerPermission`, `MBeanTrustPermission`, `NetPermission`, `Permission`, `PrivateCredentialPermission`, `PropertyPermission`, `ReflectPermission`, `RuntimePermission`, `SecurityPermission`, `SerializablePermission`, `ServicePermission`, `SocketPermission`, `SQLPermission`, `SSLPermission`, `SubjectDelegationPermission`, `UnresolvedPermission`, `URLPermission`

---

public interface Guard

This interface represents a guard, which is an object that is used
to protect access to another object.

This interface contains a single method, `checkGuard`,
with a single `object` argument. `checkGuard` is
invoked (by the GuardedObject `getObject` method)
to determine whether to allow access to the object.

Since:
:   1.2

See Also:
:   * [`GuardedObject`](GuardedObject.md "class in java.security")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `checkGuard(Object object)`

  Determines whether to allow access to the guarded object
  `object`.

* ## Method Details

  + ### checkGuard

    void checkGuard([Object](../lang/Object.md "class in java.lang") object)
    throws [SecurityException](../lang/SecurityException.md "class in java.lang")

    Determines whether to allow access to the guarded object
    `object`. Returns silently if access is allowed.
    Otherwise, throws a `SecurityException`.

    Parameters:
    :   `object` - the object being protected by the guard.

    Throws:
    :   `SecurityException` - if access is denied.