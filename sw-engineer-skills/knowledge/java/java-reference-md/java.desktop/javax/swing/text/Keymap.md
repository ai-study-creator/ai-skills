Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface Keymap

---

public interface Keymap

A collection of bindings of KeyStrokes to actions. The
bindings are basically name-value pairs that potentially
resolve in a hierarchy.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addActionForKeyStroke(KeyStroke key,
  Action a)`

  Adds a binding to the keymap.

  `Action`

  `getAction(KeyStroke key)`

  Fetches the action appropriate for the given symbolic
  event sequence.

  `Action[]`

  `getBoundActions()`

  Fetches all of the actions defined in this keymap.

  `KeyStroke[]`

  `getBoundKeyStrokes()`

  Fetches all of the keystrokes in this map that
  are bound to some action.

  `Action`

  `getDefaultAction()`

  Fetches the default action to fire if a
  key is typed (i.e.

  `KeyStroke[]`

  `getKeyStrokesForAction(Action a)`

  Fetches the keystrokes that will result in
  the given action.

  `String`

  `getName()`

  Fetches the name of the set of key-bindings.

  `Keymap`

  `getResolveParent()`

  Fetches the parent keymap used to resolve key-bindings.

  `boolean`

  `isLocallyDefined(KeyStroke key)`

  Determines if the given key sequence is locally defined.

  `void`

  `removeBindings()`

  Removes all bindings from the keymap.

  `void`

  `removeKeyStrokeBinding(KeyStroke keys)`

  Removes a binding from the keymap.

  `void`

  `setDefaultAction(Action a)`

  Set the default action to fire if a key is typed.

  `void`

  `setResolveParent(Keymap parent)`

  Sets the parent keymap, which will be used to
  resolve key-bindings.

* ## Method Details

  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Fetches the name of the set of key-bindings.

    Returns:
    :   the name
  + ### getDefaultAction

    [Action](../Action.md "interface in javax.swing") getDefaultAction()

    Fetches the default action to fire if a
    key is typed (i.e. a KEY\_TYPED KeyEvent is received)
    and there is no binding for it. Typically this
    would be some action that inserts text so that
    the keymap doesn't require an action for each
    possible key.

    Returns:
    :   the default action
  + ### setDefaultAction

    void setDefaultAction([Action](../Action.md "interface in javax.swing") a)

    Set the default action to fire if a key is typed.

    Parameters:
    :   `a` - the action
  + ### getAction

    [Action](../Action.md "interface in javax.swing") getAction([KeyStroke](../KeyStroke.md "class in javax.swing") key)

    Fetches the action appropriate for the given symbolic
    event sequence. This is used by JTextController to
    determine how to interpret key sequences. If the
    binding is not resolved locally, an attempt is made
    to resolve through the parent keymap, if one is set.

    Parameters:
    :   `key` - the key sequence

    Returns:
    :   the action associated with the key
        sequence if one is defined, otherwise `null`
  + ### getBoundKeyStrokes

    [KeyStroke](../KeyStroke.md "class in javax.swing")[] getBoundKeyStrokes()

    Fetches all of the keystrokes in this map that
    are bound to some action.

    Returns:
    :   the list of keystrokes
  + ### getBoundActions

    [Action](../Action.md "interface in javax.swing")[] getBoundActions()

    Fetches all of the actions defined in this keymap.

    Returns:
    :   the list of actions
  + ### getKeyStrokesForAction

    [KeyStroke](../KeyStroke.md "class in javax.swing")[] getKeyStrokesForAction([Action](../Action.md "interface in javax.swing") a)

    Fetches the keystrokes that will result in
    the given action.

    Parameters:
    :   `a` - the action

    Returns:
    :   the list of keystrokes
  + ### isLocallyDefined

    boolean isLocallyDefined([KeyStroke](../KeyStroke.md "class in javax.swing") key)

    Determines if the given key sequence is locally defined.

    Parameters:
    :   `key` - the key sequence

    Returns:
    :   true if the key sequence is locally defined else false
  + ### addActionForKeyStroke

    void addActionForKeyStroke([KeyStroke](../KeyStroke.md "class in javax.swing") key,
    [Action](../Action.md "interface in javax.swing") a)

    Adds a binding to the keymap.

    Parameters:
    :   `key` - the key sequence
    :   `a` - the action
  + ### removeKeyStrokeBinding

    void removeKeyStrokeBinding([KeyStroke](../KeyStroke.md "class in javax.swing") keys)

    Removes a binding from the keymap.

    Parameters:
    :   `keys` - the key sequence
  + ### removeBindings

    void removeBindings()

    Removes all bindings from the keymap.
  + ### getResolveParent

    [Keymap](Keymap.md "interface in javax.swing.text") getResolveParent()

    Fetches the parent keymap used to resolve key-bindings.

    Returns:
    :   the keymap
  + ### setResolveParent

    void setResolveParent([Keymap](Keymap.md "interface in javax.swing.text") parent)

    Sets the parent keymap, which will be used to
    resolve key-bindings.
    The behavior is unspecified if a `Keymap` has itself
    as one of its resolve parents.

    Parameters:
    :   `parent` - the parent keymap