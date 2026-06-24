Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Interface BeanContextServices

All Superinterfaces:
:   `BeanContext`, `BeanContextChild`, `BeanContextServiceRevokedListener`, `BeanContextServicesListener`, `Collection`, `DesignMode`, `EventListener`, `Iterable`, `Visibility`

All Known Implementing Classes:
:   `BeanContextServicesSupport`

---

public interface BeanContextServices
extends [BeanContext](BeanContext.md "interface in java.beans.beancontext"), [BeanContextServicesListener](BeanContextServicesListener.md "interface in java.beans.beancontext")

The BeanContextServices interface provides a mechanism for a BeanContext
to expose generic "services" to the BeanContextChild objects within.

* ## Field Summary

  ### Fields inherited from interface java.beans.beancontext.[BeanContext](BeanContext.md "interface in java.beans.beancontext")

  `globalHierarchyLock`

  ### Fields inherited from interface java.beans.[DesignMode](../DesignMode.md "interface in java.beans")

  `PROPERTYNAME`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addBeanContextServicesListener(BeanContextServicesListener bcsl)`

  Adds a `BeanContextServicesListener` to this BeanContext

  `boolean`

  `addService(Class<?> serviceClass,
  BeanContextServiceProvider serviceProvider)`

  Adds a service to this BeanContext.

  `Iterator<?>`

  `getCurrentServiceClasses()`

  Gets the currently available services for this context.

  `Iterator<?>`

  `getCurrentServiceSelectors(Class<?> serviceClass)`

  Gets the list of service dependent service parameters
  (Service Selectors) for the specified service, by
  calling getCurrentServiceSelectors() on the
  underlying BeanContextServiceProvider.

  `Object`

  `getService(BeanContextChild child,
  Object requestor,
  Class<?> serviceClass,
  Object serviceSelector,
  BeanContextServiceRevokedListener bcsrl)`

  A `BeanContextChild`, or any arbitrary object
  associated with a `BeanContextChild`, may obtain
  a reference to a currently registered service from its
  nesting `BeanContextServices`
  via invocation of this method.

  `boolean`

  `hasService(Class<?> serviceClass)`

  Reports whether or not a given service is
  currently available from this context.

  `void`

  `releaseService(BeanContextChild child,
  Object requestor,
  Object service)`

  Releases a `BeanContextChild`'s
  (or any arbitrary object associated with a BeanContextChild)
  reference to the specified service by calling releaseService()
  on the underlying `BeanContextServiceProvider`.

  `void`

  `removeBeanContextServicesListener(BeanContextServicesListener bcsl)`

  Removes a `BeanContextServicesListener`
  from this `BeanContext`

  `void`

  `revokeService(Class<?> serviceClass,
  BeanContextServiceProvider serviceProvider,
  boolean revokeCurrentServicesNow)`

  BeanContextServiceProviders wishing to remove
  a currently registered service from this context
  may do so via invocation of this method.

  ### Methods inherited from interface java.beans.beancontext.[BeanContext](BeanContext.md "interface in java.beans.beancontext")

  `addBeanContextMembershipListener, getResource, getResourceAsStream, instantiateChild, removeBeanContextMembershipListener`

  ### Methods inherited from interface java.beans.beancontext.[BeanContextChild](BeanContextChild.md "interface in java.beans.beancontext")

  `addPropertyChangeListener, addVetoableChangeListener, getBeanContext, removePropertyChangeListener, removeVetoableChangeListener, setBeanContext`

  ### Methods inherited from interface java.beans.beancontext.[BeanContextServiceRevokedListener](BeanContextServiceRevokedListener.md "interface in java.beans.beancontext")

  `serviceRevoked`

  ### Methods inherited from interface java.beans.beancontext.[BeanContextServicesListener](BeanContextServicesListener.md "interface in java.beans.beancontext")

  `serviceAvailable`

  ### Methods inherited from interface java.util.[Collection](../../../../java.base/java/util/Collection.md "interface in java.util")

  `add, addAll, clear, contains, containsAll, equals, hashCode, isEmpty, iterator, parallelStream, remove, removeAll, removeIf, retainAll, size, spliterator, stream, toArray, toArray, toArray`

  ### Methods inherited from interface java.beans.[DesignMode](../DesignMode.md "interface in java.beans")

  `isDesignTime, setDesignTime`

  ### Methods inherited from interface java.lang.[Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach`

  ### Methods inherited from interface java.beans.[Visibility](../Visibility.md "interface in java.beans")

  `avoidingGui, dontUseGui, needsGui, okToUseGui`

