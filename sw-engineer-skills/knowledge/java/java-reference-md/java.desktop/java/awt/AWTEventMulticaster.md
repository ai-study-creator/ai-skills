Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class AWTEventMulticaster

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.AWTEventMulticaster

All Implemented Interfaces:
:   `ActionListener`, `AdjustmentListener`, `ComponentListener`, `ContainerListener`, `FocusListener`, `HierarchyBoundsListener`, `HierarchyListener`, `InputMethodListener`, `ItemListener`, `KeyListener`, `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `TextListener`, `WindowFocusListener`, `WindowListener`, `WindowStateListener`, `EventListener`

---

public class AWTEventMulticaster
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ComponentListener](event/ComponentListener.md "interface in java.awt.event"), [ContainerListener](event/ContainerListener.md "interface in java.awt.event"), [FocusListener](event/FocusListener.md "interface in java.awt.event"), [KeyListener](event/KeyListener.md "interface in java.awt.event"), [MouseListener](event/MouseListener.md "interface in java.awt.event"), [MouseMotionListener](event/MouseMotionListener.md "interface in java.awt.event"), [WindowListener](event/WindowListener.md "interface in java.awt.event"), [WindowFocusListener](event/WindowFocusListener.md "interface in java.awt.event"), [WindowStateListener](event/WindowStateListener.md "interface in java.awt.event"), [ActionListener](event/ActionListener.md "interface in java.awt.event"), [ItemListener](event/ItemListener.md "interface in java.awt.event"), [AdjustmentListener](event/AdjustmentListener.md "interface in java.awt.event"), [TextListener](event/TextListener.md "interface in java.awt.event"), [InputMethodListener](event/InputMethodListener.md "interface in java.awt.event"), [HierarchyListener](event/HierarchyListener.md "interface in java.awt.event"), [HierarchyBoundsListener](event/HierarchyBoundsListener.md "interface in java.awt.event"), [MouseWheelListener](event/MouseWheelListener.md "interface in java.awt.event")

`AWTEventMulticaster` implements efficient and thread-safe multi-cast
event dispatching for the AWT events defined in the `java.awt.event`
package.

The following example illustrates how to use this class:

```
 public myComponent extends Component {
     ActionListener actionListener = null;

     public synchronized void addActionListener(ActionListener l) {
         actionListener = AWTEventMulticaster.add(actionListener, l);
     }
     public synchronized void removeActionListener(ActionListener l) {
         actionListener = AWTEventMulticaster.remove(actionListener, l);
     }
     public void processEvent(AWTEvent e) {
         // when event occurs which causes "action" semantic
         ActionListener listener = actionListener;
         if (listener != null) {
             listener.actionPerformed(new ActionEvent());
         }
     }
 }
