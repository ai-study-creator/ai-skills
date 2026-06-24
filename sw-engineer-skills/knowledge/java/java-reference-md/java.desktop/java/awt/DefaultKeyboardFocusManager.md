Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class DefaultKeyboardFocusManager

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.KeyboardFocusManager](KeyboardFocusManager.md "class in java.awt")

java.awt.DefaultKeyboardFocusManager

All Implemented Interfaces:
:   `KeyEventDispatcher`, `KeyEventPostProcessor`

Direct Known Subclasses:
:   `FocusManager`

---

public class DefaultKeyboardFocusManager
extends [KeyboardFocusManager](KeyboardFocusManager.md "class in java.awt")

The default KeyboardFocusManager for AWT applications. Focus traversal is
done in response to a Component's focus traversal keys, and using a
Container's FocusTraversalPolicy.

Please see
[How to Use the Focus Subsystem](https://docs.oracle.com/javase/tutorial/uiswing/misc/focus.html),
a section in *The Java Tutorial*, and the
[Focus Specification](doc-files/FocusSpec.md)
for more information.

Since:
:   1.4

See Also:
:   * [`FocusTraversalPolicy`](FocusTraversalPolicy.md "class in java.awt")
    * [`Component.setFocusTraversalKeys(int, java.util.Set<? extends java.awt.AWTKeyStroke>)`](Component.md#setFocusTraversalKeys(int,java.util.Set))
    * [`Component.getFocusTraversalKeys(int)`](Component.md#getFocusTraversalKeys(int))

* ## Field Summary

  ### Fields inherited from class java.awt.[KeyboardFocusManager](KeyboardFocusManager.md "class in java.awt")

  `BACKWARD_TRAVERSAL_KEYS, DOWN_CYCLE_TRAVERSAL_KEYS, FORWARD_TRAVERSAL_KEYS, UP_CYCLE_TRAVERSAL_KEYS`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultKeyboardFocusManager()`

  Constructs a `DefaultKeyboardFocusManager`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `dequeueKeyEvents(long after,
  Component untilFocused)`

  Releases for normal dispatching to the current focus owner all
  KeyEvents which were enqueued because of a call to
  `enqueueKeyEvents` with the same timestamp and Component.

  `protected void`

  `discardKeyEvents(Component comp)`

  Discards all KeyEvents which were enqueued because of one or more calls
  to `enqueueKeyEvents` with the specified Component, or one of
  its descendants.

  `boolean`

  `dispatchEvent(AWTEvent e)`

  This method is called by the AWT event dispatcher requesting that the
  current KeyboardFocusManager dispatch the specified event on its behalf.

  `boolean`

  `dispatchKeyEvent(KeyEvent e)`

  Called by `dispatchEvent` if no other
  KeyEventDispatcher in the dispatcher chain dispatched the KeyEvent, or
  if no other KeyEventDispatchers are registered.

  `void`

  `downFocusCycle(Container aContainer)`

  Moves the focus down one focus traversal cycle.

  `protected void`

  `enqueueKeyEvents(long after,
  Component untilFocused)`

  Delays dispatching of KeyEvents until the specified Component becomes
  the focus owner.

  `void`

  `focusNextComponent(Component aComponent)`

  Focuses the Component after aComponent, typically based on a
  FocusTraversalPolicy.

  `void`

  `focusPreviousComponent(Component aComponent)`

  Focuses the Component before aComponent, typically based on a
  FocusTraversalPolicy.

  `boolean`

  `postProcessKeyEvent(KeyEvent e)`

  This method will be called by `dispatchKeyEvent`.

  `void`

  `processKeyEvent(Component focusedComponent,
  KeyEvent e)`

  This method initiates a focus traversal operation if and only if the
  KeyEvent represents a focus traversal key for the specified
  focusedComponent.

  `void`

  `upFocusCycle(Component aComponent)`

  Moves the focus up one focus traversal cycle.

  ### Methods inherited from class java.awt.[KeyboardFocusManager](KeyboardFocusManager.md "class in java.awt")

  `addKeyEventDispatcher, addKeyEventPostProcessor, addPropertyChangeListener, addPropertyChangeListener, addVetoableChangeListener, addVetoableChangeListener, clearFocusOwner, clearGlobalFocusOwner, downFocusCycle, firePropertyChange, fireVetoableChange, focusNextComponent, focusPreviousComponent, getActiveWindow, getCurrentFocusCycleRoot, getCurrentKeyboardFocusManager, getDefaultFocusTraversalKeys, getDefaultFocusTraversalPolicy, getFocusedWindow, getFocusOwner, getGlobalActiveWindow, getGlobalCurrentFocusCycleRoot, getGlobalFocusedWindow, getGlobalFocusOwner, getGlobalPermanentFocusOwner, getKeyEventDispatchers, getKeyEventPostProcessors, getPermanentFocusOwner, getPropertyChangeListeners, getPropertyChangeListeners, getVetoableChangeListeners, getVetoableChangeListeners, redispatchEvent, removeKeyEventDispatcher, removeKeyEventPostProcessor, removePropertyChangeListener, removePropertyChangeListener, removeVetoableChangeListener, removeVetoableChangeListener, setCurrentKeyboardFocusManager, setDefaultFocusTraversalKeys, setDefaultFocusTraversalPolicy, setGlobalActiveWindow, setGlobalCurrentFocusCycleRoot, setGlobalFocusedWindow, setGlobalFocusOwner, setGlobalPermanentFocusOwner, upFocusCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DefaultKeyboardFocusManager

    public DefaultKeyboardFocusManager()

    Constructs a `DefaultKeyboardFocusManager`.
* ## Method Details

  + ### dispatchEvent

    public boolean dispatchEvent([AWTEvent](AWTEvent.md "class in java.awt") e)

    This method is called by the AWT event dispatcher requesting that the
    current KeyboardFocusManager dispatch the specified event on its behalf.
    DefaultKeyboardFocusManagers dispatch all FocusEvents, all WindowEvents
    related to focus, and all KeyEvents. These events are dispatched based
    on the KeyboardFocusManager's notion of the focus owner and the focused
    and active Windows, sometimes overriding the source of the specified
    AWTEvent. If this method returns `false`, then the AWT event
    dispatcher will attempt to dispatch the event itself.

    Specified by:
    :   `dispatchEvent` in class `KeyboardFocusManager`

    Parameters:
    :   `e` - the AWTEvent to be dispatched

    Returns:
    :   `true` if this method dispatched the event;
        `false` otherwise

    See Also:
    :   - [`KeyboardFocusManager.redispatchEvent(java.awt.Component, java.awt.AWTEvent)`](KeyboardFocusManager.md#redispatchEvent(java.awt.Component,java.awt.AWTEvent))
        - [`KeyboardFocusManager.dispatchKeyEvent(java.awt.event.KeyEvent)`](KeyboardFocusManager.md#dispatchKeyEvent(java.awt.event.KeyEvent))
  + ### dispatchKeyEvent

    public boolean dispatchKeyEvent([KeyEvent](event/KeyEvent.md "class in java.awt.event") e)

    Called by `dispatchEvent` if no other
    KeyEventDispatcher in the dispatcher chain dispatched the KeyEvent, or
    if no other KeyEventDispatchers are registered. If the event has not
    been consumed, its target is enabled, and the focus owner is not null,
    this method dispatches the event to its target. This method will also
    subsequently dispatch the event to all registered
    KeyEventPostProcessors. After all this operations are finished,
    the event is passed to peers for processing.

    In all cases, this method returns `true`, since
    DefaultKeyboardFocusManager is designed so that neither
    `dispatchEvent`, nor the AWT event dispatcher, should take
    further action on the event in any situation.

    Specified by:
    :   `dispatchKeyEvent` in interface `KeyEventDispatcher`

    Specified by:
    :   `dispatchKeyEvent` in class `KeyboardFocusManager`

    Parameters:
    :   `e` - the KeyEvent to be dispatched

    Returns:
    :   `true`

    See Also:
    :   - [`Component.dispatchEvent(java.awt.AWTEvent)`](Component.md#dispatchEvent(java.awt.AWTEvent))
  + ### postProcessKeyEvent

    public boolean postProcessKeyEvent([KeyEvent](event/KeyEvent.md "class in java.awt.event") e)

    This method will be called by `dispatchKeyEvent`. It will
    handle any unconsumed KeyEvents that map to an AWT
    `MenuShortcut` by consuming the event and activating the
    shortcut.

    Specified by:
    :   `postProcessKeyEvent` in interface `KeyEventPostProcessor`

    Specified by:
    :   `postProcessKeyEvent` in class `KeyboardFocusManager`

    Parameters:
    :   `e` - the KeyEvent to post-process

    Returns:
    :   `true`

    See Also:
    :   - [`dispatchKeyEvent(java.awt.event.KeyEvent)`](#dispatchKeyEvent(java.awt.event.KeyEvent))
        - [`MenuShortcut`](MenuShortcut.md "class in java.awt")
  + ### processKeyEvent

    public void processKeyEvent([Component](Component.md "class in java.awt") focusedComponent,
    [KeyEvent](event/KeyEvent.md "class in java.awt.event") e)

    This method initiates a focus traversal operation if and only if the
    KeyEvent represents a focus traversal key for the specified
    focusedComponent. It is expected that focusedComponent is the current
    focus owner, although this need not be the case. If it is not,
    focus traversal will nevertheless proceed as if focusedComponent
    were the focus owner.

    Specified by:
    :   `processKeyEvent` in class `KeyboardFocusManager`

    Parameters:
    :   `focusedComponent` - the Component that is the basis for a focus
        traversal operation if the specified event represents a focus
        traversal key for the Component
    :   `e` - the event that may represent a focus traversal key
  + ### enqueueKeyEvents

    protected void enqueueKeyEvents(long after,
    [Component](Component.md "class in java.awt") untilFocused)

    Delays dispatching of KeyEvents until the specified Component becomes
    the focus owner. KeyEvents with timestamps later than the specified
    timestamp will be enqueued until the specified Component receives a
    FOCUS\_GAINED event, or the AWT cancels the delay request by invoking
    `dequeueKeyEvents` or `discardKeyEvents`.

    Specified by:
    :   `enqueueKeyEvents` in class `KeyboardFocusManager`

    Parameters:
    :   `after` - timestamp of current event, or the current, system time if
        the current event has no timestamp, or the AWT cannot determine
        which event is currently being handled
    :   `untilFocused` - Component which will receive a FOCUS\_GAINED event
        before any pending KeyEvents

    See Also:
    :   - [`dequeueKeyEvents(long, java.awt.Component)`](#dequeueKeyEvents(long,java.awt.Component))
        - [`discardKeyEvents(java.awt.Component)`](#discardKeyEvents(java.awt.Component))
  + ### dequeueKeyEvents

    protected void dequeueKeyEvents(long after,
    [Component](Component.md "class in java.awt") untilFocused)

    Releases for normal dispatching to the current focus owner all
    KeyEvents which were enqueued because of a call to
    `enqueueKeyEvents` with the same timestamp and Component.
    If the given timestamp is less than zero, the outstanding enqueue
    request for the given Component with the **oldest** timestamp (if
    any) should be cancelled.

    Specified by:
    :   `dequeueKeyEvents` in class `KeyboardFocusManager`

    Parameters:
    :   `after` - the timestamp specified in the call to
        `enqueueKeyEvents`, or any value < 0
    :   `untilFocused` - the Component specified in the call to
        `enqueueKeyEvents`

    See Also:
    :   - [`enqueueKeyEvents(long, java.awt.Component)`](#enqueueKeyEvents(long,java.awt.Component))
        - [`discardKeyEvents(java.awt.Component)`](#discardKeyEvents(java.awt.Component))
  + ### discardKeyEvents

    protected void discardKeyEvents([Component](Component.md "class in java.awt") comp)

    Discards all KeyEvents which were enqueued because of one or more calls
    to `enqueueKeyEvents` with the specified Component, or one of
    its descendants.

    Specified by:
    :   `discardKeyEvents` in class `KeyboardFocusManager`

    Parameters:
    :   `comp` - the Component specified in one or more calls to
        `enqueueKeyEvents`, or a parent of such a Component

    See Also:
    :   - [`enqueueKeyEvents(long, java.awt.Component)`](#enqueueKeyEvents(long,java.awt.Component))
        - [`dequeueKeyEvents(long, java.awt.Component)`](#dequeueKeyEvents(long,java.awt.Component))
  + ### focusPreviousComponent

    public void focusPreviousComponent([Component](Component.md "class in java.awt") aComponent)

    Focuses the Component before aComponent, typically based on a
    FocusTraversalPolicy.

    Specified by:
    :   `focusPreviousComponent` in class `KeyboardFocusManager`

    Parameters:
    :   `aComponent` - the Component that is the basis for the focus
        traversal operation

    See Also:
    :   - [`FocusTraversalPolicy`](FocusTraversalPolicy.md "class in java.awt")
        - [`Component.transferFocusBackward()`](Component.md#transferFocusBackward())
  + ### focusNextComponent

    public void focusNextComponent([Component](Component.md "class in java.awt") aComponent)

    Focuses the Component after aComponent, typically based on a
    FocusTraversalPolicy.

    Specified by:
    :   `focusNextComponent` in class `KeyboardFocusManager`

    Parameters:
    :   `aComponent` - the Component that is the basis for the focus
        traversal operation

    See Also:
    :   - [`FocusTraversalPolicy`](FocusTraversalPolicy.md "class in java.awt")
        - [`Component.transferFocus()`](Component.md#transferFocus())
  + ### upFocusCycle

    public void upFocusCycle([Component](Component.md "class in java.awt") aComponent)

    Moves the focus up one focus traversal cycle. Typically, the focus owner
    is set to aComponent's focus cycle root, and the current focus cycle
    root is set to the new focus owner's focus cycle root. If, however,
    aComponent's focus cycle root is a Window, then the focus owner is set
    to the focus cycle root's default Component to focus, and the current
    focus cycle root is unchanged.

    Specified by:
    :   `upFocusCycle` in class `KeyboardFocusManager`

    Parameters:
    :   `aComponent` - the Component that is the basis for the focus
        traversal operation

    See Also:
    :   - [`Component.transferFocusUpCycle()`](Component.md#transferFocusUpCycle())
  + ### downFocusCycle

    public void downFocusCycle([Container](Container.md "class in java.awt") aContainer)

    Moves the focus down one focus traversal cycle. If aContainer is a focus
    cycle root, then the focus owner is set to aContainer's default
    Component to focus, and the current focus cycle root is set to
    aContainer. If aContainer is not a focus cycle root, then no focus
    traversal operation occurs.

    Specified by:
    :   `downFocusCycle` in class `KeyboardFocusManager`

    Parameters:
    :   `aContainer` - the Container that is the basis for the focus
        traversal operation

    See Also:
    :   - [`Container.transferFocusDownCycle()`](Container.md#transferFocusDownCycle())