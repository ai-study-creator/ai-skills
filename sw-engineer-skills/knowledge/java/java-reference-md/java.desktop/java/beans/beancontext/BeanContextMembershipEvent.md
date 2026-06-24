Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Class BeanContextMembershipEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.beans.beancontext.BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

java.beans.beancontext.BeanContextMembershipEvent

All Implemented Interfaces:
:   `Serializable`

---

public class BeanContextMembershipEvent
extends [BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

A `BeanContextMembershipEvent` encapsulates
the list of children added to, or removed from,
the membership of a particular `BeanContext`.
An instance of this event is fired whenever a successful
add(), remove(), retainAll(), removeAll(), or clear() is
invoked on a given `BeanContext` instance.
Objects interested in receiving events of this type must
implement the `BeanContextMembershipListener`
interface, and must register their intent via the
`BeanContext`'s
`addBeanContextMembershipListener(BeanContextMembershipListener bcml)`
method.

Since:
:   1.2

See Also:
:   * [`BeanContext`](BeanContext.md "interface in java.beans.beancontext")
    * [`BeanContextEvent`](BeanContextEvent.md "class in java.beans.beancontext")
    * [`BeanContextMembershipListener`](BeanContextMembershipListener.md "interface in java.beans.beancontext")
    * [Serialized Form](../../../../serialized-form.md#java.beans.beancontext.BeanContextMembershipEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Collection`

  `children`

  The list of children affected by this
  event notification.

  ### Fields inherited from class java.beans.beancontext.[BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

  `propagatedFrom`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BeanContextMembershipEvent(BeanContext bc,
  Object[] changes)`

  Construct a BeanContextMembershipEvent

  `BeanContextMembershipEvent(BeanContext bc,
  Collection changes)`

  Construct a BeanContextMembershipEvent
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `contains(Object child)`

  Is the child specified affected by the event?

  `Iterator`

  `iterator()`

  Gets the array of children affected by this event.

  `int`

  `size()`

  Gets the number of children affected by the notification.

  `Object[]`

  `toArray()`

  Gets the array of children affected by this event.

  ### Methods inherited from class java.beans.beancontext.[BeanContextEvent](BeanContextEvent.md "class in java.beans.beancontext")

  `getBeanContext, getPropagatedFrom, isPropagated, setPropagatedFrom`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### children

    protected [Collection](../../../../java.base/java/util/Collection.md "interface in java.util") children

    The list of children affected by this
    event notification.
* ## Constructor Details

  + ### BeanContextMembershipEvent

    public BeanContextMembershipEvent([BeanContext](BeanContext.md "interface in java.beans.beancontext") bc,
    [Collection](../../../../java.base/java/util/Collection.md "interface in java.util") changes)

    Construct a BeanContextMembershipEvent

    Parameters:
    :   `bc` - The BeanContext source
    :   `changes` - The Children affected

    Throws:
    :   `NullPointerException` - if `changes` is `null`
  + ### BeanContextMembershipEvent

    public BeanContextMembershipEvent([BeanContext](BeanContext.md "interface in java.beans.beancontext") bc,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] changes)

    Construct a BeanContextMembershipEvent

    Parameters:
    :   `bc` - The BeanContext source
    :   `changes` - The Children effected

    Throws:
    :   `NullPointerException` - if changes associated with this
        event are null.
* ## Method Details

  + ### size

    public int size()

    Gets the number of children affected by the notification.

    Returns:
    :   the number of children affected by the notification
  + ### contains

    public boolean contains([Object](../../../../java.base/java/lang/Object.md "class in java.lang") child)

    Is the child specified affected by the event?

    Parameters:
    :   `child` - the object to check for being affected

    Returns:
    :   `true` if affected, `false`
        if not
  + ### toArray

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] toArray()

    Gets the array of children affected by this event.

    Returns:
    :   the array of children affected
  + ### iterator

    public [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util") iterator()

    Gets the array of children affected by this event.

    Returns:
    :   the array of children effected