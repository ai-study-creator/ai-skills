Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class ToolTipManager

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../java/awt/event/MouseAdapter.md "class in java.awt.event")

javax.swing.ToolTipManager

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`

---

public final class ToolTipManager
extends [MouseAdapter](../../java/awt/event/MouseAdapter.md "class in java.awt.event")
implements [MouseMotionListener](../../java/awt/event/MouseMotionListener.md "interface in java.awt.event")

Manages all the `ToolTips` in the system.

ToolTipManager contains numerous properties for configuring how long it
will take for the tooltips to become visible, and how long till they
hide. Consider a component that has a different tooltip based on where
the mouse is, such as JTree. When the mouse moves into the JTree and
over a region that has a valid tooltip, the tooltip will become
visible after `initialDelay` milliseconds. After
`dismissDelay` milliseconds the tooltip will be hidden. If
the mouse is over a region that has a valid tooltip, and the tooltip
is currently visible, when the mouse moves to a region that doesn't have
a valid tooltip the tooltip will be hidden. If the mouse then moves back
into a region that has a valid tooltip within `reshowDelay`
milliseconds, the tooltip will immediately be shown, otherwise the
tooltip will be shown again after `initialDelay` milliseconds.

Since:
:   1.2

See Also:
:   * [`JComponent.createToolTip()`](JComponent.md#createToolTip())

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `ToolTipManager.insideTimerAction`

  Inside timer action.

  `protected class`

  `ToolTipManager.outsideTimerAction`

  Outside timer action.

  `protected class`

  `ToolTipManager.stillInsideTimerAction`

  Still inside timer action.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `heavyWeightPopupEnabled`

  Heavyweight popup enabled.

  `protected boolean`

  `lightWeightPopupEnabled`

  Lightweight popup enabled.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getDismissDelay()`

  Returns the dismissal delay value.

  `int`

  `getInitialDelay()`

  Returns the initial delay value.

  `int`

  `getReshowDelay()`

  Returns the reshow delay property.

  `boolean`

  `isEnabled()`

  Returns true if this object is enabled.

  `boolean`

  `isLightWeightPopupEnabled()`

  Returns true if lightweight (all-Java) `Tooltips`
  are in use, or false if heavyweight (native peer)
  `Tooltips` are being used.

  `void`

  `mouseDragged(MouseEvent event)`

  Called when the mouse is pressed and dragged.

  `void`

  `mouseEntered(MouseEvent event)`

  Called when the mouse enters the region of a component.

  `void`

  `mouseExited(MouseEvent event)`

  Called when the mouse exits the region of a component.

  `void`

  `mouseMoved(MouseEvent event)`

  Called when the mouse is moved.

  `void`

  `mousePressed(MouseEvent event)`

  Called when the mouse is pressed.

  `void`

  `registerComponent(JComponent component)`

  Registers a component for tooltip management.

  `void`

  `setDismissDelay(int milliseconds)`

  Specifies the dismissal delay value.

  `void`

  `setEnabled(boolean flag)`

  Enables or disables the tooltip.

  `void`

  `setInitialDelay(int milliseconds)`

  Specifies the initial delay value.

  `void`

  `setLightWeightPopupEnabled(boolean aFlag)`

  When displaying the `JToolTip`, the
  `ToolTipManager` chooses to use a lightweight
  `JPanel` if it fits.

  `void`

  `setReshowDelay(int milliseconds)`

  Used to specify the amount of time before the user has to wait
  `initialDelay` milliseconds before a tooltip will be
  shown.

  `static ToolTipManager`

  `sharedInstance()`

  Returns a shared `ToolTipManager` instance.

  `void`

  `unregisterComponent(JComponent component)`

  Removes a component from tooltip control.

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseClicked, mouseReleased, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### lightWeightPopupEnabled

    protected boolean lightWeightPopupEnabled

    Lightweight popup enabled.
  + ### heavyWeightPopupEnabled

    protected boolean heavyWeightPopupEnabled

    Heavyweight popup enabled.
