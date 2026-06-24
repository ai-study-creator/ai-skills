Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class MenuDragMouseEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

[java.awt.event.ComponentEvent](../../../java/awt/event/ComponentEvent.md "class in java.awt.event")

[java.awt.event.InputEvent](../../../java/awt/event/InputEvent.md "class in java.awt.event")

[java.awt.event.MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event")

javax.swing.event.MenuDragMouseEvent

All Implemented Interfaces:
:   `Serializable`

---

public class MenuDragMouseEvent
extends [MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event")

MenuDragMouseEvent is used to notify interested parties that
the menu element has received a MouseEvent forwarded to it
under drag conditions.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  ### Fields inherited from class java.awt.event.[MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event")

  `BUTTON1, BUTTON2, BUTTON3, MOUSE_CLICKED, MOUSE_DRAGGED, MOUSE_ENTERED, MOUSE_EXITED, MOUSE_FIRST, MOUSE_LAST, MOUSE_MOVED, MOUSE_PRESSED, MOUSE_RELEASED, MOUSE_WHEEL, NOBUTTON`

  ### Fields inherited from class java.awt.event.[InputEvent](../../../java/awt/event/InputEvent.md "class in java.awt.event")

  `ALT_DOWN_MASK, ALT_GRAPH_DOWN_MASK, ALT_GRAPH_MASK, ALT_MASK, BUTTON1_DOWN_MASK, BUTTON1_MASK, BUTTON2_DOWN_MASK, BUTTON2_MASK, BUTTON3_DOWN_MASK, BUTTON3_MASK, CTRL_DOWN_MASK, CTRL_MASK, META_DOWN_MASK, META_MASK, SHIFT_DOWN_MASK, SHIFT_MASK`

  ### Fields inherited from class java.awt.event.[ComponentEvent](../../../java/awt/event/ComponentEvent.md "class in java.awt.event")

  `COMPONENT_FIRST, COMPONENT_HIDDEN, COMPONENT_LAST, COMPONENT_MOVED, COMPONENT_RESIZED, COMPONENT_SHOWN`

  ### Fields inherited from class java.awt.[AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

  `ACTION_EVENT_MASK, ADJUSTMENT_EVENT_MASK, COMPONENT_EVENT_MASK, consumed, CONTAINER_EVENT_MASK, FOCUS_EVENT_MASK, HIERARCHY_BOUNDS_EVENT_MASK, HIERARCHY_EVENT_MASK, id, INPUT_METHOD_EVENT_MASK, INVOCATION_EVENT_MASK, ITEM_EVENT_MASK, KEY_EVENT_MASK, MOUSE_EVENT_MASK, MOUSE_MOTION_EVENT_MASK, MOUSE_WHEEL_EVENT_MASK, PAINT_EVENT_MASK, RESERVED_ID_MAX, TEXT_EVENT_MASK, WINDOW_EVENT_MASK, WINDOW_FOCUS_EVENT_MASK, WINDOW_STATE_EVENT_MASK`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MenuDragMouseEvent(Component source,
  int id,
  long when,
  int modifiers,
  int x,
  int y,
  int clickCount,
  boolean popupTrigger,
  MenuElement[] p,
  MenuSelectionManager m)`

  Constructs a MenuDragMouseEvent object.

  `MenuDragMouseEvent(Component source,
  int id,
  long when,
  int modifiers,
  int x,
  int y,
  int xAbs,
  int yAbs,
  int clickCount,
  boolean popupTrigger,
  MenuElement[] p,
  MenuSelectionManager m)`

  Constructs a MenuDragMouseEvent object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `MenuSelectionManager`

  `getMenuSelectionManager()`

  Returns the current menu selection manager.

  `MenuElement[]`

  `getPath()`

  Returns the path to the selected menu item.

  ### Methods inherited from class java.awt.event.[MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event")

  `getButton, getClickCount, getLocationOnScreen, getModifiersEx, getMouseModifiersText, getPoint, getX, getXOnScreen, getY, getYOnScreen, isPopupTrigger, paramString, translatePoint`

  ### Methods inherited from class java.awt.event.[InputEvent](../../../java/awt/event/InputEvent.md "class in java.awt.event")

  `consume, getMaskForButton, getModifiers, getModifiersExText, getWhen, isAltDown, isAltGraphDown, isConsumed, isControlDown, isMetaDown, isShiftDown`

  ### Methods inherited from class java.awt.event.[ComponentEvent](../../../java/awt/event/ComponentEvent.md "class in java.awt.event")

  `getComponent`

  ### Methods inherited from class java.awt.[AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

  `getID, setSource, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MenuDragMouseEvent

    public MenuDragMouseEvent([Component](../../../java/awt/Component.md "class in java.awt") source,
    int id,
    long when,
    int modifiers,
    int x,
    int y,
    int clickCount,
    boolean popupTrigger,
    [MenuElement](../MenuElement.md "interface in javax.swing")[] p,
    [MenuSelectionManager](../MenuSelectionManager.md "class in javax.swing") m)

    Constructs a MenuDragMouseEvent object.

    Absolute coordinates xAbs and yAbs are set to source's location on screen plus
    relative coordinates x and y. xAbs and yAbs are set to zero if the source is not showing.

    Parameters:
    :   `source` - the Component that originated the event
        (typically `this`)
    :   `id` - an int specifying the type of event, as defined
        in [`MouseEvent`](../../../java/awt/event/MouseEvent.md "class in java.awt.event")
    :   `when` - a long identifying the time the event occurred
    :   `modifiers` - an int specifying any modifier keys held down,
        as specified in [`InputEvent`](../../../java/awt/event/InputEvent.md "class in java.awt.event")
    :   `x` - an int specifying the horizontal position at which
        the event occurred, in pixels
    :   `y` - an int specifying the vertical position at which
        the event occurred, in pixels
    :   `clickCount` - an int specifying the number of mouse-clicks
    :   `popupTrigger` - a boolean -- true if the event {should?/did?}
        trigger a popup
    :   `p` - an array of MenuElement objects specifying a path
        to a menu item affected by the drag
    :   `m` - a MenuSelectionManager object that handles selections

    See Also:
    :   - [`MouseEvent(java.awt.Component, int, long, int, int, int, int, int, int, boolean, int)`](../../../java/awt/event/MouseEvent.md#%3Cinit%3E(java.awt.Component,int,long,int,int,int,int,int,int,boolean,int))
  + ### MenuDragMouseEvent

    public MenuDragMouseEvent([Component](../../../java/awt/Component.md "class in java.awt") source,
    int id,
    long when,
    int modifiers,
    int x,
    int y,
    int xAbs,
    int yAbs,
    int clickCount,
    boolean popupTrigger,
    [MenuElement](../MenuElement.md "interface in javax.swing")[] p,
    [MenuSelectionManager](../MenuSelectionManager.md "class in javax.swing") m)

    Constructs a MenuDragMouseEvent object.

    Even if inconsistent values for relative and absolute coordinates are
    passed to the constructor, the MenuDragMouseEvent instance is still
    created.

    Parameters:
    :   `source` - the Component that originated the event
        (typically `this`)
    :   `id` - an int specifying the type of event, as defined
        in [`MouseEvent`](../../../java/awt/event/MouseEvent.md "class in java.awt.event")
    :   `when` - a long identifying the time the event occurred
    :   `modifiers` - an int specifying any modifier keys held down,
        as specified in [`InputEvent`](../../../java/awt/event/InputEvent.md "class in java.awt.event")
    :   `x` - an int specifying the horizontal position at which
        the event occurred, in pixels
    :   `y` - an int specifying the vertical position at which
        the event occurred, in pixels
    :   `xAbs` - an int specifying the horizontal absolute position at which
        the event occurred, in pixels
    :   `yAbs` - an int specifying the vertical absolute position at which
        the event occurred, in pixels
    :   `clickCount` - an int specifying the number of mouse-clicks
    :   `popupTrigger` - a boolean -- true if the event {should?/did?}
        trigger a popup
    :   `p` - an array of MenuElement objects specifying a path
        to a menu item affected by the drag
    :   `m` - a MenuSelectionManager object that handles selections

    Since:
    :   1.6

    See Also:
    :   - [`MouseEvent(java.awt.Component, int, long, int, int, int, int, int, int, boolean, int)`](../../../java/awt/event/MouseEvent.md#%3Cinit%3E(java.awt.Component,int,long,int,int,int,int,int,int,boolean,int))
* ## Method Details

  + ### getPath

    public [MenuElement](../MenuElement.md "interface in javax.swing")[] getPath()

    Returns the path to the selected menu item.

    Returns:
    :   an array of MenuElement objects representing the path value
  + ### getMenuSelectionManager

    public [MenuSelectionManager](../MenuSelectionManager.md "class in javax.swing") getMenuSelectionManager()

    Returns the current menu selection manager.

    Returns:
    :   a MenuSelectionManager object