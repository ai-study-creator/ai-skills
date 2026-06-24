Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Interface VetoableChangeListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `BeanContextServicesSupport`, `BeanContextSupport`, `VetoableChangeListenerProxy`

---

public interface VetoableChangeListener
extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")

A VetoableChange event gets fired whenever a bean changes a "constrained"
property. You can register a VetoableChangeListener with a source bean
so as to be notified of any constrained property updates.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `vetoableChange(PropertyChangeEvent evt)`

  This method gets called when a constrained property is changed.

* ## Method Details

  + ### vetoableChange

    void vetoableChange([PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans") evt)
    throws [PropertyVetoException](PropertyVetoException.md "class in java.beans")

    This method gets called when a constrained property is changed.

    Parameters:
    :   `evt` - a `PropertyChangeEvent` object describing the
        event source and the property that has changed.

    Throws:
    :   `PropertyVetoException` - if the recipient wishes the property
        change to be rolled back.