Module [java.desktop](../../../module-summary.md)

# Package java.awt.event

---

package java.awt.event

Provides interfaces and classes for dealing with different types of events
fired by AWT components. See the [`java.awt.AWTEvent`](../AWTEvent.md "class in java.awt")
class for details on the AWT event model. Events are fired by event sources.
An event listener registers with an event source to receive notifications
about the events of a particular type. This package defines events and event
listeners, as well as event listener adapters, which are convenience classes
to make easier the process of writing event listeners.

Since:
:   1.1

* Related Packages

  Package

  Description

  [java.awt](../package-summary.md)

  Contains all of the classes for creating user interfaces and for painting
  graphics and images.
* All Classes and InterfacesInterfacesClassesEnum Classes

  Class

  Description

  [ActionEvent](ActionEvent.md "class in java.awt.event")

  A semantic event which indicates that a component-defined action occurred.

  [ActionListener](ActionListener.md "interface in java.awt.event")

  The listener interface for receiving action events.

  [AdjustmentEvent](AdjustmentEvent.md "class in java.awt.event")

  The adjustment event emitted by Adjustable objects like
  [`Scrollbar`](../Scrollbar.md "class in java.awt") and [`ScrollPane`](../ScrollPane.md "class in java.awt").

  [AdjustmentListener](AdjustmentListener.md "interface in java.awt.event")

  The listener interface for receiving adjustment events.

  [AWTEventListener](AWTEventListener.md "interface in java.awt.event")

  The listener interface for receiving notification of events
  dispatched to objects that are instances of Component or
  MenuComponent or their subclasses.

  [AWTEventListenerProxy](AWTEventListenerProxy.md "class in java.awt.event")

  A class which extends the `EventListenerProxy`
  specifically for adding an `AWTEventListener`
  for a specific event mask.

  [ComponentAdapter](ComponentAdapter.md "class in java.awt.event")

  An abstract adapter class for receiving component events.

  [ComponentEvent](ComponentEvent.md "class in java.awt.event")

  A low-level event which indicates that a component moved, changed
  size, or changed visibility (also, the root class for the other
  component-level events).

  [ComponentListener](ComponentListener.md "interface in java.awt.event")

  The listener interface for receiving component events.

  [ContainerAdapter](ContainerAdapter.md "class in java.awt.event")

  An abstract adapter class for receiving container events.

  [ContainerEvent](ContainerEvent.md "class in java.awt.event")

  A low-level event which indicates that a container's contents
  changed because a component was added or removed.

  [ContainerListener](ContainerListener.md "interface in java.awt.event")

  The listener interface for receiving container events.

  [FocusAdapter](FocusAdapter.md "class in java.awt.event")

  An abstract adapter class for receiving keyboard focus events.

  [FocusEvent](FocusEvent.md "class in java.awt.event")

  A low-level event which indicates that a Component has gained or lost the
  input focus.

  [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event")

  This enum represents the cause of a `FocusEvent`- the reason why it
  occurred.

  [FocusListener](FocusListener.md "interface in java.awt.event")

  The listener interface for receiving keyboard focus events on
  a component.

  [HierarchyBoundsAdapter](HierarchyBoundsAdapter.md "class in java.awt.event")

  An abstract adapter class for receiving ancestor moved and resized events.

  [HierarchyBoundsListener](HierarchyBoundsListener.md "interface in java.awt.event")

  The listener interface for receiving ancestor moved and resized events.

  [HierarchyEvent](HierarchyEvent.md "class in java.awt.event")

  An event which indicates a change to the `Component`
  hierarchy to which `Component` belongs.

  [HierarchyListener](HierarchyListener.md "interface in java.awt.event")

  The listener interface for receiving hierarchy changed events.

  [InputEvent](InputEvent.md "class in java.awt.event")

  The root event class for all component-level input events.

  [InputMethodEvent](InputMethodEvent.md "class in java.awt.event")

  Input method events contain information about text that is being
  composed using an input method.

  [InputMethodListener](InputMethodListener.md "interface in java.awt.event")

  The listener interface for receiving input method events.

  [InvocationEvent](InvocationEvent.md "class in java.awt.event")

  An event which executes the `run()` method on a `Runnable` when dispatched by the AWT event dispatcher thread.

  [ItemEvent](ItemEvent.md "class in java.awt.event")

  A semantic event which indicates that an item was selected or deselected.

  [ItemListener](ItemListener.md "interface in java.awt.event")

  The listener interface for receiving item events.

  [KeyAdapter](KeyAdapter.md "class in java.awt.event")

  An abstract adapter class for receiving keyboard events.

  [KeyEvent](KeyEvent.md "class in java.awt.event")

  An event which indicates that a keystroke occurred in a component.

  [KeyListener](KeyListener.md "interface in java.awt.event")

  The listener interface for receiving keyboard events (keystrokes).

  [MouseAdapter](MouseAdapter.md "class in java.awt.event")

  An abstract adapter class for receiving mouse events.

  [MouseEvent](MouseEvent.md "class in java.awt.event")

  An event which indicates that a mouse action occurred in a component.

  [MouseListener](MouseListener.md "interface in java.awt.event")

  The listener interface for receiving "interesting" mouse events
  (press, release, click, enter, and exit) on a component.

  [MouseMotionAdapter](MouseMotionAdapter.md "class in java.awt.event")

  An abstract adapter class for receiving mouse motion events.

  [MouseMotionListener](MouseMotionListener.md "interface in java.awt.event")

  The listener interface for receiving mouse motion events on a component.

  [MouseWheelEvent](MouseWheelEvent.md "class in java.awt.event")

  An event which indicates that the mouse wheel was rotated in a component.

  [MouseWheelListener](MouseWheelListener.md "interface in java.awt.event")

  The listener interface for receiving mouse wheel events on a component.

  [PaintEvent](PaintEvent.md "class in java.awt.event")

  The component-level paint event.

  [TextEvent](TextEvent.md "class in java.awt.event")

  A semantic event which indicates that an object's text changed.

  [TextListener](TextListener.md "interface in java.awt.event")

  The listener interface for receiving text events.

  [WindowAdapter](WindowAdapter.md "class in java.awt.event")

  An abstract adapter class for receiving window events.

  [WindowEvent](WindowEvent.md "class in java.awt.event")

  A low-level event that indicates that a window has changed its status.

  [WindowFocusListener](WindowFocusListener.md "interface in java.awt.event")

  The listener interface for receiving `WindowEvents`, including
  `WINDOW_GAINED_FOCUS` and `WINDOW_LOST_FOCUS` events.

  [WindowListener](WindowListener.md "interface in java.awt.event")

  The listener interface for receiving window events.

  [WindowStateListener](WindowStateListener.md "interface in java.awt.event")

  The listener interface for receiving window state events.