Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class AbstractListModel<E>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.AbstractListModel<E>

Type Parameters:
:   `E` - the type of the elements of this model

All Implemented Interfaces:
:   `Serializable`, `ListModel<E>`

Direct Known Subclasses:
:   `BasicDirectoryModel`, `DefaultComboBoxModel`, `DefaultListModel`, `MetalFileChooserUI.DirectoryComboBoxModel`, `MetalFileChooserUI.FilterComboBoxModel`

---

public abstract class AbstractListModel<E>
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ListModel](ListModel.md "interface in javax.swing")<E>, [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The abstract definition for the data model that provides
a `List` with its contents.

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

  `protected EventListenerList`

  `listenerList`

  The listener list.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractListModel()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addListDataListener(ListDataListener l)`

  Adds a listener to the list that's notified each time a change
  to the data model occurs.

  `protected void`

  `fireContentsChanged(Object source,
  int index0,
  int index1)`

  `AbstractListModel` subclasses must call this method
  **after**
  one or more elements of the list change.

  `protected void`

  `fireIntervalAdded(Object source,
  int index0,
  int index1)`

  `AbstractListModel` subclasses must call this method
  **after**
  one or more elements are added to the model.

  `protected void`

  `fireIntervalRemoved(Object source,
  int index0,
  int index1)`

  `AbstractListModel` subclasses must call this method
  **after** one or more elements are removed from the model.

  `ListDataListener[]`

  `getListDataListeners()`

  Returns an array of all the list data listeners
  registered on this `AbstractListModel`.

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Returns an array of all the objects currently registered as
  `FooListener`s
  upon this model.

  `void`

  `removeListDataListener(ListDataListener l)`

  Removes a listener from the list that's notified each time a
  change to the data model occurs.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[ListModel](ListModel.md "interface in javax.swing")

  `getElementAt, getSize`

* ## Field Details

  + ### listenerList

    protected [EventListenerList](event/EventListenerList.md "class in javax.swing.event") listenerList

    The listener list.
* ## Constructor Details

  + ### AbstractListModel

    protected AbstractListModel()

    Constructor for subclasses to call.
* ## Method Details

  + ### addListDataListener

    public void addListDataListener([ListDataListener](event/ListDataListener.md "interface in javax.swing.event") l)

    Adds a listener to the list that's notified each time a change
    to the data model occurs.

    Specified by:
    :   `addListDataListener` in interface `ListModel<E>`

    Parameters:
    :   `l` - the `ListDataListener` to be added
  + ### removeListDataListener

    public void removeListDataListener([ListDataListener](event/ListDataListener.md "interface in javax.swing.event") l)

    Removes a listener from the list that's notified each time a
    change to the data model occurs.

    Specified by:
    :   `removeListDataListener` in interface `ListModel<E>`

    Parameters:
    :   `l` - the `ListDataListener` to be removed
  + ### getListDataListeners

    public [ListDataListener](event/ListDataListener.md "interface in javax.swing.event")[] getListDataListeners()

    Returns an array of all the list data listeners
    registered on this `AbstractListModel`.

    Returns:
    :   all of this model's `ListDataListener`s,
        or an empty array if no list data listeners
        are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addListDataListener(javax.swing.event.ListDataListener)`](#addListDataListener(javax.swing.event.ListDataListener))
        - [`removeListDataListener(javax.swing.event.ListDataListener)`](#removeListDataListener(javax.swing.event.ListDataListener))
  + ### fireContentsChanged

    protected void fireContentsChanged([Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    int index0,
    int index1)

    `AbstractListModel` subclasses must call this method
    **after**
    one or more elements of the list change. The changed elements
    are specified by the closed interval index0, index1 -- the endpoints
    are included. Note that
    index0 need not be less than or equal to index1.

    Parameters:
    :   `source` - the `ListModel` that changed, typically "this"
    :   `index0` - one end of the new interval
    :   `index1` - the other end of the new interval

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
        - [`DefaultListModel`](DefaultListModel.md "class in javax.swing")
  + ### fireIntervalAdded

    protected void fireIntervalAdded([Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    int index0,
    int index1)

    `AbstractListModel` subclasses must call this method
    **after**
    one or more elements are added to the model. The new elements
    are specified by a closed interval index0, index1 -- the endpoints
    are included. Note that
    index0 need not be less than or equal to index1.

    Parameters:
    :   `source` - the `ListModel` that changed, typically "this"
    :   `index0` - one end of the new interval
    :   `index1` - the other end of the new interval

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
        - [`DefaultListModel`](DefaultListModel.md "class in javax.swing")
  + ### fireIntervalRemoved

    protected void fireIntervalRemoved([Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    int index0,
    int index1)

    `AbstractListModel` subclasses must call this method
    **after** one or more elements are removed from the model.
    `index0` and `index1` are the end points
    of the interval that's been removed. Note that `index0`
    need not be less than or equal to `index1`.

    Parameters:
    :   `source` - the `ListModel` that changed, typically "this"
    :   `index0` - one end of the removed interval,
        including `index0`
    :   `index1` - the other end of the removed interval,
        including `index1`

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
        - [`DefaultListModel`](DefaultListModel.md "class in javax.swing")
  + ### getListeners

    public <T extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Returns an array of all the objects currently registered as
    `FooListener`s
    upon this model.
    `FooListener`s
    are registered using the `addFooListener` method.

    You can specify the `listenerType` argument
    with a class literal, such as `FooListener.class`.
    For example, you can query a list model
    `m`
    for its list data listeners
    with the following code:

    ```
    ListDataListener[] ldls = (ListDataListener[])(m.getListeners(ListDataListener.class));
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
    :   - [`getListDataListeners()`](#getListDataListeners())