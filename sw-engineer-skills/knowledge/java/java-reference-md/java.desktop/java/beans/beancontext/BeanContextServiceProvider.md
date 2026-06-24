Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Interface BeanContextServiceProvider

All Known Implementing Classes:
:   `BeanContextServicesSupport.BCSSProxyServiceProvider`

---

public interface BeanContextServiceProvider

One of the primary functions of a BeanContext is to act a as rendezvous
between JavaBeans, and BeanContextServiceProviders.

A JavaBean nested within a BeanContext, may ask that BeanContext to
provide an instance of a "service", based upon a reference to a Java
Class object that represents that service.

If such a service has been registered with the context, or one of its
nesting context's, in the case where a context delegate to its context
to satisfy a service request, then the BeanContextServiceProvider associated with
the service is asked to provide an instance of that service.

The ServcieProvider may always return the same instance, or it may
construct a new instance for each request.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

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

* ## Method Details

  + ### getService

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getService([BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext") bcs,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") requestor,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") serviceSelector)

    Invoked by `BeanContextServices`, this method
    requests an instance of a
    service from this `BeanContextServiceProvider`.

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

    void releaseService([BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext") bcs,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") requestor,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") service)

    Invoked by `BeanContextServices`,
    this method releases a nested `BeanContextChild`'s
    (or any arbitrary object associated with a
    `BeanContextChild`) reference to the specified service.

    Parameters:
    :   `bcs` - the `BeanContextServices` associated with this
        particular release request
    :   `requestor` - the object requesting the service to be released
    :   `service` - the service that is to be released
  + ### getCurrentServiceSelectors

    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<?> getCurrentServiceSelectors([BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext") bcs,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass)

    Invoked by `BeanContextServices`, this method
    gets the current service selectors for the specified service.
    A service selector is a service specific parameter,
    typical examples of which could include: a
    parameter to a constructor for the service implementation class,
    a value for a particular service's property, or a key into a
    map of existing implementations.

    Parameters:
    :   `bcs` - the `BeanContextServices` for this request
    :   `serviceClass` - the specified service

    Returns:
    :   the current service selectors for the specified serviceClass