```

The important point to note is the first argument to the `add` and `remove` methods is the field maintaining the
listeners. In addition you must assign the result of the `add`
and `remove` methods to the field maintaining the listeners.

`AWTEventMulticaster` is implemented as a pair of `EventListeners` that are set at construction time. `AWTEventMulticaster` is immutable. The `add` and `remove` methods do not alter `AWTEventMulticaster` in
anyway. If necessary, a new `AWTEventMulticaster` is
created. In this way it is safe to add and remove listeners during
the process of an event dispatching. However, event listeners
added during the process of an event dispatch operation are not
notified of the event currently being dispatched.

All of the `add` methods allow `null` arguments. If the
first argument is `null`, the second argument is returned. If
the first argument is not `null` and the second argument is
`null`, the first argument is returned. If both arguments are
`non-null`, a new `AWTEventMulticaster` is created using
the two arguments and returned.

For the `remove` methods that take two arguments, the following is
returned:

* `null`, if the first argument is `null`, or
  the arguments are equal, by way of `==`.* the first argument, if the first argument is not an instance of
    `AWTEventMulticaster`.* result of invoking `remove(EventListener)` on the
      first argument, supplying the second argument to the
      `remove(EventListener)` method.

Swing makes use of
[`EventListenerList`](../../javax/swing/event/EventListenerList.md "class in javax.swing.event") for
similar logic. Refer to it for details.

Since:
:   1.1

See Also:
:   * [`EventListenerList`](../../javax/swing/event/EventListenerList.md "class in javax.swing.event")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final EventListener`

  `a`

  A variable in the event chain (listener-a)

  `protected final EventListener`

  `b`

  A variable in the event chain (listener-b)
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AWTEventMulticaster(EventListener a,
  EventListener b)`

  Creates an event multicaster instance which chains listener-a
  with listener-b.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  Handles the actionPerformed event by invoking the
  actionPerformed methods on listener-a and listener-b.

  `static ActionListener`

  `add(ActionListener a,
  ActionListener b)`

  Adds action-listener-a with action-listener-b and
  returns the resulting multicast listener.

  `static AdjustmentListener`

  `add(AdjustmentListener a,
  AdjustmentListener b)`

  Adds adjustment-listener-a with adjustment-listener-b and
  returns the resulting multicast listener.

  `static ComponentListener`

  `add(ComponentListener a,
  ComponentListener b)`

  Adds component-listener-a with component-listener-b and
  returns the resulting multicast listener.

  `static ContainerListener`

  `add(ContainerListener a,
  ContainerListener b)`

  Adds container-listener-a with container-listener-b and
  returns the resulting multicast listener.

  `static FocusListener`

  `add(FocusListener a,
  FocusListener b)`

  Adds focus-listener-a with focus-listener-b and
  returns the resulting multicast listener.

  `static HierarchyBoundsListener`

  `add(HierarchyBoundsListener a,
  HierarchyBoundsListener b)`

  Adds hierarchy-bounds-listener-a with hierarchy-bounds-listener-b and
  returns the resulting multicast listener.

  `static HierarchyListener`

  `add(HierarchyListener a,
  HierarchyListener b)`

  Adds hierarchy-listener-a with hierarchy-listener-b and
  returns the resulting multicast listener.

  `static InputMethodListener`

  `add(InputMethodListener a,
  InputMethodListener b)`

  Adds input-method-listener-a with input-method-listener-b and
  returns the resulting multicast listener.

  `static ItemListener`

  `add(ItemListener a,
  ItemListener b)`

  Adds item-listener-a with item-listener-b and
  returns the resulting multicast listener.

  `static KeyListener`

  `add(KeyListener a,
  KeyListener b)`

  Adds key-listener-a with key-listener-b and
  returns the resulting multicast listener.

  `static MouseListener`

  `add(MouseListener a,
  MouseListener b)`

  Adds mouse-listener-a with mouse-listener-b and
  returns the resulting multicast listener.

  `static MouseMotionListener`

  `add(MouseMotionListener a,
  MouseMotionListener b)`

  Adds mouse-motion-listener-a with mouse-motion-listener-b and
  returns the resulting multicast listener.

  `static MouseWheelListener`

  `add(MouseWheelListener a,
  MouseWheelListener b)`

  Adds mouse-wheel-listener-a with mouse-wheel-listener-b and
  returns the resulting multicast listener.

  `static TextListener`

  `add(TextListener a,
  TextListener b)`

  Adds text-listener-a with text-listener-b and
  returns the resulting multicast listener.

  `static WindowFocusListener`

  `add(WindowFocusListener a,
  WindowFocusListener b)`

  Adds window-focus-listener-a with window-focus-listener-b
  and returns the resulting multicast listener.

  `static WindowListener`

  `add(WindowListener a,
  WindowListener b)`

  Adds window-listener-a with window-listener-b and
  returns the resulting multicast listener.

  `static WindowStateListener`

  `add(WindowStateListener a,
  WindowStateListener b)`

  Adds window-state-listener-a with window-state-listener-b
  and returns the resulting multicast listener.

  `protected static EventListener`

  `addInternal(EventListener a,
  EventListener b)`

  Returns the resulting multicast listener from adding listener-a
  and listener-b together.

  `void`

  `adjustmentValueChanged(AdjustmentEvent e)`

  Handles the adjustmentValueChanged event by invoking the
  adjustmentValueChanged methods on listener-a and listener-b.

  `void`

  `ancestorMoved(HierarchyEvent e)`

  Handles the ancestorMoved event by invoking the
  ancestorMoved methods on listener-a and listener-b.

  `void`

  `ancestorResized(HierarchyEvent e)`

  Handles the ancestorResized event by invoking the
  ancestorResized methods on listener-a and listener-b.

  `void`

  `caretPositionChanged(InputMethodEvent e)`

  Handles the caretPositionChanged event by invoking the
  caretPositionChanged methods on listener-a and listener-b.

  `void`

  `componentAdded(ContainerEvent e)`

  Handles the componentAdded container event by invoking the
  componentAdded methods on listener-a and listener-b.

  `void`

  `componentHidden(ComponentEvent e)`

  Handles the componentHidden event by invoking the
  componentHidden methods on listener-a and listener-b.

  `void`

  `componentMoved(ComponentEvent e)`

  Handles the componentMoved event by invoking the
  componentMoved methods on listener-a and listener-b.

  `void`

  `componentRemoved(ContainerEvent e)`

  Handles the componentRemoved container event by invoking the
  componentRemoved methods on listener-a and listener-b.

  `void`

  `componentResized(ComponentEvent e)`

  Handles the componentResized event by invoking the
  componentResized methods on listener-a and listener-b.

  `void`

  `componentShown(ComponentEvent e)`

  Handles the componentShown event by invoking the
  componentShown methods on listener-a and listener-b.

  `void`

  `focusGained(FocusEvent e)`

  Handles the focusGained event by invoking the
  focusGained methods on listener-a and listener-b.

  `void`

  `focusLost(FocusEvent e)`

  Handles the focusLost event by invoking the
  focusLost methods on listener-a and listener-b.

  `static <T extends EventListener>  
  T[]`

  `getListeners(EventListener l,
  Class<T> listenerType)`

  Returns an array of all the objects chained as
  `FooListener`s by the specified
  `java.util.EventListener`.

  `void`

  `hierarchyChanged(HierarchyEvent e)`

  Handles the hierarchyChanged event by invoking the
  hierarchyChanged methods on listener-a and listener-b.

  `void`

  `inputMethodTextChanged(InputMethodEvent e)`

  Handles the inputMethodTextChanged event by invoking the
  inputMethodTextChanged methods on listener-a and listener-b.

  `void`

  `itemStateChanged(ItemEvent e)`

  Handles the itemStateChanged event by invoking the
  itemStateChanged methods on listener-a and listener-b.

  `void`

  `keyPressed(KeyEvent e)`

  Handles the keyPressed event by invoking the
  keyPressed methods on listener-a and listener-b.

  `void`

  `keyReleased(KeyEvent e)`

  Handles the keyReleased event by invoking the
  keyReleased methods on listener-a and listener-b.

  `void`

  `keyTyped(KeyEvent e)`

  Handles the keyTyped event by invoking the
  keyTyped methods on listener-a and listener-b.

  `void`

  `mouseClicked(MouseEvent e)`

  Handles the mouseClicked event by invoking the
  mouseClicked methods on listener-a and listener-b.

  `void`

  `mouseDragged(MouseEvent e)`

  Handles the mouseDragged event by invoking the
  mouseDragged methods on listener-a and listener-b.

  `void`

  `mouseEntered(MouseEvent e)`

  Handles the mouseEntered event by invoking the
  mouseEntered methods on listener-a and listener-b.

  `void`

  `mouseExited(MouseEvent e)`

  Handles the mouseExited event by invoking the
  mouseExited methods on listener-a and listener-b.

  `void`

  `mouseMoved(MouseEvent e)`

  Handles the mouseMoved event by invoking the
  mouseMoved methods on listener-a and listener-b.

  `void`

  `mousePressed(MouseEvent e)`

  Handles the mousePressed event by invoking the
  mousePressed methods on listener-a and listener-b.

  `void`

  `mouseReleased(MouseEvent e)`

  Handles the mouseReleased event by invoking the
  mouseReleased methods on listener-a and listener-b.

  `void`

  `mouseWheelMoved(MouseWheelEvent e)`

  Handles the mouseWheelMoved event by invoking the
  mouseWheelMoved methods on listener-a and listener-b.

  `static ActionListener`

  `remove(ActionListener l,
  ActionListener oldl)`

  Removes the old action-listener from action-listener-l and
  returns the resulting multicast listener.

  `static AdjustmentListener`

  `remove(AdjustmentListener l,
  AdjustmentListener oldl)`

  Removes the old adjustment-listener from adjustment-listener-l and
  returns the resulting multicast listener.

  `static ComponentListener`

  `remove(ComponentListener l,
  ComponentListener oldl)`

  Removes the old component-listener from component-listener-l and
  returns the resulting multicast listener.

  `static ContainerListener`

  `remove(ContainerListener l,
  ContainerListener oldl)`

  Removes the old container-listener from container-listener-l and
  returns the resulting multicast listener.

  `static FocusListener`

  `remove(FocusListener l,
  FocusListener oldl)`

  Removes the old focus-listener from focus-listener-l and
  returns the resulting multicast listener.

  `static HierarchyBoundsListener`

  `remove(HierarchyBoundsListener l,
  HierarchyBoundsListener oldl)`

  Removes the old hierarchy-bounds-listener from
  hierarchy-bounds-listener-l and returns the resulting multicast
  listener.

  `static HierarchyListener`

  `remove(HierarchyListener l,
  HierarchyListener oldl)`

  Removes the old hierarchy-listener from hierarchy-listener-l and
  returns the resulting multicast listener.

  `static InputMethodListener`

  `remove(InputMethodListener l,
  InputMethodListener oldl)`

  Removes the old input-method-listener from input-method-listener-l and
  returns the resulting multicast listener.

  `static ItemListener`

  `remove(ItemListener l,
  ItemListener oldl)`

  Removes the old item-listener from item-listener-l and
  returns the resulting multicast listener.

  `static KeyListener`

  `remove(KeyListener l,
  KeyListener oldl)`

  Removes the old key-listener from key-listener-l and
  returns the resulting multicast listener.

  `static MouseListener`

  `remove(MouseListener l,
  MouseListener oldl)`

  Removes the old mouse-listener from mouse-listener-l and
  returns the resulting multicast listener.

  `static MouseMotionListener`

  `remove(MouseMotionListener l,
  MouseMotionListener oldl)`

  Removes the old mouse-motion-listener from mouse-motion-listener-l
  and returns the resulting multicast listener.

  `static MouseWheelListener`

  `remove(MouseWheelListener l,
  MouseWheelListener oldl)`

  Removes the old mouse-wheel-listener from mouse-wheel-listener-l
  and returns the resulting multicast listener.

  `static TextListener`

  `remove(TextListener l,
  TextListener oldl)`

  Removes the old text-listener from text-listener-l and
  returns the resulting multicast listener.

  `static WindowFocusListener`

  `remove(WindowFocusListener l,
  WindowFocusListener oldl)`

  Removes the old window-focus-listener from window-focus-listener-l
  and returns the resulting multicast listener.

  `static WindowListener`

  `remove(WindowListener l,
  WindowListener oldl)`

  Removes the old window-listener from window-listener-l and
  returns the resulting multicast listener.

  `static WindowStateListener`

  `remove(WindowStateListener l,
  WindowStateListener oldl)`

  Removes the old window-state-listener from window-state-listener-l
  and returns the resulting multicast listener.

  `protected EventListener`

  `remove(EventListener oldl)`

  Removes a listener from this multicaster.

  `protected static EventListener`

  `removeInternal(EventListener l,
  EventListener oldl)`

  Returns the resulting multicast listener after removing the
  old listener from listener-l.

  `protected static void`

  `save(ObjectOutputStream s,
  String k,
  EventListener l)`

  Saves a Serializable listener chain to a serialization stream.

  `protected void`

  `saveInternal(ObjectOutputStream s,
  String k)`

  Serialization support.

  `void`

  `textValueChanged(TextEvent e)`

  Invoked when the value of the text has changed.

  `void`

  `windowActivated(WindowEvent e)`

  Handles the windowActivated event by invoking the
  windowActivated methods on listener-a and listener-b.

  `void`

  `windowClosed(WindowEvent e)`

  Handles the windowClosed event by invoking the
  windowClosed methods on listener-a and listener-b.

  `void`

  `windowClosing(WindowEvent e)`

  Handles the windowClosing event by invoking the
  windowClosing methods on listener-a and listener-b.

  `void`

  `windowDeactivated(WindowEvent e)`

  Handles the windowDeactivated event by invoking the
  windowDeactivated methods on listener-a and listener-b.

  `void`

  `windowDeiconified(WindowEvent e)`

  Handles the windowDeiconified event by invoking the
  windowDeiconified methods on listener-a and listener-b.

  `void`

  `windowGainedFocus(WindowEvent e)`

  Handles the windowGainedFocus event by invoking the windowGainedFocus
  methods on listener-a and listener-b.

  `void`

  `windowIconified(WindowEvent e)`

  Handles the windowIconified event by invoking the
  windowIconified methods on listener-a and listener-b.

  `void`

  `windowLostFocus(WindowEvent e)`

  Handles the windowLostFocus event by invoking the windowLostFocus
  methods on listener-a and listener-b.

  `void`

  `windowOpened(WindowEvent e)`

  Handles the windowOpened event by invoking the
  windowOpened methods on listener-a and listener-b.

  `void`

  `windowStateChanged(WindowEvent e)`

  Handles the windowStateChanged event by invoking the
  windowStateChanged methods on listener-a and listener-b.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### a

    protected final [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") a

    A variable in the event chain (listener-a)
  + ### b

    protected final [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") b

    A variable in the event chain (listener-b)
* ## Constructor Details

  + ### AWTEventMulticaster

    protected AWTEventMulticaster([EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") a,
    [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") b)

    Creates an event multicaster instance which chains listener-a
    with listener-b. Input parameters `a` and `b`
    should not be `null`, though implementations may vary in
    choosing whether or not to throw `NullPointerException`
    in that case.

    Parameters:
    :   `a` - listener-a
    :   `b` - listener-b
* ## Method Details

  + ### remove

    protected [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") remove([EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") oldl)

    Removes a listener from this multicaster.

    The returned multicaster contains all the listeners in this
    multicaster with the exception of all occurrences of `oldl`.
    If the resulting multicaster contains only one regular listener
    the regular listener may be returned. If the resulting multicaster
    is empty, then `null` may be returned instead.

    No exception is thrown if `oldl` is `null`.

    Parameters:
    :   `oldl` - the listener to be removed

    Returns:
    :   resulting listener
  + ### componentResized

    public void componentResized([ComponentEvent](event/ComponentEvent.md "class in java.awt.event") e)

    Handles the componentResized event by invoking the
    componentResized methods on listener-a and listener-b.

    Specified by:
    :   `componentResized` in interface `ComponentListener`

    Parameters:
    :   `e` - the component event
  + ### componentMoved

    public void componentMoved([ComponentEvent](event/ComponentEvent.md "class in java.awt.event") e)

    Handles the componentMoved event by invoking the
    componentMoved methods on listener-a and listener-b.

    Specified by:
    :   `componentMoved` in interface `ComponentListener`

    Parameters:
    :   `e` - the component event
  + ### componentShown

    public void componentShown([ComponentEvent](event/ComponentEvent.md "class in java.awt.event") e)

    Handles the componentShown event by invoking the
    componentShown methods on listener-a and listener-b.

    Specified by:
    :   `componentShown` in interface `ComponentListener`

    Parameters:
    :   `e` - the component event
  + ### componentHidden

    public void componentHidden([ComponentEvent](event/ComponentEvent.md "class in java.awt.event") e)

    Handles the componentHidden event by invoking the
    componentHidden methods on listener-a and listener-b.

    Specified by:
    :   `componentHidden` in interface `ComponentListener`

    Parameters:
    :   `e` - the component event
  + ### componentAdded

    public void componentAdded([ContainerEvent](event/ContainerEvent.md "class in java.awt.event") e)

    Handles the componentAdded container event by invoking the
    componentAdded methods on listener-a and listener-b.

    Specified by:
    :   `componentAdded` in interface `ContainerListener`

    Parameters:
    :   `e` - the component event
  + ### componentRemoved

    public void componentRemoved([ContainerEvent](event/ContainerEvent.md "class in java.awt.event") e)

    Handles the componentRemoved container event by invoking the
    componentRemoved methods on listener-a and listener-b.

    Specified by:
    :   `componentRemoved` in interface `ContainerListener`

    Parameters:
    :   `e` - the component event
  + ### focusGained

    public void focusGained([FocusEvent](event/FocusEvent.md "class in java.awt.event") e)

    Handles the focusGained event by invoking the
    focusGained methods on listener-a and listener-b.

    Specified by:
    :   `focusGained` in interface `FocusListener`

    Parameters:
    :   `e` - the focus event
  + ### focusLost

    public void focusLost([FocusEvent](event/FocusEvent.md "class in java.awt.event") e)

    Handles the focusLost event by invoking the
    focusLost methods on listener-a and listener-b.

    Specified by:
    :   `focusLost` in interface `FocusListener`

    Parameters:
    :   `e` - the focus event
  + ### keyTyped

    public void keyTyped([KeyEvent](event/KeyEvent.md "class in java.awt.event") e)

    Handles the keyTyped event by invoking the
    keyTyped methods on listener-a and listener-b.

    Specified by:
    :   `keyTyped` in interface `KeyListener`

    Parameters:
    :   `e` - the key event
  + ### keyPressed

    public void keyPressed([KeyEvent](event/KeyEvent.md "class in java.awt.event") e)

    Handles the keyPressed event by invoking the
    keyPressed methods on listener-a and listener-b.

    Specified by:
    :   `keyPressed` in interface `KeyListener`

    Parameters:
    :   `e` - the key event
  + ### keyReleased

    public void keyReleased([KeyEvent](event/KeyEvent.md "class in java.awt.event") e)

    Handles the keyReleased event by invoking the
    keyReleased methods on listener-a and listener-b.

    Specified by:
    :   `keyReleased` in interface `KeyListener`

    Parameters:
    :   `e` - the key event
  + ### mouseClicked

    public void mouseClicked([MouseEvent](event/MouseEvent.md "class in java.awt.event") e)

    Handles the mouseClicked event by invoking the
    mouseClicked methods on listener-a and listener-b.

    Specified by:
    :   `mouseClicked` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event
  + ### mousePressed

    public void mousePressed([MouseEvent](event/MouseEvent.md "class in java.awt.event") e)

    Handles the mousePressed event by invoking the
    mousePressed methods on listener-a and listener-b.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event
  + ### mouseReleased

    public void mouseReleased([MouseEvent](event/MouseEvent.md "class in java.awt.event") e)

    Handles the mouseReleased event by invoking the
    mouseReleased methods on listener-a and listener-b.

    Specified by:
    :   `mouseReleased` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event
  + ### mouseEntered

    public void mouseEntered([MouseEvent](event/MouseEvent.md "class in java.awt.event") e)

    Handles the mouseEntered event by invoking the
    mouseEntered methods on listener-a and listener-b.

    Specified by:
    :   `mouseEntered` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event
  + ### mouseExited

    public void mouseExited([MouseEvent](event/MouseEvent.md "class in java.awt.event") e)

    Handles the mouseExited event by invoking the
    mouseExited methods on listener-a and listener-b.

    Specified by:
    :   `mouseExited` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event
  + ### mouseDragged

    public void mouseDragged([MouseEvent](event/MouseEvent.md "class in java.awt.event") e)

    Handles the mouseDragged event by invoking the
    mouseDragged methods on listener-a and listener-b.

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the mouse event
  + ### mouseMoved

    public void mouseMoved([MouseEvent](event/MouseEvent.md "class in java.awt.event") e)

    Handles the mouseMoved event by invoking the
    mouseMoved methods on listener-a and listener-b.

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the mouse event
  + ### windowOpened

    public void windowOpened([WindowEvent](event/WindowEvent.md "class in java.awt.event") e)

    Handles the windowOpened event by invoking the
    windowOpened methods on listener-a and listener-b.

    Specified by:
    :   `windowOpened` in interface `WindowListener`

    Parameters:
    :   `e` - the window event
  + ### windowClosing

    public void windowClosing([WindowEvent](event/WindowEvent.md "class in java.awt.event") e)

    Handles the windowClosing event by invoking the
    windowClosing methods on listener-a and listener-b.

    Specified by:
    :   `windowClosing` in interface `WindowListener`

    Parameters:
    :   `e` - the window event
  + ### windowClosed

    public void windowClosed([WindowEvent](event/WindowEvent.md "class in java.awt.event") e)

    Handles the windowClosed event by invoking the
    windowClosed methods on listener-a and listener-b.

    Specified by:
    :   `windowClosed` in interface `WindowListener`

    Parameters:
    :   `e` - the window event
  + ### windowIconified

    public void windowIconified([WindowEvent](event/WindowEvent.md "class in java.awt.event") e)

    Handles the windowIconified event by invoking the
    windowIconified methods on listener-a and listener-b.

    Specified by:
    :   `windowIconified` in interface `WindowListener`

    Parameters:
    :   `e` - the window event

    See Also:
    :   - [`Frame.setIconImage(java.awt.Image)`](Frame.md#setIconImage(java.awt.Image))
  + ### windowDeiconified

    public void windowDeiconified([WindowEvent](event/WindowEvent.md "class in java.awt.event") e)

    Handles the windowDeiconified event by invoking the
    windowDeiconified methods on listener-a and listener-b.

    Specified by:
    :   `windowDeiconified` in interface `WindowListener`

    Parameters:
    :   `e` - the window event
  + ### windowActivated

    public void windowActivated([WindowEvent](event/WindowEvent.md "class in java.awt.event") e)

    Handles the windowActivated event by invoking the
    windowActivated methods on listener-a and listener-b.

    Specified by:
    :   `windowActivated` in interface `WindowListener`

    Parameters:
    :   `e` - the window event
  + ### windowDeactivated

    public void windowDeactivated([WindowEvent](event/WindowEvent.md "class in java.awt.event") e)

    Handles the windowDeactivated event by invoking the
    windowDeactivated methods on listener-a and listener-b.

    Specified by:
    :   `windowDeactivated` in interface `WindowListener`

    Parameters:
    :   `e` - the window event
  + ### windowStateChanged

    public void windowStateChanged([WindowEvent](event/WindowEvent.md "class in java.awt.event") e)

    Handles the windowStateChanged event by invoking the
    windowStateChanged methods on listener-a and listener-b.

    Specified by:
    :   `windowStateChanged` in interface `WindowStateListener`

    Parameters:
    :   `e` - the window event

    Since:
    :   1.4
  + ### windowGainedFocus

    public void windowGainedFocus([WindowEvent](event/WindowEvent.md "class in java.awt.event") e)

    Handles the windowGainedFocus event by invoking the windowGainedFocus
    methods on listener-a and listener-b.

    Specified by:
    :   `windowGainedFocus` in interface `WindowFocusListener`

    Parameters:
    :   `e` - the window event

    Since:
    :   1.4
  + ### windowLostFocus

    public void windowLostFocus([WindowEvent](event/WindowEvent.md "class in java.awt.event") e)

    Handles the windowLostFocus event by invoking the windowLostFocus
    methods on listener-a and listener-b.

    Specified by:
    :   `windowLostFocus` in interface `WindowFocusListener`

    Parameters:
    :   `e` - the window event

    Since:
    :   1.4
  + ### actionPerformed

    public void actionPerformed([ActionEvent](event/ActionEvent.md "class in java.awt.event") e)

    Handles the actionPerformed event by invoking the
    actionPerformed methods on listener-a and listener-b.

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `e` - the action event
  + ### itemStateChanged

    public void itemStateChanged([ItemEvent](event/ItemEvent.md "class in java.awt.event") e)

    Handles the itemStateChanged event by invoking the
    itemStateChanged methods on listener-a and listener-b.

    Specified by:
    :   `itemStateChanged` in interface `ItemListener`

    Parameters:
    :   `e` - the item event
  + ### adjustmentValueChanged

    public void adjustmentValueChanged([AdjustmentEvent](event/AdjustmentEvent.md "class in java.awt.event") e)

    Handles the adjustmentValueChanged event by invoking the
    adjustmentValueChanged methods on listener-a and listener-b.

    Specified by:
    :   `adjustmentValueChanged` in interface `AdjustmentListener`

    Parameters:
    :   `e` - the adjustment event
  + ### textValueChanged

    public void textValueChanged([TextEvent](event/TextEvent.md "class in java.awt.event") e)

    Description copied from interface: `TextListener`

    Invoked when the value of the text has changed.
    The code written for this method performs the operations
    that need to occur when text changes.

    Specified by:
    :   `textValueChanged` in interface `TextListener`

    Parameters:
    :   `e` - the event to be processed
  + ### inputMethodTextChanged

    public void inputMethodTextChanged([InputMethodEvent](event/InputMethodEvent.md "class in java.awt.event") e)

    Handles the inputMethodTextChanged event by invoking the
    inputMethodTextChanged methods on listener-a and listener-b.

    Specified by:
    :   `inputMethodTextChanged` in interface `InputMethodListener`

    Parameters:
    :   `e` - the item event
  + ### caretPositionChanged

    public void caretPositionChanged([InputMethodEvent](event/InputMethodEvent.md "class in java.awt.event") e)

    Handles the caretPositionChanged event by invoking the
    caretPositionChanged methods on listener-a and listener-b.

    Specified by:
    :   `caretPositionChanged` in interface `InputMethodListener`

    Parameters:
    :   `e` - the item event
  + ### hierarchyChanged

    public void hierarchyChanged([HierarchyEvent](event/HierarchyEvent.md "class in java.awt.event") e)

    Handles the hierarchyChanged event by invoking the
    hierarchyChanged methods on listener-a and listener-b.

    Specified by:
    :   `hierarchyChanged` in interface `HierarchyListener`

    Parameters:
    :   `e` - the item event

    Since:
    :   1.3

    See Also:
    :   - [`HierarchyEvent.getChangeFlags()`](event/HierarchyEvent.md#getChangeFlags())
  + ### ancestorMoved

    public void ancestorMoved([HierarchyEvent](event/HierarchyEvent.md "class in java.awt.event") e)

    Handles the ancestorMoved event by invoking the
    ancestorMoved methods on listener-a and listener-b.

    Specified by:
    :   `ancestorMoved` in interface `HierarchyBoundsListener`

    Parameters:
    :   `e` - the item event

    Since:
    :   1.3
  + ### ancestorResized

    public void ancestorResized([HierarchyEvent](event/HierarchyEvent.md "class in java.awt.event") e)

    Handles the ancestorResized event by invoking the
    ancestorResized methods on listener-a and listener-b.

    Specified by:
    :   `ancestorResized` in interface `HierarchyBoundsListener`

    Parameters:
    :   `e` - the item event

    Since:
    :   1.3
  + ### mouseWheelMoved

    public void mouseWheelMoved([MouseWheelEvent](event/MouseWheelEvent.md "class in java.awt.event") e)

    Handles the mouseWheelMoved event by invoking the
    mouseWheelMoved methods on listener-a and listener-b.

    Specified by:
    :   `mouseWheelMoved` in interface `MouseWheelListener`

    Parameters:
    :   `e` - the mouse event

    Since:
    :   1.4

    See Also:
    :   - [`MouseWheelEvent`](event/MouseWheelEvent.md "class in java.awt.event")
  + ### add

    public static [ComponentListener](event/ComponentListener.md "interface in java.awt.event") add([ComponentListener](event/ComponentListener.md "interface in java.awt.event") a,
    [ComponentListener](event/ComponentListener.md "interface in java.awt.event") b)

    Adds component-listener-a with component-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - component-listener-a
    :   `b` - component-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [ContainerListener](event/ContainerListener.md "interface in java.awt.event") add([ContainerListener](event/ContainerListener.md "interface in java.awt.event") a,
    [ContainerListener](event/ContainerListener.md "interface in java.awt.event") b)

    Adds container-listener-a with container-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - container-listener-a
    :   `b` - container-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [FocusListener](event/FocusListener.md "interface in java.awt.event") add([FocusListener](event/FocusListener.md "interface in java.awt.event") a,
    [FocusListener](event/FocusListener.md "interface in java.awt.event") b)

    Adds focus-listener-a with focus-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - focus-listener-a
    :   `b` - focus-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [KeyListener](event/KeyListener.md "interface in java.awt.event") add([KeyListener](event/KeyListener.md "interface in java.awt.event") a,
    [KeyListener](event/KeyListener.md "interface in java.awt.event") b)

    Adds key-listener-a with key-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - key-listener-a
    :   `b` - key-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [MouseListener](event/MouseListener.md "interface in java.awt.event") add([MouseListener](event/MouseListener.md "interface in java.awt.event") a,
    [MouseListener](event/MouseListener.md "interface in java.awt.event") b)

    Adds mouse-listener-a with mouse-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - mouse-listener-a
    :   `b` - mouse-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [MouseMotionListener](event/MouseMotionListener.md "interface in java.awt.event") add([MouseMotionListener](event/MouseMotionListener.md "interface in java.awt.event") a,
    [MouseMotionListener](event/MouseMotionListener.md "interface in java.awt.event") b)

    Adds mouse-motion-listener-a with mouse-motion-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - mouse-motion-listener-a
    :   `b` - mouse-motion-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [WindowListener](event/WindowListener.md "interface in java.awt.event") add([WindowListener](event/WindowListener.md "interface in java.awt.event") a,
    [WindowListener](event/WindowListener.md "interface in java.awt.event") b)

    Adds window-listener-a with window-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - window-listener-a
    :   `b` - window-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [WindowStateListener](event/WindowStateListener.md "interface in java.awt.event") add([WindowStateListener](event/WindowStateListener.md "interface in java.awt.event") a,
    [WindowStateListener](event/WindowStateListener.md "interface in java.awt.event") b)

    Adds window-state-listener-a with window-state-listener-b
    and returns the resulting multicast listener.

    Parameters:
    :   `a` - window-state-listener-a
    :   `b` - window-state-listener-b

    Returns:
    :   the resulting listener

    Since:
    :   1.4
  + ### add

    public static [WindowFocusListener](event/WindowFocusListener.md "interface in java.awt.event") add([WindowFocusListener](event/WindowFocusListener.md "interface in java.awt.event") a,
    [WindowFocusListener](event/WindowFocusListener.md "interface in java.awt.event") b)

    Adds window-focus-listener-a with window-focus-listener-b
    and returns the resulting multicast listener.

    Parameters:
    :   `a` - window-focus-listener-a
    :   `b` - window-focus-listener-b

    Returns:
    :   the resulting listener

    Since:
    :   1.4
  + ### add

    public static [ActionListener](event/ActionListener.md "interface in java.awt.event") add([ActionListener](event/ActionListener.md "interface in java.awt.event") a,
    [ActionListener](event/ActionListener.md "interface in java.awt.event") b)

    Adds action-listener-a with action-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - action-listener-a
    :   `b` - action-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [ItemListener](event/ItemListener.md "interface in java.awt.event") add([ItemListener](event/ItemListener.md "interface in java.awt.event") a,
    [ItemListener](event/ItemListener.md "interface in java.awt.event") b)

    Adds item-listener-a with item-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - item-listener-a
    :   `b` - item-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [AdjustmentListener](event/AdjustmentListener.md "interface in java.awt.event") add([AdjustmentListener](event/AdjustmentListener.md "interface in java.awt.event") a,
    [AdjustmentListener](event/AdjustmentListener.md "interface in java.awt.event") b)

    Adds adjustment-listener-a with adjustment-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - adjustment-listener-a
    :   `b` - adjustment-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [TextListener](event/TextListener.md "interface in java.awt.event") add([TextListener](event/TextListener.md "interface in java.awt.event") a,
    [TextListener](event/TextListener.md "interface in java.awt.event") b)

    Adds text-listener-a with text-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - text-listener-a
    :   `b` - text-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [InputMethodListener](event/InputMethodListener.md "interface in java.awt.event") add([InputMethodListener](event/InputMethodListener.md "interface in java.awt.event") a,
    [InputMethodListener](event/InputMethodListener.md "interface in java.awt.event") b)

    Adds input-method-listener-a with input-method-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - input-method-listener-a
    :   `b` - input-method-listener-b

    Returns:
    :   the resulting listener
  + ### add

    public static [HierarchyListener](event/HierarchyListener.md "interface in java.awt.event") add([HierarchyListener](event/HierarchyListener.md "interface in java.awt.event") a,
    [HierarchyListener](event/HierarchyListener.md "interface in java.awt.event") b)

    Adds hierarchy-listener-a with hierarchy-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - hierarchy-listener-a
    :   `b` - hierarchy-listener-b

    Returns:
    :   the resulting listener

    Since:
    :   1.3
  + ### add

    public static [HierarchyBoundsListener](event/HierarchyBoundsListener.md "interface in java.awt.event") add([HierarchyBoundsListener](event/HierarchyBoundsListener.md "interface in java.awt.event") a,
    [HierarchyBoundsListener](event/HierarchyBoundsListener.md "interface in java.awt.event") b)

    Adds hierarchy-bounds-listener-a with hierarchy-bounds-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - hierarchy-bounds-listener-a
    :   `b` - hierarchy-bounds-listener-b

    Returns:
    :   the resulting listener

    Since:
    :   1.3
  + ### add

    public static [MouseWheelListener](event/MouseWheelListener.md "interface in java.awt.event") add([MouseWheelListener](event/MouseWheelListener.md "interface in java.awt.event") a,
    [MouseWheelListener](event/MouseWheelListener.md "interface in java.awt.event") b)

    Adds mouse-wheel-listener-a with mouse-wheel-listener-b and
    returns the resulting multicast listener.

    Parameters:
    :   `a` - mouse-wheel-listener-a
    :   `b` - mouse-wheel-listener-b

    Returns:
    :   the resulting listener

    Since:
    :   1.4
  + ### remove

    public static [ComponentListener](event/ComponentListener.md "interface in java.awt.event") remove([ComponentListener](event/ComponentListener.md "interface in java.awt.event") l,
    [ComponentListener](event/ComponentListener.md "interface in java.awt.event") oldl)

    Removes the old component-listener from component-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - component-listener-l
    :   `oldl` - the component-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [ContainerListener](event/ContainerListener.md "interface in java.awt.event") remove([ContainerListener](event/ContainerListener.md "interface in java.awt.event") l,
    [ContainerListener](event/ContainerListener.md "interface in java.awt.event") oldl)

    Removes the old container-listener from container-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - container-listener-l
    :   `oldl` - the container-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [FocusListener](event/FocusListener.md "interface in java.awt.event") remove([FocusListener](event/FocusListener.md "interface in java.awt.event") l,
    [FocusListener](event/FocusListener.md "interface in java.awt.event") oldl)

    Removes the old focus-listener from focus-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - focus-listener-l
    :   `oldl` - the focus-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [KeyListener](event/KeyListener.md "interface in java.awt.event") remove([KeyListener](event/KeyListener.md "interface in java.awt.event") l,
    [KeyListener](event/KeyListener.md "interface in java.awt.event") oldl)

    Removes the old key-listener from key-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - key-listener-l
    :   `oldl` - the key-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [MouseListener](event/MouseListener.md "interface in java.awt.event") remove([MouseListener](event/MouseListener.md "interface in java.awt.event") l,
    [MouseListener](event/MouseListener.md "interface in java.awt.event") oldl)

    Removes the old mouse-listener from mouse-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - mouse-listener-l
    :   `oldl` - the mouse-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [MouseMotionListener](event/MouseMotionListener.md "interface in java.awt.event") remove([MouseMotionListener](event/MouseMotionListener.md "interface in java.awt.event") l,
    [MouseMotionListener](event/MouseMotionListener.md "interface in java.awt.event") oldl)

    Removes the old mouse-motion-listener from mouse-motion-listener-l
    and returns the resulting multicast listener.

    Parameters:
    :   `l` - mouse-motion-listener-l
    :   `oldl` - the mouse-motion-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [WindowListener](event/WindowListener.md "interface in java.awt.event") remove([WindowListener](event/WindowListener.md "interface in java.awt.event") l,
    [WindowListener](event/WindowListener.md "interface in java.awt.event") oldl)

    Removes the old window-listener from window-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - window-listener-l
    :   `oldl` - the window-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [WindowStateListener](event/WindowStateListener.md "interface in java.awt.event") remove([WindowStateListener](event/WindowStateListener.md "interface in java.awt.event") l,
    [WindowStateListener](event/WindowStateListener.md "interface in java.awt.event") oldl)

    Removes the old window-state-listener from window-state-listener-l
    and returns the resulting multicast listener.

    Parameters:
    :   `l` - window-state-listener-l
    :   `oldl` - the window-state-listener being removed

    Returns:
    :   the resulting listener

    Since:
    :   1.4
  + ### remove

    public static [WindowFocusListener](event/WindowFocusListener.md "interface in java.awt.event") remove([WindowFocusListener](event/WindowFocusListener.md "interface in java.awt.event") l,
    [WindowFocusListener](event/WindowFocusListener.md "interface in java.awt.event") oldl)

    Removes the old window-focus-listener from window-focus-listener-l
    and returns the resulting multicast listener.

    Parameters:
    :   `l` - window-focus-listener-l
    :   `oldl` - the window-focus-listener being removed

    Returns:
    :   the resulting listener

    Since:
    :   1.4
  + ### remove

    public static [ActionListener](event/ActionListener.md "interface in java.awt.event") remove([ActionListener](event/ActionListener.md "interface in java.awt.event") l,
    [ActionListener](event/ActionListener.md "interface in java.awt.event") oldl)

    Removes the old action-listener from action-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - action-listener-l
    :   `oldl` - the action-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [ItemListener](event/ItemListener.md "interface in java.awt.event") remove([ItemListener](event/ItemListener.md "interface in java.awt.event") l,
    [ItemListener](event/ItemListener.md "interface in java.awt.event") oldl)

    Removes the old item-listener from item-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - item-listener-l
    :   `oldl` - the item-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [AdjustmentListener](event/AdjustmentListener.md "interface in java.awt.event") remove([AdjustmentListener](event/AdjustmentListener.md "interface in java.awt.event") l,
    [AdjustmentListener](event/AdjustmentListener.md "interface in java.awt.event") oldl)

    Removes the old adjustment-listener from adjustment-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - adjustment-listener-l
    :   `oldl` - the adjustment-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [TextListener](event/TextListener.md "interface in java.awt.event") remove([TextListener](event/TextListener.md "interface in java.awt.event") l,
    [TextListener](event/TextListener.md "interface in java.awt.event") oldl)

    Removes the old text-listener from text-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - text-listener-l
    :   `oldl` - the text-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [InputMethodListener](event/InputMethodListener.md "interface in java.awt.event") remove([InputMethodListener](event/InputMethodListener.md "interface in java.awt.event") l,
    [InputMethodListener](event/InputMethodListener.md "interface in java.awt.event") oldl)

    Removes the old input-method-listener from input-method-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - input-method-listener-l
    :   `oldl` - the input-method-listener being removed

    Returns:
    :   the resulting listener
  + ### remove

    public static [HierarchyListener](event/HierarchyListener.md "interface in java.awt.event") remove([HierarchyListener](event/HierarchyListener.md "interface in java.awt.event") l,
    [HierarchyListener](event/HierarchyListener.md "interface in java.awt.event") oldl)

    Removes the old hierarchy-listener from hierarchy-listener-l and
    returns the resulting multicast listener.

    Parameters:
    :   `l` - hierarchy-listener-l
    :   `oldl` - the hierarchy-listener being removed

    Returns:
    :   the resulting listener

    Since:
    :   1.3
  + ### remove

    public static [HierarchyBoundsListener](event/HierarchyBoundsListener.md "interface in java.awt.event") remove([HierarchyBoundsListener](event/HierarchyBoundsListener.md "interface in java.awt.event") l,
    [HierarchyBoundsListener](event/HierarchyBoundsListener.md "interface in java.awt.event") oldl)

    Removes the old hierarchy-bounds-listener from
    hierarchy-bounds-listener-l and returns the resulting multicast
    listener.

    Parameters:
    :   `l` - hierarchy-bounds-listener-l
    :   `oldl` - the hierarchy-bounds-listener being removed

    Returns:
    :   the resulting listener

    Since:
    :   1.3
  + ### remove

    public static [MouseWheelListener](event/MouseWheelListener.md "interface in java.awt.event") remove([MouseWheelListener](event/MouseWheelListener.md "interface in java.awt.event") l,
    [MouseWheelListener](event/MouseWheelListener.md "interface in java.awt.event") oldl)

    Removes the old mouse-wheel-listener from mouse-wheel-listener-l
    and returns the resulting multicast listener.

    Parameters:
    :   `l` - mouse-wheel-listener-l
    :   `oldl` - the mouse-wheel-listener being removed

    Returns:
    :   the resulting listener

    Since:
    :   1.4
  + ### addInternal

    protected static [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") addInternal([EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") a,
    [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") b)

    Returns the resulting multicast listener from adding listener-a
    and listener-b together.
    If listener-a is null, it returns listener-b;
    If listener-b is null, it returns listener-a
    If neither are null, then it creates and returns
    a new AWTEventMulticaster instance which chains a with b.

    Parameters:
    :   `a` - event listener-a
    :   `b` - event listener-b

    Returns:
    :   the resulting listener
  + ### removeInternal

    protected static [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") removeInternal([EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") l,
    [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") oldl)

    Returns the resulting multicast listener after removing the
    old listener from listener-l.
    If listener-l equals the old listener OR listener-l is null,
    returns null.
    Else if listener-l is an instance of AWTEventMulticaster,
    then it removes the old listener from it.
    Else, returns listener l.

    Parameters:
    :   `l` - the listener being removed from
    :   `oldl` - the listener being removed

    Returns:
    :   the resulting listener
  + ### saveInternal

    protected void saveInternal([ObjectOutputStream](../../../java.base/java/io/ObjectOutputStream.md "class in java.io") s,
    [String](../../../java.base/java/lang/String.md "class in java.lang") k)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Serialization support. Saves all Serializable listeners
    to a serialization stream.

    Parameters:
    :   `s` - the stream to save to
    :   `k` - a prefix stream to put before each serializable listener

    Throws:
    :   `IOException` - if serialization fails
  + ### save

    protected static void save([ObjectOutputStream](../../../java.base/java/io/ObjectOutputStream.md "class in java.io") s,
    [String](../../../java.base/java/lang/String.md "class in java.lang") k,
    [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") l)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Saves a Serializable listener chain to a serialization stream.

    Parameters:
    :   `s` - the stream to save to
    :   `k` - a prefix stream to put before each serializable listener
    :   `l` - the listener chain to save

    Throws:
    :   `IOException` - if serialization fails
  + ### getListeners

    public static <T extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([EventListener](../../../java.base/java/util/EventListener.md "interface in java.util") l,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Returns an array of all the objects chained as
    `FooListener`s by the specified
    `java.util.EventListener`.
    `FooListener`s are chained by the
    `AWTEventMulticaster` using the
    `addFooListener` method.
    If a `null` listener is specified, this method returns an
    empty array. If the specified listener is not an instance of
    `AWTEventMulticaster`, this method returns an array which
    contains only the specified listener. If no such listeners are chained,
    this method returns an empty array.

    Type Parameters:
    :   `T` - the listener type

    Parameters:
    :   `l` - the specified `java.util.EventListener`
    :   `listenerType` - the type of listeners requested; this parameter
        should specify an interface that descends from
        `java.util.EventListener`

    Returns:
    :   an array of all objects chained as
        `FooListener`s by the specified multicast
        listener, or an empty array if no such listeners have been
        chained by the specified multicast listener

    Throws:
    :   `NullPointerException` - if the specified
        `listenertype` parameter is `null`
    :   `ClassCastException` - if `listenerType`
        doesn't specify a class or interface that implements
        `java.util.EventListener`

    Since:
    :   1.4