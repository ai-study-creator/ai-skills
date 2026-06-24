Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class ContainerOrderFocusTraversalPolicy

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.FocusTraversalPolicy](FocusTraversalPolicy.md "class in java.awt")

java.awt.ContainerOrderFocusTraversalPolicy

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `DefaultFocusTraversalPolicy`

---

public class ContainerOrderFocusTraversalPolicy
extends [FocusTraversalPolicy](FocusTraversalPolicy.md "class in java.awt")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A FocusTraversalPolicy that determines traversal order based on the order
of child Components in a Container. From a particular focus cycle root, the
policy makes a pre-order traversal of the Component hierarchy, and traverses
a Container's children according to the ordering of the array returned by
`Container.getComponents()`. Portions of the hierarchy that are
not visible and displayable will not be searched.

By default, ContainerOrderFocusTraversalPolicy implicitly transfers focus
down-cycle. That is, during normal forward focus traversal, the Component
traversed after a focus cycle root will be the focus-cycle-root's default
Component to focus. This behavior can be disabled using the
`setImplicitDownCycleTraversal` method.

By default, methods of this class will return a Component only if it is
visible, displayable, enabled, and focusable. Subclasses can modify this
behavior by overriding the `accept` method.

This policy takes into account [focus traversal
policy providers](doc-files/FocusSpec.md#FocusTraversalPolicyProviders). When searching for first/last/next/previous Component,
if a focus traversal policy provider is encountered, its focus traversal
policy is used to perform the search operation.

Since:
:   1.4

See Also:
:   * [`Container.getComponents()`](Container.md#getComponents())
    * [Serialized Form](../../../serialized-form.md#java.awt.ContainerOrderFocusTraversalPolicy)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ContainerOrderFocusTraversalPolicy()`

  Constructs a `ContainerOrderFocusTraversalPolicy`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected boolean`

  `accept(Component aComponent)`

  Determines whether a Component is an acceptable choice as the new
  focus owner.

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

  Returns whether this ContainerOrderFocusTraversalPolicy transfers focus
  down-cycle implicitly.

  `Component`

  `getLastComponent(Container aContainer)`

  Returns the last Component in the traversal cycle.

  `void`

  `setImplicitDownCycleTraversal(boolean implicitDownCycleTraversal)`

  Sets whether this ContainerOrderFocusTraversalPolicy transfers focus
  down-cycle implicitly.

  ### Methods inherited from class java.awt.[FocusTraversalPolicy](FocusTraversalPolicy.md "class in java.awt")

  `getInitialComponent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ContainerOrderFocusTraversalPolicy

    public ContainerOrderFocusTraversalPolicy()

    Constructs a `ContainerOrderFocusTraversalPolicy`.
* ## Method Details

  + ### getComponentAfter

    public [Component](Component.md "class in java.awt") getComponentAfter([Container](Container.md "class in java.awt") aContainer,
    [Component](Component.md "class in java.awt") aComponent)

    Returns the Component that should receive the focus after aComponent.
    aContainer must be a focus cycle root of aComponent or a focus traversal policy provider.

    By default, ContainerOrderFocusTraversalPolicy implicitly transfers
    focus down-cycle. That is, during normal forward focus traversal, the
    Component traversed after a focus cycle root will be the focus-cycle-
    root's default Component to focus. This behavior can be disabled using
    the `setImplicitDownCycleTraversal` method.

    If aContainer is [focus
    traversal policy provider](doc-files/FocusSpec.md#FocusTraversalPolicyProviders), the focus is always transferred down-cycle.

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
        root of aComponent or focus traversal policy provider, or if either aContainer or
        aComponent is null
  + ### getComponentBefore

    public [Component](Component.md "class in java.awt") getComponentBefore([Container](Container.md "class in java.awt") aContainer,
    [Component](Component.md "class in java.awt") aComponent)

    Returns the Component that should receive the focus before aComponent.
    aContainer must be a focus cycle root of aComponent or a [focus traversal policy
    provider](doc-files/FocusSpec.md#FocusTraversalPolicyProviders).

    Specified by:
    :   `getComponentBefore` in class `FocusTraversalPolicy`

    Parameters:
    :   `aContainer` - a focus cycle root of aComponent or focus traversal policy provider
    :   `aComponent` - a (possibly indirect) child of aContainer, or
        aContainer itself

    Returns:
    :   the Component that should receive the focus before aComponent,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is not a focus cycle
        root of aComponent or focus traversal policy provider, or if either aContainer or
        aComponent is null
  + ### getFirstComponent

    public [Component](Component.md "class in java.awt") getFirstComponent([Container](Container.md "class in java.awt") aContainer)

    Returns the first Component in the traversal cycle. This method is used
    to determine the next Component to focus when traversal wraps in the
    forward direction.

    Specified by:
    :   `getFirstComponent` in class `FocusTraversalPolicy`

    Parameters:
    :   `aContainer` - the focus cycle root or focus traversal policy provider whose first
        Component is to be returned

    Returns:
    :   the first Component in the traversal cycle of aContainer,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is null
  + ### getLastComponent

    public [Component](Component.md "class in java.awt") getLastComponent([Container](Container.md "class in java.awt") aContainer)

    Returns the last Component in the traversal cycle. This method is used
    to determine the next Component to focus when traversal wraps in the
    reverse direction.

    Specified by:
    :   `getLastComponent` in class `FocusTraversalPolicy`

    Parameters:
    :   `aContainer` - the focus cycle root or focus traversal policy provider whose last
        Component is to be returned

    Returns:
    :   the last Component in the traversal cycle of aContainer,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is null
  + ### getDefaultComponent

    public [Component](Component.md "class in java.awt") getDefaultComponent([Container](Container.md "class in java.awt") aContainer)

    Returns the default Component to focus. This Component will be the first
    to receive focus when traversing down into a new focus traversal cycle
    rooted at aContainer. The default implementation of this method
    returns the same Component as `getFirstComponent`.

    Specified by:
    :   `getDefaultComponent` in class `FocusTraversalPolicy`

    Parameters:
    :   `aContainer` - the focus cycle root or focus traversal policy provider whose default
        Component is to be returned

    Returns:
    :   the default Component in the traversal cycle of aContainer,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is null

    See Also:
    :   - [`getFirstComponent(java.awt.Container)`](#getFirstComponent(java.awt.Container))
  + ### setImplicitDownCycleTraversal

    public void setImplicitDownCycleTraversal(boolean implicitDownCycleTraversal)

    Sets whether this ContainerOrderFocusTraversalPolicy transfers focus
    down-cycle implicitly. If `true`, during normal forward focus
    traversal, the Component traversed after a focus cycle root will be the
    focus-cycle-root's default Component to focus. If `false`,
    the next Component in the focus traversal cycle rooted at the specified
    focus cycle root will be traversed instead. The default value for this
    property is `true`.

    Parameters:
    :   `implicitDownCycleTraversal` - whether this
        ContainerOrderFocusTraversalPolicy transfers focus down-cycle
        implicitly

    See Also:
    :   - [`getImplicitDownCycleTraversal()`](#getImplicitDownCycleTraversal())
        - [`getFirstComponent(java.awt.Container)`](#getFirstComponent(java.awt.Container))
  + ### getImplicitDownCycleTraversal

    public boolean getImplicitDownCycleTraversal()

    Returns whether this ContainerOrderFocusTraversalPolicy transfers focus
    down-cycle implicitly. If `true`, during normal forward focus
    traversal, the Component traversed after a focus cycle root will be the
    focus-cycle-root's default Component to focus. If `false`,
    the next Component in the focus traversal cycle rooted at the specified
    focus cycle root will be traversed instead.

    Returns:
    :   whether this ContainerOrderFocusTraversalPolicy transfers focus
        down-cycle implicitly

    See Also:
    :   - [`setImplicitDownCycleTraversal(boolean)`](#setImplicitDownCycleTraversal(boolean))
        - [`getFirstComponent(java.awt.Container)`](#getFirstComponent(java.awt.Container))
  + ### accept

    protected boolean accept([Component](Component.md "class in java.awt") aComponent)

    Determines whether a Component is an acceptable choice as the new
    focus owner. By default, this method will accept a Component if and
    only if it is visible, displayable, enabled, and focusable.

    Parameters:
    :   `aComponent` - the Component whose fitness as a focus owner is to
        be tested

    Returns:
    :   `true` if aComponent is visible, displayable,
        enabled, and focusable; `false` otherwise