Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class FocusTraversalPolicy

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.FocusTraversalPolicy

Direct Known Subclasses:
:   `ContainerOrderFocusTraversalPolicy`, `InternalFrameFocusTraversalPolicy`

---

public abstract class FocusTraversalPolicy
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A FocusTraversalPolicy defines the order in which Components with a
particular focus cycle root are traversed. Instances can apply the policy to
arbitrary focus cycle roots, allowing themselves to be shared across
Containers. They do not need to be reinitialized when the focus cycle roots
of a Component hierarchy change.

The core responsibility of a FocusTraversalPolicy is to provide algorithms
determining the next and previous Components to focus when traversing
forward or backward in a UI. Each FocusTraversalPolicy must also provide
algorithms for determining the first, last, and default Components in a
traversal cycle. First and last Components are used when normal forward and
backward traversal, respectively, wraps. The default Component is the first
to receive focus when traversing down into a new focus traversal cycle.
A FocusTraversalPolicy can optionally provide an algorithm for determining
a Window's initial Component. The initial Component is the first to receive
focus when a Window is first made visible.

FocusTraversalPolicy takes into account [focus traversal
policy providers](doc-files/FocusSpec.md#FocusTraversalPolicyProviders). When searching for first/last/next/previous Component,
if a focus traversal policy provider is encountered, its focus traversal
policy is used to perform the search operation.

Please see
[How to Use the Focus Subsystem](https://docs.oracle.com/javase/tutorial/uiswing/misc/focus.html),
a section in *The Java Tutorial*, and the
[Focus Specification](doc-files/FocusSpec.md)
for more information.

Since:
:   1.4

See Also:
:   * [`Container.setFocusTraversalPolicy(java.awt.FocusTraversalPolicy)`](Container.md#setFocusTraversalPolicy(java.awt.FocusTraversalPolicy))
    * [`Container.getFocusTraversalPolicy()`](Container.md#getFocusTraversalPolicy())
    * [`Container.setFocusCycleRoot(boolean)`](Container.md#setFocusCycleRoot(boolean))
    * [`Container.isFocusCycleRoot(java.awt.Container)`](Container.md#isFocusCycleRoot(java.awt.Container))
    * [`Container.setFocusTraversalPolicyProvider(boolean)`](Container.md#setFocusTraversalPolicyProvider(boolean))
    * [`Container.isFocusTraversalPolicyProvider()`](Container.md#isFocusTraversalPolicyProvider())
    * [`KeyboardFocusManager.setDefaultFocusTraversalPolicy(java.awt.FocusTraversalPolicy)`](KeyboardFocusManager.md#setDefaultFocusTraversalPolicy(java.awt.FocusTraversalPolicy))
    * [`KeyboardFocusManager.getDefaultFocusTraversalPolicy()`](KeyboardFocusManager.md#getDefaultFocusTraversalPolicy())

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FocusTraversalPolicy()`

  Constructs a `FocusTraversalPolicy`.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Component`

  `getComponentAfter(Container aContainer,
  Component aComponent)`

  Returns the Component that should receive the focus after aComponent.

  `abstract Component`

  `getComponentBefore(Container aContainer,
  Component aComponent)`

  Returns the Component that should receive the focus before aComponent.

  `abstract Component`

  `getDefaultComponent(Container aContainer)`

  Returns the default Component to focus.

  `abstract Component`

  `getFirstComponent(Container aContainer)`

  Returns the first Component in the traversal cycle.

  `Component`

  `getInitialComponent(Window window)`

  Returns the Component that should receive the focus when a Window is
  made visible for the first time.

  `abstract Component`

  `getLastComponent(Container aContainer)`

  Returns the last Component in the traversal cycle.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FocusTraversalPolicy

    protected FocusTraversalPolicy()

    Constructs a `FocusTraversalPolicy`.
* ## Method Details

  + ### getComponentAfter

    public abstract [Component](Component.md "class in java.awt") getComponentAfter([Container](Container.md "class in java.awt") aContainer,
    [Component](Component.md "class in java.awt") aComponent)

    Returns the Component that should receive the focus after aComponent.
    aContainer must be a focus cycle root of aComponent or a focus traversal
    policy provider.

    Parameters:
    :   `aContainer` - a focus cycle root of aComponent or focus traversal
        policy provider
    :   `aComponent` - a (possibly indirect) child of aContainer, or
        aContainer itself

    Returns:
    :   the Component that should receive the focus after aComponent, or
        null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is not a focus cycle
        root of aComponent or a focus traversal policy provider, or if
        either aContainer or aComponent is null
  + ### getComponentBefore

    public abstract [Component](Component.md "class in java.awt") getComponentBefore([Container](Container.md "class in java.awt") aContainer,
    [Component](Component.md "class in java.awt") aComponent)

    Returns the Component that should receive the focus before aComponent.
    aContainer must be a focus cycle root of aComponent or a focus traversal
    policy provider.

    Parameters:
    :   `aContainer` - a focus cycle root of aComponent or focus traversal
        policy provider
    :   `aComponent` - a (possibly indirect) child of aContainer, or
        aContainer itself

    Returns:
    :   the Component that should receive the focus before aComponent,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is not a focus cycle
        root of aComponent or a focus traversal policy provider, or if
        either aContainer or aComponent is null
  + ### getFirstComponent

    public abstract [Component](Component.md "class in java.awt") getFirstComponent([Container](Container.md "class in java.awt") aContainer)

    Returns the first Component in the traversal cycle. This method is used
    to determine the next Component to focus when traversal wraps in the
    forward direction.

    Parameters:
    :   `aContainer` - the focus cycle root or focus traversal policy provider
        whose first Component is to be returned

    Returns:
    :   the first Component in the traversal cycle of aContainer,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is null
  + ### getLastComponent

    public abstract [Component](Component.md "class in java.awt") getLastComponent([Container](Container.md "class in java.awt") aContainer)

    Returns the last Component in the traversal cycle. This method is used
    to determine the next Component to focus when traversal wraps in the
    reverse direction.

    Parameters:
    :   `aContainer` - the focus cycle root or focus traversal policy
        provider whose last Component is to be returned

    Returns:
    :   the last Component in the traversal cycle of aContainer,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is null
  + ### getDefaultComponent

    public abstract [Component](Component.md "class in java.awt") getDefaultComponent([Container](Container.md "class in java.awt") aContainer)

    Returns the default Component to focus. This Component will be the first
    to receive focus when traversing down into a new focus traversal cycle
    rooted at aContainer.

    Parameters:
    :   `aContainer` - the focus cycle root or focus traversal policy
        provider whose default Component is to be returned

    Returns:
    :   the default Component in the traversal cycle of aContainer,
        or null if no suitable Component can be found

    Throws:
    :   `IllegalArgumentException` - if aContainer is null
  + ### getInitialComponent

    public [Component](Component.md "class in java.awt") getInitialComponent([Window](Window.md "class in java.awt") window)

    Returns the Component that should receive the focus when a Window is
    made visible for the first time. Once the Window has been made visible
    by a call to `show()` or `setVisible(true)`, the
    initial Component will not be used again. Instead, if the Window loses
    and subsequently regains focus, or is made invisible or undisplayable
    and subsequently made visible and displayable, the Window's most
    recently focused Component will become the focus owner. The default
    implementation of this method returns the default Component.

    Parameters:
    :   `window` - the Window whose initial Component is to be returned

    Returns:
    :   the Component that should receive the focus when window is made
        visible for the first time, or null if no suitable Component can
        be found

    Throws:
    :   `IllegalArgumentException` - if window is null

    See Also:
    :   - [`getDefaultComponent(java.awt.Container)`](#getDefaultComponent(java.awt.Container))
        - [`Window.getMostRecentFocusOwner()`](Window.md#getMostRecentFocusOwner())