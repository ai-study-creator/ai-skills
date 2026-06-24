Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Interface BeanContextServiceRevokedListener

All Superinterfaces:
:   `EventListener`

All Known Subinterfaces:
:   `BeanContextServices`, `BeanContextServicesListener`

All Known Implementing Classes:
:   `BeanContextChildSupport`, `BeanContextServicesSupport`, `BeanContextServicesSupport.BCSSProxyServiceProvider`, `BeanContextSupport`

---

public interface BeanContextServiceRevokedListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving
`BeanContextServiceRevokedEvent` objects. A class that is
interested in processing a `BeanContextServiceRevokedEvent`
implements this interface.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `serviceRevoked(BeanContextServiceRevokedEvent bcsre)`

  The service named has been revoked.

* ## Method Details

  + ### serviceRevoked

    void serviceRevoked([BeanContextServiceRevokedEvent](BeanContextServiceRevokedEvent.md "class in java.beans.beancontext") bcsre)

    The service named has been revoked. getService requests for
    this service will no longer be satisfied.

    Parameters:
    :   `bcsre` - the `BeanContextServiceRevokedEvent` received
        by this listener.