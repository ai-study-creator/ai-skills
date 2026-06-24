Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class AncestorEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

javax.swing.event.AncestorEvent

All Implemented Interfaces:
:   `Serializable`

---

public class AncestorEvent
extends [AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

An event reported to a child component that originated from an
ancestor in the component hierarchy.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ANCESTOR_ADDED`

  An ancestor-component was added to the hierarchy of
  visible objects (made visible), and is currently being displayed.

  `static final int`

  `ANCESTOR_MOVED`

  An ancestor-component changed its position on the screen.

  `static final int`

  `ANCESTOR_REMOVED`

  An ancestor-component was removed from the hierarchy
  of visible objects (hidden) and is no longer being displayed.

  ### Fields inherited from class java.awt.[AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

  `ACTION_EVENT_MASK, ADJUSTMENT_EVENT_MASK, COMPONENT_EVENT_MASK, consumed, CONTAINER_EVENT_MASK, FOCUS_EVENT_MASK, HIERARCHY_BOUNDS_EVENT_MASK, HIERARCHY_EVENT_MASK, id, INPUT_METHOD_EVENT_MASK, INVOCATION_EVENT_MASK, ITEM_EVENT_MASK, KEY_EVENT_MASK, MOUSE_EVENT_MASK, MOUSE_MOTION_EVENT_MASK, MOUSE_WHEEL_EVENT_MASK, PAINT_EVENT_MASK, RESERVED_ID_MAX, TEXT_EVENT_MASK, WINDOW_EVENT_MASK, WINDOW_FOCUS_EVENT_MASK, WINDOW_STATE_EVENT_MASK`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AncestorEvent(JComponent source,
  int id,
  Container ancestor,
  Container ancestorParent)`

  Constructs an AncestorEvent object to identify a change
  in an ancestor-component's display-status.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Container`

  `getAncestor()`

  Returns the ancestor that the event actually occurred on.

  `Container`

  `getAncestorParent()`

  Returns the parent of the ancestor the event actually occurred on.

  `JComponent`

  `getComponent()`

  Returns the component that the listener was added to.

  ### Methods inherited from class java.awt.[AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

  `consume, getID, isConsumed, paramString, setSource, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ANCESTOR\_ADDED

    public static final int ANCESTOR\_ADDED

    An ancestor-component was added to the hierarchy of
    visible objects (made visible), and is currently being displayed.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.AncestorEvent.ANCESTOR_ADDED)
  + ### ANCESTOR\_REMOVED

    public static final int ANCESTOR\_REMOVED

    An ancestor-component was removed from the hierarchy
    of visible objects (hidden) and is no longer being displayed.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.AncestorEvent.ANCESTOR_REMOVED)
  + ### ANCESTOR\_MOVED

    public static final int ANCESTOR\_MOVED

    An ancestor-component changed its position on the screen.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.AncestorEvent.ANCESTOR_MOVED)
* ## Constructor Details

  + ### AncestorEvent

    public AncestorEvent([JComponent](../JComponent.md "class in javax.swing") source,
    int id,
    [Container](../../../java/awt/Container.md "class in java.awt") ancestor,
    [Container](../../../java/awt/Container.md "class in java.awt") ancestorParent)

    Constructs an AncestorEvent object to identify a change
    in an ancestor-component's display-status.

    Parameters:
    :   `source` - the JComponent that originated the event
        (typically `this`)
    :   `id` - an int specifying [`ANCESTOR_ADDED`](#ANCESTOR_ADDED),
        [`ANCESTOR_REMOVED`](#ANCESTOR_REMOVED) or [`ANCESTOR_MOVED`](#ANCESTOR_MOVED)
    :   `ancestor` - a Container object specifying the ancestor-component
        whose display-status changed
    :   `ancestorParent` - a Container object specifying the ancestor's parent
* ## Method Details

  + ### getAncestor

    public [Container](../../../java/awt/Container.md "class in java.awt") getAncestor()

    Returns the ancestor that the event actually occurred on.

    Returns:
    :   the `Container` object specifying the ancestor component
  + ### getAncestorParent

    public [Container](../../../java/awt/Container.md "class in java.awt") getAncestorParent()

    Returns the parent of the ancestor the event actually occurred on.
    This is most interesting in an ANCESTOR\_REMOVED event, as
    the ancestor may no longer be in the component hierarchy.

    Returns:
    :   the `Container` object specifying the ancestor's parent
  + ### getComponent

    public [JComponent](../JComponent.md "class in javax.swing") getComponent()

    Returns the component that the listener was added to.

    Returns:
    :   the `JComponent` on which the event occurred