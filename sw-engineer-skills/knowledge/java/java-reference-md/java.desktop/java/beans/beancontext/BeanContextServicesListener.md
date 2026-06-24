Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Interface BeanContextServicesListener

All Superinterfaces:
:   `BeanContextServiceRevokedListener`, `EventListener`

All Known Subinterfaces:
:   `BeanContextServices`

All Known Implementing Classes:
:   `BeanContextChildSupport`, `BeanContextServicesSupport`, `BeanContextSupport`

---

public interface BeanContextServicesListener
extends [BeanContextServiceRevokedListener](BeanContextServiceRevokedListener.md "interface in java.beans.beancontext")

The listener interface for receiving
`BeanContextServiceAvailableEvent` objects.
A class that is interested in processing a
`BeanContextServiceAvailableEvent` implements this interface.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `serviceAvailable(BeanContextServiceAvailableEvent bcsae)`

  The service named has been registered.

  ### Methods inherited from interface java.beans.beancontext.[BeanContextServiceRevokedListener](BeanContextServiceRevokedListener.md "interface in java.beans.beancontext")

  `serviceRevoked`

* ## Method Details

  + ### serviceAvailable

    void serviceAvailable([BeanContextServiceAvailableEvent](BeanContextServiceAvailableEvent.md "class in java.beans.beancontext") bcsae)

    The service named has been registered. getService requests for
    this service may now be made.

    Parameters:
    :   `bcsae` - the `BeanContextServiceAvailableEvent`