Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Event

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.Event

All Implemented Interfaces:
:   `Serializable`

---

[@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="9")
public class Event
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Deprecated.

It is recommended that `AWTEvent` and its subclasses be
used instead

**NOTE:** The `Event` class is obsolete and is
available only for backwards compatibility. It has been replaced
by the `AWTEvent` class and its subclasses.

`Event` is a platform-independent class that
encapsulates events from the platform's Graphical User
Interface in the Java 1.0 event model. In Java 1.1
and later versions, the `Event` class is maintained
only for backwards compatibility. The information in this
class description is provided to assist programmers in
converting Java 1.0 programs to the new event model.

In the Java 1.0 event model, an event contains an
[`id`](#id) field
that indicates what type of event it is and which other
`Event` variables are relevant for the event.

For keyboard events, [`key`](#key)
contains a value indicating which key was activated, and
[`modifiers`](#modifiers) contains the
modifiers for that event. For the KEY\_PRESS and KEY\_RELEASE
event ids, the value of `key` is the unicode
character code for the key. For KEY\_ACTION and
KEY\_ACTION\_RELEASE, the value of `key` is
one of the defined action-key identifiers in the
`Event` class (`PGUP`,
`PGDN`, `F1`, `F2`, etc).

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Event)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ACTION_EVENT`

  Deprecated.

  This event indicates that the user wants some action to occur.

  `static final int`

  `ALT_MASK`

  Deprecated.

  This flag indicates that the Alt key was down when
  the event occurred.

  `Object`

  `arg`

  Deprecated.

  An arbitrary argument of the event.

  `static final int`

  `BACK_SPACE`

  Deprecated.

  The BackSpace key.

  `static final int`

  `CAPS_LOCK`

  Deprecated.

  The Caps Lock key, a non-ASCII action key.

  `int`

  `clickCount`

  Deprecated.

  For `MOUSE_DOWN` events, this field indicates the
  number of consecutive clicks.

  `static final int`

  `CTRL_MASK`

  Deprecated.

  This flag indicates that the Control key was down when the event
  occurred.

  `static final int`

  `DELETE`

  Deprecated.

  The Delete key.

  `static final int`

  `DOWN`

  Deprecated.

  The Down Arrow key, a non-ASCII action key.

  `static final int`

  `END`

  Deprecated.

  The End key, a non-ASCII action key.

  `static final int`

  `ENTER`

  Deprecated.

  The Enter key.

  `static final int`

  `ESCAPE`

  Deprecated.

  The Escape key.

  `Event`

  `evt`

  Deprecated.

  The next event.

  `static final int`

  `F1`

  Deprecated.

  The F1 function key, a non-ASCII action key.

  `static final int`

  `F10`

  Deprecated.

  The F10 function key, a non-ASCII action key.

  `static final int`

  `F11`

  Deprecated.

  The F11 function key, a non-ASCII action key.

  `static final int`

  `F12`

  Deprecated.

  The F12 function key, a non-ASCII action key.

  `static final int`

  `F2`

  Deprecated.

  The F2 function key, a non-ASCII action key.

  `static final int`

  `F3`

  Deprecated.

  The F3 function key, a non-ASCII action key.

  `static final int`

  `F4`

  Deprecated.

  The F4 function key, a non-ASCII action key.

  `static final int`

  `F5`

  Deprecated.

  The F5 function key, a non-ASCII action key.

  `static final int`

  `F6`

  Deprecated.

  The F6 function key, a non-ASCII action key.

  `static final int`

  `F7`

  Deprecated.

  The F7 function key, a non-ASCII action key.

  `static final int`

  `F8`

  Deprecated.

  The F8 function key, a non-ASCII action key.

  `static final int`

  `F9`

  Deprecated.

  The F9 function key, a non-ASCII action key.

  `static final int`

  `GOT_FOCUS`

  Deprecated.

  A component gained the focus.

  `static final int`

  `HOME`

  Deprecated.

  The Home key, a non-ASCII action key.

  `int`

  `id`

  Deprecated.

  Indicates which type of event the event is, and which
  other `Event` variables are relevant for the event.

  `static final int`

  `INSERT`

  Deprecated.

  The Insert key, a non-ASCII action key.

  `int`

  `key`

  Deprecated.

  The key code of the key that was pressed in a keyboard event.

  `static final int`

  `KEY_ACTION`

  Deprecated.

  The user has pressed a non-ASCII *action* key.

  `static final int`

  `KEY_ACTION_RELEASE`

  Deprecated.

  The user has released a non-ASCII *action* key.

  `static final int`

  `KEY_PRESS`

  Deprecated.

  The user has pressed a normal key.

  `static final int`

  `KEY_RELEASE`

  Deprecated.

  The user has released a normal key.

  `static final int`

  `LEFT`

  Deprecated.

  The Left Arrow key, a non-ASCII action key.

  `static final int`

  `LIST_DESELECT`

  Deprecated.

  An item in a list has been deselected.

  `static final int`

  `LIST_SELECT`

  Deprecated.

  An item in a list has been selected.

  `static final int`

  `LOAD_FILE`

  Deprecated.

  A file loading event.

  `static final int`

  `LOST_FOCUS`

  Deprecated.

  A component lost the focus.

  `static final int`

  `META_MASK`

  Deprecated.

  This flag indicates that the Meta key was down when the event
  occurred.

  `int`

  `modifiers`

  Deprecated.

  The state of the modifier keys.

  `static final int`

  `MOUSE_DOWN`

  Deprecated.

  The user has pressed the mouse button.

  `static final int`

  `MOUSE_DRAG`

  Deprecated.

  The user has moved the mouse with a button pressed.

  `static final int`

  `MOUSE_ENTER`

  Deprecated.

  The mouse has entered a component.

  `static final int`

  `MOUSE_EXIT`

  Deprecated.

  The mouse has exited a component.

  `static final int`

  `MOUSE_MOVE`

  Deprecated.

  The mouse has moved with no button pressed.

  `static final int`

  `MOUSE_UP`

  Deprecated.

  The user has released the mouse button.

  `static final int`

  `NUM_LOCK`

  Deprecated.

  The Num Lock key, a non-ASCII action key.

  `static final int`

  `PAUSE`

  Deprecated.

  The Pause key, a non-ASCII action key.

  `static final int`

  `PGDN`

  Deprecated.

  The Page Down key, a non-ASCII action key.

  `static final int`

  `PGUP`

  Deprecated.

  The Page Up key, a non-ASCII action key.

  `static final int`

  `PRINT_SCREEN`

  Deprecated.

  The Print Screen key, a non-ASCII action key.

  `static final int`

  `RIGHT`

  Deprecated.

  The Right Arrow key, a non-ASCII action key.

  `static final int`

  `SAVE_FILE`

  Deprecated.

  A file saving event.

  `static final int`

  `SCROLL_ABSOLUTE`

  Deprecated.

  The user has moved the bubble (thumb) in a scroll bar,
  moving to an "absolute" position, rather than to
  an offset from the last position.

  `static final int`

  `SCROLL_BEGIN`

  Deprecated.

  The scroll begin event.

  `static final int`

  `SCROLL_END`

  Deprecated.

  The scroll end event.

  `static final int`

  `SCROLL_LINE_DOWN`

  Deprecated.

  The user has activated the *line down*
  area of a scroll bar.

  `static final int`

  `SCROLL_LINE_UP`

  Deprecated.

  The user has activated the *line up*
  area of a scroll bar.

  `static final int`

  `SCROLL_LOCK`

  Deprecated.

  The Scroll Lock key, a non-ASCII action key.

  `static final int`

  `SCROLL_PAGE_DOWN`

  Deprecated.

  The user has activated the *page down*
  area of a scroll bar.

  `static final int`

  `SCROLL_PAGE_UP`

  Deprecated.

  The user has activated the *page up*
  area of a scroll bar.

  `static final int`

  `SHIFT_MASK`

  Deprecated.

  This flag indicates that the Shift key was down when the event
  occurred.

  `static final int`

  `TAB`

  Deprecated.

  The Tab key.

  `Object`

  `target`

  Deprecated.

  The target component.

  `static final int`

  `UP`

  Deprecated.

  The Up Arrow key, a non-ASCII action key.

  `long`

  `when`

  Deprecated.

  The time stamp.

  `static final int`

  `WINDOW_DEICONIFY`

  Deprecated.

  The user has asked the window manager to de-iconify the window.

  `static final int`

  `WINDOW_DESTROY`

  Deprecated.

  The user has asked the window manager to kill the window.

  `static final int`

  `WINDOW_EXPOSE`

  Deprecated.

  The user has asked the window manager to expose the window.

  `static final int`

  `WINDOW_ICONIFY`

  Deprecated.

  The user has asked the window manager to iconify the window.

  `static final int`

  `WINDOW_MOVED`

  Deprecated.

  The user has asked the window manager to move the window.

  `int`

  `x`

  Deprecated.

  The *x* coordinate of the event.

  `int`

  `y`

  Deprecated.

  The *y* coordinate of the event.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Event(Object target,
  int id,
  Object arg)`

  Deprecated.

  **NOTE:** The `Event` class is obsolete and is
  available only for backwards compatibility.

  `Event(Object target,
  long when,
  int id,
  int x,
  int y,
  int key,
  int modifiers)`

  Deprecated.

  **NOTE:** The `Event` class is obsolete and is
  available only for backwards compatibility.

  `Event(Object target,
  long when,
  int id,
  int x,
  int y,
  int key,
  int modifiers,
  Object arg)`

  Deprecated.

  **NOTE:** The `Event` class is obsolete and is
  available only for backwards compatibility.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `controlDown()`

  Deprecated.

  **NOTE:** The `Event` class is obsolete and is
  available only for backwards compatibility.

  `boolean`

  `metaDown()`

  Deprecated.

  **NOTE:** The `Event` class is obsolete and is
  available only for backwards compatibility.

  `protected String`

  `paramString()`

  Deprecated.

  **NOTE:** The `Event` class is obsolete and is
  available only for backwards compatibility.

  `boolean`

  `shiftDown()`

  Deprecated.

  **NOTE:** The `Event` class is obsolete and is
  available only for backwards compatibility.

  `String`

  `toString()`

  Deprecated.

  **NOTE:** The `Event` class is obsolete and is
  available only for backwards compatibility.

  `void`

  `translate(int dx,
  int dy)`

  Deprecated.

  **NOTE:** The `Event` class is obsolete and is
  available only for backwards compatibility.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### SHIFT\_MASK

    public static final int SHIFT\_MASK

    Deprecated.

    This flag indicates that the Shift key was down when the event
    occurred.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.SHIFT_MASK)
  + ### CTRL\_MASK

    public static final int CTRL\_MASK

    Deprecated.

    This flag indicates that the Control key was down when the event
    occurred.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.CTRL_MASK)
  + ### META\_MASK

    public static final int META\_MASK

    Deprecated.

    This flag indicates that the Meta key was down when the event
    occurred. For mouse events, this flag indicates that the right
    button was pressed or released.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.META_MASK)
  + ### ALT\_MASK

    public static final int ALT\_MASK

    Deprecated.

    This flag indicates that the Alt key was down when
    the event occurred. For mouse events, this flag indicates that the
    middle mouse button was pressed or released.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.ALT_MASK)
  + ### HOME

    public static final int HOME

    Deprecated.

    The Home key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.HOME)
  + ### END

    public static final int END

    Deprecated.

    The End key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.END)
  + ### PGUP

    public static final int PGUP

    Deprecated.

    The Page Up key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.PGUP)
  + ### PGDN

    public static final int PGDN

    Deprecated.

    The Page Down key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.PGDN)
  + ### UP

    public static final int UP

    Deprecated.

    The Up Arrow key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.UP)
  + ### DOWN

    public static final int DOWN

    Deprecated.

    The Down Arrow key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.DOWN)
  + ### LEFT

    public static final int LEFT

    Deprecated.

    The Left Arrow key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.LEFT)
  + ### RIGHT

    public static final int RIGHT

    Deprecated.

    The Right Arrow key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.RIGHT)
  + ### F1

    public static final int F1

    Deprecated.

    The F1 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F1)
  + ### F2

    public static final int F2

    Deprecated.

    The F2 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F2)
  + ### F3

    public static final int F3

    Deprecated.

    The F3 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F3)
  + ### F4

    public static final int F4

    Deprecated.

    The F4 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F4)
  + ### F5

    public static final int F5

    Deprecated.

    The F5 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F5)
  + ### F6

    public static final int F6

    Deprecated.

    The F6 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F6)
  + ### F7

    public static final int F7

    Deprecated.

    The F7 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F7)
  + ### F8

    public static final int F8

    Deprecated.

    The F8 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F8)
  + ### F9

    public static final int F9

    Deprecated.

    The F9 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F9)
  + ### F10

    public static final int F10

    Deprecated.

    The F10 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F10)
  + ### F11

    public static final int F11

    Deprecated.

    The F11 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F11)
  + ### F12

    public static final int F12

    Deprecated.

    The F12 function key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.F12)
  + ### PRINT\_SCREEN

    public static final int PRINT\_SCREEN

    Deprecated.

    The Print Screen key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.PRINT_SCREEN)
  + ### SCROLL\_LOCK

    public static final int SCROLL\_LOCK

    Deprecated.

    The Scroll Lock key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.SCROLL_LOCK)
  + ### CAPS\_LOCK

    public static final int CAPS\_LOCK

    Deprecated.

    The Caps Lock key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.CAPS_LOCK)
  + ### NUM\_LOCK

    public static final int NUM\_LOCK

    Deprecated.

    The Num Lock key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.NUM_LOCK)
  + ### PAUSE

    public static final int PAUSE

    Deprecated.

    The Pause key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.PAUSE)
  + ### INSERT

    public static final int INSERT

    Deprecated.

    The Insert key, a non-ASCII action key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.INSERT)
  + ### ENTER

    public static final int ENTER

    Deprecated.

    The Enter key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.ENTER)
  + ### BACK\_SPACE

    public static final int BACK\_SPACE

    Deprecated.

    The BackSpace key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.BACK_SPACE)
  + ### TAB

    public static final int TAB

    Deprecated.

    The Tab key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.TAB)
  + ### ESCAPE

    public static final int ESCAPE

    Deprecated.

    The Escape key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.ESCAPE)
  + ### DELETE

    public static final int DELETE

    Deprecated.

    The Delete key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.DELETE)
  + ### WINDOW\_DESTROY

    public static final int WINDOW\_DESTROY

    Deprecated.

    The user has asked the window manager to kill the window.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.WINDOW_DESTROY)
  + ### WINDOW\_EXPOSE

    public static final int WINDOW\_EXPOSE

    Deprecated.

    The user has asked the window manager to expose the window.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.WINDOW_EXPOSE)
  + ### WINDOW\_ICONIFY

    public static final int WINDOW\_ICONIFY

    Deprecated.

    The user has asked the window manager to iconify the window.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.WINDOW_ICONIFY)
  + ### WINDOW\_DEICONIFY

    public static final int WINDOW\_DEICONIFY

    Deprecated.

    The user has asked the window manager to de-iconify the window.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.WINDOW_DEICONIFY)
  + ### WINDOW\_MOVED

    public static final int WINDOW\_MOVED

    Deprecated.

    The user has asked the window manager to move the window.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.WINDOW_MOVED)
  + ### KEY\_PRESS

    public static final int KEY\_PRESS

    Deprecated.

    The user has pressed a normal key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.KEY_PRESS)
  + ### KEY\_RELEASE

    public static final int KEY\_RELEASE

    Deprecated.

    The user has released a normal key.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.KEY_RELEASE)
  + ### KEY\_ACTION

    public static final int KEY\_ACTION

    Deprecated.

    The user has pressed a non-ASCII *action* key.
    The `key` field contains a value that indicates
    that the event occurred on one of the action keys, which
    comprise the 12 function keys, the arrow (cursor) keys,
    Page Up, Page Down, Home, End, Print Screen, Scroll Lock,
    Caps Lock, Num Lock, Pause, and Insert.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.KEY_ACTION)
  + ### KEY\_ACTION\_RELEASE

    public static final int KEY\_ACTION\_RELEASE

    Deprecated.

    The user has released a non-ASCII *action* key.
    The `key` field contains a value that indicates
    that the event occurred on one of the action keys, which
    comprise the 12 function keys, the arrow (cursor) keys,
    Page Up, Page Down, Home, End, Print Screen, Scroll Lock,
    Caps Lock, Num Lock, Pause, and Insert.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.KEY_ACTION_RELEASE)
  + ### MOUSE\_DOWN

    public static final int MOUSE\_DOWN

    Deprecated.

    The user has pressed the mouse button. The `ALT_MASK`
    flag indicates that the middle button has been pressed.
    The `META_MASK` flag indicates that the
    right button has been pressed.

    See Also:
    :   - [`ALT_MASK`](#ALT_MASK)
        - [`META_MASK`](#META_MASK)
        - [Constant Field Values](../../../constant-values.md#java.awt.Event.MOUSE_DOWN)
  + ### MOUSE\_UP

    public static final int MOUSE\_UP

    Deprecated.

    The user has released the mouse button. The `ALT_MASK`
    flag indicates that the middle button has been released.
    The `META_MASK` flag indicates that the
    right button has been released.

    See Also:
    :   - [`ALT_MASK`](#ALT_MASK)
        - [`META_MASK`](#META_MASK)
        - [Constant Field Values](../../../constant-values.md#java.awt.Event.MOUSE_UP)
  + ### MOUSE\_MOVE

    public static final int MOUSE\_MOVE

    Deprecated.

    The mouse has moved with no button pressed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.MOUSE_MOVE)
  + ### MOUSE\_ENTER

    public static final int MOUSE\_ENTER

    Deprecated.

    The mouse has entered a component.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.MOUSE_ENTER)
  + ### MOUSE\_EXIT

    public static final int MOUSE\_EXIT

    Deprecated.

    The mouse has exited a component.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.MOUSE_EXIT)
  + ### MOUSE\_DRAG

    public static final int MOUSE\_DRAG

    Deprecated.

    The user has moved the mouse with a button pressed. The
    `ALT_MASK` flag indicates that the middle
    button is being pressed. The `META_MASK` flag indicates
    that the right button is being pressed.

    See Also:
    :   - [`ALT_MASK`](#ALT_MASK)
        - [`META_MASK`](#META_MASK)
        - [Constant Field Values](../../../constant-values.md#java.awt.Event.MOUSE_DRAG)
  + ### SCROLL\_LINE\_UP

    public static final int SCROLL\_LINE\_UP

    Deprecated.

    The user has activated the *line up*
    area of a scroll bar.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.SCROLL_LINE_UP)
  + ### SCROLL\_LINE\_DOWN

    public static final int SCROLL\_LINE\_DOWN

    Deprecated.

    The user has activated the *line down*
    area of a scroll bar.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.SCROLL_LINE_DOWN)
  + ### SCROLL\_PAGE\_UP

    public static final int SCROLL\_PAGE\_UP

    Deprecated.

    The user has activated the *page up*
    area of a scroll bar.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.SCROLL_PAGE_UP)
  + ### SCROLL\_PAGE\_DOWN

    public static final int SCROLL\_PAGE\_DOWN

    Deprecated.

    The user has activated the *page down*
    area of a scroll bar.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.SCROLL_PAGE_DOWN)
  + ### SCROLL\_ABSOLUTE

    public static final int SCROLL\_ABSOLUTE

    Deprecated.

    The user has moved the bubble (thumb) in a scroll bar,
    moving to an "absolute" position, rather than to
    an offset from the last position.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.SCROLL_ABSOLUTE)
  + ### SCROLL\_BEGIN

    public static final int SCROLL\_BEGIN

    Deprecated.

    The scroll begin event.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.SCROLL_BEGIN)
  + ### SCROLL\_END

    public static final int SCROLL\_END

    Deprecated.

    The scroll end event.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.SCROLL_END)
  + ### LIST\_SELECT

    public static final int LIST\_SELECT

    Deprecated.

    An item in a list has been selected.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.LIST_SELECT)
  + ### LIST\_DESELECT

    public static final int LIST\_DESELECT

    Deprecated.

    An item in a list has been deselected.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.LIST_DESELECT)
  + ### ACTION\_EVENT

    public static final int ACTION\_EVENT

    Deprecated.

    This event indicates that the user wants some action to occur.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.ACTION_EVENT)
  + ### LOAD\_FILE

    public static final int LOAD\_FILE

    Deprecated.

    A file loading event.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.LOAD_FILE)
  + ### SAVE\_FILE

    public static final int SAVE\_FILE

    Deprecated.

    A file saving event.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.SAVE_FILE)
  + ### GOT\_FOCUS

    public static final int GOT\_FOCUS

    Deprecated.

    A component gained the focus.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.GOT_FOCUS)
  + ### LOST\_FOCUS

    public static final int LOST\_FOCUS

    Deprecated.

    A component lost the focus.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Event.LOST_FOCUS)
  + ### target

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") target

    Deprecated.

    The target component. This indicates the component over which the
    event occurred or with which the event is associated.
    This object has been replaced by AWTEvent.getSource()

    See Also:
    :   - [`EventObject.getSource()`](../../../java.base/java/util/EventObject.md#getSource())
  + ### when

    public long when

    Deprecated.

    The time stamp.
    Replaced by InputEvent.getWhen().

    See Also:
    :   - [`InputEvent.getWhen()`](event/InputEvent.md#getWhen())
  + ### id

    public int id

    Deprecated.

    Indicates which type of event the event is, and which
    other `Event` variables are relevant for the event.
    This has been replaced by AWTEvent.getID()

    See Also:
    :   - [`AWTEvent.getID()`](AWTEvent.md#getID())
  + ### x

    public int x

    Deprecated.

    The *x* coordinate of the event.
    Replaced by MouseEvent.getX()

    See Also:
    :   - [`MouseEvent.getX()`](event/MouseEvent.md#getX())
  + ### y

    public int y

    Deprecated.

    The *y* coordinate of the event.
    Replaced by MouseEvent.getY()

    See Also:
    :   - [`MouseEvent.getY()`](event/MouseEvent.md#getY())
  + ### key

    public int key

    Deprecated.

    The key code of the key that was pressed in a keyboard event.
    This has been replaced by KeyEvent.getKeyCode()

    See Also:
    :   - [`KeyEvent.getKeyCode()`](event/KeyEvent.md#getKeyCode())
  + ### modifiers

    public int modifiers

    Deprecated.

    The state of the modifier keys.
    This is replaced with InputEvent.getModifiers()
    In java 1.1 MouseEvent and KeyEvent are subclasses
    of InputEvent.

    See Also:
    :   - [`InputEvent.getModifiers()`](event/InputEvent.md#getModifiers())
  + ### clickCount

    public int clickCount

    Deprecated.

    For `MOUSE_DOWN` events, this field indicates the
    number of consecutive clicks. For other events, its value is
    `0`.
    This field has been replaced by MouseEvent.getClickCount().

    See Also:
    :   - [`MouseEvent.getClickCount()`](event/MouseEvent.md#getClickCount())
  + ### arg

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") arg

    Deprecated.

    An arbitrary argument of the event. The value of this field
    depends on the type of event.
    `arg` has been replaced by event specific property.
  + ### evt

    public [Event](Event.md "class in java.awt") evt

    Deprecated.

    The next event. This field is set when putting events into a
    linked list.
    This has been replaced by EventQueue.

    See Also:
    :   - [`EventQueue`](EventQueue.md "class in java.awt")
* ## Constructor Details

  + ### Event

    public Event([Object](../../../java.base/java/lang/Object.md "class in java.lang") target,
    long when,
    int id,
    int x,
    int y,
    int key,
    int modifiers,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") arg)

    Deprecated.

    **NOTE:** The `Event` class is obsolete and is
    available only for backwards compatibility. It has been replaced
    by the `AWTEvent` class and its subclasses.

    Creates an instance of `Event` with the specified target
    component, time stamp, event type, *x* and *y*
    coordinates, keyboard key, state of the modifier keys, and
    argument.

    Parameters:
    :   `target` - the target component.
    :   `when` - the time stamp.
    :   `id` - the event type.
    :   `x` - the *x* coordinate.
    :   `y` - the *y* coordinate.
    :   `key` - the key pressed in a keyboard event.
    :   `modifiers` - the state of the modifier keys.
    :   `arg` - the specified argument.
  + ### Event

    public Event([Object](../../../java.base/java/lang/Object.md "class in java.lang") target,
    long when,
    int id,
    int x,
    int y,
    int key,
    int modifiers)

    Deprecated.

    **NOTE:** The `Event` class is obsolete and is
    available only for backwards compatibility. It has been replaced
    by the `AWTEvent` class and its subclasses.

    Creates an instance of `Event`, with the specified target
    component, time stamp, event type, *x* and *y*
    coordinates, keyboard key, state of the modifier keys, and an
    argument set to `null`.

    Parameters:
    :   `target` - the target component.
    :   `when` - the time stamp.
    :   `id` - the event type.
    :   `x` - the *x* coordinate.
    :   `y` - the *y* coordinate.
    :   `key` - the key pressed in a keyboard event.
    :   `modifiers` - the state of the modifier keys.
  + ### Event

    public Event([Object](../../../java.base/java/lang/Object.md "class in java.lang") target,
    int id,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") arg)

    Deprecated.

    **NOTE:** The `Event` class is obsolete and is
    available only for backwards compatibility. It has been replaced
    by the `AWTEvent` class and its subclasses.

    Creates an instance of `Event` with the specified
    target component, event type, and argument.

    Parameters:
    :   `target` - the target component.
    :   `id` - the event type.
    :   `arg` - the specified argument.
* ## Method Details

  + ### translate

    public void translate(int dx,
    int dy)

    Deprecated.

    **NOTE:** The `Event` class is obsolete and is
    available only for backwards compatibility. It has been replaced
    by the `AWTEvent` class and its subclasses.

    Translates this event so that its *x* and *y*
    coordinates are increased by *dx* and *dy*,
    respectively.

    This method translates an event relative to the given component.
    This involves, at a minimum, translating the coordinates into the
    local coordinate system of the given component. It may also involve
    translating a region in the case of an expose event.

    Parameters:
    :   `dx` - the distance to translate the *x* coordinate.
    :   `dy` - the distance to translate the *y* coordinate.
  + ### shiftDown

    public boolean shiftDown()

    Deprecated.

    **NOTE:** The `Event` class is obsolete and is
    available only for backwards compatibility. It has been replaced
    by the `AWTEvent` class and its subclasses.

    Checks if the Shift key is down.

    Returns:
    :   `true` if the key is down;
        `false` otherwise.

    See Also:
    :   - [`modifiers`](#modifiers)
        - [`controlDown()`](#controlDown())
        - [`metaDown()`](#metaDown())
  + ### controlDown

    public boolean controlDown()

    Deprecated.

    **NOTE:** The `Event` class is obsolete and is
    available only for backwards compatibility. It has been replaced
    by the `AWTEvent` class and its subclasses.

    Checks if the Control key is down.

    Returns:
    :   `true` if the key is down;
        `false` otherwise.

    See Also:
    :   - [`modifiers`](#modifiers)
        - [`shiftDown()`](#shiftDown())
        - [`metaDown()`](#metaDown())
  + ### metaDown

    public boolean metaDown()

    Deprecated.

    **NOTE:** The `Event` class is obsolete and is
    available only for backwards compatibility. It has been replaced
    by the `AWTEvent` class and its subclasses.

    Checks if the Meta key is down.

    Returns:
    :   `true` if the key is down;
        `false` otherwise.

    See Also:
    :   - [`modifiers`](#modifiers)
        - [`shiftDown()`](#shiftDown())
        - [`controlDown()`](#controlDown())
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Deprecated.

    **NOTE:** The `Event` class is obsolete and is
    available only for backwards compatibility. It has been replaced
    by the `AWTEvent` class and its subclasses.

    Returns a string representing the state of this `Event`.
    This method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not be
    `null`.

    Returns:
    :   the parameter string of this event
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Deprecated.

    **NOTE:** The `Event` class is obsolete and is
    available only for backwards compatibility. It has been replaced
    by the `AWTEvent` class and its subclasses.

    Returns a representation of this event's values as a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string that represents the event and the values
        of its member fields.

    Since:
    :   1.1

    See Also:
    :   - [`paramString()`](#paramString())