* ## Method Details

  + ### setEnabled

    public void setEnabled(boolean flag)

    Enables or disables the tooltip.

    Parameters:
    :   `flag` - true to enable the tip, false otherwise
  + ### isEnabled

    public boolean isEnabled()

    Returns true if this object is enabled.

    Returns:
    :   true if this object is enabled, false otherwise
  + ### setLightWeightPopupEnabled

    public void setLightWeightPopupEnabled(boolean aFlag)

    When displaying the `JToolTip`, the
    `ToolTipManager` chooses to use a lightweight
    `JPanel` if it fits. This method allows you to
    disable this feature. You have to do disable it if your
    application mixes light weight and heavy weights components.

    Parameters:
    :   `aFlag` - true if a lightweight panel is desired, false otherwise
  + ### isLightWeightPopupEnabled

    public boolean isLightWeightPopupEnabled()

    Returns true if lightweight (all-Java) `Tooltips`
    are in use, or false if heavyweight (native peer)
    `Tooltips` are being used.

    Returns:
    :   true if lightweight `ToolTips` are in use
  + ### setInitialDelay

    public void setInitialDelay(int milliseconds)

    Specifies the initial delay value.

    Parameters:
    :   `milliseconds` - the number of milliseconds to delay
        (after the cursor has paused) before displaying the
        tooltip

    See Also:
    :   - [`getInitialDelay()`](#getInitialDelay())
  + ### getInitialDelay

    public int getInitialDelay()

    Returns the initial delay value.

    Returns:
    :   an integer representing the initial delay value,
        in milliseconds

    See Also:
    :   - [`setInitialDelay(int)`](#setInitialDelay(int))
  + ### setDismissDelay

    public void setDismissDelay(int milliseconds)

    Specifies the dismissal delay value.

    Parameters:
    :   `milliseconds` - the number of milliseconds to delay
        before taking away the tooltip

    See Also:
    :   - [`getDismissDelay()`](#getDismissDelay())
  + ### getDismissDelay

    public int getDismissDelay()

    Returns the dismissal delay value.

    Returns:
    :   an integer representing the dismissal delay value,
        in milliseconds

    See Also:
    :   - [`setDismissDelay(int)`](#setDismissDelay(int))
  + ### setReshowDelay

    public void setReshowDelay(int milliseconds)

    Used to specify the amount of time before the user has to wait
    `initialDelay` milliseconds before a tooltip will be
    shown. That is, if the tooltip is hidden, and the user moves into
    a region of the same Component that has a valid tooltip within
    `milliseconds` milliseconds the tooltip will immediately
    be shown. Otherwise, if the user moves into a region with a valid
    tooltip after `milliseconds` milliseconds, the user
    will have to wait an additional `initialDelay`
    milliseconds before the tooltip is shown again.

    Parameters:
    :   `milliseconds` - time in milliseconds

    See Also:
    :   - [`getReshowDelay()`](#getReshowDelay())
  + ### getReshowDelay

    public int getReshowDelay()

    Returns the reshow delay property.

    Returns:
    :   reshown delay property

    See Also:
    :   - [`setReshowDelay(int)`](#setReshowDelay(int))
  + ### sharedInstance

    public static [ToolTipManager](ToolTipManager.md "class in javax.swing") sharedInstance()

    Returns a shared `ToolTipManager` instance.

    Returns:
    :   a shared `ToolTipManager` object
  + ### registerComponent

    public void registerComponent([JComponent](JComponent.md "class in javax.swing") component)

    Registers a component for tooltip management.

    This will register key bindings to show and hide the tooltip text
    only if `component` has focus bindings. This is done
    so that components that are not normally focus traversable, such
    as `JLabel`, are not made focus traversable as a result
    of invoking this method.

    Parameters:
    :   `component` - a `JComponent` object to add

    See Also:
    :   - [`Component.isFocusTraversable()`](../../java/awt/Component.md#isFocusTraversable())
  + ### unregisterComponent

    public void unregisterComponent([JComponent](JComponent.md "class in javax.swing") component)

    Removes a component from tooltip control.

    Parameters:
    :   `component` - a `JComponent` object to remove
  + ### mouseEntered

    public void mouseEntered([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Called when the mouse enters the region of a component.
    This determines whether the tool tip should be shown.

    Specified by:
    :   `mouseEntered` in interface `MouseListener`

    Overrides:
    :   `mouseEntered` in class `MouseAdapter`

    Parameters:
    :   `event` - the event in question
  + ### mouseExited

    public void mouseExited([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Called when the mouse exits the region of a component.
    Any tool tip showing should be hidden.

    Specified by:
    :   `mouseExited` in interface `MouseListener`

    Overrides:
    :   `mouseExited` in class `MouseAdapter`

    Parameters:
    :   `event` - the event in question
  + ### mousePressed

    public void mousePressed([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Called when the mouse is pressed.
    Any tool tip showing should be hidden.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Overrides:
    :   `mousePressed` in class `MouseAdapter`

    Parameters:
    :   `event` - the event in question
  + ### mouseDragged

    public void mouseDragged([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Called when the mouse is pressed and dragged.
    Does nothing.

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Overrides:
    :   `mouseDragged` in class `MouseAdapter`

    Parameters:
    :   `event` - the event in question
  + ### mouseMoved

    public void mouseMoved([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Called when the mouse is moved.
    Determines whether the tool tip should be displayed.

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Overrides:
    :   `mouseMoved` in class `MouseAdapter`

    Parameters:
    :   `event` - the event in question