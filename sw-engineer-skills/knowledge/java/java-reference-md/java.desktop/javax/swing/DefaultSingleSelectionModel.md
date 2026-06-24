Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DefaultSingleSelectionModel

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.DefaultSingleSelectionModel

All Implemented Interfaces:
:   `Serializable`, `SingleSelectionModel`

---

public class DefaultSingleSelectionModel
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [SingleSelectionModel](SingleSelectionModel.md "interface in javax.swing"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A generic implementation of SingleSelectionModel.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ChangeEvent`

  `changeEvent`

  Only one ModelChangeEvent is needed per model instance since the
  event's only (read-only) state is the source property.

  `protected EventListenerList`

  `listenerList`

  The collection of registered listeners
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultSingleSelectionModel()`

  Constructs a `DefaultSingleSelectionModel`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a `ChangeListener` to the button.

  `void`

  `clearSelection()`

  Clears the selection (to -1).

  `protected void`

  `fireStateChanged()`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the change listeners
  registered on this `DefaultSingleSelectionModel`.

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Returns an array of all the objects currently registered as
  `FooListener`s
  upon this model.

  `int`

  `getSelectedIndex()`

  Returns the model's selection.

  `boolean`

  `isSelected()`

  Returns true if the selection model currently has a selected value.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a `ChangeListener` from the button.

  `void`

  `setSelectedIndex(int index)`

  Sets the model's selected index to *index*.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### changeEvent

    protected transient [ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") changeEvent

    Only one ModelChangeEvent is needed per model instance since the
    event's only (read-only) state is the source property. The source
    of events generated here is always "this".
  + ### listenerList

    protected [EventListenerList](event/EventListenerList.md "class in javax.swing.event") listenerList

    The collection of registered listeners
* ## Constructor Details

  + ### DefaultSingleSelectionModel

    public DefaultSingleSelectionModel()

    Constructs a `DefaultSingleSelectionModel`.
* ## Method Details

  + ### getSelectedIndex

    public int getSelectedIndex()

    Returns the model's selection.

    Specified by:
    :   `getSelectedIndex` in interface `SingleSelectionModel`

    Returns:
    :   the model's selection, or -1 if there is no selection

    See Also:
    :   - [`SingleSelectionModel.setSelectedIndex(int)`](SingleSelectionModel.md#setSelectedIndex(int))
  + ### setSelectedIndex

    public void setSelectedIndex(int index)

    Sets the model's selected index to *index*.
    Notifies any listeners if the model changes

    Specified by:
    :   `setSelectedIndex` in interface `SingleSelectionModel`

    Parameters:
    :   `index` - an int specifying the model selection

    See Also:
    :   - [`SingleSelectionModel.getSelectedIndex()`](SingleSelectionModel.md#getSelectedIndex())
        - [`SingleSelectionModel.addChangeListener(javax.swing.event.ChangeListener)`](SingleSelectionModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### clearSelection

    public void clearSelection()

    Clears the selection (to -1).

    Specified by:
    :   `clearSelection` in interface `SingleSelectionModel`
  + ### isSelected

    public boolean isSelected()

    Returns true if the selection model currently has a selected value.

    Specified by:
    :   `isSelected` in interface `SingleSelectionModel`

    Returns:
    :   true if a value is currently selected
  + ### addChangeListener

    public void addChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a `ChangeListener` to the button.

    Specified by:
    :   `addChangeListener` in interface `SingleSelectionModel`

    Parameters:
    :   `l` - the ChangeListener to add
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a `ChangeListener` from the button.

    Specified by:
    :   `removeChangeListener` in interface `SingleSelectionModel`

    Parameters:
    :   `l` - the ChangeListener to remove
  + ### getChangeListeners

    public [ChangeListener](event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the change listeners
    registered on this `DefaultSingleSelectionModel`.

    Returns:
    :   all of this model's `ChangeListener`s
        or an empty
        array if no change listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`removeChangeListener(javax.swing.event.ChangeListener)`](#removeChangeListener(javax.swing.event.ChangeListener))
  + ### fireStateChanged

    protected void fireStateChanged()

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is created lazily.

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### getListeners

    public <T extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Returns an array of all the objects currently registered as
    `FooListener`s
    upon this model.
    `FooListener`s
    are registered using the `addFooListener` method.

    You can specify the `listenerType` argument
    with a class literal, such as `FooListener.class`.
    For example, you can query a `DefaultSingleSelectionModel`
    instance `m`
    for its change listeners
    with the following code:

    ```
    ChangeListener[] cls = (ChangeListener[])(m.getListeners(ChangeListener.class));
    ```

    If no such listeners exist,
    this method returns an empty array.

    Type Parameters:
    :   `T` - the type of `EventListener` class being requested

    Parameters:
    :   `listenerType` - the type of listeners requested;
        this parameter should specify an interface
        that descends from `java.util.EventListener`

    Returns:
    :   an array of all objects registered as
        `FooListener`s
        on this model,
        or an empty array if no such
        listeners have been added

    Throws:
    :   `ClassCastException` - if `listenerType` doesn't
        specify a class or interface that implements
        `java.util.EventListener`

    Since:
    :   1.3

    See Also:
    :   - [`getChangeListeners()`](#getChangeListeners())