Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleRole

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

javax.accessibility.AccessibleRole

---

public class AccessibleRole
extends [AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

Class `AccessibleRole` determines the role of a component. The role of
a component describes its generic function. (E.G., "push button," "table," or
"list.")

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

  `static final AccessibleRole`

  `ALERT`

  Object is used to alert the user about something.

  `static final AccessibleRole`

  `AWT_COMPONENT`

  An AWT component, but nothing else is known about it.

  `static final AccessibleRole`

  `CANVAS`

  Object that can be drawn into and is used to trap events.

  `static final AccessibleRole`

  `CHECK_BOX`

  A choice that can be checked or unchecked and provides a separate
  indicator for the current state.

  `static final AccessibleRole`

  `COLOR_CHOOSER`

  A specialized pane that lets the user choose a color.

  `static final AccessibleRole`

  `COLUMN_HEADER`

  The header for a column of data.

  `static final AccessibleRole`

  `COMBO_BOX`

  A list of choices the user can select from.

  `static final AccessibleRole`

  `DATE_EDITOR`

  A `DATE_EDITOR` is a component that allows users to edit
  `java.util.Date` and `java.util.Time` objects.

  `static final AccessibleRole`

  `DESKTOP_ICON`

  An iconified internal frame in a `DESKTOP_PANE`.

  `static final AccessibleRole`

  `DESKTOP_PANE`

  A pane that supports internal frames and iconified versions of those
  internal frames.

  `static final AccessibleRole`

  `DIALOG`

  A top level window with title bar and a border.

  `static final AccessibleRole`

  `DIRECTORY_PANE`

  A pane that allows the user to navigate through and select the contents
  of a directory.

  `static final AccessibleRole`

  `EDITBAR`

  A role indicating the object acts as a formula for calculating a value.

  `static final AccessibleRole`

  `FILE_CHOOSER`

  A specialized dialog that displays the files in the directory and lets
  the user select a file, browse a different directory, or specify a
  filename.

  `static final AccessibleRole`

  `FILLER`

  An object that fills up space in a user interface.

  `static final AccessibleRole`

  `FONT_CHOOSER`

  A `FONT_CHOOSER` is a component that lets the user pick various
  attributes for fonts.

  `static final AccessibleRole`

  `FOOTER`

  A text footer.

  `static final AccessibleRole`

  `FRAME`

  A top level window with a title bar, border, menu bar, etc.

  `static final AccessibleRole`

  `GLASS_PANE`

  A pane that is guaranteed to be painted on top of all panes beneath it.

  `static final AccessibleRole`

  `GROUP_BOX`

  A `GROUP_BOX` is a simple container that contains a border around
  it and contains components inside it.

  `static final AccessibleRole`

  `HEADER`

  A text header.

  `static final AccessibleRole`

  `HTML_CONTAINER`

  An object containing a collection of `Accessibles` that together
  represents `HTML` content.

  `static final AccessibleRole`

  `HYPERLINK`

  A hypertext anchor.

  `static final AccessibleRole`

  `ICON`

  A small fixed size picture, typically used to decorate components.

  `static final AccessibleRole`

  `INTERNAL_FRAME`

  A frame-like object that is clipped by a desktop pane.

  `static final AccessibleRole`

  `LABEL`

  An object used to present an icon or short string in an interface.

  `static final AccessibleRole`

  `LAYERED_PANE`

  A specialized pane that allows its children to be drawn in layers,
  providing a form of stacking order.

  `static final AccessibleRole`

  `LIST`

  An object that presents a list of objects to the user and allows the user
  to select one or more of them.

  `static final AccessibleRole`

  `LIST_ITEM`

  An object that presents an element in a list.

  `static final AccessibleRole`

  `MENU`

  An object usually found inside a menu bar that contains a list of actions
  the user can choose from.

  `static final AccessibleRole`

  `MENU_BAR`

  An object usually drawn at the top of the primary dialog box of an
  application that contains a list of menus the user can choose from.

  `static final AccessibleRole`

  `MENU_ITEM`

  An object usually contained in a menu that presents an action the user
  can choose.

  `static final AccessibleRole`

  `OPTION_PANE`

  A specialized pane whose primary use is inside a `DIALOG`.

  `static final AccessibleRole`

  `PAGE_TAB`

  An object that is a child of a page tab list.

  `static final AccessibleRole`

  `PAGE_TAB_LIST`

  An object that presents a series of panels (or page tabs), one at a time,
  through some mechanism provided by the object.

  `static final AccessibleRole`

  `PANEL`

  A generic container that is often used to group objects.

  `static final AccessibleRole`

  `PARAGRAPH`

  A text paragraph.

  `static final AccessibleRole`

  `PASSWORD_TEXT`

  A text object used for passwords, or other places where the text contents
  is not shown visibly to the user.

  `static final AccessibleRole`

  `POPUP_MENU`

  A temporary window that is usually used to offer the user a list of
  choices, and then hides when the user selects one of those choices.

  `static final AccessibleRole`

  `PROGRESS_BAR`

  An object used to indicate how much of a task has been completed.

  `static final AccessibleRole`

  `PROGRESS_MONITOR`

  A role indicating the object monitors the progress of some operation.

  `static final AccessibleRole`

  `PUSH_BUTTON`

  An object the user can manipulate to tell the application to do
  something.

  `static final AccessibleRole`

  `RADIO_BUTTON`

  A specialized check box that will cause other radio buttons in the same
  group to become unchecked when this one is checked.

  `static final AccessibleRole`

  `ROOT_PANE`

  A specialized pane that has a glass pane and a layered pane as its
  children.

  `static final AccessibleRole`

  `ROW_HEADER`

  The header for a row of data.

  `static final AccessibleRole`

  `RULER`

  A ruler is an object used to measure distance.

  `static final AccessibleRole`

  `SCROLL_BAR`

  An object usually used to allow a user to incrementally view a large
  amount of data.

  `static final AccessibleRole`

  `SCROLL_PANE`

  An object that allows a user to incrementally view a large amount of
  information.

  `static final AccessibleRole`

  `SEPARATOR`

  An object usually contained in a menu to provide a visual and logical
  separation of the contents in a menu.

  `static final AccessibleRole`

  `SLIDER`

  An object that allows the user to select from a bounded range.

  `static final AccessibleRole`

  `SPIN_BOX`

  A `SPIN_BOX` is a simple spinner component and its main use is for
  simple numbers.

  `static final AccessibleRole`

  `SPLIT_PANE`

  A specialized panel that presents two other panels at the same time.

  `static final AccessibleRole`

  `STATUS_BAR`

  A `STATUS_BAR` is an simple component that can contain multiple
  labels of status information to the user.

  `static final AccessibleRole`

  `SWING_COMPONENT`

  A Swing component, but nothing else is known about it.

  `static final AccessibleRole`

  `TABLE`

  An object used to present information in terms of rows and columns.

  `static final AccessibleRole`

  `TEXT`

  An object that presents text to the user.

  `static final AccessibleRole`

  `TOGGLE_BUTTON`

  A specialized push button that can be checked or unchecked, but does not
  provide a separate indicator for the current state.

  `static final AccessibleRole`

  `TOOL_BAR`

  A bar or palette usually composed of push buttons or toggle buttons.

  `static final AccessibleRole`

  `TOOL_TIP`

  An object that provides information about another object.

  `static final AccessibleRole`

  `TREE`

  An object used to present hierarchical information to the user.

  `static final AccessibleRole`

  `UNKNOWN`

  The object contains some `Accessible` information, but its role is
  not known.

  `static final AccessibleRole`

  `VIEWPORT`

  An object usually used in a scroll pane.

  `static final AccessibleRole`

  `WINDOW`

  A top level window with no title or border.

  ### Fields inherited from class javax.accessibility.[AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

  `key`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleRole(String key)`

  Creates a new `AccessibleRole` using the given locale independent
  key.
* ## Method Summary

  ### Methods inherited from class javax.accessibility.[AccessibleBundle](AccessibleBundle.md "class in javax.accessibility")

  `toDisplayString, toDisplayString, toDisplayString, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ALERT

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") ALERT

    Object is used to alert the user about something.
  + ### COLUMN\_HEADER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") COLUMN\_HEADER

    The header for a column of data.
  + ### CANVAS

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") CANVAS

    Object that can be drawn into and is used to trap events.

    See Also:
    :   - [`FRAME`](#FRAME)
        - [`GLASS_PANE`](#GLASS_PANE)
        - [`LAYERED_PANE`](#LAYERED_PANE)
  + ### COMBO\_BOX

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") COMBO\_BOX

    A list of choices the user can select from. Also optionally allows the
    user to enter a choice of their own.
  + ### DESKTOP\_ICON

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") DESKTOP\_ICON

    An iconified internal frame in a `DESKTOP_PANE`.

    See Also:
    :   - [`DESKTOP_PANE`](#DESKTOP_PANE)
        - [`INTERNAL_FRAME`](#INTERNAL_FRAME)
  + ### HTML\_CONTAINER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") HTML\_CONTAINER

    An object containing a collection of `Accessibles` that together
    represents `HTML` content. The child `Accessibles` would
    include objects implementing `AccessibleText`,
    `AccessibleHypertext`, `AccessibleIcon`, and other
    interfaces.

    Since:
    :   1.6

    See Also:
    :   - [`HYPERLINK`](#HYPERLINK)
        - [`AccessibleText`](AccessibleText.md "interface in javax.accessibility")
        - [`AccessibleHypertext`](AccessibleHypertext.md "interface in javax.accessibility")
        - [`AccessibleHyperlink`](AccessibleHyperlink.md "class in javax.accessibility")
        - [`AccessibleIcon`](AccessibleIcon.md "interface in javax.accessibility")
  + ### INTERNAL\_FRAME

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") INTERNAL\_FRAME

    A frame-like object that is clipped by a desktop pane. The desktop pane,
    internal frame, and desktop icon objects are often used to create
    multiple document interfaces within an application.

    See Also:
    :   - [`DESKTOP_ICON`](#DESKTOP_ICON)
        - [`DESKTOP_PANE`](#DESKTOP_PANE)
        - [`FRAME`](#FRAME)
  + ### DESKTOP\_PANE

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") DESKTOP\_PANE

    A pane that supports internal frames and iconified versions of those
    internal frames.

    See Also:
    :   - [`DESKTOP_ICON`](#DESKTOP_ICON)
        - [`INTERNAL_FRAME`](#INTERNAL_FRAME)
  + ### OPTION\_PANE

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") OPTION\_PANE

    A specialized pane whose primary use is inside a `DIALOG`.

    See Also:
    :   - [`DIALOG`](#DIALOG)
  + ### WINDOW

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") WINDOW

    A top level window with no title or border.

    See Also:
    :   - [`FRAME`](#FRAME)
        - [`DIALOG`](#DIALOG)
  + ### FRAME

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") FRAME

    A top level window with a title bar, border, menu bar, etc. It is often
    used as the primary window for an application.

    See Also:
    :   - [`DIALOG`](#DIALOG)
        - [`CANVAS`](#CANVAS)
        - [`WINDOW`](#WINDOW)
  + ### DIALOG

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") DIALOG

    A top level window with title bar and a border. A dialog is similar to a
    frame, but it has fewer properties and is often used as a secondary
    window for an application.

    See Also:
    :   - [`FRAME`](#FRAME)
        - [`WINDOW`](#WINDOW)
  + ### COLOR\_CHOOSER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") COLOR\_CHOOSER

    A specialized pane that lets the user choose a color.
  + ### DIRECTORY\_PANE

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") DIRECTORY\_PANE

    A pane that allows the user to navigate through and select the contents
    of a directory. May be used by a file chooser.

    See Also:
    :   - [`FILE_CHOOSER`](#FILE_CHOOSER)
  + ### FILE\_CHOOSER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") FILE\_CHOOSER

    A specialized dialog that displays the files in the directory and lets
    the user select a file, browse a different directory, or specify a
    filename. May use the directory pane to show the contents of a directory.

    See Also:
    :   - [`DIRECTORY_PANE`](#DIRECTORY_PANE)
  + ### FILLER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") FILLER

    An object that fills up space in a user interface. It is often used in
    interfaces to tweak the spacing between components, but serves no other
    purpose.
  + ### HYPERLINK

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") HYPERLINK

    A hypertext anchor.
  + ### ICON

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") ICON

    A small fixed size picture, typically used to decorate components.
  + ### LABEL

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") LABEL

    An object used to present an icon or short string in an interface.
  + ### ROOT\_PANE

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") ROOT\_PANE

    A specialized pane that has a glass pane and a layered pane as its
    children.

    See Also:
    :   - [`GLASS_PANE`](#GLASS_PANE)
        - [`LAYERED_PANE`](#LAYERED_PANE)
  + ### GLASS\_PANE

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") GLASS\_PANE

    A pane that is guaranteed to be painted on top of all panes beneath it.

    See Also:
    :   - [`ROOT_PANE`](#ROOT_PANE)
        - [`CANVAS`](#CANVAS)
  + ### LAYERED\_PANE

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") LAYERED\_PANE

    A specialized pane that allows its children to be drawn in layers,
    providing a form of stacking order. This is usually the pane that holds
    the menu bar as well as the pane that contains most of the visual
    components in a window.

    See Also:
    :   - [`GLASS_PANE`](#GLASS_PANE)
        - [`ROOT_PANE`](#ROOT_PANE)
  + ### LIST

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") LIST

    An object that presents a list of objects to the user and allows the user
    to select one or more of them. A list is usually contained within a
    scroll pane.

    See Also:
    :   - [`SCROLL_PANE`](#SCROLL_PANE)
        - [`LIST_ITEM`](#LIST_ITEM)
  + ### LIST\_ITEM

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") LIST\_ITEM

    An object that presents an element in a list. A list is usually contained
    within a scroll pane.

    See Also:
    :   - [`SCROLL_PANE`](#SCROLL_PANE)
        - [`LIST`](#LIST)
  + ### MENU\_BAR

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") MENU\_BAR

    An object usually drawn at the top of the primary dialog box of an
    application that contains a list of menus the user can choose from. For
    example, a menu bar might contain menus for "File," "Edit," and "Help."

    See Also:
    :   - [`MENU`](#MENU)
        - [`POPUP_MENU`](#POPUP_MENU)
        - [`LAYERED_PANE`](#LAYERED_PANE)
  + ### POPUP\_MENU

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") POPUP\_MENU

    A temporary window that is usually used to offer the user a list of
    choices, and then hides when the user selects one of those choices.

    See Also:
    :   - [`MENU`](#MENU)
        - [`MENU_ITEM`](#MENU_ITEM)
  + ### MENU

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") MENU

    An object usually found inside a menu bar that contains a list of actions
    the user can choose from. A menu can have any object as its children, but
    most often they are menu items, other menus, or rudimentary objects such
    as radio buttons, check boxes, or separators. For example, an application
    may have an "Edit" menu that contains menu items for "Cut" and "Paste."

    See Also:
    :   - [`MENU_BAR`](#MENU_BAR)
        - [`MENU_ITEM`](#MENU_ITEM)
        - [`SEPARATOR`](#SEPARATOR)
        - [`RADIO_BUTTON`](#RADIO_BUTTON)
        - [`CHECK_BOX`](#CHECK_BOX)
        - [`POPUP_MENU`](#POPUP_MENU)
  + ### MENU\_ITEM

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") MENU\_ITEM

    An object usually contained in a menu that presents an action the user
    can choose. For example, the "Cut" menu item in an "Edit" menu would be
    an action the user can select to cut the selected area of text in a
    document.

    See Also:
    :   - [`MENU_BAR`](#MENU_BAR)
        - [`SEPARATOR`](#SEPARATOR)
        - [`POPUP_MENU`](#POPUP_MENU)
  + ### SEPARATOR

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") SEPARATOR

    An object usually contained in a menu to provide a visual and logical
    separation of the contents in a menu. For example, the "File" menu of an
    application might contain menu items for "Open," "Close," and "Exit," and
    will place a separator between "Close" and "Exit" menu items.

    See Also:
    :   - [`MENU`](#MENU)
        - [`MENU_ITEM`](#MENU_ITEM)
  + ### PAGE\_TAB\_LIST

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") PAGE\_TAB\_LIST

    An object that presents a series of panels (or page tabs), one at a time,
    through some mechanism provided by the object. The most common mechanism
    is a list of tabs at the top of the panel. The children of a page tab
    list are all page tabs.

    See Also:
    :   - [`PAGE_TAB`](#PAGE_TAB)
  + ### PAGE\_TAB

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") PAGE\_TAB

    An object that is a child of a page tab list. Its sole child is the panel
    that is to be presented to the user when the user selects the page tab
    from the list of tabs in the page tab list.

    See Also:
    :   - [`PAGE_TAB_LIST`](#PAGE_TAB_LIST)
  + ### PANEL

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") PANEL

    A generic container that is often used to group objects.
  + ### PROGRESS\_BAR

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") PROGRESS\_BAR

    An object used to indicate how much of a task has been completed.
  + ### PASSWORD\_TEXT

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") PASSWORD\_TEXT

    A text object used for passwords, or other places where the text contents
    is not shown visibly to the user.
  + ### PUSH\_BUTTON

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") PUSH\_BUTTON

    An object the user can manipulate to tell the application to do
    something.

    See Also:
    :   - [`CHECK_BOX`](#CHECK_BOX)
        - [`TOGGLE_BUTTON`](#TOGGLE_BUTTON)
        - [`RADIO_BUTTON`](#RADIO_BUTTON)
  + ### TOGGLE\_BUTTON

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") TOGGLE\_BUTTON

    A specialized push button that can be checked or unchecked, but does not
    provide a separate indicator for the current state.

    See Also:
    :   - [`PUSH_BUTTON`](#PUSH_BUTTON)
        - [`CHECK_BOX`](#CHECK_BOX)
        - [`RADIO_BUTTON`](#RADIO_BUTTON)
  + ### CHECK\_BOX

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") CHECK\_BOX

    A choice that can be checked or unchecked and provides a separate
    indicator for the current state.

    See Also:
    :   - [`PUSH_BUTTON`](#PUSH_BUTTON)
        - [`TOGGLE_BUTTON`](#TOGGLE_BUTTON)
        - [`RADIO_BUTTON`](#RADIO_BUTTON)
  + ### RADIO\_BUTTON

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") RADIO\_BUTTON

    A specialized check box that will cause other radio buttons in the same
    group to become unchecked when this one is checked.

    See Also:
    :   - [`PUSH_BUTTON`](#PUSH_BUTTON)
        - [`TOGGLE_BUTTON`](#TOGGLE_BUTTON)
        - [`CHECK_BOX`](#CHECK_BOX)
  + ### ROW\_HEADER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") ROW\_HEADER

    The header for a row of data.
  + ### SCROLL\_PANE

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") SCROLL\_PANE

    An object that allows a user to incrementally view a large amount of
    information. Its children can include scroll bars and a viewport.

    See Also:
    :   - [`SCROLL_BAR`](#SCROLL_BAR)
        - [`VIEWPORT`](#VIEWPORT)
  + ### SCROLL\_BAR

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") SCROLL\_BAR

    An object usually used to allow a user to incrementally view a large
    amount of data. Usually used only by a scroll pane.

    See Also:
    :   - [`SCROLL_PANE`](#SCROLL_PANE)
  + ### VIEWPORT

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") VIEWPORT

    An object usually used in a scroll pane. It represents the portion of the
    entire data that the user can see. As the user manipulates the scroll
    bars, the contents of the viewport can change.

    See Also:
    :   - [`SCROLL_PANE`](#SCROLL_PANE)
  + ### SLIDER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") SLIDER

    An object that allows the user to select from a bounded range. For
    example, a slider might be used to select a number between 0 and 100.
  + ### SPLIT\_PANE

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") SPLIT\_PANE

    A specialized panel that presents two other panels at the same time.
    Between the two panels is a divider the user can manipulate to make one
    panel larger and the other panel smaller.
  + ### TABLE

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") TABLE

    An object used to present information in terms of rows and columns. An
    example might include a spreadsheet application.
  + ### TEXT

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") TEXT

    An object that presents text to the user. The text is usually editable by
    the user as opposed to a label.

    See Also:
    :   - [`LABEL`](#LABEL)
  + ### TREE

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") TREE

    An object used to present hierarchical information to the user. The
    individual nodes in the tree can be collapsed and expanded to provide
    selective disclosure of the tree's contents.
  + ### TOOL\_BAR

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") TOOL\_BAR

    A bar or palette usually composed of push buttons or toggle buttons. It
    is often used to provide the most frequently used functions for an
    application.
  + ### TOOL\_TIP

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") TOOL\_TIP

    An object that provides information about another object. The
    `accessibleDescription` property of the tool tip is often displayed
    to the user in a small "help bubble" when the user causes the mouse to
    hover over the object associated with the tool tip.
  + ### AWT\_COMPONENT

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") AWT\_COMPONENT

    An AWT component, but nothing else is known about it.

    See Also:
    :   - [`SWING_COMPONENT`](#SWING_COMPONENT)
        - [`UNKNOWN`](#UNKNOWN)
  + ### SWING\_COMPONENT

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") SWING\_COMPONENT

    A Swing component, but nothing else is known about it.

    See Also:
    :   - [`AWT_COMPONENT`](#AWT_COMPONENT)
        - [`UNKNOWN`](#UNKNOWN)
  + ### UNKNOWN

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") UNKNOWN

    The object contains some `Accessible` information, but its role is
    not known.

    See Also:
    :   - [`AWT_COMPONENT`](#AWT_COMPONENT)
        - [`SWING_COMPONENT`](#SWING_COMPONENT)
  + ### STATUS\_BAR

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") STATUS\_BAR

    A `STATUS_BAR` is an simple component that can contain multiple
    labels of status information to the user.
  + ### DATE\_EDITOR

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") DATE\_EDITOR

    A `DATE_EDITOR` is a component that allows users to edit
    `java.util.Date` and `java.util.Time` objects.
  + ### SPIN\_BOX

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") SPIN\_BOX

    A `SPIN_BOX` is a simple spinner component and its main use is for
    simple numbers.
  + ### FONT\_CHOOSER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") FONT\_CHOOSER

    A `FONT_CHOOSER` is a component that lets the user pick various
    attributes for fonts.
  + ### GROUP\_BOX

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") GROUP\_BOX

    A `GROUP_BOX` is a simple container that contains a border around
    it and contains components inside it.
  + ### HEADER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") HEADER

    A text header.

    Since:
    :   1.5
  + ### FOOTER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") FOOTER

    A text footer.

    Since:
    :   1.5
  + ### PARAGRAPH

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") PARAGRAPH

    A text paragraph.

    Since:
    :   1.5
  + ### RULER

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") RULER

    A ruler is an object used to measure distance.

    Since:
    :   1.5
  + ### EDITBAR

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") EDITBAR

    A role indicating the object acts as a formula for calculating a value.
    An example is a formula in a spreadsheet cell.

    Since:
    :   1.5
  + ### PROGRESS\_MONITOR

    public static final [AccessibleRole](AccessibleRole.md "class in javax.accessibility") PROGRESS\_MONITOR

    A role indicating the object monitors the progress of some operation.

    Since:
    :   1.5
* ## Constructor Details

  + ### AccessibleRole

    protected AccessibleRole([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Creates a new `AccessibleRole` using the given locale independent
    key. This should not be a public method. Instead, it is used to create
    the constants in this file to make it a strongly typed enumeration.
    Subclasses of this class should enforce similar policy.

    The key `String` should be a locale independent key for the role.
    It is not intended to be used as the actual `String` to display to
    the user. To get the localized string, use [`AccessibleBundle.toDisplayString()`](AccessibleBundle.md#toDisplayString()).

    Parameters:
    :   `key` - the locale independent name of the role

    See Also:
    :   - [`AccessibleBundle.toDisplayString(java.lang.String, java.util.Locale)`](AccessibleBundle.md#toDisplayString(java.lang.String,java.util.Locale))