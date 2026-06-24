Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class AbstractAction

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.AbstractAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Direct Known Subclasses:
:   `BasicDesktopPaneUI.CloseAction`, `BasicDesktopPaneUI.MaximizeAction`, `BasicDesktopPaneUI.MinimizeAction`, `BasicDesktopPaneUI.NavigateAction`, `BasicDesktopPaneUI.OpenAction`, `BasicFileChooserUI.ApproveSelectionAction`, `BasicFileChooserUI.CancelSelectionAction`, `BasicFileChooserUI.ChangeToParentDirectoryAction`, `BasicFileChooserUI.GoHomeAction`, `BasicFileChooserUI.NewFolderAction`, `BasicFileChooserUI.UpdateAction`, `BasicInternalFrameTitlePane.CloseAction`, `BasicInternalFrameTitlePane.IconifyAction`, `BasicInternalFrameTitlePane.MaximizeAction`, `BasicInternalFrameTitlePane.MoveAction`, `BasicInternalFrameTitlePane.RestoreAction`, `BasicInternalFrameTitlePane.SizeAction`, `BasicSliderUI.ActionScroller`, `BasicTreeUI.TreeCancelEditingAction`, `BasicTreeUI.TreeHomeAction`, `BasicTreeUI.TreeIncrementAction`, `BasicTreeUI.TreePageAction`, `BasicTreeUI.TreeToggleAction`, `BasicTreeUI.TreeTraverseAction`, `MetalFileChooserUI.DirectoryComboBoxAction`, `TextAction`

---

