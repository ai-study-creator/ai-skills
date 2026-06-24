Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSliderUI.ActionScroller

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../../AbstractAction.md "class in javax.swing")

javax.swing.plaf.basic.BasicSliderUI.ActionScroller

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Enclosing class:
:   `BasicSliderUI`

---

public class BasicSliderUI.ActionScroller
extends [AbstractAction](../../AbstractAction.md "class in javax.swing")

As of Java 2 platform v1.3 this undocumented class is no longer used.
The recommended approach to creating bindings is to use a
combination of an `ActionMap`, to contain the action,
and an `InputMap` to contain the mapping from KeyStroke
to action description. The InputMap is usually described in the
LookAndFeel tables.

Please refer to the key bindings specification for further details.

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `Foo`.

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractAction](../../AbstractAction.md "class in javax.swing")

  `changeSupport, enabled`

  ### Fields inherited from interface javax.swing.[Action](../../Action.md "interface in javax.swing")

  `ACCELERATOR_KEY, ACTION_COMMAND_KEY, DEFAULT, DISPLAYED_MNEMONIC_INDEX_KEY, LARGE_ICON_KEY, LONG_DESCRIPTION, MNEMONIC_KEY, NAME, SELECTED_KEY, SHORT_DESCRIPTION, SMALL_ICON`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ActionScroller(JSlider slider,
  int dir,
  boolean block)`

  Constructs an `ActionScroller`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  Invoked when an action occurs.

  `boolean`

  `isEnabled()`

  Returns true if the action is enabled.

  ### Methods inherited from class javax.swing.[AbstractAction](../../AbstractAction.md "class in javax.swing")

  `addPropertyChangeListener, clone, firePropertyChange, getKeys, getPropertyChangeListeners, getValue, putValue, removePropertyChangeListener, setEnabled`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[Action](../../Action.md "interface in javax.swing")

  `accept`

* ## Constructor Details

  + ### ActionScroller

    public ActionScroller([JSlider](../../JSlider.md "class in javax.swing") slider,
    int dir,
    boolean block)

    Constructs an `ActionScroller`.

    Parameters:
    :   `slider` - a slider
    :   `dir` - the direction
    :   `block` - block scrolling or not
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    Invoked when an action occurs.

    Parameters:
    :   `e` - the event to be processed
  + ### isEnabled

    public boolean isEnabled()

    Returns true if the action is enabled.

    Specified by:
    :   `isEnabled` in interface `Action`

    Overrides:
    :   `isEnabled` in class `AbstractAction`

    Returns:
    :   true if the action is enabled, false otherwise

    See Also:
    :   - [`Action.isEnabled()`](../../Action.md#isEnabled())