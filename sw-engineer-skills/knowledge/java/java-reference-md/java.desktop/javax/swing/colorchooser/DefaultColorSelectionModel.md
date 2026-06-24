Module [java.desktop](../../../module-summary.md)

Package [javax.swing.colorchooser](package-summary.md)

# Class DefaultColorSelectionModel

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.colorchooser.DefaultColorSelectionModel

All Implemented Interfaces:
:   `Serializable`, `ColorSelectionModel`

---

public class DefaultColorSelectionModel
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ColorSelectionModel](ColorSelectionModel.md "interface in javax.swing.colorchooser"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A generic implementation of `ColorSelectionModel`.

See Also:
:   * [`Color`](../../../java/awt/Color.md "class in java.awt")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ChangeEvent`

  `changeEvent`

  Only one `ChangeEvent` is needed per model instance
  since the event's only (read-only) state is the source property.

  `protected EventListenerList`

  `listenerList`

  The listener list.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultColorSelectionModel()`

  Creates a `DefaultColorSelectionModel` with the
  current color set to `Color.white`.

  `DefaultColorSelectionModel(Color color)`

  Creates a `DefaultColorSelectionModel` with the
  current color set to `color`, which should be
  non-`null`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a `ChangeListener` to the model.

  `protected void`

  `fireStateChanged()`

  Runs each `ChangeListener`'s
  `stateChanged` method.

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the `ChangeListener`s added
  to this `DefaultColorSelectionModel` with
  `addChangeListener`.

  `Color`

  `getSelectedColor()`

  Returns the selected `Color` which should be
  non-`null`.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a `ChangeListener` from the model.

  `void`

  `setSelectedColor(Color color)`

  Sets the selected color to `color`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### changeEvent

    protected transient [ChangeEvent](../event/ChangeEvent.md "class in javax.swing.event") changeEvent

    Only one `ChangeEvent` is needed per model instance
    since the event's only (read-only) state is the source property.
    The source of events generated here is always "this".
  + ### listenerList

    protected [EventListenerList](../event/EventListenerList.md "class in javax.swing.event") listenerList

    The listener list.
* ## Constructor Details

  + ### DefaultColorSelectionModel

    public DefaultColorSelectionModel()

    Creates a `DefaultColorSelectionModel` with the
    current color set to `Color.white`. This is
    the default constructor.
  + ### DefaultColorSelectionModel

    public DefaultColorSelectionModel([Color](../../../java/awt/Color.md "class in java.awt") color)

    Creates a `DefaultColorSelectionModel` with the
    current color set to `color`, which should be
    non-`null`. Note that setting the color to
    `null` is undefined and may have unpredictable
    results.

    Parameters:
    :   `color` - the new `Color`
* ## Method Details

  + ### getSelectedColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getSelectedColor()

    Returns the selected `Color` which should be
    non-`null`.

    Specified by:
    :   `getSelectedColor` in interface `ColorSelectionModel`

    Returns:
    :   the selected `Color`

    See Also:
    :   - [`ColorSelectionModel.setSelectedColor(java.awt.Color)`](ColorSelectionModel.md#setSelectedColor(java.awt.Color))
  + ### setSelectedColor

    public void setSelectedColor([Color](../../../java/awt/Color.md "class in java.awt") color)

    Sets the selected color to `color`.
    Note that setting the color to `null`
    is undefined and may have unpredictable results.
    This method fires a state changed event if it sets the
    current color to a new non-`null` color;
    if the new color is the same as the current color,
    no event is fired.

    Specified by:
    :   `setSelectedColor` in interface `ColorSelectionModel`

    Parameters:
    :   `color` - the new `Color`

    See Also:
    :   - [`ColorSelectionModel.getSelectedColor()`](ColorSelectionModel.md#getSelectedColor())
        - [`ColorSelectionModel.addChangeListener(javax.swing.event.ChangeListener)`](ColorSelectionModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### addChangeListener

    public void addChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a `ChangeListener` to the model.

    Specified by:
    :   `addChangeListener` in interface `ColorSelectionModel`

    Parameters:
    :   `l` - the `ChangeListener` to be added
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a `ChangeListener` from the model.

    Specified by:
    :   `removeChangeListener` in interface `ColorSelectionModel`

    Parameters:
    :   `l` - the `ChangeListener` to be removed
  + ### getChangeListeners

    public [ChangeListener](../event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the `ChangeListener`s added
    to this `DefaultColorSelectionModel` with
    `addChangeListener`.

    Returns:
    :   all of the `ChangeListener`s added, or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### fireStateChanged

    protected void fireStateChanged()

    Runs each `ChangeListener`'s
    `stateChanged` method.

    See Also:
    :   - [`EventListenerList`](../event/EventListenerList.md "class in javax.swing.event")