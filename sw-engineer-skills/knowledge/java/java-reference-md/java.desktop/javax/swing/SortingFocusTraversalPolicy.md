Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class SortingFocusTraversalPolicy

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.FocusTraversalPolicy](../../java/awt/FocusTraversalPolicy.md "class in java.awt")

[javax.swing.InternalFrameFocusTraversalPolicy](InternalFrameFocusTraversalPolicy.md "class in javax.swing")

javax.swing.SortingFocusTraversalPolicy

Direct Known Subclasses:
:   `LayoutFocusTraversalPolicy`

---

public class SortingFocusTraversalPolicy
extends [InternalFrameFocusTraversalPolicy](InternalFrameFocusTraversalPolicy.md "class in javax.swing")

A FocusTraversalPolicy that determines traversal order by sorting the
Components of a focus traversal cycle based on a given Comparator. Portions
of the Component hierarchy that are not visible and displayable will not be
included.

By default, SortingFocusTraversalPolicy implicitly transfers focus down-
cycle. That is, during normal focus traversal, the Component
traversed after a focus cycle root will be the focus-cycle-root's default
Component to focus. This behavior can be disabled using the
`setImplicitDownCycleTraversal` method.

By default, methods of this class with return a Component only if it is
visible, displayable, enabled, and focusable. Subclasses can modify this
behavior by overriding the `accept` method.

