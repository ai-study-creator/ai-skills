Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DefaultFocusManager

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.KeyboardFocusManager](../../java/awt/KeyboardFocusManager.md "class in java.awt")

[java.awt.DefaultKeyboardFocusManager](../../java/awt/DefaultKeyboardFocusManager.md "class in java.awt")

[javax.swing.FocusManager](FocusManager.md "class in javax.swing")

javax.swing.DefaultFocusManager

All Implemented Interfaces:
:   `KeyEventDispatcher`, `KeyEventPostProcessor`

---

public class DefaultFocusManager
extends [FocusManager](FocusManager.md "class in javax.swing")

This class has been obsoleted by the 1.4 focus APIs. While client code may
still use this class, developers are strongly encouraged to use
`java.awt.KeyboardFocusManager` and
`java.awt.DefaultKeyboardFocusManager` instead.

Please see
[How to Use the Focus Subsystem](https://docs.oracle.com/javase/tutorial/uiswing/misc/focus.html),
a section in *The Java Tutorial*, and the
[Focus Specification](../../java/awt/doc-files/FocusSpec.md)
for more information.

Since:
:   1.2

* ## Field Summary

  ### Fields inherited from class javax.swing.[FocusManager](FocusManager.md "class in javax.swing")

  `FOCUS_MANAGER_CLASS_PROPERTY`

  ### Fields inherited from class java.awt.[KeyboardFocusManager](../../java/awt/KeyboardFocusManager.md "class in java.awt")

  `BACKWARD_TRAVERSAL_KEYS, DOWN_CYCLE_TRAVERSAL_KEYS, FORWARD_TRAVERSAL_KEYS, UP_CYCLE_TRAVERSAL_KEYS`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultFocusManager()`

  Constructs a `DefaultFocusManager`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `compareTabOrder(Component a,
  Component b)`

  Compares the components by their focus traversal cycle order.

  `Component`

  `getComponentAfter(Container aContainer,
  Component aComponent)`

  Returns the component after.

  `Component`

  `getComponentBefore(Container aContainer,
  Component aComponent)`

  Returns the component before.

  `Component`

  `getFirstComponent(Container aContainer)`

  Returns the first component.

  `Component`

  `getLastComponent(Container aContainer)`

  Returns the last component.

  ### Methods inherited from class javax.swing.[FocusManager](FocusManager.md "class in javax.swing")

  `disableSwingFocusManager, getCurrentManager, isFocusManagerEnabled, setCurrentManager`

  ### Methods inherited from class java.awt.[DefaultKeyboardFocusManager](../../java/awt/DefaultKeyboardFocusManager.md "class in java.awt")

  `dequeueKeyEvents, discardKeyEvents, dispatchEvent, dispatchKeyEvent, downFocusCycle, enqueueKeyEvents, focusNextComponent, focusPreviousComponent, postProcessKeyEvent, processKeyEvent, upFocusCycle`

  ### Methods inherited from class java.awt.[KeyboardFocusManager](../../java/awt/KeyboardFocusManager.md "class in java.awt")

  `addKeyEventDispatcher, addKeyEventPostProcessor, addPropertyChangeListener, addPropertyChangeListener, addVetoableChangeListener, addVetoableChangeListener, clearFocusOwner, clearGlobalFocusOwner, downFocusCycle, firePropertyChange, fireVetoableChange, focusNextComponent, focusPreviousComponent, getActiveWindow, getCurrentFocusCycleRoot, getCurrentKeyboardFocusManager, getDefaultFocusTraversalKeys, getDefaultFocusTraversalPolicy, getFocusedWindow, getFocusOwner, getGlobalActiveWindow, getGlobalCurrentFocusCycleRoot, getGlobalFocusedWindow, getGlobalFocusOwner, getGlobalPermanentFocusOwner, getKeyEventDispatchers, getKeyEventPostProcessors, getPermanentFocusOwner, getPropertyChangeListeners, getPropertyChangeListeners, getVetoableChangeListeners, getVetoableChangeListeners, redispatchEvent, removeKeyEventDispatcher, removeKeyEventPostProcessor, removePropertyChangeListener, removePropertyChangeListener, removeVetoableChangeListener, removeVetoableChangeListener, setCurrentKeyboardFocusManager, setDefaultFocusTraversalKeys, setDefaultFocusTraversalPolicy, setGlobalActiveWindow, setGlobalCurrentFocusCycleRoot, setGlobalFocusedWindow, setGlobalFocusOwner, setGlobalPermanentFocusOwner, upFocusCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DefaultFocusManager

    public DefaultFocusManager()

    Constructs a `DefaultFocusManager`.
* ## Method Details

  + ### getComponentAfter

    public [Component](../../java/awt/Component.md "class in java.awt") getComponentAfter([Container](../../java/awt/Container.md "class in java.awt") aContainer,
    [Component](../../java/awt/Component.md "class in java.awt") aComponent)

    Returns the component after.

    Parameters:
    :   `aContainer` - a container
    :   `aComponent` - a component

    Returns:
    :   the component after
  + ### getComponentBefore

    public [Component](../../java/awt/Component.md "class in java.awt") getComponentBefore([Container](../../java/awt/Container.md "class in java.awt") aContainer,
    [Component](../../java/awt/Component.md "class in java.awt") aComponent)

    Returns the component before.

    Parameters:
    :   `aContainer` - a container
    :   `aComponent` - a component

    Returns:
    :   the component before
  + ### getFirstComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getFirstComponent([Container](../../java/awt/Container.md "class in java.awt") aContainer)

    Returns the first component.

    Parameters:
    :   `aContainer` - a container

    Returns:
    :   the first component
  + ### getLastComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getLastComponent([Container](../../java/awt/Container.md "class in java.awt") aContainer)

    Returns the last component.

    Parameters:
    :   `aContainer` - a container

    Returns:
    :   the last component
  + ### compareTabOrder

    public boolean compareTabOrder([Component](../../java/awt/Component.md "class in java.awt") a,
    [Component](../../java/awt/Component.md "class in java.awt") b)

    Compares the components by their focus traversal cycle order.

    Parameters:
    :   `a` - the first component
    :   `b` - the second component

    Returns:
    :   a comparison of the components by their focus traversal cycle order