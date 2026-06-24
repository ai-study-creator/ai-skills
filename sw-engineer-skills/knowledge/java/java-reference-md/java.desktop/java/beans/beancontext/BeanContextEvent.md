Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Class BeanContextEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

java.beans.beancontext.BeanContextEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `BeanContextMembershipEvent`, `BeanContextServiceAvailableEvent`, `BeanContextServiceRevokedEvent`

---

public abstract class BeanContextEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

`BeanContextEvent` is the abstract root event class
for all events emitted
from, and pertaining to the semantics of, a `BeanContext`.
This class introduces a mechanism to allow the propagation of
`BeanContextEvent` subclasses through a hierarchy of
`BeanContext`s. The `setPropagatedFrom()`
and `getPropagatedFrom()` methods allow a
`BeanContext` to identify itself as the source
of a propagated event.

Since:
:   1.2

See Also:
:   * [`BeanContext`](BeanContext.md "interface in java.beans.beancontext")
    * [Serialized Form](../../../../serialized-form.md#java.beans.beancontext.BeanContextEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected BeanContext`

  `propagatedFrom`

  The `BeanContext` from which this event was propagated

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `BeanContextEvent(BeanContext bc)`

  Construct a BeanContextEvent
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BeanContext`

  `getBeanContext()`

  Gets the `BeanContext` associated with this event.

  `BeanContext`

  `getPropagatedFrom()`

  Gets the `BeanContext` from which this event was propagated.

  `boolean`

  `isPropagated()`

  Reports whether or not this event is
  propagated from some other `BeanContext`.

  `void`

  `setPropagatedFrom(BeanContext bc)`

  Sets the `BeanContext` from which this event was propagated.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### propagatedFrom

    protected [BeanContext](BeanContext.md "interface in java.beans.beancontext") propagatedFrom

    The `BeanContext` from which this event was propagated
* ## Constructor Details

  + ### BeanContextEvent

    protected BeanContextEvent([BeanContext](BeanContext.md "interface in java.beans.beancontext") bc)

    Construct a BeanContextEvent

    Parameters:
    :   `bc` - The BeanContext source
* ## Method Details

  + ### getBeanContext

    public [BeanContext](BeanContext.md "interface in java.beans.beancontext") getBeanContext()

    Gets the `BeanContext` associated with this event.

    Returns:
    :   the `BeanContext` associated with this event.
  + ### setPropagatedFrom

    public void setPropagatedFrom([BeanContext](BeanContext.md "interface in java.beans.beancontext") bc)

    Sets the `BeanContext` from which this event was propagated.

    Parameters:
    :   `bc` - the `BeanContext` from which this event
        was propagated
  + ### getPropagatedFrom

    public [BeanContext](BeanContext.md "interface in java.beans.beancontext") getPropagatedFrom()

    Gets the `BeanContext` from which this event was propagated.

    Returns:
    :   the `BeanContext` from which this
        event was propagated
  + ### isPropagated

    public boolean isPropagated()

    Reports whether or not this event is
    propagated from some other `BeanContext`.

    Returns:
    :   `true` if propagated, `false`
        if not