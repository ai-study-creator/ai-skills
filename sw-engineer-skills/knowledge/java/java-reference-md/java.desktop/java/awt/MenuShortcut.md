Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class MenuShortcut

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.MenuShortcut

All Implemented Interfaces:
:   `Serializable`

---

public class MenuShortcut
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The `MenuShortcut` class represents a keyboard accelerator
for a MenuItem.

Menu shortcuts are created using virtual keycodes, not characters.
For example, a menu shortcut for Ctrl-a (assuming that Control is
the accelerator key) would be created with code like the following:

`MenuShortcut ms = new MenuShortcut(KeyEvent.VK_A, false);`

or alternatively

`MenuShortcut ms = new MenuShortcut(KeyEvent.getExtendedKeyCodeForChar('A'), false);`

Menu shortcuts may also be constructed for a wider set of keycodes
using the `java.awt.event.KeyEvent.getExtendedKeyCodeForChar` call.
For example, a menu shortcut for "Ctrl+cyrillic ef" is created by

`MenuShortcut ms = new MenuShortcut(KeyEvent.getExtendedKeyCodeForChar('ф'), false);`

Note that shortcuts created with a keycode or an extended keycode defined as a constant in `KeyEvent`
work regardless of the current keyboard layout. However, a shortcut made of
an extended keycode not listed in `KeyEvent`
only work if the current keyboard layout produces a corresponding letter.

The accelerator key is platform-dependent and may be obtained
via [`Toolkit.getMenuShortcutKeyMaskEx()`](Toolkit.md#getMenuShortcutKeyMaskEx()).

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.MenuShortcut)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MenuShortcut(int key)`

  Constructs a new MenuShortcut for the specified virtual keycode.

  `MenuShortcut(int key,
  boolean useShiftModifier)`

  Constructs a new MenuShortcut for the specified virtual keycode.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(MenuShortcut s)`

  Returns whether this MenuShortcut is the same as another:
  equality is defined to mean that both MenuShortcuts use the same key
  and both either use or don't use the SHIFT key.

  `boolean`

  `equals(Object obj)`

  Returns whether this MenuShortcut is the same as another:
  equality is defined to mean that both MenuShortcuts use the same key
  and both either use or don't use the SHIFT key.

  `int`

  `getKey()`

  Returns the raw keycode of this MenuShortcut.

  `int`

  `hashCode()`

  Returns the hashcode for this MenuShortcut.

  `protected String`

  `paramString()`

  Returns the parameter string representing the state of this
  MenuShortcut.

  `String`

  `toString()`

  Returns an internationalized description of the MenuShortcut.

  `boolean`

  `usesShiftModifier()`

  Returns whether this MenuShortcut must be invoked using the SHIFT key.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MenuShortcut

    public MenuShortcut(int key)

    Constructs a new MenuShortcut for the specified virtual keycode.

    Parameters:
    :   `key` - the raw keycode for this MenuShortcut, as would be returned
        in the keyCode field of a [`KeyEvent`](event/KeyEvent.md "class in java.awt.event") if
        this key were pressed.

    See Also:
    :   - [`KeyEvent`](event/KeyEvent.md "class in java.awt.event")
  + ### MenuShortcut

    public MenuShortcut(int key,
    boolean useShiftModifier)

    Constructs a new MenuShortcut for the specified virtual keycode.

    Parameters:
    :   `key` - the raw keycode for this MenuShortcut, as would be returned
        in the keyCode field of a [`KeyEvent`](event/KeyEvent.md "class in java.awt.event") if
        this key were pressed.
    :   `useShiftModifier` - indicates whether this MenuShortcut is invoked
        with the SHIFT key down.

    See Also:
    :   - [`KeyEvent`](event/KeyEvent.md "class in java.awt.event")
* ## Method Details

  + ### getKey

    public int getKey()

    Returns the raw keycode of this MenuShortcut.

    Returns:
    :   the raw keycode of this MenuShortcut.

    Since:
    :   1.1

    See Also:
    :   - [`KeyEvent`](event/KeyEvent.md "class in java.awt.event")
  + ### usesShiftModifier

    public boolean usesShiftModifier()

    Returns whether this MenuShortcut must be invoked using the SHIFT key.

    Returns:
    :   `true` if this MenuShortcut must be invoked using the
        SHIFT key, `false` otherwise.

    Since:
    :   1.1
  + ### equals

    public boolean equals([MenuShortcut](MenuShortcut.md "class in java.awt") s)

    Returns whether this MenuShortcut is the same as another:
    equality is defined to mean that both MenuShortcuts use the same key
    and both either use or don't use the SHIFT key.

    Parameters:
    :   `s` - the MenuShortcut to compare with this.

    Returns:
    :   `true` if this MenuShortcut is the same as another,
        `false` otherwise.

    Since:
    :   1.1
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Returns whether this MenuShortcut is the same as another:
    equality is defined to mean that both MenuShortcuts use the same key
    and both either use or don't use the SHIFT key.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the Object to compare with this.

    Returns:
    :   `true` if this MenuShortcut is the same as another,
        `false` otherwise.

    Since:
    :   1.2

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hashcode for this MenuShortcut.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hashcode for this MenuShortcut.

    Since:
    :   1.2

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns an internationalized description of the MenuShortcut.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this MenuShortcut.

    Since:
    :   1.1
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns the parameter string representing the state of this
    MenuShortcut. This string is useful for debugging.

    Returns:
    :   the parameter string of this MenuShortcut.

    Since:
    :   1.1