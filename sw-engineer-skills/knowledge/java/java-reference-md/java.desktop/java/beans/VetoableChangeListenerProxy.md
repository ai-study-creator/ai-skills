Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class VetoableChangeListenerProxy

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventListenerProxy](../../../java.base/java/util/EventListenerProxy.md "class in java.util")<[VetoableChangeListener](VetoableChangeListener.md "interface in java.beans")>

java.beans.VetoableChangeListenerProxy

All Implemented Interfaces:
:   `VetoableChangeListener`, `EventListener`

---

public class VetoableChangeListenerProxy
extends [EventListenerProxy](../../../java.base/java/util/EventListenerProxy.md "class in java.util")<[VetoableChangeListener](VetoableChangeListener.md "interface in java.beans")>
implements [VetoableChangeListener](VetoableChangeListener.md "interface in java.beans")

A class which extends the `EventListenerProxy`
specifically for adding a `VetoableChangeListener`
with a "constrained" property.
Instances of this class can be added
as `VetoableChangeListener`s to a bean
which supports firing vetoable change events.

If the object has a `getVetoableChangeListeners` method
then the array returned could be a mixture of `VetoableChangeListener`
and `VetoableChangeListenerProxy` objects.

Since:
:   1.4

See Also:
:   * [`EventListenerProxy`](../../../java.base/java/util/EventListenerProxy.md "class in java.util")
    * [`VetoableChangeSupport.getVetoableChangeListeners()`](VetoableChangeSupport.md#getVetoableChangeListeners())

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `VetoableChangeListenerProxy(String propertyName,
  VetoableChangeListener listener)`

  Constructor which binds the `VetoableChangeListener`
  to a specific property.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getPropertyName()`

  Returns the name of the named property associated with the listener.

  `void`

  `vetoableChange(PropertyChangeEvent event)`

  Forwards the property change event to the listener delegate.

  ### Methods inherited from class java.util.[EventListenerProxy](../../../java.base/java/util/EventListenerProxy.md "class in java.util")

  `getListener`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### VetoableChangeListenerProxy

    public VetoableChangeListenerProxy([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [VetoableChangeListener](VetoableChangeListener.md "interface in java.beans") listener)

    Constructor which binds the `VetoableChangeListener`
    to a specific property.

    Parameters:
    :   `propertyName` - the name of the property to listen on
    :   `listener` - the listener object
* ## Method Details

  + ### vetoableChange

    public void vetoableChange([PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans") event)
    throws [PropertyVetoException](PropertyVetoException.md "class in java.beans")

    Forwards the property change event to the listener delegate.

    Specified by:
    :   `vetoableChange` in interface `VetoableChangeListener`

    Parameters:
    :   `event` - the property change event

    Throws:
    :   `PropertyVetoException` - if the recipient wishes the property
        change to be rolled back
  + ### getPropertyName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getPropertyName()

    Returns the name of the named property associated with the listener.

    Returns:
    :   the name of the named property associated with the listener