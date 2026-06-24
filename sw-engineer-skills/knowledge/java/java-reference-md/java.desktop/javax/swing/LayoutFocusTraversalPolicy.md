Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class LayoutFocusTraversalPolicy

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.FocusTraversalPolicy](../../java/awt/FocusTraversalPolicy.md "class in java.awt")

[javax.swing.InternalFrameFocusTraversalPolicy](InternalFrameFocusTraversalPolicy.md "class in javax.swing")

[javax.swing.SortingFocusTraversalPolicy](SortingFocusTraversalPolicy.md "class in javax.swing")

javax.swing.LayoutFocusTraversalPolicy

All Implemented Interfaces:
:   `Serializable`

---

public class LayoutFocusTraversalPolicy
extends [SortingFocusTraversalPolicy](SortingFocusTraversalPolicy.md "class in javax.swing")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A SortingFocusTraversalPolicy which sorts Components based on their size,
position, and orientation. Based on their size and position, Components are
roughly categorized into rows and columns. For a Container with horizontal
orientation, columns run left-to-right or right-to-left, and rows run top-
to-bottom. For a Container with vertical orientation, columns run top-to-
bottom and rows run left-to-right or right-to-left. See
`ComponentOrientation` for more information. All columns in a
row are fully traversed before proceeding to the next row.

Since:
:   1.4

