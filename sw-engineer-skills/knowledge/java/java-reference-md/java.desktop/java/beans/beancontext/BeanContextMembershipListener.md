Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Interface BeanContextMembershipListener

All Superinterfaces:
:   `EventListener`

---

public interface BeanContextMembershipListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

Compliant BeanContexts fire events on this interface when the state of
the membership of the BeanContext changes.

Since:
:   1.2

See Also:
:   * [`BeanContext`](BeanContext.md "interface in java.beans.beancontext")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `childrenAdded(BeanContextMembershipEvent bcme)`

  Called when a child or list of children is added to a
  `BeanContext` that this listener is registered with.

  `void`

  `childrenRemoved(BeanContextMembershipEvent bcme)`

  Called when a child or list of children is removed
  from a `BeanContext` that this listener
  is registered with.

* ## Method Details

  + ### childrenAdded

    void childrenAdded([BeanContextMembershipEvent](BeanContextMembershipEvent.md "class in java.beans.beancontext") bcme)

    Called when a child or list of children is added to a
    `BeanContext` that this listener is registered with.

    Parameters:
    :   `bcme` - The `BeanContextMembershipEvent`
        describing the change that occurred.
  + ### childrenRemoved

    void childrenRemoved([BeanContextMembershipEvent](BeanContextMembershipEvent.md "class in java.beans.beancontext") bcme)

    Called when a child or list of children is removed
    from a `BeanContext` that this listener
    is registered with.

    Parameters:
    :   `bcme` - The `BeanContextMembershipEvent`
        describing the change that occurred.