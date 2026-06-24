Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class PropertyChangeListenerProxy

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventListenerProxy](../../../java.base/java/util/EventListenerProxy.md "class in java.util")<[PropertyChangeListener](PropertyChangeListener.md "interface in java.beans")>

java.beans.PropertyChangeListenerProxy

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

---

public class PropertyChangeListenerProxy
extends [EventListenerProxy](../../../java.base/java/util/EventListenerProxy.md "class in java.util")<[PropertyChangeListener](PropertyChangeListener.md "interface in java.beans")>
implements [PropertyChangeListener](PropertyChangeListener.md "interface in java.beans")

A class which extends the `EventListenerProxy`
specifically for adding a `PropertyChangeListener`
with a "bound" property.
Instances of this class can be added
as `PropertyChangeListener`s to a bean
which supports firing property change events.

If the object has a `getPropertyChangeListeners` method
then the array returned could be a mixture of `PropertyChangeListener`
and `PropertyChangeListenerProxy` objects.

Since:
:   1.4

See Also:
:   * [`EventListenerProxy`](../../../java.base/java/util/EventListenerProxy.md "class in java.util")
    * [`PropertyChangeSupport.getPropertyChangeListeners()`](PropertyChangeSupport.md#getPropertyChangeListeners())

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PropertyChangeListenerProxy(String propertyName,
  PropertyChangeListener listener)`

  Constructor which binds the `PropertyChangeListener`
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

  `propertyChange(PropertyChangeEvent event)`

  Forwards the property change event to the listener delegate.

  ### Methods inherited from class java.util.[EventListenerProxy](../../../java.base/java/util/EventListenerProxy.md "class in java.util")

  `getListener`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PropertyChangeListenerProxy

    public PropertyChangeListenerProxy([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [PropertyChangeListener](PropertyChangeListener.md "interface in java.beans") listener)

    Constructor which binds the `PropertyChangeListener`
    to a specific property.

    Parameters:
    :   `propertyName` - the name of the property to listen on
    :   `listener` - the listener object
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans") event)

    Forwards the property change event to the listener delegate.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `event` - the property change event
  + ### getPropertyName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getPropertyName()

    Returns the name of the named property associated with the listener.

    Returns:
    :   the name of the named property associated with the listener