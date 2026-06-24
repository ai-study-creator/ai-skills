Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DefaultDesktopManager

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.DefaultDesktopManager

All Implemented Interfaces:
:   `Serializable`, `DesktopManager`

---

public class DefaultDesktopManager
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [DesktopManager](DesktopManager.md "interface in javax.swing"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

This is an implementation of the `DesktopManager`.
It currently implements the basic behaviors for managing
`JInternalFrame`s in an arbitrary parent.
`JInternalFrame`s that are not children of a
`JDesktop` will use this component
to handle their desktop-like actions.

This class provides a policy for the various JInternalFrame methods,
it is not meant to be called directly rather the various JInternalFrame
methods will call into the DesktopManager.

Since:
:   1.2

See Also:
:   * [`JDesktopPane`](JDesktopPane.md "class in javax.swing")
    * [`JInternalFrame`](JInternalFrame.md "class in javax.swing")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultDesktopManager()`

  Constructs a `DefaultDesktopManager`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `activateFrame(JInternalFrame f)`

  This will activate **f** moving it to the front.

  `void`

  `beginDraggingFrame(JComponent f)`

  This method is normally called when the user has indicated that
  they will begin dragging a component around.

  `void`

  `beginResizingFrame(JComponent f,
  int direction)`

  This method is normally called when the user has indicated that
  they will begin resizing the frame.

  `void`

  `closeFrame(JInternalFrame f)`

  Removes the frame, and, if necessary, the
  `desktopIcon`, from its parent.

  `void`

  `deactivateFrame(JInternalFrame f)`

  Generally, indicate that this frame has lost focus.

  `void`

  `deiconifyFrame(JInternalFrame f)`

  Removes the desktopIcon from its parent and adds its frame
  to the parent.

  `void`

  `dragFrame(JComponent f,
  int newX,
  int newY)`

  Moves the visible location of the frame being dragged
  to the location specified.

  `void`

  `endDraggingFrame(JComponent f)`

  This method signals the end of the dragging session.

  `void`

  `endResizingFrame(JComponent f)`

  This method signals the end of the resize session.

  `protected Rectangle`

  `getBoundsForIconOf(JInternalFrame f)`

  The `iconifyFrame()` code calls this to determine the proper bounds
  for the desktopIcon.

  `protected Rectangle`

  `getPreviousBounds(JInternalFrame f)`

  Gets the normal bounds of the component prior to the component
  being maximized.

  `void`

  `iconifyFrame(JInternalFrame f)`

  Removes the frame from its parent and adds its
  `desktopIcon` to the parent.

  `void`

  `maximizeFrame(JInternalFrame f)`

  Resizes the frame to fill its parents bounds.

  `void`

  `minimizeFrame(JInternalFrame f)`

  Restores the frame back to its size and position prior
  to a `maximizeFrame` call.

  `void`

  `openFrame(JInternalFrame f)`

  Normally this method will not be called.

  `protected void`

  `removeIconFor(JInternalFrame f)`

  Convenience method to remove the desktopIcon of **f** is necessary.

  `void`

  `resizeFrame(JComponent f,
  int newX,
  int newY,
  int newWidth,
  int newHeight)`

  Calls `setBoundsForFrame` with the new values.

  `void`

  `setBoundsForFrame(JComponent f,
  int newX,
  int newY,
  int newWidth,
  int newHeight)`

  This moves the `JComponent` and repaints the damaged areas.

  `protected void`

  `setPreviousBounds(JInternalFrame f,
  Rectangle r)`

  Stores the bounds of the component just before a maximize call.

  `protected void`

  `setWasIcon(JInternalFrame f,
  Boolean value)`

  Sets that the component has been iconized and the bounds of the
  `desktopIcon` are valid.

  `protected boolean`

  `wasIcon(JInternalFrame f)`

  Returns `true` if the component has been iconized
  and the bounds of the `desktopIcon` are valid,
  otherwise returns `false`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DefaultDesktopManager

    public DefaultDesktopManager()

    Constructs a `DefaultDesktopManager`.
* ## Method Details

  + ### openFrame

    public void openFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Normally this method will not be called. If it is, it
    tries to determine the appropriate parent from the desktopIcon of the frame.
    Will remove the desktopIcon from its parent if it successfully adds the frame.

    Specified by:
    :   `openFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JInternalFrame` to be displayed
  + ### closeFrame

    public void closeFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Removes the frame, and, if necessary, the
    `desktopIcon`, from its parent.

    Specified by:
    :   `closeFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JInternalFrame` to be removed
  + ### maximizeFrame

    public void maximizeFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Resizes the frame to fill its parents bounds.

    Specified by:
    :   `maximizeFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the frame to be resized
  + ### minimizeFrame

    public void minimizeFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Restores the frame back to its size and position prior
    to a `maximizeFrame` call.

    Specified by:
    :   `minimizeFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JInternalFrame` to be restored
  + ### iconifyFrame

    public void iconifyFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Removes the frame from its parent and adds its
    `desktopIcon` to the parent.

    Specified by:
    :   `iconifyFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JInternalFrame` to be iconified
  + ### deiconifyFrame

    public void deiconifyFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Removes the desktopIcon from its parent and adds its frame
    to the parent.

    Specified by:
    :   `deiconifyFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JInternalFrame` to be de-iconified
  + ### activateFrame

    public void activateFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    This will activate **f** moving it to the front. It will
    set the current active frame's (if any)
    `IS_SELECTED_PROPERTY` to `false`.
    There can be only one active frame across all Layers.

    Specified by:
    :   `activateFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JInternalFrame` to be activated
  + ### deactivateFrame

    public void deactivateFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Description copied from interface: `DesktopManager`

    Generally, indicate that this frame has lost focus. This is usually called
    after the JInternalFrame's IS\_SELECTED\_PROPERTY has been set to false.

    Specified by:
    :   `deactivateFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JInternalFrame` to be deactivated
  + ### beginDraggingFrame

    public void beginDraggingFrame([JComponent](JComponent.md "class in javax.swing") f)

    Description copied from interface: `DesktopManager`

    This method is normally called when the user has indicated that
    they will begin dragging a component around. This method should be called
    prior to any dragFrame() calls to allow the DesktopManager to prepare any
    necessary state. Normally **f** will be a JInternalFrame.

    Specified by:
    :   `beginDraggingFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JComponent` being dragged
  + ### dragFrame

    public void dragFrame([JComponent](JComponent.md "class in javax.swing") f,
    int newX,
    int newY)

    Moves the visible location of the frame being dragged
    to the location specified. The means by which this occurs can vary depending
    on the dragging algorithm being used. The actual logical location of the frame
    might not change until `endDraggingFrame` is called.

    Specified by:
    :   `dragFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JComponent` being dragged
    :   `newX` - the new x-coordinate
    :   `newY` - the new y-coordinate
  + ### endDraggingFrame

    public void endDraggingFrame([JComponent](JComponent.md "class in javax.swing") f)

    Description copied from interface: `DesktopManager`

    This method signals the end of the dragging session. Any state maintained by
    the DesktopManager can be removed here. Normally **f** will be a JInternalFrame.

    Specified by:
    :   `endDraggingFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JComponent` being dragged
  + ### beginResizingFrame

    public void beginResizingFrame([JComponent](JComponent.md "class in javax.swing") f,
    int direction)

    Description copied from interface: `DesktopManager`

    This method is normally called when the user has indicated that
    they will begin resizing the frame. This method should be called
    prior to any resizeFrame() calls to allow the DesktopManager to prepare any
    necessary state. Normally **f** will be a JInternalFrame.

    Specified by:
    :   `beginResizingFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JComponent` being resized
    :   `direction` - the direction
  + ### resizeFrame

    public void resizeFrame([JComponent](JComponent.md "class in javax.swing") f,
    int newX,
    int newY,
    int newWidth,
    int newHeight)

    Calls `setBoundsForFrame` with the new values.

    Specified by:
    :   `resizeFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the component to be resized
    :   `newX` - the new x-coordinate
    :   `newY` - the new y-coordinate
    :   `newWidth` - the new width
    :   `newHeight` - the new height
  + ### endResizingFrame

    public void endResizingFrame([JComponent](JComponent.md "class in javax.swing") f)

    Description copied from interface: `DesktopManager`

    This method signals the end of the resize session. Any state maintained by
    the DesktopManager can be removed here. Normally **f** will be a JInternalFrame.

    Specified by:
    :   `endResizingFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JComponent` being resized
  + ### setBoundsForFrame

    public void setBoundsForFrame([JComponent](JComponent.md "class in javax.swing") f,
    int newX,
    int newY,
    int newWidth,
    int newHeight)

    This moves the `JComponent` and repaints the damaged areas.

    Specified by:
    :   `setBoundsForFrame` in interface `DesktopManager`

    Parameters:
    :   `f` - the `JComponent` being moved or resized
    :   `newX` - the new x-coordinate
    :   `newY` - the new y-coordinate
    :   `newWidth` - the new width
    :   `newHeight` - the new height
  + ### removeIconFor

    protected void removeIconFor([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Convenience method to remove the desktopIcon of **f** is necessary.

    Parameters:
    :   `f` - the `JInternalFrame` for which to remove the
        `desktopIcon`
  + ### getBoundsForIconOf

    protected [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getBoundsForIconOf([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    The `iconifyFrame()` code calls this to determine the proper bounds
    for the desktopIcon.

    Parameters:
    :   `f` - the `JInternalFrame` of interest

    Returns:
    :   a `Rectangle` containing bounds for the `desktopIcon`
  + ### setPreviousBounds

    protected void setPreviousBounds([JInternalFrame](JInternalFrame.md "class in javax.swing") f,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") r)

    Stores the bounds of the component just before a maximize call.

    Parameters:
    :   `f` - the component about to be resized
    :   `r` - the normal bounds to be saved away
  + ### getPreviousBounds

    protected [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getPreviousBounds([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Gets the normal bounds of the component prior to the component
    being maximized.

    Parameters:
    :   `f` - the `JInternalFrame` of interest

    Returns:
    :   the normal bounds of the component
  + ### setWasIcon

    protected void setWasIcon([JInternalFrame](JInternalFrame.md "class in javax.swing") f,
    [Boolean](../../../java.base/java/lang/Boolean.md "class in java.lang") value)

    Sets that the component has been iconized and the bounds of the
    `desktopIcon` are valid.

    Parameters:
    :   `f` - the `JInternalFrame` of interest
    :   `value` - a `Boolean` signifying if component has been iconized
  + ### wasIcon

    protected boolean wasIcon([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Returns `true` if the component has been iconized
    and the bounds of the `desktopIcon` are valid,
    otherwise returns `false`.

    Parameters:
    :   `f` - the `JInternalFrame` of interest

    Returns:
    :   `true` if the component has been iconized;
        otherwise returns `false`