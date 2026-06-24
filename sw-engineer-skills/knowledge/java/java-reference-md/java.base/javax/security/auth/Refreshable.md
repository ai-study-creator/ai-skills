Module [java.base](../../../module-summary.md)

Package [javax.security.auth](package-summary.md)

# Interface Refreshable

All Known Implementing Classes:
:   `KerberosTicket`

---

public interface Refreshable

Objects such as credentials may optionally implement this
interface to provide the capability to refresh itself.
For example, a credential with a particular time-restricted lifespan
may implement this interface to allow callers to refresh the time period
for which it is valid.

Since:
:   1.4

See Also:
:   * [`Subject`](Subject.md "class in javax.security.auth")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isCurrent()`

  Determine if this `Object` is current.

  `void`

  `refresh()`

  Update or extend the validity period for this
  `Object`.

* ## Method Details

  + ### isCurrent

    boolean isCurrent()

    Determine if this `Object` is current.

    Returns:
    :   true if this `Object` is currently current,
        false otherwise.
  + ### refresh

    void refresh()
    throws [RefreshFailedException](RefreshFailedException.md "class in javax.security.auth")

    Update or extend the validity period for this
    `Object`.

    Throws:
    :   `SecurityException` - if the caller does not have permission
        to update or extend the validity period for this
        `Object`.
    :   `RefreshFailedException` - if the refresh attempt failed.