public abstract class AbstractAction
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Action](Action.md "interface in javax.swing"), [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

This class provides default implementations for the JFC `Action`
interface. Standard behaviors like the get and set methods for
`Action` object properties (icon, text, and enabled) are defined
here. The developer need only subclass this abstract class and
define the `actionPerformed` method.

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

See Also:
:   * [`Action`](Action.md "interface in javax.swing")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected SwingPropertyChangeSupport`

  `changeSupport`

  If any `PropertyChangeListeners` have been registered, the
  `changeSupport` field describes them.

  `protected boolean`

  `enabled`

  Specifies whether action is enabled; the default is true.

  ### Fields inherited from interface javax.swing.[Action](Action.md "interface in javax.swing")

  `ACCELERATOR_KEY, ACTION_COMMAND_KEY, DEFAULT, DISPLAYED_MNEMONIC_INDEX_KEY, LARGE_ICON_KEY, LONG_DESCRIPTION, MNEMONIC_KEY, NAME, SELECTED_KEY, SHORT_DESCRIPTION, SMALL_ICON`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AbstractAction()`

  Creates an `Action`.

  `AbstractAction(String name)`

  Creates an `Action` with the specified name.

  `AbstractAction(String name,
  Icon icon)`

  Creates an `Action` with the specified name and small icon.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Adds a `PropertyChangeListener` to the listener list.

  `protected Object`

  `clone()`

  Clones the abstract action.

  `protected void`

  `firePropertyChange(String propertyName,
  Object oldValue,
  Object newValue)`

  Supports reporting bound property changes.

  `Object[]`

  `getKeys()`

  Returns an array of `Object`s which are keys for
  which values have been set for this `AbstractAction`,
  or `null` if no keys have values set.

  `PropertyChangeListener[]`

  `getPropertyChangeListeners()`

  Returns an array of all the `PropertyChangeListener`s added
  to this AbstractAction with addPropertyChangeListener().

  `Object`

  `getValue(String key)`

  Gets the `Object` associated with the specified key.

  `boolean`

  `isEnabled()`

  Returns true if the action is enabled.

  `void`

  `putValue(String key,
  Object newValue)`

  Sets the `Value` associated with the specified key.

  `void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Removes a `PropertyChangeListener` from the listener list.

  `void`

  `setEnabled(boolean newValue)`

  Sets whether the `Action` is enabled.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[Action](Action.md "interface in javax.swing")

  `accept`

  ### Methods inherited from interface java.awt.event.[ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event")

  `actionPerformed`

* ## Field Details

  + ### enabled

    protected boolean enabled

    Specifies whether action is enabled; the default is true.
  + ### changeSupport

    protected [SwingPropertyChangeSupport](event/SwingPropertyChangeSupport.md "class in javax.swing.event") changeSupport

    If any `PropertyChangeListeners` have been registered, the
    `changeSupport` field describes them.
* ## Constructor Details

  + ### AbstractAction

    public AbstractAction()

    Creates an `Action`.
  + ### AbstractAction

    public AbstractAction([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Creates an `Action` with the specified name.

    Parameters:
    :   `name` - the name (`Action.NAME`) for the action; a
        value of `null` is ignored
  + ### AbstractAction

    public AbstractAction([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Icon](Icon.md "interface in javax.swing") icon)

    Creates an `Action` with the specified name and small icon.

    Parameters:
    :   `name` - the name (`Action.NAME`) for the action; a
        value of `null` is ignored
    :   `icon` - the small icon (`Action.SMALL_ICON`) for the action; a
        value of `null` is ignored
* ## Method Details

  + ### getValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValue([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Gets the `Object` associated with the specified key.

    Specified by:
    :   `getValue` in interface `Action`

    Parameters:
    :   `key` - a string containing the specified `key`

    Returns:
    :   the binding `Object` stored with this key; if there
        are no keys, it will return `null`

    See Also:
    :   - [`Action.getValue(java.lang.String)`](Action.md#getValue(java.lang.String))
  + ### putValue

    public void putValue([String](../../../java.base/java/lang/String.md "class in java.lang") key,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Sets the `Value` associated with the specified key.

    Specified by:
    :   `putValue` in interface `Action`

    Parameters:
    :   `key` - the `String` that identifies the stored object
    :   `newValue` - the `Object` to store using this key

    See Also:
    :   - [`Action.putValue(java.lang.String, java.lang.Object)`](Action.md#putValue(java.lang.String,java.lang.Object))
  + ### isEnabled

    public boolean isEnabled()

    Returns true if the action is enabled.

    Specified by:
    :   `isEnabled` in interface `Action`

    Returns:
    :   true if the action is enabled, false otherwise

    See Also:
    :   - [`Action.isEnabled()`](Action.md#isEnabled())
  + ### setEnabled

    public void setEnabled(boolean newValue)

    Sets whether the `Action` is enabled. The default is `true`.

    Specified by:
    :   `setEnabled` in interface `Action`

    Parameters:
    :   `newValue` - `true` to enable the action, `false` to
        disable it

    See Also:
    :   - [`Action.setEnabled(boolean)`](Action.md#setEnabled(boolean))
  + ### getKeys

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getKeys()

    Returns an array of `Object`s which are keys for
    which values have been set for this `AbstractAction`,
    or `null` if no keys have values set.

    Returns:
    :   an array of key objects, or `null` if no
        keys have values set

    Since:
    :   1.3
  + ### firePropertyChange

    protected void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Supports reporting bound property changes. This method can be called
    when a bound property has changed and it will send the appropriate
    `PropertyChangeEvent` to any registered
    `PropertyChangeListeners`.

    Parameters:
    :   `propertyName` - the name of the property that has changed
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Adds a `PropertyChangeListener` to the listener list.
    The listener is registered for all properties.

    A `PropertyChangeEvent` will get fired in response to setting
    a bound property, e.g. `setFont`, `setBackground`,
    or `setForeground`.
    Note that if the current component is inheriting its foreground,
    background, or font from its container, then no event will be
    fired in response to a change in the inherited property.

    Specified by:
    :   `addPropertyChangeListener` in interface `Action`

    Parameters:
    :   `listener` - The `PropertyChangeListener` to be added

    See Also:
    :   - [`Action.addPropertyChangeListener(java.beans.PropertyChangeListener)`](Action.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Removes a `PropertyChangeListener` from the listener list.
    This removes a `PropertyChangeListener` that was registered
    for all properties.

    Specified by:
    :   `removePropertyChangeListener` in interface `Action`

    Parameters:
    :   `listener` - the `PropertyChangeListener` to be removed

    See Also:
    :   - [`Action.removePropertyChangeListener(java.beans.PropertyChangeListener)`](Action.md#removePropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getPropertyChangeListeners

    public [PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans")[] getPropertyChangeListeners()

    Returns an array of all the `PropertyChangeListener`s added
    to this AbstractAction with addPropertyChangeListener().

    Returns:
    :   all of the `PropertyChangeListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### clone

    protected [Object](../../../java.base/java/lang/Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](../../../java.base/java/lang/CloneNotSupportedException.md "class in java.lang")

    Clones the abstract action. This gives the clone
    its own copy of the key/value list,
    which is not handled for you by `Object.clone()`.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    Throws:
    :   `CloneNotSupportedException` - if the object's class does not
        support the `Cloneable` interface. Subclasses
        that override the `clone` method can also
        throw this exception to indicate that an instance cannot
        be cloned.

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")