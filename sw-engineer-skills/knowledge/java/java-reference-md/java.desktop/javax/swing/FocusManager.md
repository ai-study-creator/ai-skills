Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class FocusManager

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.KeyboardFocusManager](../../java/awt/KeyboardFocusManager.md "class in java.awt")

[java.awt.DefaultKeyboardFocusManager](../../java/awt/DefaultKeyboardFocusManager.md "class in java.awt")

javax.swing.FocusManager

All Implemented Interfaces:
:   `KeyEventDispatcher`, `KeyEventPostProcessor`

Direct Known Subclasses:
:   `DefaultFocusManager`

---

public abstract class FocusManager
extends [DefaultKeyboardFocusManager](../../java/awt/DefaultKeyboardFocusManager.md "class in java.awt")

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

See Also:
:   * [Focus Specification](../../java/awt/doc-files/FocusSpec.md)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `FOCUS_MANAGER_CLASS_PROPERTY`

  This field is obsolete, and its use is discouraged since its
  specification is incompatible with the 1.4 focus APIs.

  ### Fields inherited from class java.awt.[KeyboardFocusManager](../../java/awt/KeyboardFocusManager.md "class in java.awt")

  `BACKWARD_TRAVERSAL_KEYS, DOWN_CYCLE_TRAVERSAL_KEYS, FORWARD_TRAVERSAL_KEYS, UP_CYCLE_TRAVERSAL_KEYS`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FocusManager()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static void`

  `disableSwingFocusManager()`

  Deprecated.

  as of 1.4, replaced by
  `KeyboardFocusManager.setDefaultFocusTraversalPolicy(FocusTraversalPolicy)`

  `static FocusManager`

  `getCurrentManager()`

  Returns the current `KeyboardFocusManager` instance
  for the calling thread's context.

  `static boolean`

  `isFocusManagerEnabled()`

  Deprecated.

  As of 1.4, replaced by
  `KeyboardFocusManager.getDefaultFocusTraversalPolicy()`

  `static void`

  `setCurrentManager(FocusManager aFocusManager)`

  Sets the current `KeyboardFocusManager` instance
  for the calling thread's context.

  ### Methods inherited from class java.awt.[DefaultKeyboardFocusManager](../../java/awt/DefaultKeyboardFocusManager.md "class in java.awt")

  `dequeueKeyEvents, discardKeyEvents, dispatchEvent, dispatchKeyEvent, downFocusCycle, enqueueKeyEvents, focusNextComponent, focusPreviousComponent, postProcessKeyEvent, processKeyEvent, upFocusCycle`

  ### Methods inherited from class java.awt.[KeyboardFocusManager](../../java/awt/KeyboardFocusManager.md "class in java.awt")

  `addKeyEventDispatcher, addKeyEventPostProcessor, addPropertyChangeListener, addPropertyChangeListener, addVetoableChangeListener, addVetoableChangeListener, clearFocusOwner, clearGlobalFocusOwner, downFocusCycle, firePropertyChange, fireVetoableChange, focusNextComponent, focusPreviousComponent, getActiveWindow, getCurrentFocusCycleRoot, getCurrentKeyboardFocusManager, getDefaultFocusTraversalKeys, getDefaultFocusTraversalPolicy, getFocusedWindow, getFocusOwner, getGlobalActiveWindow, getGlobalCurrentFocusCycleRoot, getGlobalFocusedWindow, getGlobalFocusOwner, getGlobalPermanentFocusOwner, getKeyEventDispatchers, getKeyEventPostProcessors, getPermanentFocusOwner, getPropertyChangeListeners, getPropertyChangeListeners, getVetoableChangeListeners, getVetoableChangeListeners, redispatchEvent, removeKeyEventDispatcher, removeKeyEventPostProcessor, removePropertyChangeListener, removePropertyChangeListener, removeVetoableChangeListener, removeVetoableChangeListener, setCurrentKeyboardFocusManager, setDefaultFocusTraversalKeys, setDefaultFocusTraversalPolicy, setGlobalActiveWindow, setGlobalCurrentFocusCycleRoot, setGlobalFocusedWindow, setGlobalFocusOwner, setGlobalPermanentFocusOwner, upFocusCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FOCUS\_MANAGER\_CLASS\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FOCUS\_MANAGER\_CLASS\_PROPERTY

    This field is obsolete, and its use is discouraged since its
    specification is incompatible with the 1.4 focus APIs.
    The current FocusManager is no longer a property of the UI.
    Client code must query for the current FocusManager using
    `KeyboardFocusManager.getCurrentKeyboardFocusManager()`.
    See the Focus Specification for more information.

    See Also:
    :   - [`KeyboardFocusManager.getCurrentKeyboardFocusManager()`](../../java/awt/KeyboardFocusManager.md#getCurrentKeyboardFocusManager())
        - [Focus Specification](../../java/awt/doc-files/FocusSpec.md)
        - [Constant Field Values](../../../constant-values.md#javax.swing.FocusManager.FOCUS_MANAGER_CLASS_PROPERTY)
* ## Constructor Details

  + ### FocusManager

    protected FocusManager()

    Constructor for subclasses to call.
* ## Method Details

  + ### getCurrentManager

    public static [FocusManager](FocusManager.md "class in javax.swing") getCurrentManager()

    Returns the current `KeyboardFocusManager` instance
    for the calling thread's context.

    Returns:
    :   this thread's context's `KeyboardFocusManager`

    See Also:
    :   - [`setCurrentManager(javax.swing.FocusManager)`](#setCurrentManager(javax.swing.FocusManager))
  + ### setCurrentManager

    public static void setCurrentManager([FocusManager](FocusManager.md "class in javax.swing") aFocusManager)
    throws [SecurityException](../../../java.base/java/lang/SecurityException.md "class in java.lang")

    Sets the current `KeyboardFocusManager` instance
    for the calling thread's context. If `null` is
    specified, then the current `KeyboardFocusManager`
    is replaced with a new instance of
    `DefaultKeyboardFocusManager`.

    If a `SecurityManager` is installed,
    the calling thread must be granted the `AWTPermission`
    "replaceKeyboardFocusManager" in order to replace the
    the current `KeyboardFocusManager`.
    If this permission is not granted,
    this method will throw a `SecurityException`,
    and the current `KeyboardFocusManager` will be unchanged.

    Parameters:
    :   `aFocusManager` - the new `KeyboardFocusManager`
        for this thread's context

    Throws:
    :   `SecurityException` - if the calling thread does not have permission
        to replace the current `KeyboardFocusManager`

    See Also:
    :   - [`getCurrentManager()`](#getCurrentManager())
        - [`DefaultKeyboardFocusManager`](../../java/awt/DefaultKeyboardFocusManager.md "class in java.awt")
  + ### disableSwingFocusManager

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static void disableSwingFocusManager()

    Deprecated.

    as of 1.4, replaced by
    `KeyboardFocusManager.setDefaultFocusTraversalPolicy(FocusTraversalPolicy)`

    Changes the current `KeyboardFocusManager`'s default
    `FocusTraversalPolicy` to
    `DefaultFocusTraversalPolicy`.

    See Also:
    :   - [`DefaultFocusTraversalPolicy`](../../java/awt/DefaultFocusTraversalPolicy.md "class in java.awt")
        - [`KeyboardFocusManager.setDefaultFocusTraversalPolicy(java.awt.FocusTraversalPolicy)`](../../java/awt/KeyboardFocusManager.md#setDefaultFocusTraversalPolicy(java.awt.FocusTraversalPolicy))
  + ### isFocusManagerEnabled

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static boolean isFocusManagerEnabled()

    Deprecated.

    As of 1.4, replaced by
    `KeyboardFocusManager.getDefaultFocusTraversalPolicy()`

    Returns whether the application has invoked
    `disableSwingFocusManager()`.

    Returns:
    :   `true` if focus manager is enabled.

    See Also:
    :   - [`disableSwingFocusManager()`](#disableSwingFocusManager())