See Also:
:   * [`ComponentOrientation`](../../java/awt/ComponentOrientation.md "class in java.awt")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LayoutFocusTraversalPolicy()`

  Constructs a LayoutFocusTraversalPolicy.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected boolean`

  `accept(Component aComponent)`

  Determines whether the specified `Component`
  is an acceptable choice as the new focus owner.

  `Component`

  `getComponentAfter(Container aContainer,
  Component aComponent)`

  Returns the Component that should receive the focus after aComponent.

  `Component`

  `getComponentBefore(Container aContainer,
  Component aComponent)`

  Returns the Component that should receive the focus before aComponent.

  `Component`

  `getFirstComponent(Container aContainer)`

  Returns the first Component in the traversal cycle.

  `Component`

  `getLastComponent(Container aContainer)`

  Returns the last Component in the traversal cycle.

  ### Methods inherited from class javax.swing.[SortingFocusTraversalPolicy](SortingFocusTraversalPolicy.md "class in javax.swing")

  `getComparator, getDefaultComponent, getImplicitDownCycleTraversal, setComparator, setImplicitDownCycleTraversal`

  ### Methods inherited from class javax.swing.[InternalFrameFocusTraversalPolicy](InternalFrameFocusTraversalPolicy.md "class in javax.swing")

  `getInitialComponent`

  ### Methods inherited from class java.awt.[FocusTraversalPolicy](../../java/awt/FocusTraversalPolicy.md "class in java.awt")

  `getInitialComponent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LayoutFocusTraversalPolicy

    public LayoutFocusTraversalPolicy()

    Constructs a LayoutFocusTraversalPolicy.
* ## Method Details

  + ### getComponentAfter

    public [Component](../../java/awt/Component.md "class in java.awt") getComponentAfter([Container](../../java/awt/Container.md "class in java.awt") aContainer,
    [Component](../../java/awt/Component.md "class in java.awt") aComponent)

    Returns the Component that should receive the focus after aComponent.
    aContainer must be a focus cycle root of aComponent.

    By default, LayoutFocusTraversalPolicy implicitly transfers focus down-
    cycle. That is, during normal focus traversal, the Component
    traversed after a focus cycle root will be the focus-cycle-root's
    default Component to focus. This behavior can be disabled using the
    `setImplicitDownCycleTraversal` method.

    If aContainer is [focus
    traversal policy provider](../../java/awt/doc-files/FocusSpec.md#FocusTraversalPolicyProviders), the focus is always transferred down-cycle.

    Overrides:
    :   `getComponentAfter` in class `SortingFocusTraversalPolicy`

    Parameters:
    :   `aContainer` - a focus cycle root of aComponent or a focus traversal policy provider
    :   `aComponent` - a (possibly indirect) child of aContainer, or
        aContainer itself

    Returns:
    :   the Component that should receive the focus after aComponent, or
        null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is not a focus cycle
        root of aComponent or a focus traversal policy provider, or if either aContainer or
        aComponent is null
  + ### getComponentBefore

    public [Component](../../java/awt/Component.md "class in java.awt") getComponentBefore([Container](../../java/awt/Container.md "class in java.awt") aContainer,
    [Component](../../java/awt/Component.md "class in java.awt") aComponent)

    Returns the Component that should receive the focus before aComponent.
    aContainer must be a focus cycle root of aComponent.

    By default, LayoutFocusTraversalPolicy implicitly transfers focus down-
    cycle. That is, during normal focus traversal, the Component
    traversed after a focus cycle root will be the focus-cycle-root's
    default Component to focus. This behavior can be disabled using the
    `setImplicitDownCycleTraversal` method.

    If aContainer is [focus
    traversal policy provider](../../java/awt/doc-files/FocusSpec.md#FocusTraversalPolicyProviders), the focus is always transferred down-cycle.

    Overrides:
    :   `getComponentBefore` in class `SortingFocusTraversalPolicy`

    Parameters:
    :   `aContainer` - a focus cycle root of aComponent or a focus traversal policy provider
    :   `aComponent` - a (possibly indirect) child of aContainer, or
        aContainer itself

    Returns:
    :   the Component that should receive the focus before aComponent,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is not a focus cycle
        root of aComponent or a focus traversal policy provider, or if either aContainer or
        aComponent is null
  + ### getFirstComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getFirstComponent([Container](../../java/awt/Container.md "class in java.awt") aContainer)

    Returns the first Component in the traversal cycle. This method is used
    to determine the next Component to focus when traversal wraps in the
    forward direction.

    Overrides:
    :   `getFirstComponent` in class `SortingFocusTraversalPolicy`

    Parameters:
    :   `aContainer` - a focus cycle root of aComponent or a focus traversal policy provider whose
        first Component is to be returned

    Returns:
    :   the first Component in the traversal cycle of aContainer,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is null
  + ### getLastComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getLastComponent([Container](../../java/awt/Container.md "class in java.awt") aContainer)

    Returns the last Component in the traversal cycle. This method is used
    to determine the next Component to focus when traversal wraps in the
    reverse direction.

    Overrides:
    :   `getLastComponent` in class `SortingFocusTraversalPolicy`

    Parameters:
    :   `aContainer` - a focus cycle root of aComponent or a focus traversal policy provider whose
        last Component is to be returned

    Returns:
    :   the last Component in the traversal cycle of aContainer,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is null
  + ### accept

    protected boolean accept([Component](../../java/awt/Component.md "class in java.awt") aComponent)

    Determines whether the specified `Component`
    is an acceptable choice as the new focus owner.
    This method performs the following sequence of operations:
    1. Checks whether `aComponent` is visible, displayable,
       enabled, and focusable. If any of these properties is
       `false`, this method returns `false`.+ If `aComponent` is an instance of `JTable`,
         returns `true`.+ If `aComponent` is an instance of `JComboBox`,
           then returns the value of
           `aComponent.getUI().isFocusTraversable(aComponent)`.+ If `aComponent` is a `JComponent`
             with a `JComponent.WHEN_FOCUSED`
             `InputMap` that is neither `null`
             nor empty, returns `true`.+ Returns the value of
               `DefaultFocusTraversalPolicy.accept(aComponent)`.

    Overrides:
    :   `accept` in class `SortingFocusTraversalPolicy`

    Parameters:
    :   `aComponent` - the `Component` whose fitness
        as a focus owner is to be tested

    Returns:
    :   `true` if `aComponent` is a valid choice
        for a focus owner;
        otherwise `false`

    See Also:
    :   - [`Component.isVisible()`](../../java/awt/Component.md#isVisible())
        - [`Component.isDisplayable()`](../../java/awt/Component.md#isDisplayable())
        - [`Component.isEnabled()`](../../java/awt/Component.md#isEnabled())
        - [`Component.isFocusable()`](../../java/awt/Component.md#isFocusable())
        - [`ComboBoxUI.isFocusTraversable(javax.swing.JComboBox<?>)`](plaf/ComboBoxUI.md#isFocusTraversable(javax.swing.JComboBox))
        - [`JComponent.getInputMap(int)`](JComponent.md#getInputMap(int))
        - [`DefaultFocusTraversalPolicy.accept(java.awt.Component)`](../../java/awt/DefaultFocusTraversalPolicy.md#accept(java.awt.Component))