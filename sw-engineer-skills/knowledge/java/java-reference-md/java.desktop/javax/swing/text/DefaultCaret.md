Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultCaret

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.RectangularShape](../../../java/awt/geom/RectangularShape.md "class in java.awt.geom")

[java.awt.geom.Rectangle2D](../../../java/awt/geom/Rectangle2D.md "class in java.awt.geom")

[java.awt.Rectangle](../../../java/awt/Rectangle.md "class in java.awt")

javax.swing.text.DefaultCaret

All Implemented Interfaces:
:   `FocusListener`, `MouseListener`, `MouseMotionListener`, `Shape`, `Serializable`, `Cloneable`, `EventListener`, `Caret`

Direct Known Subclasses:
:   `BasicTextUI.BasicCaret`

---

public class DefaultCaret
extends [Rectangle](../../../java/awt/Rectangle.md "class in java.awt")
implements [Caret](Caret.md "interface in javax.swing.text"), [FocusListener](../../../java/awt/event/FocusListener.md "interface in java.awt.event"), [MouseListener](../../../java/awt/event/MouseListener.md "interface in java.awt.event"), [MouseMotionListener](../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event")

A default implementation of Caret. The caret is rendered as
a vertical line in the color specified by the CaretColor property
of the associated JTextComponent. It can blink at the rate specified
by the BlinkRate property.

This implementation expects two sources of asynchronous notification.
The timer thread fires asynchronously, and causes the caret to simply
repaint the most recent bounding box. The caret also tracks change
as the document is modified. Typically this will happen on the
event dispatch thread as a result of some mouse or keyboard event.
The caret behavior on both synchronous and asynchronous documents updates
is controlled by `UpdatePolicy` property. The repaint of the
new caret location will occur on the event thread in any case, as calls to
`modelToView` are only safe on the event thread.

The caret acts as a mouse and focus listener on the text component
it has been installed in, and defines the caret semantics based upon
those events. The listener methods can be reimplemented to change the
semantics.
By default, the first mouse button will be used to set focus and caret
position. Dragging the mouse pointer with the first mouse button will
sweep out a selection that is contiguous in the model. If the associated
text component is editable, the caret will become visible when focus
is gained, and invisible when focus is lost.

The Highlighter bound to the associated text component is used to
render the selection by default.
Selection appearance can be customized by supplying a
painter to use for the highlights. By default a painter is used that
will render a solid color as specified in the associated text component
in the `SelectionColor` property. This can easily be changed
by reimplementing the
[`getSelectionPainter`](#getSelectionPainter())
method.

A customized caret appearance can be achieved by reimplementing
the paint method. If the paint method is changed, the damage method
should also be reimplemented to cause a repaint for the area needed
to render the caret. The caret extends the Rectangle class which
is used to hold the bounding box for where the caret was last rendered.
This enables the caret to repaint in a thread-safe manner when the
caret moves without making a call to modelToView which is unstable
between model updates and view repair (i.e. the order of delivery
to DocumentListeners is not guaranteed).

The magic caret position is set to null when the caret position changes.
A timer is used to determine the new location (after the caret change).
When the timer fires, if the magic caret position is still null it is
reset to the current caret position. Any actions that change
the caret position and want the magic caret position to remain the
same, must remember the magic caret position, change the cursor, and
then set the magic caret position to its original value. This has the
benefit that only actions that want the magic caret position to persist
(such as open/down) need to know about it.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`Caret`](Caret.md "interface in javax.swing.text")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.geom.[Rectangle2D](../../../java/awt/geom/Rectangle2D.md "class in java.awt.geom")

  `Rectangle2D.Double, Rectangle2D.Float`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ALWAYS_UPDATE`

  Indicates that the caret position is to be **always**
  updated accordingly to the document changes regardless whether
  the document updates are performed on the Event Dispatching Thread
  or not.

  `protected ChangeEvent`

  `changeEvent`

  The change event for the model.

  `protected EventListenerList`

  `listenerList`

  The event listener list.

  `static final int`

  `NEVER_UPDATE`

  Indicates that the caret should remain at the same
  absolute position in the document regardless of any document
  updates, except when the document length becomes less than
  the current caret position due to removal.

  `static final int`

  `UPDATE_WHEN_ON_EDT`

  Indicates that the caret position is to be updated only when
  document changes are performed on the Event Dispatching Thread.

  ### Fields inherited from class java.awt.[Rectangle](../../../java/awt/Rectangle.md "class in java.awt")

  `height, width, x, y`

  ### Fields inherited from class java.awt.geom.[Rectangle2D](../../../java/awt/geom/Rectangle2D.md "class in java.awt.geom")

  `OUT_BOTTOM, OUT_LEFT, OUT_RIGHT, OUT_TOP`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultCaret()`

  Constructs a default caret.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a listener to track whenever the caret position has
  been changed.

  `protected void`

  `adjustVisibility(Rectangle nloc)`

  Scrolls the associated view (if necessary) to make
  the caret visible.

  `protected void`

  `damage(Rectangle r)`

  Damages the area surrounding the caret to cause
  it to be repainted in a new location.

  `void`

  `deinstall(JTextComponent c)`

  Called when the UI is being removed from the
  interface of a JTextComponent.

  `boolean`

  `equals(Object obj)`

  Compares this object to the specified object.

  `protected void`

  `fireStateChanged()`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `void`

  `focusGained(FocusEvent e)`

  Called when the component containing the caret gains
  focus.

  `void`

  `focusLost(FocusEvent e)`

  Called when the component containing the caret loses
  focus.

  `int`

  `getBlinkRate()`

  Gets the caret blink rate.

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the change listeners
  registered on this caret.

  `protected final JTextComponent`

  `getComponent()`

  Gets the text editor component that this caret is
  is bound to.

  `int`

  `getDot()`

  Fetches the current position of the caret.

  `Position.Bias`

  `getDotBias()`

  Returns the bias of the caret position.

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Returns an array of all the objects currently registered
  as `FooListener`s
  upon this caret.

  `Point`

  `getMagicCaretPosition()`

  Gets the saved caret position.

  `int`

  `getMark()`

  Fetches the current position of the mark.

  `Position.Bias`

  `getMarkBias()`

  Returns the bias of the mark.

  `protected Highlighter.HighlightPainter`

  `getSelectionPainter()`

  Gets the painter for the Highlighter.

  `int`

  `getUpdatePolicy()`

  Gets the caret movement policy on document updates.

  `void`

  `install(JTextComponent c)`

  Called when the UI is being installed into the
  interface of a JTextComponent.

  `boolean`

  `isActive()`

  Determines if the caret is currently active.

  `boolean`

  `isSelectionVisible()`

  Checks whether the current selection is visible.

  `boolean`

  `isVisible()`

  Indicates whether or not the caret is currently visible.

  `void`

  `mouseClicked(MouseEvent e)`

  Called when the mouse is clicked.

  `void`

  `mouseDragged(MouseEvent e)`

  Moves the caret position
  according to the mouse pointer's current
  location.

  `void`

  `mouseEntered(MouseEvent e)`

  Called when the mouse enters a region.

  `void`

  `mouseExited(MouseEvent e)`

  Called when the mouse exits a region.

  `void`

  `mouseMoved(MouseEvent e)`

  Called when the mouse is moved.

  `void`

  `mousePressed(MouseEvent e)`

  If button 1 is pressed, this is implemented to
  request focus on the associated text component,
  and to set the caret position.

  `void`

  `mouseReleased(MouseEvent e)`

  Called when the mouse is released.

  `protected void`

  `moveCaret(MouseEvent e)`

  Tries to move the position of the caret from
  the coordinates of a mouse event, using viewToModel().

  `void`

  `moveDot(int dot)`

  Moves the caret position to the specified position,
  with a forward bias.

  `void`

  `moveDot(int dot,
  Position.Bias dotBias)`

  Moves the caret position to the specified position, with the
  specified bias.

  `void`

  `paint(Graphics g)`

  Renders the caret as a vertical line.

  `protected void`

  `positionCaret(MouseEvent e)`

  Tries to set the position of the caret from
  the coordinates of a mouse event, using viewToModel().

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a listener that was tracking caret position changes.

  `protected final void`

  `repaint()`

  Cause the caret to be painted.

  `void`

  `setBlinkRate(int rate)`

  Sets the caret blink rate.

  `void`

  `setDot(int dot)`

  Sets the caret position and mark to the specified position,
  with a forward bias.

  `void`

  `setDot(int dot,
  Position.Bias dotBias)`

  Sets the caret position and mark to the specified position, with the
  specified bias.

  `void`

  `setMagicCaretPosition(Point p)`

  Saves the current caret position.

  `void`

  `setSelectionVisible(boolean vis)`

  Changes the selection visibility.

  `void`

  `setUpdatePolicy(int policy)`

  Sets the caret movement policy on the document updates.

  `void`

  `setVisible(boolean e)`

  Sets the caret visibility, and repaints the caret.

  `String`

  `toString()`

  Returns a `String` representing this
  `Rectangle` and its values.

  ### Methods inherited from class java.awt.[Rectangle](../../../java/awt/Rectangle.md "class in java.awt")

  `add, add, add, contains, contains, contains, contains, createIntersection, createUnion, getBounds, getBounds2D, getHeight, getLocation, getSize, getWidth, getX, getY, grow, inside, intersection, intersects, isEmpty, move, outcode, reshape, resize, setBounds, setBounds, setLocation, setLocation, setRect, setSize, setSize, translate, union`

  ### Methods inherited from class java.awt.geom.[Rectangle2D](../../../java/awt/geom/Rectangle2D.md "class in java.awt.geom")

  `add, add, add, contains, contains, getPathIterator, getPathIterator, hashCode, intersect, intersects, intersectsLine, intersectsLine, outcode, setFrame, setRect, union`

  ### Methods inherited from class java.awt.geom.[RectangularShape](../../../java/awt/geom/RectangularShape.md "class in java.awt.geom")

  `clone, contains, contains, getCenterX, getCenterY, getFrame, getMaxX, getMaxY, getMinX, getMinY, intersects, setFrame, setFrame, setFrameFromCenter, setFrameFromCenter, setFrameFromDiagonal, setFrameFromDiagonal`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.awt.[Shape](../../../java/awt/Shape.md "interface in java.awt")

  `contains, contains, contains, contains, getPathIterator, getPathIterator, intersects, intersects`

* ## Field Details

  + ### UPDATE\_WHEN\_ON\_EDT

    public static final int UPDATE\_WHEN\_ON\_EDT

    Indicates that the caret position is to be updated only when
    document changes are performed on the Event Dispatching Thread.

    Since:
    :   1.5

    See Also:
    :   - [`setUpdatePolicy(int)`](#setUpdatePolicy(int))
        - [`getUpdatePolicy()`](#getUpdatePolicy())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultCaret.UPDATE_WHEN_ON_EDT)
  + ### NEVER\_UPDATE

    public static final int NEVER\_UPDATE

    Indicates that the caret should remain at the same
    absolute position in the document regardless of any document
    updates, except when the document length becomes less than
    the current caret position due to removal. In that case the caret
    position is adjusted to the end of the document.

    Since:
    :   1.5

    See Also:
    :   - [`setUpdatePolicy(int)`](#setUpdatePolicy(int))
        - [`getUpdatePolicy()`](#getUpdatePolicy())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultCaret.NEVER_UPDATE)
  + ### ALWAYS\_UPDATE

    public static final int ALWAYS\_UPDATE

    Indicates that the caret position is to be **always**
    updated accordingly to the document changes regardless whether
    the document updates are performed on the Event Dispatching Thread
    or not.

    Since:
    :   1.5

    See Also:
    :   - [`setUpdatePolicy(int)`](#setUpdatePolicy(int))
        - [`getUpdatePolicy()`](#getUpdatePolicy())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultCaret.ALWAYS_UPDATE)
  + ### listenerList

    protected [EventListenerList](../event/EventListenerList.md "class in javax.swing.event") listenerList

    The event listener list.
  + ### changeEvent

    protected transient [ChangeEvent](../event/ChangeEvent.md "class in javax.swing.event") changeEvent

    The change event for the model.
    Only one ChangeEvent is needed per model instance since the
    event's only (read-only) state is the source property. The source
    of events generated here is always "this".
* ## Constructor Details

  + ### DefaultCaret

    public DefaultCaret()

    Constructs a default caret.
* ## Method Details

  + ### setUpdatePolicy

    public void setUpdatePolicy(int policy)

    Sets the caret movement policy on the document updates. Normally
    the caret updates its absolute position within the document on
    insertions occurred before or at the caret position and
    on removals before the caret position. 'Absolute position'
    means here the position relative to the start of the document.
    For example if
    a character is typed within editable text component it is inserted
    at the caret position and the caret moves to the next absolute
    position within the document due to insertion and if
    `BACKSPACE` is typed then caret decreases its absolute
    position due to removal of a character before it. Sometimes
    it may be useful to turn off the caret position updates so that
    the caret stays at the same absolute position within the
    document position regardless of any document updates.

    The following update policies are allowed:
    - `NEVER_UPDATE`: the caret stays at the same
      absolute position in the document regardless of any document
      updates, except when document length becomes less than
      the current caret position due to removal. In that case caret
      position is adjusted to the end of the document.
      The caret doesn't try to keep itself visible by scrolling
      the associated view when using this policy.
    - `ALWAYS_UPDATE`: the caret always tracks document
      changes. For regular changes it increases its position
      if an insertion occurs before or at its current position,
      and decreases position if a removal occurs before
      its current position. For undo/redo updates it is always
      moved to the position where update occurred. The caret
      also tries to keep itself visible by calling
      `adjustVisibility` method.
    - `UPDATE_WHEN_ON_EDT`: acts like `ALWAYS_UPDATE`
      if the document updates are performed on the Event Dispatching Thread
      and like `NEVER_UPDATE` if updates are performed on
      other thread.

    The default property value is `UPDATE_WHEN_ON_EDT`.

    Parameters:
    :   `policy` - one of the following values : `UPDATE_WHEN_ON_EDT`,
        `NEVER_UPDATE`, `ALWAYS_UPDATE`

    Throws:
    :   `IllegalArgumentException` - if invalid value is passed

    Since:
    :   1.5

    See Also:
    :   - [`getUpdatePolicy()`](#getUpdatePolicy())
        - [`adjustVisibility(java.awt.Rectangle)`](#adjustVisibility(java.awt.Rectangle))
        - [`UPDATE_WHEN_ON_EDT`](#UPDATE_WHEN_ON_EDT)
        - [`NEVER_UPDATE`](#NEVER_UPDATE)
        - [`ALWAYS_UPDATE`](#ALWAYS_UPDATE)
  + ### getUpdatePolicy

    public int getUpdatePolicy()

    Gets the caret movement policy on document updates.

    Returns:
    :   one of the following values : `UPDATE_WHEN_ON_EDT`,
        `NEVER_UPDATE`, `ALWAYS_UPDATE`

    Since:
    :   1.5

    See Also:
    :   - [`setUpdatePolicy(int)`](#setUpdatePolicy(int))
        - [`UPDATE_WHEN_ON_EDT`](#UPDATE_WHEN_ON_EDT)
        - [`NEVER_UPDATE`](#NEVER_UPDATE)
        - [`ALWAYS_UPDATE`](#ALWAYS_UPDATE)
  + ### getComponent

    protected final [JTextComponent](JTextComponent.md "class in javax.swing.text") getComponent()

    Gets the text editor component that this caret is
    is bound to.

    Returns:
    :   the component
  + ### repaint

    protected final void repaint()

    Cause the caret to be painted. The repaint
    area is the bounding box of the caret (i.e.
    the caret rectangle or *this*).

    This method is thread safe, although most Swing methods
    are not. Please see
    [Concurrency
    in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html) for more information.
  + ### damage

    protected void damage([Rectangle](../../../java/awt/Rectangle.md "class in java.awt") r)

    Damages the area surrounding the caret to cause
    it to be repainted in a new location. If paint()
    is reimplemented, this method should also be
    reimplemented. This method should update the
    caret bounds (x, y, width, and height).

    Parameters:
    :   `r` - the current location of the caret

    See Also:
    :   - [`paint(java.awt.Graphics)`](#paint(java.awt.Graphics))
  + ### adjustVisibility

    protected void adjustVisibility([Rectangle](../../../java/awt/Rectangle.md "class in java.awt") nloc)

    Scrolls the associated view (if necessary) to make
    the caret visible. Since how this should be done
    is somewhat of a policy, this method can be
    reimplemented to change the behavior. By default
    the scrollRectToVisible method is called on the
    associated component.

    Parameters:
    :   `nloc` - the new position to scroll to
  + ### getSelectionPainter

    protected [Highlighter.HighlightPainter](Highlighter.HighlightPainter.md "interface in javax.swing.text") getSelectionPainter()

    Gets the painter for the Highlighter.

    Returns:
    :   the painter
  + ### positionCaret

    protected void positionCaret([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Tries to set the position of the caret from
    the coordinates of a mouse event, using viewToModel().

    Parameters:
    :   `e` - the mouse event
  + ### moveCaret

    protected void moveCaret([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Tries to move the position of the caret from
    the coordinates of a mouse event, using viewToModel().
    This will cause a selection if the dot and mark
    are different.

    Parameters:
    :   `e` - the mouse event
  + ### focusGained

    public void focusGained([FocusEvent](../../../java/awt/event/FocusEvent.md "class in java.awt.event") e)

    Called when the component containing the caret gains
    focus. This is implemented to set the caret to visible
    if the component is editable.

    Specified by:
    :   `focusGained` in interface `FocusListener`

    Parameters:
    :   `e` - the focus event

    See Also:
    :   - [`FocusListener.focusGained(java.awt.event.FocusEvent)`](../../../java/awt/event/FocusListener.md#focusGained(java.awt.event.FocusEvent))
  + ### focusLost

    public void focusLost([FocusEvent](../../../java/awt/event/FocusEvent.md "class in java.awt.event") e)

    Called when the component containing the caret loses
    focus. This is implemented to set the caret to visibility
    to false.

    Specified by:
    :   `focusLost` in interface `FocusListener`

    Parameters:
    :   `e` - the focus event

    See Also:
    :   - [`FocusListener.focusLost(java.awt.event.FocusEvent)`](../../../java/awt/event/FocusListener.md#focusLost(java.awt.event.FocusEvent))
  + ### mouseClicked

    public void mouseClicked([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Called when the mouse is clicked. If the click was generated
    from button1, a double click selects a word,
    and a triple click the current line.

    Specified by:
    :   `mouseClicked` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event

    See Also:
    :   - [`MouseListener.mouseClicked(java.awt.event.MouseEvent)`](../../../java/awt/event/MouseListener.md#mouseClicked(java.awt.event.MouseEvent))
  + ### mousePressed

    public void mousePressed([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    If button 1 is pressed, this is implemented to
    request focus on the associated text component,
    and to set the caret position. If the shift key is held down,
    the caret will be moved, potentially resulting in a selection,
    otherwise the
    caret position will be set to the new location. If the component
    is not enabled, there will be no request for focus.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event

    See Also:
    :   - [`MouseListener.mousePressed(java.awt.event.MouseEvent)`](../../../java/awt/event/MouseListener.md#mousePressed(java.awt.event.MouseEvent))
  + ### mouseReleased

    public void mouseReleased([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Called when the mouse is released.

    Specified by:
    :   `mouseReleased` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event

    See Also:
    :   - [`MouseListener.mouseReleased(java.awt.event.MouseEvent)`](../../../java/awt/event/MouseListener.md#mouseReleased(java.awt.event.MouseEvent))
  + ### mouseEntered

    public void mouseEntered([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Called when the mouse enters a region.

    Specified by:
    :   `mouseEntered` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event

    See Also:
    :   - [`MouseListener.mouseEntered(java.awt.event.MouseEvent)`](../../../java/awt/event/MouseListener.md#mouseEntered(java.awt.event.MouseEvent))
  + ### mouseExited

    public void mouseExited([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Called when the mouse exits a region.

    Specified by:
    :   `mouseExited` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event

    See Also:
    :   - [`MouseListener.mouseExited(java.awt.event.MouseEvent)`](../../../java/awt/event/MouseListener.md#mouseExited(java.awt.event.MouseEvent))
  + ### mouseDragged

    public void mouseDragged([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Moves the caret position
    according to the mouse pointer's current
    location. This effectively extends the
    selection. By default, this is only done
    for mouse button 1.

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the mouse event

    See Also:
    :   - [`MouseMotionListener.mouseDragged(java.awt.event.MouseEvent)`](../../../java/awt/event/MouseMotionListener.md#mouseDragged(java.awt.event.MouseEvent))
  + ### mouseMoved

    public void mouseMoved([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Called when the mouse is moved.

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the mouse event

    See Also:
    :   - [`MouseMotionListener.mouseMoved(java.awt.event.MouseEvent)`](../../../java/awt/event/MouseMotionListener.md#mouseMoved(java.awt.event.MouseEvent))
  + ### paint

    public void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g)

    Renders the caret as a vertical line. If this is reimplemented
    the damage method should also be reimplemented as it assumes the
    shape of the caret is a vertical line. Sets the caret color to
    the value returned by getCaretColor().

    If there are multiple text directions present in the associated
    document, a flag indicating the caret bias will be rendered.
    This will occur only if the associated document is a subclass
    of AbstractDocument and there are multiple bidi levels present
    in the bidi element structure (i.e. the text has multiple
    directions associated with it).

    Specified by:
    :   `paint` in interface `Caret`

    Parameters:
    :   `g` - the graphics context

    See Also:
    :   - [`damage(java.awt.Rectangle)`](#damage(java.awt.Rectangle))
  + ### install

    public void install([JTextComponent](JTextComponent.md "class in javax.swing.text") c)

    Called when the UI is being installed into the
    interface of a JTextComponent. This can be used
    to gain access to the model that is being navigated
    by the implementation of this interface. Sets the dot
    and mark to 0, and establishes document, property change,
    focus, mouse, and mouse motion listeners.

    Specified by:
    :   `install` in interface `Caret`

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`Caret.install(javax.swing.text.JTextComponent)`](Caret.md#install(javax.swing.text.JTextComponent))
  + ### deinstall

    public void deinstall([JTextComponent](JTextComponent.md "class in javax.swing.text") c)

    Called when the UI is being removed from the
    interface of a JTextComponent. This is used to
    unregister any listeners that were attached.

    Specified by:
    :   `deinstall` in interface `Caret`

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`Caret.deinstall(javax.swing.text.JTextComponent)`](Caret.md#deinstall(javax.swing.text.JTextComponent))
  + ### addChangeListener

    public void addChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a listener to track whenever the caret position has
    been changed.

    Specified by:
    :   `addChangeListener` in interface `Caret`

    Parameters:
    :   `l` - the listener

    See Also:
    :   - [`Caret.addChangeListener(javax.swing.event.ChangeListener)`](Caret.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a listener that was tracking caret position changes.

    Specified by:
    :   `removeChangeListener` in interface `Caret`

    Parameters:
    :   `l` - the listener

    See Also:
    :   - [`Caret.removeChangeListener(javax.swing.event.ChangeListener)`](Caret.md#removeChangeListener(javax.swing.event.ChangeListener))
  + ### getChangeListeners

    public [ChangeListener](../event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the change listeners
    registered on this caret.

    Returns:
    :   all of this caret's `ChangeListener`s
        or an empty
        array if no change listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`removeChangeListener(javax.swing.event.ChangeListener)`](#removeChangeListener(javax.swing.event.ChangeListener))
  + ### fireStateChanged

    protected void fireStateChanged()

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is lazily created using the parameters passed into
    the fire method. The listener list is processed last to first.

    See Also:
    :   - [`EventListenerList`](../event/EventListenerList.md "class in javax.swing.event")
  + ### getListeners

    public <T extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Returns an array of all the objects currently registered
    as `FooListener`s
    upon this caret.
    `FooListener`s are registered using the
    `addFooListener` method.

    You can specify the `listenerType` argument
    with a class literal,
    such as
    `FooListener.class`.
    For example, you can query a
    `DefaultCaret` `c`
    for its change listeners with the following code:

    ```
    ChangeListener[] cls = (ChangeListener[])(c.getListeners(ChangeListener.class));
    ```

    If no such listeners exist, this method returns an empty array.

    Type Parameters:
    :   `T` - the listener type

    Parameters:
    :   `listenerType` - the type of listeners requested

    Returns:
    :   an array of all objects registered as
        `FooListener`s on this component,
        or an empty array if no such
        listeners have been added

    Throws:
    :   `ClassCastException` - if `listenerType`
        doesn't specify a class or interface that implements
        `java.util.EventListener`

    Since:
    :   1.3

    See Also:
    :   - [`getChangeListeners()`](#getChangeListeners())
  + ### setSelectionVisible

    public void setSelectionVisible(boolean vis)

    Changes the selection visibility.

    Specified by:
    :   `setSelectionVisible` in interface `Caret`

    Parameters:
    :   `vis` - the new visibility
  + ### isSelectionVisible

    public boolean isSelectionVisible()

    Checks whether the current selection is visible.

    Specified by:
    :   `isSelectionVisible` in interface `Caret`

    Returns:
    :   true if the selection is visible
  + ### isActive

    public boolean isActive()

    Determines if the caret is currently active.

    This method returns whether or not the `Caret`
    is currently in a blinking state. It does not provide
    information as to whether it is currently blinked on or off.
    To determine if the caret is currently painted use the
    `isVisible` method.

    Returns:
    :   `true` if active else `false`

    Since:
    :   1.5

    See Also:
    :   - [`isVisible()`](#isVisible())
  + ### isVisible

    public boolean isVisible()

    Indicates whether or not the caret is currently visible. As the
    caret flashes on and off the return value of this will change
    between true, when the caret is painted, and false, when the
    caret is not painted. `isActive` indicates whether
    or not the caret is in a blinking state, such that it **can**
    be visible, and `isVisible` indicates whether or not
    the caret **is** actually visible.

    Subclasses that wish to render a different flashing caret
    should override paint and only paint the caret if this method
    returns true.

    Specified by:
    :   `isVisible` in interface `Caret`

    Returns:
    :   true if visible else false

    See Also:
    :   - [`Caret.isVisible()`](Caret.md#isVisible())
        - [`isActive()`](#isActive())
  + ### setVisible

    public void setVisible(boolean e)

    Sets the caret visibility, and repaints the caret.
    It is important to understand the relationship between this method,
    `isVisible` and `isActive`.
    Calling this method with a value of `true` activates the
    caret blinking. Setting it to `false` turns it completely off.
    To determine whether the blinking is active, you should call
    `isActive`. In effect, `isActive` is an
    appropriate corresponding "getter" method for this one.
    `isVisible` can be used to fetch the current
    visibility status of the caret, meaning whether or not it is currently
    painted. This status will change as the caret blinks on and off.

    Here's a list showing the potential return values of both
    `isActive` and `isVisible`
    after calling this method:

    **`setVisible(true)`**:
    - isActive(): true
    - isVisible(): true or false depending on whether
      or not the caret is blinked on or off

    **`setVisible(false)`**:
    - isActive(): false
    - isVisible(): false

    Specified by:
    :   `setVisible` in interface `Caret`

    Parameters:
    :   `e` - the visibility specifier

    See Also:
    :   - [`isActive()`](#isActive())
        - [`Caret.setVisible(boolean)`](Caret.md#setVisible(boolean))
  + ### setBlinkRate

    public void setBlinkRate(int rate)

    Sets the caret blink rate.

    Specified by:
    :   `setBlinkRate` in interface `Caret`

    Parameters:
    :   `rate` - the rate in milliseconds, 0 to stop blinking

    See Also:
    :   - [`Caret.setBlinkRate(int)`](Caret.md#setBlinkRate(int))
  + ### getBlinkRate

    public int getBlinkRate()

    Gets the caret blink rate.

    Specified by:
    :   `getBlinkRate` in interface `Caret`

    Returns:
    :   the delay in milliseconds. If this is
        zero the caret will not blink.

    See Also:
    :   - [`Caret.getBlinkRate()`](Caret.md#getBlinkRate())
  + ### getDot

    public int getDot()

    Fetches the current position of the caret.

    Specified by:
    :   `getDot` in interface `Caret`

    Returns:
    :   the position >= 0

    See Also:
    :   - [`Caret.getDot()`](Caret.md#getDot())
  + ### getMark

    public int getMark()

    Fetches the current position of the mark. If there is a selection,
    the dot and mark will not be the same.

    Specified by:
    :   `getMark` in interface `Caret`

    Returns:
    :   the position >= 0

    See Also:
    :   - [`Caret.getMark()`](Caret.md#getMark())
  + ### setDot

    public void setDot(int dot)

    Sets the caret position and mark to the specified position,
    with a forward bias. This implicitly sets the
    selection range to zero.

    Specified by:
    :   `setDot` in interface `Caret`

    Parameters:
    :   `dot` - the position >= 0

    See Also:
    :   - [`setDot(int, Position.Bias)`](#setDot(int,javax.swing.text.Position.Bias))
        - [`Caret.setDot(int)`](Caret.md#setDot(int))
  + ### moveDot

    public void moveDot(int dot)

    Moves the caret position to the specified position,
    with a forward bias.

    Specified by:
    :   `moveDot` in interface `Caret`

    Parameters:
    :   `dot` - the position >= 0

    See Also:
    :   - [`moveDot(int, javax.swing.text.Position.Bias)`](#moveDot(int,javax.swing.text.Position.Bias))
        - [`Caret.moveDot(int)`](Caret.md#moveDot(int))
  + ### moveDot

    public void moveDot(int dot,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") dotBias)

    Moves the caret position to the specified position, with the
    specified bias.

    Parameters:
    :   `dot` - the position >= 0
    :   `dotBias` - the bias for this position, not `null`

    Throws:
    :   `IllegalArgumentException` - if the bias is `null`

    Since:
    :   1.6

    See Also:
    :   - [`Caret.moveDot(int)`](Caret.md#moveDot(int))
  + ### setDot

    public void setDot(int dot,
    [Position.Bias](Position.Bias.md "class in javax.swing.text") dotBias)

    Sets the caret position and mark to the specified position, with the
    specified bias. This implicitly sets the selection range
    to zero.

    Parameters:
    :   `dot` - the position >= 0
    :   `dotBias` - the bias for this position, not `null`

    Throws:
    :   `IllegalArgumentException` - if the bias is `null`

    Since:
    :   1.6

    See Also:
    :   - [`Caret.setDot(int)`](Caret.md#setDot(int))
  + ### getDotBias

    public [Position.Bias](Position.Bias.md "class in javax.swing.text") getDotBias()

    Returns the bias of the caret position.

    Returns:
    :   the bias of the caret position

    Since:
    :   1.6
  + ### getMarkBias

    public [Position.Bias](Position.Bias.md "class in javax.swing.text") getMarkBias()

    Returns the bias of the mark.

    Returns:
    :   the bias of the mark

    Since:
    :   1.6
  + ### setMagicCaretPosition

    public void setMagicCaretPosition([Point](../../../java/awt/Point.md "class in java.awt") p)

    Saves the current caret position. This is used when
    caret up/down actions occur, moving between lines
    that have uneven end positions.

    Specified by:
    :   `setMagicCaretPosition` in interface `Caret`

    Parameters:
    :   `p` - the position

    See Also:
    :   - [`getMagicCaretPosition()`](#getMagicCaretPosition())
  + ### getMagicCaretPosition

    public [Point](../../../java/awt/Point.md "class in java.awt") getMagicCaretPosition()

    Gets the saved caret position.

    Specified by:
    :   `getMagicCaretPosition` in interface `Caret`

    Returns:
    :   the position
        see #setMagicCaretPosition

    See Also:
    :   - [`Caret.setMagicCaretPosition(java.awt.Point)`](Caret.md#setMagicCaretPosition(java.awt.Point))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this object to the specified object.
    The superclass behavior of comparing rectangles
    is not desired, so this is changed to the Object
    behavior.

    Overrides:
    :   `equals` in class `Rectangle`

    Parameters:
    :   `obj` - the object to compare this font with

    Returns:
    :   `true` if the objects are equal;
        `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Description copied from class: `Rectangle`

    Returns a `String` representing this
    `Rectangle` and its values.

    Overrides:
    :   `toString` in class `Rectangle`

    Returns:
    :   a `String` representing this
        `Rectangle` object's coordinate and size values.