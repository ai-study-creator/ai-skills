Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class InternalFrameFocusTraversalPolicy

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.FocusTraversalPolicy](../../java/awt/FocusTraversalPolicy.md "class in java.awt")

javax.swing.InternalFrameFocusTraversalPolicy

Direct Known Subclasses:
:   `SortingFocusTraversalPolicy`

---

public abstract class InternalFrameFocusTraversalPolicy
extends [FocusTraversalPolicy](../../java/awt/FocusTraversalPolicy.md "class in java.awt")

A FocusTraversalPolicy which can optionally provide an algorithm for
determining a JInternalFrame's initial Component. The initial Component is
the first to receive focus when the JInternalFrame is first selected. By
default, this is the same as the JInternalFrame's default Component to
focus.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `InternalFrameFocusTraversalPolicy()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Component`

  `getInitialComponent(JInternalFrame frame)`

  Returns the Component that should receive the focus when a
  JInternalFrame is selected for the first time.

  ### Methods inherited from class java.awt.[FocusTraversalPolicy](../../java/awt/FocusTraversalPolicy.md "class in java.awt")

  `getComponentAfter, getComponentBefore, getDefaultComponent, getFirstComponent, getInitialComponent, getLastComponent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### InternalFrameFocusTraversalPolicy

    protected InternalFrameFocusTraversalPolicy()

    Constructor for subclasses to call.
* ## Method Details

  + ### getInitialComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getInitialComponent([JInternalFrame](JInternalFrame.md "class in javax.swing") frame)

    Returns the Component that should receive the focus when a
    JInternalFrame is selected for the first time. Once the JInternalFrame
    has been selected by a call to `setSelected(true)`, the
    initial Component will not be used again. Instead, if the JInternalFrame
    loses and subsequently regains selection, or is made invisible or
    undisplayable and subsequently made visible and displayable, the
    JInternalFrame's most recently focused Component will become the focus
    owner. The default implementation of this method returns the
    JInternalFrame's default Component to focus.

    Parameters:
    :   `frame` - the JInternalFrame whose initial Component is to be
        returned

    Returns:
    :   the Component that should receive the focus when frame is
        selected for the first time, or null if no suitable Component
        can be found

    Throws:
    :   `IllegalArgumentException` - if window is null

    See Also:
    :   - [`JInternalFrame.getMostRecentFocusOwner()`](JInternalFrame.md#getMostRecentFocusOwner())