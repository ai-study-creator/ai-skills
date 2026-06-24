Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Class BeanContextServiceRevokedEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.beans.beancontext.BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

java.beans.beancontext.BeanContextServiceRevokedEvent

All Implemented Interfaces:
:   `Serializable`

---

public class BeanContextServiceRevokedEvent
extends [BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

This event type is used by the
`BeanContextServiceRevokedListener` in order to
identify the service being revoked.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.beans.beancontext.BeanContextServiceRevokedEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Class<?>`

  `serviceClass`

  A `Class` reference to the service that is being revoked.

  ### Fields inherited from class java.beans.beancontext.[BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

  `propagatedFrom`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BeanContextServiceRevokedEvent(BeanContextServices bcs,
  Class<?> sc,
  boolean invalidate)`

  Construct a `BeanContextServiceEvent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Class<?>`

  `getServiceClass()`

  Gets the service class that is the subject of this notification

  `BeanContextServices`

  `getSourceAsBeanContextServices()`

  Gets the source as a reference of type `BeanContextServices`

  `boolean`

  `isCurrentServiceInvalidNow()`

  Reports if the current service is being forcibly revoked,
  in which case the references are now invalidated and unusable.

  `boolean`

  `isServiceClass(Class<?> service)`

  Checks this event to determine whether or not
  the service being revoked is of a particular class.

  ### Methods inherited from class java.beans.beancontext.[BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

  `getBeanContext, getPropagatedFrom, isPropagated, setPropagatedFrom`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### serviceClass

    protected [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass

    A `Class` reference to the service that is being revoked.
* ## Constructor Details

  + ### BeanContextServiceRevokedEvent

    public BeanContextServiceRevokedEvent([BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext") bcs,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> sc,
    boolean invalidate)

    Construct a `BeanContextServiceEvent`.

    Parameters:
    :   `bcs` - the `BeanContextServices`
        from which this service is being revoked
    :   `sc` - the service that is being revoked
    :   `invalidate` - `true` for immediate revocation
* ## Method Details

  + ### getSourceAsBeanContextServices

    public [BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext") getSourceAsBeanContextServices()

    Gets the source as a reference of type `BeanContextServices`

    Returns:
    :   the `BeanContextServices` from which
        this service is being revoked
  + ### getServiceClass

    public [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> getServiceClass()

    Gets the service class that is the subject of this notification

    Returns:
    :   A `Class` reference to the
        service that is being revoked
  + ### isServiceClass

    public boolean isServiceClass([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> service)

    Checks this event to determine whether or not
    the service being revoked is of a particular class.

    Parameters:
    :   `service` - the service of interest (should be non-null)

    Returns:
    :   `true` if the service being revoked is of the
        same class as the specified service
  + ### isCurrentServiceInvalidNow

    public boolean isCurrentServiceInvalidNow()

    Reports if the current service is being forcibly revoked,
    in which case the references are now invalidated and unusable.

    Returns:
    :   `true` if current service is being forcibly revoked