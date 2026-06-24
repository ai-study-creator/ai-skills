Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class DefaultFocusTraversalPolicy

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.FocusTraversalPolicy](FocusTraversalPolicy.md "class in java.awt")

[java.awt.ContainerOrderFocusTraversalPolicy](ContainerOrderFocusTraversalPolicy.md "class in java.awt")

java.awt.DefaultFocusTraversalPolicy

All Implemented Interfaces:
:   `Serializable`

---

public class DefaultFocusTraversalPolicy
extends [ContainerOrderFocusTraversalPolicy](ContainerOrderFocusTraversalPolicy.md "class in java.awt")

A FocusTraversalPolicy that determines traversal order based on the order
of child Components in a Container. From a particular focus cycle root, the
policy makes a pre-order traversal of the Component hierarchy, and traverses
a Container's children according to the ordering of the array returned by
`Container.getComponents()`. Portions of the hierarchy that are
not visible and displayable will not be searched.

If client code has explicitly set the focusability of a Component by either
overriding `Component.isFocusTraversable()` or
`Component.isFocusable()`, or by calling
`Component.setFocusable()`, then a DefaultFocusTraversalPolicy
behaves exactly like a ContainerOrderFocusTraversalPolicy. If, however, the
Component is relying on default focusability, then a
DefaultFocusTraversalPolicy will reject all Components with non-focusable
peers. This is the default FocusTraversalPolicy for all AWT Containers.

The focusability of a peer is implementation-dependent. Sun recommends that
all implementations for a particular native platform construct peers with
the same focusability. The recommendations for Windows and Unix are that
Canvases, Labels, Panels, Scrollbars, ScrollPanes, Windows, and lightweight
Components have non-focusable peers, and all other Components have focusable
peers. These recommendations are used in the Sun AWT implementations. Note
that the focusability of a Component's peer is different from, and does not
impact, the focusability of the Component itself.

Please see
[How to Use the Focus Subsystem](https://docs.oracle.com/javase/tutorial/uiswing/misc/focus.html),
a section in *The Java Tutorial*, and the
[Focus Specification](doc-files/FocusSpec.md)
for more information.

Since:
:   1.4

See Also:
:   * [`Container.getComponents()`](Container.md#getComponents())
    * [`Component.isFocusable()`](Component.md#isFocusable())
    * [`Component.setFocusable(boolean)`](Component.md#setFocusable(boolean))
    * [Serialized Form](../../../serialized-form.md#java.awt.DefaultFocusTraversalPolicy)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultFocusTraversalPolicy()`

  Constructs a `DefaultFocusTraversalPolicy`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected boolean`

  `accept(Component aComponent)`

  Determines whether a Component is an acceptable choice as the new
  focus owner.

  ### Methods inherited from class java.awt.[ContainerOrderFocusTraversalPolicy](ContainerOrderFocusTraversalPolicy.md "class in java.awt")

  `getComponentAfter, getComponentBefore, getDefaultComponent, getFirstComponent, getImplicitDownCycleTraversal, getLastComponent, setImplicitDownCycleTraversal`

  ### Methods inherited from class java.awt.[FocusTraversalPolicy](FocusTraversalPolicy.md "class in java.awt")

  `getInitialComponent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DefaultFocusTraversalPolicy

    public DefaultFocusTraversalPolicy()

    Constructs a `DefaultFocusTraversalPolicy`.
* ## Method Details

  + ### accept

    protected boolean accept([Component](Component.md "class in java.awt") aComponent)

    Determines whether a Component is an acceptable choice as the new
    focus owner. The Component must be visible, displayable, and enabled
    to be accepted. If client code has explicitly set the focusability
    of the Component by either overriding
    `Component.isFocusTraversable()` or
    `Component.isFocusable()`, or by calling
    `Component.setFocusable()`, then the Component will be
    accepted if and only if it is focusable. If, however, the Component is
    relying on default focusability, then all Canvases, Labels, Panels,
    Scrollbars, ScrollPanes, Windows, and lightweight Components will be
    rejected.

    Overrides:
    :   `accept` in class `ContainerOrderFocusTraversalPolicy`

    Parameters:
    :   `aComponent` - the Component whose fitness as a focus owner is to
        be tested

    Returns:
    :   `true` if aComponent meets the above requirements;
        `false` otherwise