This policy takes into account [focus traversal
policy providers](../../java/awt/doc-files/FocusSpec.md#FocusTraversalPolicyProviders). When searching for first/last/next/previous Component,
if a focus traversal policy provider is encountered, its focus traversal
policy is used to perform the search operation.

Since:
:   1.4

See Also:
:   * [`Comparator`](../../../java.base/java/util/Comparator.md "interface in java.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SortingFocusTraversalPolicy()`

  Constructs a SortingFocusTraversalPolicy without a Comparator.

  `SortingFocusTraversalPolicy(Comparator<? super Component> comparator)`

  Constructs a SortingFocusTraversalPolicy with the specified Comparator.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected boolean`

  `accept(Component aComponent)`

  Determines whether a Component is an acceptable choice as the new
  focus owner.

  `protected Comparator<? super Component>`

  `getComparator()`

  Returns the Comparator which will be used to sort the Components in a
  focus traversal cycle.

  `Component`

  `getComponentAfter(Container aContainer,
  Component aComponent)`

  Returns the Component that should receive the focus after aComponent.

  `Component`

  `getComponentBefore(Container aContainer,
  Component aComponent)`

  Returns the Component that should receive the focus before aComponent.

  `Component`

  `getDefaultComponent(Container aContainer)`

  Returns the default Component to focus.

  `Component`

  `getFirstComponent(Container aContainer)`

  Returns the first Component in the traversal cycle.

  `boolean`

  `getImplicitDownCycleTraversal()`

  Returns whether this SortingFocusTraversalPolicy transfers focus down-
  cycle implicitly.

  `Component`

  `getLastComponent(Container aContainer)`

  Returns the last Component in the traversal cycle.

  `protected void`

  `setComparator(Comparator<? super Component> comparator)`

  Sets the Comparator which will be used to sort the Components in a
  focus traversal cycle.

  `void`

  `setImplicitDownCycleTraversal(boolean implicitDownCycleTraversal)`

  Sets whether this SortingFocusTraversalPolicy transfers focus down-cycle
  implicitly.

  ### Methods inherited from class javax.swing.[InternalFrameFocusTraversalPolicy](InternalFrameFocusTraversalPolicy.md "class in javax.swing")

  `getInitialComponent`

  ### Methods inherited from class java.awt.[FocusTraversalPolicy](../../java/awt/FocusTraversalPolicy.md "class in java.awt")

  `getInitialComponent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SortingFocusTraversalPolicy

    protected SortingFocusTraversalPolicy()

    Constructs a SortingFocusTraversalPolicy without a Comparator.
    Subclasses must set the Comparator using `setComparator`
    before installing this FocusTraversalPolicy on a focus cycle root or
    KeyboardFocusManager.
  + ### SortingFocusTraversalPolicy

    public SortingFocusTraversalPolicy([Comparator](../../../java.base/java/util/Comparator.md "interface in java.util")<? super [Component](../../java/awt/Component.md "class in java.awt")> comparator)

    Constructs a SortingFocusTraversalPolicy with the specified Comparator.

    Parameters:
    :   `comparator` - the `Comparator` to sort by
* ## Method Details

  + ### getComponentAfter

    public [Component](../../java/awt/Component.md "class in java.awt") getComponentAfter([Container](../../java/awt/Container.md "class in java.awt") aContainer,
    [Component](../../java/awt/Component.md "class in java.awt") aComponent)

    Returns the Component that should receive the focus after aComponent.
    aContainer must be a focus cycle root of aComponent or a focus traversal policy provider.

    By default, SortingFocusTraversalPolicy implicitly transfers focus down-
    cycle. That is, during normal focus traversal, the Component
    traversed after a focus cycle root will be the focus-cycle-root's
    default Component to focus. This behavior can be disabled using the
    `setImplicitDownCycleTraversal` method.

    If aContainer is [focus
    traversal policy provider](../../java/awt/doc-files/FocusSpec.md#FocusTraversalPolicyProviders), the focus is always transferred down-cycle.

    Specified by:
    :   `getComponentAfter` in class `FocusTraversalPolicy`

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
    aContainer must be a focus cycle root of aComponent or a focus traversal policy provider.

    By default, SortingFocusTraversalPolicy implicitly transfers focus down-
    cycle. That is, during normal focus traversal, the Component
    traversed after a focus cycle root will be the focus-cycle-root's
    default Component to focus. This behavior can be disabled using the
    `setImplicitDownCycleTraversal` method.

    If aContainer is [focus
    traversal policy provider](../../java/awt/doc-files/FocusSpec.md#FocusTraversalPolicyProviders), the focus is always transferred down-cycle.

    Specified by:
    :   `getComponentBefore` in class `FocusTraversalPolicy`

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

    Specified by:
    :   `getFirstComponent` in class `FocusTraversalPolicy`

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

    Specified by:
    :   `getLastComponent` in class `FocusTraversalPolicy`

    Parameters:
    :   `aContainer` - a focus cycle root of aComponent or a focus traversal policy provider whose
        last Component is to be returned

    Returns:
    :   the last Component in the traversal cycle of aContainer,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is null
  + ### getDefaultComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getDefaultComponent([Container](../../java/awt/Container.md "class in java.awt") aContainer)

    Returns the default Component to focus. This Component will be the first
    to receive focus when traversing down into a new focus traversal cycle
    rooted at aContainer. The default implementation of this method
    returns the same Component as `getFirstComponent`.

    Specified by:
    :   `getDefaultComponent` in class `FocusTraversalPolicy`

    Parameters:
    :   `aContainer` - a focus cycle root of aComponent or a focus traversal policy provider whose
        default Component is to be returned

    Returns:
    :   the default Component in the traversal cycle of aContainer,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is null

    See Also:
    :   - [`getFirstComponent(java.awt.Container)`](#getFirstComponent(java.awt.Container))
  + ### setImplicitDownCycleTraversal

    public void setImplicitDownCycleTraversal(boolean implicitDownCycleTraversal)

    Sets whether this SortingFocusTraversalPolicy transfers focus down-cycle
    implicitly. If `true`, during normal focus traversal,
    the Component traversed after a focus cycle root will be the focus-
    cycle-root's default Component to focus. If `false`, the
    next Component in the focus traversal cycle rooted at the specified
    focus cycle root will be traversed instead. The default value for this
    property is `true`.

    Parameters:
    :   `implicitDownCycleTraversal` - whether this
        SortingFocusTraversalPolicy transfers focus down-cycle implicitly

    See Also:
    :   - [`getImplicitDownCycleTraversal()`](#getImplicitDownCycleTraversal())
        - [`getFirstComponent(java.awt.Container)`](#getFirstComponent(java.awt.Container))
  + ### getImplicitDownCycleTraversal

    public boolean getImplicitDownCycleTraversal()

    Returns whether this SortingFocusTraversalPolicy transfers focus down-
    cycle implicitly. If `true`, during normal focus
    traversal, the Component traversed after a focus cycle root will be the
    focus-cycle-root's default Component to focus. If `false`,
    the next Component in the focus traversal cycle rooted at the specified
    focus cycle root will be traversed instead.

    Returns:
    :   whether this SortingFocusTraversalPolicy transfers focus down-
        cycle implicitly

    See Also:
    :   - [`setImplicitDownCycleTraversal(boolean)`](#setImplicitDownCycleTraversal(boolean))
        - [`getFirstComponent(java.awt.Container)`](#getFirstComponent(java.awt.Container))
  + ### setComparator

    protected void setComparator([Comparator](../../../java.base/java/util/Comparator.md "interface in java.util")<? super [Component](../../java/awt/Component.md "class in java.awt")> comparator)

    Sets the Comparator which will be used to sort the Components in a
    focus traversal cycle.

    Parameters:
    :   `comparator` - the Comparator which will be used for sorting
  + ### getComparator

    protected [Comparator](../../../java.base/java/util/Comparator.md "interface in java.util")<? super [Component](../../java/awt/Component.md "class in java.awt")> getComparator()

    Returns the Comparator which will be used to sort the Components in a
    focus traversal cycle.

    Returns:
    :   the Comparator which will be used for sorting
  + ### accept

    protected boolean accept([Component](../../java/awt/Component.md "class in java.awt") aComponent)

    Determines whether a Component is an acceptable choice as the new
    focus owner. By default, this method will accept a Component if and
    only if it is visible, displayable, enabled, and focusable.

    Parameters:
    :   `aComponent` - the Component whose fitness as a focus owner is to
        be tested

    Returns:
    :   `true` if aComponent is visible, displayable,
        enabled, and focusable; `false` otherwise