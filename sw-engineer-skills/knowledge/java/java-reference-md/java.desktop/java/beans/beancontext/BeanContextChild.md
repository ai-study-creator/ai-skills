Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Interface BeanContextChild

All Known Subinterfaces:
:   `BeanContext`, `BeanContextServices`

All Known Implementing Classes:
:   `BeanContextChildSupport`, `BeanContextServicesSupport`, `BeanContextSupport`

---

public interface BeanContextChild

JavaBeans wishing to be nested within, and obtain a reference to their
execution environment, or context, as defined by the BeanContext
sub-interface shall implement this interface.

Conformant BeanContexts shall as a side effect of adding a BeanContextChild
object shall pass a reference to itself via the setBeanContext() method of
this interface.

Note that a BeanContextChild may refuse a change in state by throwing
PropertyVetoedException in response.

In order for persistence mechanisms to function properly on BeanContextChild
instances across a broad variety of scenarios, implementing classes of this
interface are required to define as transient, any or all fields, or
instance variables, that may contain, or represent, references to the
nesting BeanContext instance or other resources obtained
from the BeanContext via any unspecified mechanisms.

Since:
:   1.2

See Also:
:   * [`BeanContext`](BeanContext.md "interface in java.beans.beancontext")
    * [`PropertyChangeEvent`](../PropertyChangeEvent.md "class in java.beans")
    * [`PropertyChangeListener`](../PropertyChangeListener.md "interface in java.beans")
    * [`PropertyVetoException`](../PropertyVetoException.md "class in java.beans")
    * [`VetoableChangeListener`](../VetoableChangeListener.md "interface in java.beans")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addPropertyChangeListener(String name,
  PropertyChangeListener pcl)`

  Adds a `PropertyChangeListener`
  to this `BeanContextChild`
  in order to receive a `PropertyChangeEvent`
  whenever the specified property has changed.

  `void`

  `addVetoableChangeListener(String name,
  VetoableChangeListener vcl)`

  Adds a `VetoableChangeListener` to
  this `BeanContextChild`
  to receive events whenever the specified property changes.

  `BeanContext`

  `getBeanContext()`

  Gets the `BeanContext` associated
  with this `BeanContextChild`.

  `void`

  `removePropertyChangeListener(String name,
  PropertyChangeListener pcl)`

  Removes a `PropertyChangeListener` from this
  `BeanContextChild` so that it no longer
  receives `PropertyChangeEvents` when the
  specified property is changed.

  `void`

  `removeVetoableChangeListener(String name,
  VetoableChangeListener vcl)`

  Removes a `VetoableChangeListener` from this
  `BeanContextChild` so that it no longer receives
  events when the specified property changes.

  `void`

  `setBeanContext(BeanContext bc)`

  Objects that implement this interface,
  shall fire a java.beans.PropertyChangeEvent, with parameters:
  propertyName "beanContext", oldValue (the previous nesting
  `BeanContext` instance, or `null`),
  newValue (the current nesting
  `BeanContext` instance, or `null`).

* ## Method Details

  + ### setBeanContext

    void setBeanContext([BeanContext](BeanContext.md "interface in java.beans.beancontext") bc)
    throws [PropertyVetoException](../PropertyVetoException.md "class in java.beans")

    Objects that implement this interface,
    shall fire a java.beans.PropertyChangeEvent, with parameters:
    propertyName "beanContext", oldValue (the previous nesting
    `BeanContext` instance, or `null`),
    newValue (the current nesting
    `BeanContext` instance, or `null`).

    A change in the value of the nesting BeanContext property of this
    BeanContextChild may be vetoed by throwing the appropriate exception.

    Parameters:
    :   `bc` - The `BeanContext` with which
        to associate this `BeanContextChild`.

    Throws:
    :   `PropertyVetoException` - if the
        addition of the specified `BeanContext` is refused.
  + ### getBeanContext

    [BeanContext](BeanContext.md "interface in java.beans.beancontext") getBeanContext()

    Gets the `BeanContext` associated
    with this `BeanContextChild`.

    Returns:
    :   the `BeanContext` associated
        with this `BeanContextChild`.
  + ### addPropertyChangeListener

    void addPropertyChangeListener([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [PropertyChangeListener](../PropertyChangeListener.md "interface in java.beans") pcl)

    Adds a `PropertyChangeListener`
    to this `BeanContextChild`
    in order to receive a `PropertyChangeEvent`
    whenever the specified property has changed.

    Parameters:
    :   `name` - the name of the property to listen on
    :   `pcl` - the `PropertyChangeListener` to add
  + ### removePropertyChangeListener

    void removePropertyChangeListener([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [PropertyChangeListener](../PropertyChangeListener.md "interface in java.beans") pcl)

    Removes a `PropertyChangeListener` from this
    `BeanContextChild` so that it no longer
    receives `PropertyChangeEvents` when the
    specified property is changed.

    Parameters:
    :   `name` - the name of the property that was listened on
    :   `pcl` - the `PropertyChangeListener` to remove
  + ### addVetoableChangeListener

    void addVetoableChangeListener([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [VetoableChangeListener](../VetoableChangeListener.md "interface in java.beans") vcl)

    Adds a `VetoableChangeListener` to
    this `BeanContextChild`
    to receive events whenever the specified property changes.

    Parameters:
    :   `name` - the name of the property to listen on
    :   `vcl` - the `VetoableChangeListener` to add
  + ### removeVetoableChangeListener

    void removeVetoableChangeListener([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [VetoableChangeListener](../VetoableChangeListener.md "interface in java.beans") vcl)

    Removes a `VetoableChangeListener` from this
    `BeanContextChild` so that it no longer receives
    events when the specified property changes.

    Parameters:
    :   `name` - the name of the property that was listened on.
    :   `vcl` - the `VetoableChangeListener` to remove.