Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class AbstractSpinnerModel

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.AbstractSpinnerModel

All Implemented Interfaces:
:   `Serializable`, `SpinnerModel`

Direct Known Subclasses:
:   `SpinnerDateModel`, `SpinnerListModel`, `SpinnerNumberModel`

---

public abstract class AbstractSpinnerModel
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [SpinnerModel](SpinnerModel.md "interface in javax.swing"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

This class provides the ChangeListener part of the
SpinnerModel interface that should be suitable for most concrete SpinnerModel
implementations. Subclasses must provide an implementation of the
`setValue`, `getValue`, `getNextValue` and
`getPreviousValue` methods.

Since:
:   1.4

See Also:
:   * [`JSpinner`](JSpinner.md "class in javax.swing")
    * [`SpinnerModel`](SpinnerModel.md "interface in javax.swing")
    * [`SpinnerListModel`](SpinnerListModel.md "class in javax.swing")
    * [`SpinnerNumberModel`](SpinnerNumberModel.md "class in javax.swing")
    * [`SpinnerDateModel`](SpinnerDateModel.md "class in javax.swing")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected EventListenerList`

  `listenerList`

  The list of ChangeListeners for this model.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractSpinnerModel()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a ChangeListener to the model's listener list.

  `protected void`

  `fireStateChanged()`

  Run each ChangeListeners stateChanged() method.

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the `ChangeListener`s added
  to this AbstractSpinnerModel with addChangeListener().

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Return an array of all the listeners of the given type that
  were added to this model.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a ChangeListener from the model's listener list.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[SpinnerModel](SpinnerModel.md "interface in javax.swing")

  `getNextValue, getPreviousValue, getValue, setValue`

* ## Field Details

  + ### listenerList

    protected [EventListenerList](event/EventListenerList.md "class in javax.swing.event") listenerList

    The list of ChangeListeners for this model. Subclasses may
    store their own listeners here.
* ## Constructor Details

  + ### AbstractSpinnerModel

    protected AbstractSpinnerModel()

    Constructor for subclasses to call.
* ## Method Details

  + ### addChangeListener

    public void addChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a ChangeListener to the model's listener list. The
    ChangeListeners must be notified when the models value changes.

    Specified by:
    :   `addChangeListener` in interface `SpinnerModel`

    Parameters:
    :   `l` - the ChangeListener to add

    See Also:
    :   - [`removeChangeListener(javax.swing.event.ChangeListener)`](#removeChangeListener(javax.swing.event.ChangeListener))
        - [`SpinnerModel.addChangeListener(javax.swing.event.ChangeListener)`](SpinnerModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a ChangeListener from the model's listener list.

    Specified by:
    :   `removeChangeListener` in interface `SpinnerModel`

    Parameters:
    :   `l` - the ChangeListener to remove

    See Also:
    :   - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`SpinnerModel.removeChangeListener(javax.swing.event.ChangeListener)`](SpinnerModel.md#removeChangeListener(javax.swing.event.ChangeListener))
  + ### getChangeListeners

    public [ChangeListener](event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the `ChangeListener`s added
    to this AbstractSpinnerModel with addChangeListener().

    Returns:
    :   all of the `ChangeListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### fireStateChanged

    protected void fireStateChanged()

    Run each ChangeListeners stateChanged() method.

    See Also:
    :   - [`SpinnerModel.setValue(java.lang.Object)`](SpinnerModel.md#setValue(java.lang.Object))
        - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### getListeners

    public <T extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Return an array of all the listeners of the given type that
    were added to this model. For example to find all of the
    ChangeListeners added to this model:

    ```
     myAbstractSpinnerModel.getListeners(ChangeListener.class);
    ```

    Type Parameters:
    :   `T` - the type of requested listeners

    Parameters:
    :   `listenerType` - the type of listeners to return, e.g. ChangeListener.class

    Returns:
    :   all of the objects receiving *listenerType* notifications
        from this model