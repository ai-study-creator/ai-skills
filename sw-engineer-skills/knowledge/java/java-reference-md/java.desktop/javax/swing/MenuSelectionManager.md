Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class MenuSelectionManager

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.MenuSelectionManager

---

public class MenuSelectionManager
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A MenuSelectionManager owns the selection in menu hierarchy.

Since:
:   1.2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ChangeEvent`

  `changeEvent`

  Only one ChangeEvent is needed per button model instance since the
  event's only state is the source property.

  `protected EventListenerList`

  `listenerList`

  The collection of registered listeners
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MenuSelectionManager()`

  Constructs a `MenuSelectionManager`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a ChangeListener to the button.

  `void`

  `clearSelectedPath()`

  Tell the menu selection to close and unselect all the menu components.

  `Component`

  `componentForPoint(Component source,
  Point sourcePoint)`

  Returns the component in the currently selected path
  which contains sourcePoint.

  `static MenuSelectionManager`

  `defaultManager()`

  Returns the default menu selection manager.

  `protected void`

  `fireStateChanged()`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the `ChangeListener`s added
  to this MenuSelectionManager with addChangeListener().

  `MenuElement[]`

  `getSelectedPath()`

  Returns the path to the currently selected menu item

  `boolean`

  `isComponentPartOfCurrentMenu(Component c)`

  Return true if `c` is part of the currently used menu

  `void`

  `processKeyEvent(KeyEvent e)`

  When a MenuElement receives an event from a KeyListener, it should never process the event
  directly.

  `void`

  `processMouseEvent(MouseEvent event)`

  When a MenuElement receives an event from a MouseListener, it should never process the event
  directly.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a ChangeListener from the button.

  `void`

  `setSelectedPath(MenuElement[] path)`

  Changes the selection in the menu hierarchy.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### changeEvent

    protected transient [ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") changeEvent

    Only one ChangeEvent is needed per button model instance since the
    event's only state is the source property. The source of events
    generated is always "this".
  + ### listenerList

    protected [EventListenerList](event/EventListenerList.md "class in javax.swing.event") listenerList

    The collection of registered listeners
* ## Constructor Details

  + ### MenuSelectionManager

    public MenuSelectionManager()

    Constructs a `MenuSelectionManager`.
* ## Method Details

  + ### defaultManager

    public static [MenuSelectionManager](MenuSelectionManager.md "class in javax.swing") defaultManager()

    Returns the default menu selection manager.

    Returns:
    :   a MenuSelectionManager object
  + ### setSelectedPath

    public void setSelectedPath([MenuElement](MenuElement.md "interface in javax.swing")[] path)

    Changes the selection in the menu hierarchy. The elements
    in the array are sorted in order from the root menu
    element to the currently selected menu element.

    Note that this method is public but is used by the look and
    feel engine and should not be called by client applications.

    Parameters:
    :   `path` - an array of `MenuElement` objects specifying
        the selected path
  + ### getSelectedPath

    public [MenuElement](MenuElement.md "interface in javax.swing")[] getSelectedPath()

    Returns the path to the currently selected menu item

    Returns:
    :   an array of MenuElement objects representing the selected path
  + ### clearSelectedPath

    public void clearSelectedPath()

    Tell the menu selection to close and unselect all the menu components. Call this method
    when a choice has been made
  + ### addChangeListener

    public void addChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a ChangeListener to the button.

    Parameters:
    :   `l` - the listener to add
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a ChangeListener from the button.

    Parameters:
    :   `l` - the listener to remove
  + ### getChangeListeners

    public [ChangeListener](event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the `ChangeListener`s added
    to this MenuSelectionManager with addChangeListener().

    Returns:
    :   all of the `ChangeListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### fireStateChanged

    protected void fireStateChanged()

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is created lazily.

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### processMouseEvent

    public void processMouseEvent([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    When a MenuElement receives an event from a MouseListener, it should never process the event
    directly. Instead all MenuElements should call this method with the event.

    Parameters:
    :   `event` - a MouseEvent object
  + ### componentForPoint

    public [Component](../../java/awt/Component.md "class in java.awt") componentForPoint([Component](../../java/awt/Component.md "class in java.awt") source,
    [Point](../../java/awt/Point.md "class in java.awt") sourcePoint)

    Returns the component in the currently selected path
    which contains sourcePoint.

    Parameters:
    :   `source` - The component in whose coordinate space sourcePoint
        is given
    :   `sourcePoint` - The point which is being tested

    Returns:
    :   The component in the currently selected path which
        contains sourcePoint (relative to the source component's
        coordinate space. If sourcePoint is not inside a component
        on the currently selected path, null is returned.
  + ### processKeyEvent

    public void processKeyEvent([KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") e)

    When a MenuElement receives an event from a KeyListener, it should never process the event
    directly. Instead all MenuElements should call this method with the event.

    Parameters:
    :   `e` - a KeyEvent object
  + ### isComponentPartOfCurrentMenu

    public boolean isComponentPartOfCurrentMenu([Component](../../java/awt/Component.md "class in java.awt") c)

    Return true if `c` is part of the currently used menu

    Parameters:
    :   `c` - a `Component`

    Returns:
    :   true if `c` is part of the currently used menu,
        false otherwise