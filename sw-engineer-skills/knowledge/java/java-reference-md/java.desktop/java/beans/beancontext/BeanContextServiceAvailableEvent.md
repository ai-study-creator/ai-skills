Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Class BeanContextServiceAvailableEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.beans.beancontext.BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

java.beans.beancontext.BeanContextServiceAvailableEvent

All Implemented Interfaces:
:   `Serializable`

---

public class BeanContextServiceAvailableEvent
extends [BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

This event type is used by the BeanContextServicesListener in order to
identify the service being registered.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.beans.beancontext.BeanContextServiceAvailableEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Class<?>`

  `serviceClass`

  A `Class` reference to the newly available service

  ### Fields inherited from class java.beans.beancontext.[BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

  `propagatedFrom`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BeanContextServiceAvailableEvent(BeanContextServices bcs,
  Class<?> sc)`

  Construct a `BeanContextAvailableServiceEvent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Iterator<?>`

  `getCurrentServiceSelectors()`

  Gets the list of service dependent selectors.

  `Class<?>`

  `getServiceClass()`

  Gets the service class that is the subject of this notification.

  `BeanContextServices`

  `getSourceAsBeanContextServices()`

  Gets the source as a reference of type `BeanContextServices`.

  ### Methods inherited from class java.beans.beancontext.[BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

  `getBeanContext, getPropagatedFrom, isPropagated, setPropagatedFrom`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### serviceClass

    protected [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> serviceClass

    A `Class` reference to the newly available service
* ## Constructor Details

  + ### BeanContextServiceAvailableEvent

    public BeanContextServiceAvailableEvent([BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext") bcs,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> sc)

    Construct a `BeanContextAvailableServiceEvent`.

    Parameters:
    :   `bcs` - The context in which the service has become available
    :   `sc` - A `Class` reference to the newly available service
* ## Method Details

  + ### getSourceAsBeanContextServices

    public [BeanContextServices](BeanContextServices.md "interface in java.beans.beancontext") getSourceAsBeanContextServices()

    Gets the source as a reference of type `BeanContextServices`.

    Returns:
    :   The context in which the service has become available
  + ### getServiceClass

    public [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> getServiceClass()

    Gets the service class that is the subject of this notification.

    Returns:
    :   A `Class` reference to the newly available service
  + ### getCurrentServiceSelectors

    public [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<?> getCurrentServiceSelectors()

    Gets the list of service dependent selectors.

    Returns:
    :   the current selectors available from the service