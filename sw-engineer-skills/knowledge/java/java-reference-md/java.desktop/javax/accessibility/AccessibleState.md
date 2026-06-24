Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleState

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

javax.accessibility.AccessibleState

---

public class AccessibleState
extends [AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

Class `AccessibleState` describes a component's particular state. The
actual state of the component is defined as an `AccessibleStateSet`,
which is a composed set of `AccessibleStates`.

The [`AccessibleBundle.toDisplayString()`](AccessibleBundle.md#toDisplayString()) method allows you to obtain the localized
string for a locale independent key from a predefined `ResourceBundle`
for the keys defined in this class.

The constants in this class present a strongly typed enumeration of common
object roles. A public constructor for this class has been purposely omitted
and applications should use one of the constants from this class. If the
constants in this class are not sufficient to describe the role of an object,
a subclass should be generated from this class and it should provide
constants in a similar manner.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final AccessibleState`

  `ACTIVE`

  Indicates a window is currently the active window.

  `static final AccessibleState`

  `ARMED`

  Indicates that the object is armed.

  `static final AccessibleState`

  `BUSY`

  Indicates the current object is busy.

  `static final AccessibleState`

  `CHECKED`

  Indicates this object is currently checked.

  `static final AccessibleState`

  `COLLAPSED`

  Indicates this object is collapsed.

  `static final AccessibleState`

  `EDITABLE`

  Indicates the user can change the contents of this object.

  `static final AccessibleState`

  `ENABLED`

  Indicates this object is enabled.

  `static final AccessibleState`

  `EXPANDABLE`

  Indicates this object allows progressive disclosure of its children.

  `static final AccessibleState`

  `EXPANDED`

  Indicates this object is expanded.

  `static final AccessibleState`

  `FOCUSABLE`

  Indicates this object can accept keyboard focus, which means all events
  resulting from typing on the keyboard will normally be passed to it when
  it has focus.

  `static final AccessibleState`

  `FOCUSED`

  Indicates this object currently has the keyboard focus.

  `static final AccessibleState`

  `HORIZONTAL`

  Indicates the orientation of this object is horizontal.

  `static final AccessibleState`

  `ICONIFIED`

  Indicates this object is minimized and is represented only by an icon.

  `static final AccessibleState`

  `INDETERMINATE`

  Indicates that the object state is indeterminate.

  `static final AccessibleState`

  `MANAGES_DESCENDANTS`

  Indicates this object is responsible for managing its subcomponents.

  `static final AccessibleState`

  `MODAL`

  Indicates something must be done with this object before the user can
  interact with an object in a different window.

  `static final AccessibleState`

  `MULTI_LINE`

  Indicates this (text) object can contain multiple lines of text.

  `static final AccessibleState`

  `MULTISELECTABLE`

  Indicates this object allows more than one of its children to be selected
  at the same time.

  `static final AccessibleState`

  `OPAQUE`

  Indicates this object paints every pixel within its rectangular region.

  `static final AccessibleState`

  `PRESSED`

  Indicates this object is currently pressed.

  `static final AccessibleState`

  `RESIZABLE`

  Indicates the size of this object is not fixed.

  `static final AccessibleState`

  `SELECTABLE`

  Indicates this object is the child of an object that allows its children
  to be selected, and that this child is one of those children that can be
  selected.

  `static final AccessibleState`

  `SELECTED`

  Indicates this object is the child of an object that allows its children
  to be selected, and that this child is one of those children that has
  been selected.

  `static final AccessibleState`

  `SHOWING`

  Indicates this object, the object's parent, the object's parent's parent,
  and so on, are all visible.

  `static final AccessibleState`

  `SINGLE_LINE`

  Indicates this (text) object can contain only a single line of text.

  `static final AccessibleState`

  `TRANSIENT`

  Indicates this object is transient.

  `static final AccessibleState`

  `TRUNCATED`

  A state indicating that text is truncated by a bounding rectangle and
  that some of the text is not displayed on the screen.

  `static final AccessibleState`

  `VERTICAL`

  Indicates the orientation of this object is vertical.

  `static final AccessibleState`

  `VISIBLE`

  Indicates this object is visible.

  ### Fields inherited from class javax.accessibility.[AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

  `key`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleState(String key)`

  Creates a new `AccessibleState` using the given locale independent
  key.
* ## Method Summary

  ### Methods inherited from class javax.accessibility.[AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

  `toDisplayString, toDisplayString, toDisplayString, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ACTIVE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") ACTIVE

    Indicates a window is currently the active window. This includes windows,
    dialogs, frames, etc. In addition, this state is used to indicate the
    currently active child of a component such as a list, table, or tree. For
    example, the active child of a list is the child that is drawn with a
    rectangle around it.

    See Also:
    :   - [`AccessibleRole.WINDOW`](AccessibleRole.md#WINDOW)
        - [`AccessibleRole.FRAME`](AccessibleRole.md#FRAME)
        - [`AccessibleRole.DIALOG`](AccessibleRole.md#DIALOG)
  + ### PRESSED

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") PRESSED

    Indicates this object is currently pressed. This is usually associated
    with buttons and indicates the user has pressed a mouse button while the
    pointer was over the button and has not yet released the mouse button.

    See Also:
    :   - [`AccessibleRole.PUSH_BUTTON`](AccessibleRole.md#PUSH_BUTTON)
  + ### ARMED

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") ARMED

    Indicates that the object is armed. This is usually used on buttons that
    have been pressed but not yet released, and the mouse pointer is still
    over the button.

    See Also:
    :   - [`AccessibleRole.PUSH_BUTTON`](AccessibleRole.md#PUSH_BUTTON)
  + ### BUSY

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") BUSY

    Indicates the current object is busy. This is usually used on objects
    such as progress bars, sliders, or scroll bars to indicate they are in a
    state of transition.

    See Also:
    :   - [`AccessibleRole.PROGRESS_BAR`](AccessibleRole.md#PROGRESS_BAR)
        - [`AccessibleRole.SCROLL_BAR`](AccessibleRole.md#SCROLL_BAR)
        - [`AccessibleRole.SLIDER`](AccessibleRole.md#SLIDER)
  + ### CHECKED

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") CHECKED

    Indicates this object is currently checked. This is usually used on
    objects such as toggle buttons, radio buttons, and check boxes.

    See Also:
    :   - [`AccessibleRole.TOGGLE_BUTTON`](AccessibleRole.md#TOGGLE_BUTTON)
        - [`AccessibleRole.RADIO_BUTTON`](AccessibleRole.md#RADIO_BUTTON)
        - [`AccessibleRole.CHECK_BOX`](AccessibleRole.md#CHECK_BOX)
  + ### EDITABLE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") EDITABLE

    Indicates the user can change the contents of this object. This is
    usually used primarily for objects that allow the user to enter text.
    Other objects, such as scroll bars and sliders, are automatically
    editable if they are enabled.

    See Also:
    :   - [`ENABLED`](#ENABLED)
  + ### EXPANDABLE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") EXPANDABLE

    Indicates this object allows progressive disclosure of its children. This
    is usually used with hierarchical objects such as trees and is often
    paired with the `EXPANDED` or `COLLAPSED` states.

    See Also:
    :   - [`EXPANDED`](#EXPANDED)
        - [`COLLAPSED`](#COLLAPSED)
        - [`AccessibleRole.TREE`](AccessibleRole.md#TREE)
  + ### COLLAPSED

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") COLLAPSED

    Indicates this object is collapsed. This is usually paired with the
    `EXPANDABLE` state and is used on objects that provide progressive
    disclosure such as trees.

    See Also:
    :   - [`EXPANDABLE`](#EXPANDABLE)
        - [`EXPANDED`](#EXPANDED)
        - [`AccessibleRole.TREE`](AccessibleRole.md#TREE)
  + ### EXPANDED

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") EXPANDED

    Indicates this object is expanded. This is usually paired with the
    `EXPANDABLE` state and is used on objects that provide progressive
    disclosure such as trees.

    See Also:
    :   - [`EXPANDABLE`](#EXPANDABLE)
        - [`COLLAPSED`](#COLLAPSED)
        - [`AccessibleRole.TREE`](AccessibleRole.md#TREE)
  + ### ENABLED

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") ENABLED

    Indicates this object is enabled. The absence of this state from an
    object's state set indicates this object is not enabled. An object that
    is not enabled cannot be manipulated by the user. In a graphical display,
    it is usually grayed out.
  + ### FOCUSABLE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") FOCUSABLE

    Indicates this object can accept keyboard focus, which means all events
    resulting from typing on the keyboard will normally be passed to it when
    it has focus.

    See Also:
    :   - [`FOCUSED`](#FOCUSED)
  + ### FOCUSED

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") FOCUSED

    Indicates this object currently has the keyboard focus.

    See Also:
    :   - [`FOCUSABLE`](#FOCUSABLE)
  + ### ICONIFIED

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") ICONIFIED

    Indicates this object is minimized and is represented only by an icon.
    This is usually only associated with frames and internal frames.

    See Also:
    :   - [`AccessibleRole.FRAME`](AccessibleRole.md#FRAME)
        - [`AccessibleRole.INTERNAL_FRAME`](AccessibleRole.md#INTERNAL_FRAME)
  + ### MODAL

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") MODAL

    Indicates something must be done with this object before the user can
    interact with an object in a different window. This is usually associated
    only with dialogs.

    See Also:
    :   - [`AccessibleRole.DIALOG`](AccessibleRole.md#DIALOG)
  + ### OPAQUE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") OPAQUE

    Indicates this object paints every pixel within its rectangular region. A
    non-opaque component paints only some of its pixels, allowing the pixels
    underneath it to "show through". A component that does not fully paint
    its pixels therefore provides a degree of transparency.

    See Also:
    :   - [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
        - [`AccessibleContext.getAccessibleComponent()`](AccessibleContext.md#getAccessibleComponent())
        - [`AccessibleComponent.getBounds()`](AccessibleComponent.md#getBounds())
  + ### RESIZABLE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") RESIZABLE

    Indicates the size of this object is not fixed.

    See Also:
    :   - [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
        - [`AccessibleContext.getAccessibleComponent()`](AccessibleContext.md#getAccessibleComponent())
        - [`AccessibleComponent.getSize()`](AccessibleComponent.md#getSize())
        - [`AccessibleComponent.setSize(java.awt.Dimension)`](AccessibleComponent.md#setSize(java.awt.Dimension))
  + ### MULTISELECTABLE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") MULTISELECTABLE

    Indicates this object allows more than one of its children to be selected
    at the same time.

    See Also:
    :   - [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
        - [`AccessibleContext.getAccessibleSelection()`](AccessibleContext.md#getAccessibleSelection())
        - [`AccessibleSelection`](AccessibleSelection.md "interface in javax.accessibility")
  + ### SELECTABLE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") SELECTABLE

    Indicates this object is the child of an object that allows its children
    to be selected, and that this child is one of those children that can be
    selected.

    See Also:
    :   - [`SELECTED`](#SELECTED)
        - [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
        - [`AccessibleContext.getAccessibleSelection()`](AccessibleContext.md#getAccessibleSelection())
        - [`AccessibleSelection`](AccessibleSelection.md "interface in javax.accessibility")
  + ### SELECTED

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") SELECTED

    Indicates this object is the child of an object that allows its children
    to be selected, and that this child is one of those children that has
    been selected.

    See Also:
    :   - [`SELECTABLE`](#SELECTABLE)
        - [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
        - [`AccessibleContext.getAccessibleSelection()`](AccessibleContext.md#getAccessibleSelection())
        - [`AccessibleSelection`](AccessibleSelection.md "interface in javax.accessibility")
  + ### SHOWING

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") SHOWING

    Indicates this object, the object's parent, the object's parent's parent,
    and so on, are all visible. Note that this does not necessarily mean the
    object is painted on the screen. It might be occluded by some other
    showing object.

    See Also:
    :   - [`VISIBLE`](#VISIBLE)
  + ### VISIBLE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") VISIBLE

    Indicates this object is visible. Note: this means that the object
    intends to be visible; however, it may not in fact be showing on the
    screen because one of the objects that this object is contained by is not
    visible.

    See Also:
    :   - [`SHOWING`](#SHOWING)
  + ### VERTICAL

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") VERTICAL

    Indicates the orientation of this object is vertical. This is usually
    associated with objects such as scrollbars, sliders, and progress bars.

    See Also:
    :   - [`HORIZONTAL`](#HORIZONTAL)
        - [`AccessibleRole.SCROLL_BAR`](AccessibleRole.md#SCROLL_BAR)
        - [`AccessibleRole.SLIDER`](AccessibleRole.md#SLIDER)
        - [`AccessibleRole.PROGRESS_BAR`](AccessibleRole.md#PROGRESS_BAR)
  + ### HORIZONTAL

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") HORIZONTAL

    Indicates the orientation of this object is horizontal. This is usually
    associated with objects such as scrollbars, sliders, and progress bars.

    See Also:
    :   - [`VERTICAL`](#VERTICAL)
        - [`AccessibleRole.SCROLL_BAR`](AccessibleRole.md#SCROLL_BAR)
        - [`AccessibleRole.SLIDER`](AccessibleRole.md#SLIDER)
        - [`AccessibleRole.PROGRESS_BAR`](AccessibleRole.md#PROGRESS_BAR)
  + ### SINGLE\_LINE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") SINGLE\_LINE

    Indicates this (text) object can contain only a single line of text.
  + ### MULTI\_LINE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") MULTI\_LINE

    Indicates this (text) object can contain multiple lines of text.
  + ### TRANSIENT

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") TRANSIENT

    Indicates this object is transient. An assistive technology should not
    add a `PropertyChange` listener to an object with transient state,
    as that object will never generate any events. Transient objects are
    typically created to answer Java Accessibility method queries, but
    otherwise do not remain linked to the underlying object (for example,
    those objects underneath lists, tables, and trees in Swing, where only
    one actual `UI Component` does shared rendering duty for all of the
    data objects underneath the actual list/table/tree elements).

    Since:
    :   1.5
  + ### MANAGES\_DESCENDANTS

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") MANAGES\_DESCENDANTS

    Indicates this object is responsible for managing its subcomponents. This
    is typically used for trees and tables that have a large number of
    subcomponents and where the objects are created only when needed and
    otherwise remain virtual. The application should not manage the
    subcomponents directly.

    Since:
    :   1.5
  + ### INDETERMINATE

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") INDETERMINATE

    Indicates that the object state is indeterminate. An example is selected
    text that is partially bold and partially not bold. In this case the
    attributes associated with the selected text are indeterminate.

    Since:
    :   1.5
  + ### TRUNCATED

    public static final [AccessibleState](AccessibleState.md "class in javax.accessibility") TRUNCATED

    A state indicating that text is truncated by a bounding rectangle and
    that some of the text is not displayed on the screen. An example is text
    in a spreadsheet cell that is truncated by the bounds of the cell.

    Since:
    :   1.5
* ## Constructor Details

  + ### AccessibleState

    protected AccessibleState([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Creates a new `AccessibleState` using the given locale independent
    key. This should not be a public method. Instead, it is used to create
    the constants in this file to make it a strongly typed enumeration.
    Subclasses of this class should enforce similar policy.

    The key `String` should be a locale independent key for the state.
    It is not intended to be used as the actual `String` to display to
    the user. To get the localized string, use [`AccessibleBundle.toDisplayString()`](AccessibleBundle.md#toDisplayString()).

    Parameters:
    :   `key` - the locale independent name of the state

    See Also:
    :   - [`AccessibleBundle.toDisplayString(java.lang.String, java.util.Locale)`](AccessibleBundle.md#toDisplayString(java.lang.String,java.util.Locale))