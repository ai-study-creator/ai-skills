Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Class BeanContextServicesSupport.BCSSProxyServiceProvider

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.beancontext.BeanContextServicesSupport.BCSSProxyServiceProvider

All Implemented Interfaces:
:   `BeanContextServiceProvider`, `BeanContextServiceRevokedListener`, `EventListener`

Enclosing class:
:   `BeanContextServicesSupport`

---

protected class BeanContextServicesSupport.BCSSProxyServiceProvider
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [BeanContextServiceProvider](BeanContextServiceProvider.md "interface in java.beans.beancontext"), [BeanContextServiceRevokedListener](BeanContextServiceRevokedListener.md "interface in java.beans.beancontext")

Subclasses may subclass this nested class to represent a proxy for
each BeanContextServiceProvider.

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Iterator<?>`

  `getCurrentServiceSelectors(BeanContextServices bcs,
  Class<?> serviceClass)`

  Invoked by `BeanContextServices`, this method
  gets the current service selectors for the specified service.

  `Object`

  `getService(BeanContextServices bcs,
  Object requestor,
  Class<?> serviceClass,
  Object serviceSelector)`

  Invoked by `BeanContextServices`, this method
  requests an instance of a
  service from this `BeanContextServiceProvider`.

  `void`

  `releaseService(BeanContextServices bcs,
  Object requestor,
  Object service)`

  Invoked by `BeanContextServices`,
  this method releases a nested `BeanContextChild`'s
  (or any arbitrary object associated with a
  `BeanContextChild`) reference to the specified service.

  `void`

  `serviceRevoked(BeanContextServiceRevokedEvent bcsre)`

  The service named has been revoked.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getService

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getService([BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext") bcs,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") requestor,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") serviceSelector)

    Description copied from interface: `BeanContextServiceProvider`

    Invoked by `BeanContextServices`, this method
    requests an instance of a
    service from this `BeanContextServiceProvider`.

    Specified by:
    :   `getService` in interface `BeanContextServiceProvider`

    Parameters:
    :   `bcs` - The `BeanContextServices` associated with this
        particular request. This parameter enables the
        `BeanContextServiceProvider` to distinguish service
        requests from multiple sources.
    :   `requestor` - The object requesting the service
    :   `serviceClass` - The service requested
    :   `serviceSelector` - the service dependent parameter
        for a particular service, or `null` if not applicable.

    Returns:
    :   a reference to the requested service
  + ### releaseService

    public void releaseService([BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext") bcs,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") requestor,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") service)

    Description copied from interface: `BeanContextServiceProvider`

    Invoked by `BeanContextServices`,
    this method releases a nested `BeanContextChild`'s
    (or any arbitrary object associated with a
    `BeanContextChild`) reference to the specified service.

    Specified by:
    :   `releaseService` in interface `BeanContextServiceProvider`

    Parameters:
    :   `bcs` - the `BeanContextServices` associated with this
        particular release request
    :   `requestor` - the object requesting the service to be released
    :   `service` - the service that is to be released
  + ### getCurrentServiceSelectors

    public [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<?> getCurrentServiceSelectors([BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext") bcs,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass)

    Description copied from interface: `BeanContextServiceProvider`

    Invoked by `BeanContextServices`, this method
    gets the current service selectors for the specified service.
    A service selector is a service specific parameter,
    typical examples of which could include: a
    parameter to a constructor for the service implementation class,
    a value for a particular service's property, or a key into a
    map of existing implementations.

    Specified by:
    :   `getCurrentServiceSelectors` in interface `BeanContextServiceProvider`

    Parameters:
    :   `bcs` - the `BeanContextServices` for this request
    :   `serviceClass` - the specified service

    Returns:
    :   the current service selectors for the specified serviceClass
  + ### serviceRevoked

    public void serviceRevoked([BeanContextServiceRevokedEvent](BeanContextServiceRevokedEvent.md "class in java.beans.beancontext") bcsre)

    Description copied from interface: `BeanContextServiceRevokedListener`

    The service named has been revoked. getService requests for
    this service will no longer be satisfied.

    Specified by:
    :   `serviceRevoked` in interface `BeanContextServiceRevokedListener`

    Parameters:
    :   `bcsre` - the `BeanContextServiceRevokedEvent` received
        by this listener.