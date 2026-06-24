Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class KeyStroke

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.AWTKeyStroke](../../java/awt/AWTKeyStroke.md "class in java.awt")

javax.swing.KeyStroke

All Implemented Interfaces:
:   `Serializable`

---

public class KeyStroke
extends [AWTKeyStroke](../../java/awt/AWTKeyStroke.md "class in java.awt")

A KeyStroke represents a key action on the keyboard, or equivalent input
device. KeyStrokes can correspond to only a press or release of a particular
key, just as KEY\_PRESSED and KEY\_RELEASED KeyEvents do; alternately, they
can correspond to typing a specific Java character, just as KEY\_TYPED
KeyEvents do. In all cases, KeyStrokes can specify modifiers (alt, shift,
control, meta, altGraph, or a combination thereof) which must be present during the
action for an exact match.

KeyStrokes are used to define high-level (semantic) action events. Instead
of trapping every keystroke and throwing away the ones you are not
interested in, those keystrokes you care about automatically initiate
actions on the Components with which they are registered.

KeyStrokes are immutable, and are intended to be unique. Client code cannot
create a KeyStroke; a variant of `getKeyStroke` must be used
instead. These factory methods allow the KeyStroke implementation to cache
and share instances efficiently.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

See Also:
:   * [`Keymap`](text/Keymap.md "interface in javax.swing.text")
    * [`getKeyStroke(char)`](#getKeyStroke(char))

* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static KeyStroke`

  `getKeyStroke(char keyChar)`

  Returns a shared instance of a `KeyStroke`
  that represents a `KEY_TYPED` event for the
  specified character.

  `static KeyStroke`

  `getKeyStroke(char keyChar,
  boolean onKeyRelease)`

  Deprecated.

  use getKeyStroke(char)

  `static KeyStroke`

  `getKeyStroke(int keyCode,
  int modifiers)`

  Returns a shared instance of a KeyStroke, given a numeric key code and a
  set of modifiers.

  `static KeyStroke`

  `getKeyStroke(int keyCode,
  int modifiers,
  boolean onKeyRelease)`

  Returns a shared instance of a KeyStroke, given a numeric key code and a
  set of modifiers, specifying whether the key is activated when it is
  pressed or released.

  `static KeyStroke`

  `getKeyStroke(Character keyChar,
  int modifiers)`

  Returns a shared instance of a `KeyStroke`
  that represents a `KEY_TYPED` event for the
  specified Character object and a
  set of modifiers.

  `static KeyStroke`

  `getKeyStroke(String s)`

  Parses a string and returns a `KeyStroke`.

  `static KeyStroke`

  `getKeyStrokeForEvent(KeyEvent anEvent)`

  Returns a KeyStroke which represents the stroke which generated a given
  KeyEvent.

  ### Methods inherited from class java.awt.[AWTKeyStroke](../../java/awt/AWTKeyStroke.md "class in java.awt")

  `equals, getAWTKeyStroke, getAWTKeyStroke, getAWTKeyStroke, getAWTKeyStroke, getAWTKeyStroke, getAWTKeyStrokeForEvent, getKeyChar, getKeyCode, getKeyEventType, getModifiers, hashCode, isOnKeyRelease, readResolve, registerSubclass, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getKeyStroke

    public static [KeyStroke](KeyStroke.md "class in javax.swing") getKeyStroke(char keyChar)

    Returns a shared instance of a `KeyStroke`
    that represents a `KEY_TYPED` event for the
    specified character.

    Parameters:
    :   `keyChar` - the character value for a keyboard key

    Returns:
    :   a KeyStroke object for that key
  + ### getKeyStroke

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static [KeyStroke](KeyStroke.md "class in javax.swing") getKeyStroke(char keyChar,
    boolean onKeyRelease)

    Deprecated.

    use getKeyStroke(char)

    Returns an instance of a KeyStroke, specifying whether the key is
    considered to be activated when it is pressed or released. Unlike all
    other factory methods in this class, the instances returned by this
    method are not necessarily cached or shared.

    Parameters:
    :   `keyChar` - the character value for a keyboard key
    :   `onKeyRelease` - `true` if this KeyStroke corresponds to a
        key release; `false` otherwise.

    Returns:
    :   a KeyStroke object for that key
  + ### getKeyStroke

    public static [KeyStroke](KeyStroke.md "class in javax.swing") getKeyStroke([Character](../../../java.base/java/lang/Character.md "class in java.lang") keyChar,
    int modifiers)

    Returns a shared instance of a `KeyStroke`
    that represents a `KEY_TYPED` event for the
    specified Character object and a
    set of modifiers. Note that the first parameter is of type Character
    rather than char. This is to avoid inadvertent clashes with calls to
    `getKeyStroke(int keyCode, int modifiers)`.
    The modifiers consist of any combination of following:
    - java.awt.event.InputEvent.SHIFT\_DOWN\_MASK- java.awt.event.InputEvent.CTRL\_DOWN\_MASK- java.awt.event.InputEvent.META\_DOWN\_MASK- java.awt.event.InputEvent.ALT\_DOWN\_MASK- java.awt.event.InputEvent.ALT\_GRAPH\_DOWN\_MASKThe old modifiers listed below also can be used, but they are
    mapped to \_DOWN\_ modifiers.
    - java.awt.event.InputEvent.SHIFT\_MASK- java.awt.event.InputEvent.CTRL\_MASK- java.awt.event.InputEvent.META\_MASK- java.awt.event.InputEvent.ALT\_MASK- java.awt.event.InputEvent.ALT\_GRAPH\_MASKalso can be used, but they are mapped to \_DOWN\_ modifiers.
    Since these numbers are all different powers of two, any combination of
    them is an integer in which each bit represents a different modifier
    key. Use 0 to specify no modifiers.

    Parameters:
    :   `keyChar` - the Character object for a keyboard character
    :   `modifiers` - a bitwise-ored combination of any modifiers

    Returns:
    :   an KeyStroke object for that key

    Throws:
    :   `IllegalArgumentException` - if keyChar is null

    Since:
    :   1.3

    See Also:
    :   - [`InputEvent`](../../java/awt/event/InputEvent.md "class in java.awt.event")
  + ### getKeyStroke

    public static [KeyStroke](KeyStroke.md "class in javax.swing") getKeyStroke(int keyCode,
    int modifiers,
    boolean onKeyRelease)

    Returns a shared instance of a KeyStroke, given a numeric key code and a
    set of modifiers, specifying whether the key is activated when it is
    pressed or released.

    The "virtual key" constants defined in java.awt.event.KeyEvent can be
    used to specify the key code. For example:
    - java.awt.event.KeyEvent.VK\_ENTER- java.awt.event.KeyEvent.VK\_TAB- java.awt.event.KeyEvent.VK\_SPACEAlternatively, the key code may be obtained by calling
    `java.awt.event.KeyEvent.getExtendedKeyCodeForChar`.
    The modifiers consist of any combination of:
    - java.awt.event.InputEvent.SHIFT\_DOWN\_MASK- java.awt.event.InputEvent.CTRL\_DOWN\_MASK- java.awt.event.InputEvent.META\_DOWN\_MASK- java.awt.event.InputEvent.ALT\_DOWN\_MASK- java.awt.event.InputEvent.ALT\_GRAPH\_DOWN\_MASKThe old modifiers
    - java.awt.event.InputEvent.SHIFT\_MASK- java.awt.event.InputEvent.CTRL\_MASK- java.awt.event.InputEvent.META\_MASK- java.awt.event.InputEvent.ALT\_MASK- java.awt.event.InputEvent.ALT\_GRAPH\_MASKalso can be used, but they are mapped to \_DOWN\_ modifiers.
    Since these numbers are all different powers of two, any combination of
    them is an integer in which each bit represents a different modifier
    key. Use 0 to specify no modifiers.

    Parameters:
    :   `keyCode` - an int specifying the numeric code for a keyboard key
    :   `modifiers` - a bitwise-ored combination of any modifiers
    :   `onKeyRelease` - `true` if the KeyStroke should represent
        a key release; `false` otherwise.

    Returns:
    :   a KeyStroke object for that key

    See Also:
    :   - [`KeyEvent`](../../java/awt/event/KeyEvent.md "class in java.awt.event")
        - [`InputEvent`](../../java/awt/event/InputEvent.md "class in java.awt.event")
  + ### getKeyStroke

    public static [KeyStroke](KeyStroke.md "class in javax.swing") getKeyStroke(int keyCode,
    int modifiers)

    Returns a shared instance of a KeyStroke, given a numeric key code and a
    set of modifiers. The returned KeyStroke will correspond to a key press.

    The "virtual key" constants defined in java.awt.event.KeyEvent can be
    used to specify the key code. For example:
    - java.awt.event.KeyEvent.VK\_ENTER- java.awt.event.KeyEvent.VK\_TAB- java.awt.event.KeyEvent.VK\_SPACEAlternatively, the key code may be obtained by calling
    `java.awt.event.KeyEvent.getExtendedKeyCodeForChar`.
    The modifiers consist of any combination of:
    - java.awt.event.InputEvent.SHIFT\_DOWN\_MASK- java.awt.event.InputEvent.CTRL\_DOWN\_MASK- java.awt.event.InputEvent.META\_DOWN\_MASK- java.awt.event.InputEvent.ALT\_DOWN\_MASK- java.awt.event.InputEvent.ALT\_GRAPH\_DOWN\_MASKThe old modifiers
    - java.awt.event.InputEvent.SHIFT\_MASK- java.awt.event.InputEvent.CTRL\_MASK- java.awt.event.InputEvent.META\_MASK- java.awt.event.InputEvent.ALT\_MASK- java.awt.event.InputEvent.ALT\_GRAPH\_MASKalso can be used, but they are mapped to \_DOWN\_ modifiers.
    Since these numbers are all different powers of two, any combination of
    them is an integer in which each bit represents a different modifier
    key. Use 0 to specify no modifiers.

    Parameters:
    :   `keyCode` - an int specifying the numeric code for a keyboard key
    :   `modifiers` - a bitwise-ored combination of any modifiers

    Returns:
    :   a KeyStroke object for that key

    See Also:
    :   - [`KeyEvent`](../../java/awt/event/KeyEvent.md "class in java.awt.event")
        - [`InputEvent`](../../java/awt/event/InputEvent.md "class in java.awt.event")
  + ### getKeyStrokeForEvent

    public static [KeyStroke](KeyStroke.md "class in javax.swing") getKeyStrokeForEvent([KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") anEvent)

    Returns a KeyStroke which represents the stroke which generated a given
    KeyEvent.

    This method obtains the keyChar from a KeyTyped event, and the keyCode
    from a KeyPressed or KeyReleased event. The KeyEvent modifiers are
    obtained for all three types of KeyEvent.

    Parameters:
    :   `anEvent` - the KeyEvent from which to obtain the KeyStroke

    Returns:
    :   the KeyStroke that precipitated the event

    Throws:
    :   `NullPointerException` - if `anEvent` is null
  + ### getKeyStroke

    public static [KeyStroke](KeyStroke.md "class in javax.swing") getKeyStroke([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Parses a string and returns a `KeyStroke`.
    The string must have the following syntax:

    ```
        <modifiers>* (<typedID> | <pressedReleasedID>)

        modifiers := shift | control | ctrl | meta | alt | altGraph
        typedID := typed <typedKey>
        typedKey := string of length 1 giving Unicode character.
        pressedReleasedID := (pressed | released) key
        key := KeyEvent key code name, i.e. the name following "VK_".
    ```

    If typed, pressed or released is not specified, pressed is assumed. Here
    are some examples:

    ```
         "INSERT" => getKeyStroke(KeyEvent.VK_INSERT, 0);
         "control DELETE" => getKeyStroke(KeyEvent.VK_DELETE, InputEvent.CTRL_MASK);
         "alt shift X" => getKeyStroke(KeyEvent.VK_X, InputEvent.ALT_MASK | InputEvent.SHIFT_MASK);
         "alt shift released X" => getKeyStroke(KeyEvent.VK_X, InputEvent.ALT_MASK | InputEvent.SHIFT_MASK, true);
         "typed a" => getKeyStroke('a');
    ```

    In order to maintain backward-compatibility, specifying a null String,
    or a String which is formatted incorrectly, returns null.

    Parameters:
    :   `s` - a String formatted as described above

    Returns:
    :   a KeyStroke object for that String, or null if the specified
        String is null, or is formatted incorrectly

    See Also:
    :   - [`KeyEvent`](../../java/awt/event/KeyEvent.md "class in java.awt.event")