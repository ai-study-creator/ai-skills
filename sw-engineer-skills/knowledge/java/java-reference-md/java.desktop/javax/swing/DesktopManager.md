Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface DesktopManager

All Known Implementing Classes:
:   `DefaultDesktopManager`

---

public interface DesktopManager

DesktopManager objects are owned by a JDesktopPane object. They are responsible
for implementing L&F specific behaviors for the JDesktopPane. JInternalFrame
implementations should delegate specific behaviors to the DesktopManager. For
instance, if a JInternalFrame was asked to iconify, it should try:

```
    getDesktopPane().getDesktopManager().iconifyFrame(frame);
```

This delegation allows each L&F to provide custom behaviors for desktop-specific
actions. (For example, how and where the internal frame's icon would appear.)

This class provides a policy for the various JInternalFrame methods, it is not
meant to be called directly rather the various JInternalFrame methods will call
into the DesktopManager.

Since:
:   1.2

See Also:
:   * [`JDesktopPane`](JDesktopPane.md "class in javax.swing")
    * [`JInternalFrame`](JInternalFrame.md "class in javax.swing")
    * [`JInternalFrame.JDesktopIcon`](JInternalFrame.JDesktopIcon.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `activateFrame(JInternalFrame f)`

  Generally, indicate that this frame has focus.

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

  Generally, this call should remove the frame from its parent.

  `void`

  `deactivateFrame(JInternalFrame f)`

  Generally, indicate that this frame has lost focus.

  `void`

  `deiconifyFrame(JInternalFrame f)`

  Generally, remove any iconic representation that is present and restore the
  frame to it's original size and location.

  `void`

  `dragFrame(JComponent f,
  int newX,
  int newY)`

  The user has moved the frame.

  `void`

  `endDraggingFrame(JComponent f)`

  This method signals the end of the dragging session.

  `void`

  `endResizingFrame(JComponent f)`

  This method signals the end of the resize session.

  `void`

  `iconifyFrame(JInternalFrame f)`

  Generally, remove this frame from its parent and add an iconic representation.

  `void`

  `maximizeFrame(JInternalFrame f)`

  Generally, the frame should be resized to match its parents bounds.

  `void`

  `minimizeFrame(JInternalFrame f)`

  Generally, this indicates that the frame should be restored to its
  size and position prior to a maximizeFrame() call.

  `void`

  `openFrame(JInternalFrame f)`

  If possible, display this frame in an appropriate location.

  `void`

  `resizeFrame(JComponent f,
  int newX,
  int newY,
  int newWidth,
  int newHeight)`

  The user has resized the component.

  `void`

  `setBoundsForFrame(JComponent f,
  int newX,
  int newY,
  int newWidth,
  int newHeight)`

  This is a primitive reshape method.

* ## Method Details

  + ### openFrame

    void openFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    If possible, display this frame in an appropriate location.
    Normally, this is not called, as the creator of the JInternalFrame
    will add the frame to the appropriate parent.

    Parameters:
    :   `f` - the `JInternalFrame` to be displayed
  + ### closeFrame

    void closeFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Generally, this call should remove the frame from its parent.

    Parameters:
    :   `f` - the `JInternalFrame` to be removed
  + ### maximizeFrame

    void maximizeFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Generally, the frame should be resized to match its parents bounds.

    Parameters:
    :   `f` - the `JInternalFrame` to be resized
  + ### minimizeFrame

    void minimizeFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Generally, this indicates that the frame should be restored to its
    size and position prior to a maximizeFrame() call.

    Parameters:
    :   `f` - the `JInternalFrame` to be restored
  + ### iconifyFrame

    void iconifyFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Generally, remove this frame from its parent and add an iconic representation.

    Parameters:
    :   `f` - the `JInternalFrame` to be iconified
  + ### deiconifyFrame

    void deiconifyFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Generally, remove any iconic representation that is present and restore the
    frame to it's original size and location.

    Parameters:
    :   `f` - the `JInternalFrame` to be de-iconified
  + ### activateFrame

    void activateFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Generally, indicate that this frame has focus. This is usually called after
    the JInternalFrame's IS\_SELECTED\_PROPERTY has been set to true.

    Parameters:
    :   `f` - the `JInternalFrame` to be activated
  + ### deactivateFrame

    void deactivateFrame([JInternalFrame](JInternalFrame.md "class in javax.swing") f)

    Generally, indicate that this frame has lost focus. This is usually called
    after the JInternalFrame's IS\_SELECTED\_PROPERTY has been set to false.

    Parameters:
    :   `f` - the `JInternalFrame` to be deactivated
  + ### beginDraggingFrame

    void beginDraggingFrame([JComponent](JComponent.md "class in javax.swing") f)

    This method is normally called when the user has indicated that
    they will begin dragging a component around. This method should be called
    prior to any dragFrame() calls to allow the DesktopManager to prepare any
    necessary state. Normally **f** will be a JInternalFrame.

    Parameters:
    :   `f` - the `JComponent` being dragged
  + ### dragFrame

    void dragFrame([JComponent](JComponent.md "class in javax.swing") f,
    int newX,
    int newY)

    The user has moved the frame. Calls to this method will be preceded by calls
    to beginDraggingFrame().
    Normally **f** will be a JInternalFrame.

    Parameters:
    :   `f` - the `JComponent` being dragged
    :   `newX` - the new x-coordinate
    :   `newY` - the new y-coordinate
  + ### endDraggingFrame

    void endDraggingFrame([JComponent](JComponent.md "class in javax.swing") f)

    This method signals the end of the dragging session. Any state maintained by
    the DesktopManager can be removed here. Normally **f** will be a JInternalFrame.

    Parameters:
    :   `f` - the `JComponent` being dragged
  + ### beginResizingFrame

    void beginResizingFrame([JComponent](JComponent.md "class in javax.swing") f,
    int direction)

    This method is normally called when the user has indicated that
    they will begin resizing the frame. This method should be called
    prior to any resizeFrame() calls to allow the DesktopManager to prepare any
    necessary state. Normally **f** will be a JInternalFrame.

    Parameters:
    :   `f` - the `JComponent` being resized
    :   `direction` - the direction
  + ### resizeFrame

    void resizeFrame([JComponent](JComponent.md "class in javax.swing") f,
    int newX,
    int newY,
    int newWidth,
    int newHeight)

    The user has resized the component. Calls to this method will be preceded by calls
    to beginResizingFrame().
    Normally **f** will be a JInternalFrame.

    Parameters:
    :   `f` - the `JComponent` being resized
    :   `newX` - the new x-coordinate
    :   `newY` - the new y-coordinate
    :   `newWidth` - the new width
    :   `newHeight` - the new height
  + ### endResizingFrame

    void endResizingFrame([JComponent](JComponent.md "class in javax.swing") f)

    This method signals the end of the resize session. Any state maintained by
    the DesktopManager can be removed here. Normally **f** will be a JInternalFrame.

    Parameters:
    :   `f` - the `JComponent` being resized
  + ### setBoundsForFrame

    void setBoundsForFrame([JComponent](JComponent.md "class in javax.swing") f,
    int newX,
    int newY,
    int newWidth,
    int newHeight)

    This is a primitive reshape method.

    Parameters:
    :   `f` - the `JComponent` being moved or resized
    :   `newX` - the new x-coordinate
    :   `newY` - the new y-coordinate
    :   `newWidth` - the new width
    :   `newHeight` - the new height