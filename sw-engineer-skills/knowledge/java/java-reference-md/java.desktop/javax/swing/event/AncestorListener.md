Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface AncestorListener

All Superinterfaces:
:   `EventListener`

---

public interface AncestorListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

AncestorListener
Interface to support notification when changes occur to a JComponent or one
of its ancestors. These include movement and when the component becomes
visible or invisible, either by the setVisible() method or by being added
or removed from the component hierarchy.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `ancestorAdded(AncestorEvent event)`

  Called when the source or one of its ancestors is made visible
  either by setVisible(true) being called or by its being
  added to the component hierarchy.

  `void`

  `ancestorMoved(AncestorEvent event)`

  Called when either the source or one of its ancestors is moved.

  `void`

  `ancestorRemoved(AncestorEvent event)`

  Called when the source or one of its ancestors is made invisible
  either by setVisible(false) being called or by its being
  removed from the component hierarchy.

* ## Method Details

  + ### ancestorAdded

    void ancestorAdded([AncestorEvent](AncestorEvent.md "class in javax.swing.event") event)

    Called when the source or one of its ancestors is made visible
    either by setVisible(true) being called or by its being
    added to the component hierarchy. The method is only called
    if the source has actually become visible. For this to be true
    all its parents must be visible and it must be in a hierarchy
    rooted at a Window

    Parameters:
    :   `event` - an `AncestorEvent` signifying a change in an
        ancestor-component's display-status
  + ### ancestorRemoved

    void ancestorRemoved([AncestorEvent](AncestorEvent.md "class in javax.swing.event") event)

    Called when the source or one of its ancestors is made invisible
    either by setVisible(false) being called or by its being
    removed from the component hierarchy. The method is only called
    if the source has actually become invisible. For this to be true
    at least one of its parents must by invisible or it is not in
    a hierarchy rooted at a Window

    Parameters:
    :   `event` - an `AncestorEvent` signifying a change in an
        ancestor-component's display-status
  + ### ancestorMoved

    void ancestorMoved([AncestorEvent](AncestorEvent.md "class in javax.swing.event") event)

    Called when either the source or one of its ancestors is moved.

    Parameters:
    :   `event` - an `AncestorEvent` signifying a change in an
        ancestor-component's display-status