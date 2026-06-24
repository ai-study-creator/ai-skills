Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class MenuKeyEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

[java.awt.event.ComponentEvent](../../../java/awt/event/ComponentEvent.md "class in java.awt.event")

[java.awt.event.InputEvent](../../../java/awt/event/InputEvent.md "class in java.awt.event")

[java.awt.event.KeyEvent](../../../java/awt/event/KeyEvent.md "class in java.awt.event")

javax.swing.event.MenuKeyEvent

All Implemented Interfaces:
:   `Serializable`

---

public class MenuKeyEvent
extends [KeyEvent](../../../java/awt/event/KeyEvent.md "class in java.awt.event")

MenuKeyEvent is used to notify interested parties that
the menu element has received a KeyEvent forwarded to it
in a menu tree.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  ### Fields inherited from class java.awt.event.[KeyEvent](../../../java/awt/event/KeyEvent.md "class in java.awt.event")

  `CHAR_UNDEFINED, KEY_FIRST, KEY_LAST, KEY_LOCATION_LEFT, KEY_LOCATION_NUMPAD, KEY_LOCATION_RIGHT, KEY_LOCATION_STANDARD, KEY_LOCATION_UNKNOWN, KEY_PRESSED, KEY_RELEASED, KEY_TYPED, VK_0, VK_1, VK_2, VK_3, VK_4, VK_5, VK_6, VK_7, VK_8, VK_9, VK_A, VK_ACCEPT, VK_ADD, VK_AGAIN, VK_ALL_CANDIDATES, VK_ALPHANUMERIC, VK_ALT, VK_ALT_GRAPH, VK_AMPERSAND, VK_ASTERISK, VK_AT, VK_B, VK_BACK_QUOTE, VK_BACK_SLASH, VK_BACK_SPACE, VK_BEGIN, VK_BRACELEFT, VK_BRACERIGHT, VK_C, VK_CANCEL, VK_CAPS_LOCK, VK_CIRCUMFLEX, VK_CLEAR, VK_CLOSE_BRACKET, VK_CODE_INPUT, VK_COLON, VK_COMMA, VK_COMPOSE, VK_CONTEXT_MENU, VK_CONTROL, VK_CONVERT, VK_COPY, VK_CUT, VK_D, VK_DEAD_ABOVEDOT, VK_DEAD_ABOVERING, VK_DEAD_ACUTE, VK_DEAD_BREVE, VK_DEAD_CARON, VK_DEAD_CEDILLA, VK_DEAD_CIRCUMFLEX, VK_DEAD_DIAERESIS, VK_DEAD_DOUBLEACUTE, VK_DEAD_GRAVE, VK_DEAD_IOTA, VK_DEAD_MACRON, VK_DEAD_OGONEK, VK_DEAD_SEMIVOICED_SOUND, VK_DEAD_TILDE, VK_DEAD_VOICED_SOUND, VK_DECIMAL, VK_DELETE, VK_DIVIDE, VK_DOLLAR, VK_DOWN, VK_E, VK_END, VK_ENTER, VK_EQUALS, VK_ESCAPE, VK_EURO_SIGN, VK_EXCLAMATION_MARK, VK_F, VK_F1, VK_F10, VK_F11, VK_F12, VK_F13, VK_F14, VK_F15, VK_F16, VK_F17, VK_F18, VK_F19, VK_F2, VK_F20, VK_F21, VK_F22, VK_F23, VK_F24, VK_F3, VK_F4, VK_F5, VK_F6, VK_F7, VK_F8, VK_F9, VK_FINAL, VK_FIND, VK_FULL_WIDTH, VK_G, VK_GREATER, VK_H, VK_HALF_WIDTH, VK_HELP, VK_HIRAGANA, VK_HOME, VK_I, VK_INPUT_METHOD_ON_OFF, VK_INSERT, VK_INVERTED_EXCLAMATION_MARK, VK_J, VK_JAPANESE_HIRAGANA, VK_JAPANESE_KATAKANA, VK_JAPANESE_ROMAN, VK_K, VK_KANA, VK_KANA_LOCK, VK_KANJI, VK_KATAKANA, VK_KP_DOWN, VK_KP_LEFT, VK_KP_RIGHT, VK_KP_UP, VK_L, VK_LEFT, VK_LEFT_PARENTHESIS, VK_LESS, VK_M, VK_META, VK_MINUS, VK_MODECHANGE, VK_MULTIPLY, VK_N, VK_NONCONVERT, VK_NUM_LOCK, VK_NUMBER_SIGN, VK_NUMPAD0, VK_NUMPAD1, VK_NUMPAD2, VK_NUMPAD3, VK_NUMPAD4, VK_NUMPAD5, VK_NUMPAD6, VK_NUMPAD7, VK_NUMPAD8, VK_NUMPAD9, VK_O, VK_OPEN_BRACKET, VK_P, VK_PAGE_DOWN, VK_PAGE_UP, VK_PASTE, VK_PAUSE, VK_PERIOD, VK_PLUS, VK_PREVIOUS_CANDIDATE, VK_PRINTSCREEN, VK_PROPS, VK_Q, VK_QUOTE, VK_QUOTEDBL, VK_R, VK_RIGHT, VK_RIGHT_PARENTHESIS, VK_ROMAN_CHARACTERS, VK_S, VK_SCROLL_LOCK, VK_SEMICOLON, VK_SEPARATER, VK_SEPARATOR, VK_SHIFT, VK_SLASH, VK_SPACE, VK_STOP, VK_SUBTRACT, VK_T, VK_TAB, VK_U, VK_UNDEFINED, VK_UNDERSCORE, VK_UNDO, VK_UP, VK_V, VK_W, VK_WINDOWS, VK_X, VK_Y, VK_Z`

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

  `MenuKeyEvent(Component source,
  int id,
  long when,
  int modifiers,
  int keyCode,
  char keyChar,
  MenuElement[] p,
  MenuSelectionManager m)`

  Constructs a MenuKeyEvent object.
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

  Returns the path to the menu item referenced by this event.

  ### Methods inherited from class java.awt.event.[KeyEvent](../../../java/awt/event/KeyEvent.md "class in java.awt.event")

  `getExtendedKeyCode, getExtendedKeyCodeForChar, getKeyChar, getKeyCode, getKeyLocation, getKeyModifiersText, getKeyText, isActionKey, paramString, setKeyChar, setKeyCode, setModifiers`

  ### Methods inherited from class java.awt.event.[InputEvent](../../../java/awt/event/InputEvent.md "class in java.awt.event")

  `consume, getMaskForButton, getModifiers, getModifiersEx, getModifiersExText, getWhen, isAltDown, isAltGraphDown, isConsumed, isControlDown, isMetaDown, isShiftDown`

  ### Methods inherited from class java.awt.event.[ComponentEvent](../../../java/awt/event/ComponentEvent.md "class in java.awt.event")

  `getComponent`

  ### Methods inherited from class java.awt.[AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

  `getID, setSource, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MenuKeyEvent

    public MenuKeyEvent([Component](../../../java/awt/Component.md "class in java.awt") source,
    int id,
    long when,
    int modifiers,
    int keyCode,
    char keyChar,
    [MenuElement](../MenuElement.md "interface in javax.swing")[] p,
    [MenuSelectionManager](../MenuSelectionManager.md "class in javax.swing") m)

    Constructs a MenuKeyEvent object.

    Parameters:
    :   `source` - the Component that originated the event
        (typically `this`)
    :   `id` - an int specifying the type of event, as defined
        in [`KeyEvent`](../../../java/awt/event/KeyEvent.md "class in java.awt.event")
    :   `when` - a long identifying the time the event occurred
    :   `modifiers` - an int specifying any modifier keys held down,
        as specified in [`InputEvent`](../../../java/awt/event/InputEvent.md "class in java.awt.event")
    :   `keyCode` - an int specifying the specific key that was pressed
    :   `keyChar` - a char specifying the key's character value, if any
        -- null if the key has no character value
    :   `p` - an array of MenuElement objects specifying a path
        to a menu item affected by the drag
    :   `m` - a MenuSelectionManager object that handles selections
* ## Method Details

  + ### getPath

    public [MenuElement](../MenuElement.md "interface in javax.swing")[] getPath()

    Returns the path to the menu item referenced by this event.

    Returns:
    :   an array of MenuElement objects representing the path value
  + ### getMenuSelectionManager

    public [MenuSelectionManager](../MenuSelectionManager.md "class in javax.swing") getMenuSelectionManager()

    Returns the current menu selection manager.

    Returns:
    :   a MenuSelectionManager object