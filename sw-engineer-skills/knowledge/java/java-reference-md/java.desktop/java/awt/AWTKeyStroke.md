Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class AWTKeyStroke

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.AWTKeyStroke

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `KeyStroke`

---

public class AWTKeyStroke
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

An `AWTKeyStroke` represents a key action on the
keyboard, or equivalent input device. `AWTKeyStroke`s
can correspond to only a press or release of a
particular key, just as `KEY_PRESSED` and
`KEY_RELEASED KeyEvent`s do;
alternately, they can correspond to typing a specific Java character, just
as `KEY_TYPED KeyEvent`s do.
In all cases, `AWTKeyStroke`s can specify modifiers
(alt, shift, control, meta, altGraph, or a combination thereof) which must be present
during the action for an exact match.

`AWTKeyStrokes` are immutable, and are intended
to be unique. Client code should never create an
`AWTKeyStroke` on its own, but should instead use
a variant of `getAWTKeyStroke`. Client use of these factory
methods allows the `AWTKeyStroke` implementation
to cache and share instances efficiently.

Since:
:   1.4

See Also:
:   * [`getAWTKeyStroke(char)`](#getAWTKeyStroke(char))
    * [Serialized Form](../../../serialized-form.md#java.awt.AWTKeyStroke)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AWTKeyStroke()`

  Constructs an `AWTKeyStroke` with default values.

  `protected`

  `AWTKeyStroke(char keyChar,
  int keyCode,
  int modifiers,
  boolean onKeyRelease)`

  Constructs an `AWTKeyStroke` with the specified
  values.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object anObject)`

  Returns true if this object is identical to the specified object.

  `static AWTKeyStroke`

  `getAWTKeyStroke(char keyChar)`

  Returns a shared instance of an `AWTKeyStroke`
  that represents a `KEY_TYPED` event for the
  specified character.

  `static AWTKeyStroke`

  `getAWTKeyStroke(int keyCode,
  int modifiers)`

  Returns a shared instance of an `AWTKeyStroke`,
  given a numeric key code and a set of modifiers.

  `static AWTKeyStroke`

  `getAWTKeyStroke(int keyCode,
  int modifiers,
  boolean onKeyRelease)`

  Returns a shared instance of an `AWTKeyStroke`,
  given a numeric key code and a set of modifiers, specifying
  whether the key is activated when it is pressed or released.

  `static AWTKeyStroke`

  `getAWTKeyStroke(Character keyChar,
  int modifiers)`

  Returns a shared instance of an `AWTKeyStroke`
  that represents a `KEY_TYPED` event for the
  specified Character object and a set of modifiers.

  `static AWTKeyStroke`

  `getAWTKeyStroke(String s)`

  Parses a string and returns an `AWTKeyStroke`.

  `static AWTKeyStroke`

  `getAWTKeyStrokeForEvent(KeyEvent anEvent)`

  Returns an `AWTKeyStroke` which represents the
  stroke which generated a given `KeyEvent`.

  `final char`

  `getKeyChar()`

  Returns the character for this `AWTKeyStroke`.

  `final int`

  `getKeyCode()`

  Returns the numeric key code for this `AWTKeyStroke`.

  `final int`

  `getKeyEventType()`

  Returns the type of `KeyEvent` which corresponds to
  this `AWTKeyStroke`.

  `final int`

  `getModifiers()`

  Returns the modifier keys for this `AWTKeyStroke`.

  `int`

  `hashCode()`

  Returns a numeric value for this object that is likely to be unique,
  making it a good choice as the index value in a hash table.

  `final boolean`

  `isOnKeyRelease()`

  Returns whether this `AWTKeyStroke` represents a key release.

  `protected Object`

  `readResolve()`

  Returns a cached instance of `AWTKeyStroke` (or a subclass of
  `AWTKeyStroke`) which is equal to this instance.

  `protected static void`

  `registerSubclass(Class<?> subclass)`

  Deprecated.

  `String`

  `toString()`

  Returns a string that displays and identifies this object's properties.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AWTKeyStroke

    protected AWTKeyStroke()

    Constructs an `AWTKeyStroke` with default values.
    The default values used are:

    AWTKeyStroke default values

    | Property Default Value | |
    | --- | --- |
    | Key Char `KeyEvent.CHAR_UNDEFINED`| Key Code `KeyEvent.VK_UNDEFINED`| Modifiers none|  |  | | --- | --- | | On key release? `false` | | | | | | | |

    `AWTKeyStroke`s should not be constructed
    by client code. Use a variant of `getAWTKeyStroke`
    instead.

    See Also:
    :   - [`getAWTKeyStroke(char)`](#getAWTKeyStroke(char))
  + ### AWTKeyStroke

    protected AWTKeyStroke(char keyChar,
    int keyCode,
    int modifiers,
    boolean onKeyRelease)

    Constructs an `AWTKeyStroke` with the specified
    values. `AWTKeyStroke`s should not be constructed
    by client code. Use a variant of `getAWTKeyStroke`
    instead.

    Parameters:
    :   `keyChar` - the character value for a keyboard key
    :   `keyCode` - the key code for this `AWTKeyStroke`
    :   `modifiers` - a bitwise-ored combination of any modifiers
    :   `onKeyRelease` - `true` if this
        `AWTKeyStroke` corresponds
        to a key release; `false` otherwise

    See Also:
    :   - [`getAWTKeyStroke(char)`](#getAWTKeyStroke(char))
* ## Method Details

  + ### registerSubclass

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected static void registerSubclass([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> subclass)

    Deprecated.

    The method has no effect and is only left present to avoid introducing
    a binary incompatibility.

    Parameters:
    :   `subclass` - the new Class of which the factory methods should create
        instances
  + ### getAWTKeyStroke

    public static [AWTKeyStroke](AWTKeyStroke.md "class in java.awt") getAWTKeyStroke(char keyChar)

    Returns a shared instance of an `AWTKeyStroke`
    that represents a `KEY_TYPED` event for the
    specified character.

    Parameters:
    :   `keyChar` - the character value for a keyboard key

    Returns:
    :   an `AWTKeyStroke` object for that key
  + ### getAWTKeyStroke

    public static [AWTKeyStroke](AWTKeyStroke.md "class in java.awt") getAWTKeyStroke([Character](../../../java.base/java/lang/Character.md "class in java.lang") keyChar,
    int modifiers)

    Returns a shared instance of an `AWTKeyStroke`
    that represents a `KEY_TYPED` event for the
    specified Character object and a set of modifiers. Note
    that the first parameter is of type Character rather than
    char. This is to avoid inadvertent clashes with
    calls to `getAWTKeyStroke(int keyCode, int modifiers)`.
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
    :   an `AWTKeyStroke` object for that key

    Throws:
    :   `IllegalArgumentException` - if `keyChar` is
        `null`

    See Also:
    :   - [`InputEvent`](event/InputEvent.md "class in java.awt.event")
  + ### getAWTKeyStroke

    public static [AWTKeyStroke](AWTKeyStroke.md "class in java.awt") getAWTKeyStroke(int keyCode,
    int modifiers,
    boolean onKeyRelease)

    Returns a shared instance of an `AWTKeyStroke`,
    given a numeric key code and a set of modifiers, specifying
    whether the key is activated when it is pressed or released.

    The "virtual key" constants defined in
    `java.awt.event.KeyEvent` can be
    used to specify the key code. For example:
    - `java.awt.event.KeyEvent.VK_ENTER`- `java.awt.event.KeyEvent.VK_TAB`- `java.awt.event.KeyEvent.VK_SPACE`Alternatively, the key code may be obtained by calling
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
    :   `onKeyRelease` - `true` if the `AWTKeyStroke`
        should represent a key release; `false` otherwise

    Returns:
    :   an AWTKeyStroke object for that key

    See Also:
    :   - [`KeyEvent`](event/KeyEvent.md "class in java.awt.event")
        - [`InputEvent`](event/InputEvent.md "class in java.awt.event")
  + ### getAWTKeyStroke

    public static [AWTKeyStroke](AWTKeyStroke.md "class in java.awt") getAWTKeyStroke(int keyCode,
    int modifiers)

    Returns a shared instance of an `AWTKeyStroke`,
    given a numeric key code and a set of modifiers. The returned
    `AWTKeyStroke` will correspond to a key press.

    The "virtual key" constants defined in
    `java.awt.event.KeyEvent` can be
    used to specify the key code. For example:
    - `java.awt.event.KeyEvent.VK_ENTER`- `java.awt.event.KeyEvent.VK_TAB`- `java.awt.event.KeyEvent.VK_SPACE`The modifiers consist of any combination of:
    - java.awt.event.InputEvent.SHIFT\_DOWN\_MASK- java.awt.event.InputEvent.CTRL\_DOWN\_MASK- java.awt.event.InputEvent.META\_DOWN\_MASK- java.awt.event.InputEvent.ALT\_DOWN\_MASK- java.awt.event.InputEvent.ALT\_GRAPH\_DOWN\_MASKThe old modifiers
    - java.awt.event.InputEvent.SHIFT\_MASK- java.awt.event.InputEvent.CTRL\_MASK- java.awt.event.InputEvent.META\_MASK- java.awt.event.InputEvent.ALT\_MASK- java.awt.event.InputEvent.ALT\_GRAPH\_MASKalso can be used, but they are mapped to \_DOWN\_ modifiers.
    Since these numbers are all different powers of two, any combination of
    them is an integer in which each bit represents a different modifier
    key. Use 0 to specify no modifiers.

    Parameters:
    :   `keyCode` - an int specifying the numeric code for a keyboard key
    :   `modifiers` - a bitwise-ored combination of any modifiers

    Returns:
    :   an `AWTKeyStroke` object for that key

    See Also:
    :   - [`KeyEvent`](event/KeyEvent.md "class in java.awt.event")
        - [`InputEvent`](event/InputEvent.md "class in java.awt.event")
  + ### getAWTKeyStrokeForEvent

    public static [AWTKeyStroke](AWTKeyStroke.md "class in java.awt") getAWTKeyStrokeForEvent([KeyEvent](event/KeyEvent.md "class in java.awt.event") anEvent)

    Returns an `AWTKeyStroke` which represents the
    stroke which generated a given `KeyEvent`.

    This method obtains the keyChar from a `KeyTyped`
    event, and the keyCode from a `KeyPressed` or
    `KeyReleased` event. The `KeyEvent` modifiers are
    obtained for all three types of `KeyEvent`.

    Parameters:
    :   `anEvent` - the `KeyEvent` from which to
        obtain the `AWTKeyStroke`

    Returns:
    :   the `AWTKeyStroke` that precipitated the event

    Throws:
    :   `NullPointerException` - if `anEvent` is null
  + ### getAWTKeyStroke

    public static [AWTKeyStroke](AWTKeyStroke.md "class in java.awt") getAWTKeyStroke([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Parses a string and returns an `AWTKeyStroke`.
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
         "INSERT" => getAWTKeyStroke(KeyEvent.VK_INSERT, 0);
         "control DELETE" => getAWTKeyStroke(KeyEvent.VK_DELETE, InputEvent.CTRL_MASK);
         "alt shift X" => getAWTKeyStroke(KeyEvent.VK_X, InputEvent.ALT_MASK | InputEvent.SHIFT_MASK);
         "alt shift released X" => getAWTKeyStroke(KeyEvent.VK_X, InputEvent.ALT_MASK | InputEvent.SHIFT_MASK, true);
         "typed a" => getAWTKeyStroke('a');
    ```

    Parameters:
    :   `s` - a String formatted as described above

    Returns:
    :   an `AWTKeyStroke` object for that String

    Throws:
    :   `IllegalArgumentException` - if `s` is `null`,
        or is formatted incorrectly
  + ### getKeyChar

    public final char getKeyChar()

    Returns the character for this `AWTKeyStroke`.

    Returns:
    :   a char value

    See Also:
    :   - [`getAWTKeyStroke(char)`](#getAWTKeyStroke(char))
        - [`KeyEvent.getKeyChar()`](event/KeyEvent.md#getKeyChar())
  + ### getKeyCode

    public final int getKeyCode()

    Returns the numeric key code for this `AWTKeyStroke`.

    Returns:
    :   an int containing the key code value

    See Also:
    :   - [`getAWTKeyStroke(int,int)`](#getAWTKeyStroke(int,int))
        - [`KeyEvent.getKeyCode()`](event/KeyEvent.md#getKeyCode())
  + ### getModifiers

    public final int getModifiers()

    Returns the modifier keys for this `AWTKeyStroke`.

    Returns:
    :   an int containing the modifiers

    See Also:
    :   - [`getAWTKeyStroke(int,int)`](#getAWTKeyStroke(int,int))
  + ### isOnKeyRelease

    public final boolean isOnKeyRelease()

    Returns whether this `AWTKeyStroke` represents a key release.

    Returns:
    :   `true` if this `AWTKeyStroke`
        represents a key release; `false` otherwise

    See Also:
    :   - [`getAWTKeyStroke(int,int,boolean)`](#getAWTKeyStroke(int,int,boolean))
  + ### getKeyEventType

    public final int getKeyEventType()

    Returns the type of `KeyEvent` which corresponds to
    this `AWTKeyStroke`.

    Returns:
    :   `KeyEvent.KEY_PRESSED`,
        `KeyEvent.KEY_TYPED`,
        or `KeyEvent.KEY_RELEASED`

    See Also:
    :   - [`KeyEvent`](event/KeyEvent.md "class in java.awt.event")
  + ### hashCode

    public int hashCode()

    Returns a numeric value for this object that is likely to be unique,
    making it a good choice as the index value in a hash table.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   an int that represents this object

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public final boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") anObject)

    Returns true if this object is identical to the specified object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `anObject` - the Object to compare this object to

    Returns:
    :   true if the objects are identical

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string that displays and identifies this object's properties.
    The `String` returned by this method can be passed
    as a parameter to `getAWTKeyStroke(String)` to produce
    a key stroke equal to this key stroke.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a String representation of this object

    See Also:
    :   - [`getAWTKeyStroke(String)`](#getAWTKeyStroke(java.lang.String))
  + ### readResolve

    protected [Object](../../../java.base/java/lang/Object.md "class in java.lang") readResolve()
    throws [ObjectStreamException](../../../java.base/java/io/ObjectStreamException.md "class in java.io")

    Returns a cached instance of `AWTKeyStroke` (or a subclass of
    `AWTKeyStroke`) which is equal to this instance.

    Returns:
    :   a cached instance which is equal to this instance

    Throws:
    :   `ObjectStreamException` - if a serialization problem occurs