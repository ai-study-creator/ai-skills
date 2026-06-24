Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class SwingPropertyChangeSupport

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.beans.PropertyChangeSupport](../../../java/beans/PropertyChangeSupport.md "class in java.beans")

javax.swing.event.SwingPropertyChangeSupport

All Implemented Interfaces:
:   `Serializable`

---

public final class SwingPropertyChangeSupport
extends [PropertyChangeSupport](../../../java/beans/PropertyChangeSupport.md "class in java.beans")

This subclass of `java.beans.PropertyChangeSupport` is almost
identical in functionality. The only difference is if constructed with
`SwingPropertyChangeSupport(sourceBean, true)` it ensures
listeners are only ever notified on the *Event Dispatch Thread*.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SwingPropertyChangeSupport(Object sourceBean)`

  Constructs a SwingPropertyChangeSupport object.

  `SwingPropertyChangeSupport(Object sourceBean,
  boolean notifyOnEDT)`

  Constructs a SwingPropertyChangeSupport object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `firePropertyChange(PropertyChangeEvent evt)`

  Fires a property change event to listeners
  that have been registered to track updates of
  all properties or a property with the specified name.

  `boolean`

  `isNotifyOnEDT()`

  Returns `notifyOnEDT` property.

  ### Methods inherited from class java.beans.[PropertyChangeSupport](../../../java/beans/PropertyChangeSupport.md "class in java.beans")

  `addPropertyChangeListener, addPropertyChangeListener, fireIndexedPropertyChange, fireIndexedPropertyChange, fireIndexedPropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getPropertyChangeListeners, getPropertyChangeListeners, hasListeners, removePropertyChangeListener, removePropertyChangeListener`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SwingPropertyChangeSupport

    public SwingPropertyChangeSupport([Object](../../../../java.base/java/lang/Object.md "class in java.lang") sourceBean)

    Constructs a SwingPropertyChangeSupport object.

    Parameters:
    :   `sourceBean` - The bean to be given as the source for any
        events.

    Throws:
    :   `NullPointerException` - if `sourceBean` is
        `null`
  + ### SwingPropertyChangeSupport

    public SwingPropertyChangeSupport([Object](../../../../java.base/java/lang/Object.md "class in java.lang") sourceBean,
    boolean notifyOnEDT)

    Constructs a SwingPropertyChangeSupport object.

    Parameters:
    :   `sourceBean` - the bean to be given as the source for any events
    :   `notifyOnEDT` - whether to notify listeners on the *Event
        Dispatch Thread* only

    Throws:
    :   `NullPointerException` - if `sourceBean` is
        `null`

    Since:
    :   1.6
* ## Method Details

  + ### firePropertyChange

    public void firePropertyChange([PropertyChangeEvent](../../../java/beans/PropertyChangeEvent.md "class in java.beans") evt)

    Fires a property change event to listeners
    that have been registered to track updates of
    all properties or a property with the specified name.

    No event is fired if the given event's old and new values are equal and non-null.

    If [`isNotifyOnEDT()`](#isNotifyOnEDT()) is `true` and called off the
    *Event Dispatch Thread* this implementation uses
    `SwingUtilities.invokeLater` to send out the notification
    on the *Event Dispatch Thread*. This ensures listeners
    are only ever notified on the *Event Dispatch Thread*.

    Overrides:
    :   `firePropertyChange` in class `PropertyChangeSupport`

    Parameters:
    :   `evt` - the `PropertyChangeEvent` to be fired

    Throws:
    :   `NullPointerException` - if `evt` is
        `null`

    Since:
    :   1.6
  + ### isNotifyOnEDT

    public boolean isNotifyOnEDT()

    Returns `notifyOnEDT` property.

    Returns:
    :   `notifyOnEDT` property

    Since:
    :   1.6

    See Also:
    :   - [`SwingPropertyChangeSupport(Object sourceBean, boolean notifyOnEDT)`](#%3Cinit%3E(java.lang.Object,boolean))