* ## Method Details

  + ### addService

    boolean addService([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass,
    [BeanContextServiceProvider](BeanContextServiceProvider.md "interface in java.beans.beancontext") serviceProvider)

    Adds a service to this BeanContext.
    `BeanContextServiceProvider`s call this method
    to register a particular service with this context.
    If the service has not previously been added, the
    `BeanContextServices` associates
    the service with the `BeanContextServiceProvider` and
    fires a `BeanContextServiceAvailableEvent` to all
    currently registered `BeanContextServicesListeners`.
    The method then returns `true`, indicating that
    the addition of the service was successful.
    If the given service has already been added, this method
    simply returns `false`.

    Parameters:
    :   `serviceClass` - the service to add
    :   `serviceProvider` - the `BeanContextServiceProvider`
        associated with the service

    Returns:
    :   true if the service was successful added, false otherwise
  + ### revokeService

    void revokeService([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass,
    [BeanContextServiceProvider](BeanContextServiceProvider.md "interface in java.beans.beancontext") serviceProvider,
    boolean revokeCurrentServicesNow)

    BeanContextServiceProviders wishing to remove
    a currently registered service from this context
    may do so via invocation of this method. Upon revocation of
    the service, the `BeanContextServices` fires a
    `BeanContextServiceRevokedEvent` to its
    list of currently registered
    `BeanContextServiceRevokedListeners` and
    `BeanContextServicesListeners`.

    Parameters:
    :   `serviceClass` - the service to revoke from this BeanContextServices
    :   `serviceProvider` - the BeanContextServiceProvider associated with
        this particular service that is being revoked
    :   `revokeCurrentServicesNow` - a value of `true`
        indicates an exceptional circumstance where the
        `BeanContextServiceProvider` or
        `BeanContextServices` wishes to immediately
        terminate service to all currently outstanding references
        to the specified service.
  + ### hasService

    boolean hasService([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass)

    Reports whether or not a given service is
    currently available from this context.

    Parameters:
    :   `serviceClass` - the service in question

    Returns:
    :   true if the service is available
  + ### getService

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getService([BeanContextChild](BeanContextChild.md "interface in java.beans.beancontext") child,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") requestor,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") serviceSelector,
    [BeanContextServiceRevokedListener](BeanContextServiceRevokedListener.md "interface in java.beans.beancontext") bcsrl)
    throws [TooManyListenersException](../../../../java.base/java/util/TooManyListenersException.md "class in java.util")

    A `BeanContextChild`, or any arbitrary object
    associated with a `BeanContextChild`, may obtain
    a reference to a currently registered service from its
    nesting `BeanContextServices`
    via invocation of this method. When invoked, this method
    gets the service by calling the getService() method on the
    underlying `BeanContextServiceProvider`.

    Parameters:
    :   `child` - the `BeanContextChild`
        associated with this request
    :   `requestor` - the object requesting the service
    :   `serviceClass` - class of the requested service
    :   `serviceSelector` - the service dependent parameter
    :   `bcsrl` - the
        `BeanContextServiceRevokedListener` to notify
        if the service should later become revoked

    Returns:
    :   a reference to this context's named
        Service as requested or `null`

    Throws:
    :   `TooManyListenersException` - if there are too many listeners
  + ### releaseService

    void releaseService([BeanContextChild](BeanContextChild.md "interface in java.beans.beancontext") child,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") requestor,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") service)

    Releases a `BeanContextChild`'s
    (or any arbitrary object associated with a BeanContextChild)
    reference to the specified service by calling releaseService()
    on the underlying `BeanContextServiceProvider`.

    Parameters:
    :   `child` - the `BeanContextChild`
    :   `requestor` - the requestor
    :   `service` - the service
  + ### getCurrentServiceClasses

    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<?> getCurrentServiceClasses()

    Gets the currently available services for this context.

    Returns:
    :   an `Iterator` consisting of the
        currently available services
  + ### getCurrentServiceSelectors

    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<?> getCurrentServiceSelectors([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass)

    Gets the list of service dependent service parameters
    (Service Selectors) for the specified service, by
    calling getCurrentServiceSelectors() on the
    underlying BeanContextServiceProvider.

    Parameters:
    :   `serviceClass` - the specified service

    Returns:
    :   the currently available service selectors
        for the named serviceClass
  + ### addBeanContextServicesListener

    void addBeanContextServicesListener([BeanContextServicesListener](BeanContextServicesListener.md "interface in java.beans.beancontext") bcsl)

    Adds a `BeanContextServicesListener` to this BeanContext

    Parameters:
    :   `bcsl` - the `BeanContextServicesListener` to add
  + ### removeBeanContextServicesListener

    void removeBeanContextServicesListener([BeanContextServicesListener](BeanContextServicesListener.md "interface in java.beans.beancontext") bcsl)

    Removes a `BeanContextServicesListener`
    from this `BeanContext`

    Parameters:
    :   `bcsl` - the `BeanContextServicesListener`
        to remove from this context