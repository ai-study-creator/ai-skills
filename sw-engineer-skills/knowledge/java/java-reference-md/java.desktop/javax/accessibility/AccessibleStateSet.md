Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleStateSet

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.accessibility.AccessibleStateSet

---

public class AccessibleStateSet
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Class `AccessibleStateSet` determines a component's state set. The
state set of a component is a set of `AccessibleState` objects and
descriptions. E.G., The current overall state of the object, such as whether
it is enabled, has focus, etc.

See Also:
:   * [`AccessibleState`](AccessibleState.md "class in javax.accessibility")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Vector<AccessibleState>`

  `states`

  Each entry in the `Vector` represents an `AccessibleState`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleStateSet()`

  Creates a new empty state set.

  `AccessibleStateSet(AccessibleState[] states)`

  Creates a new state with the initial set of states contained in the array
  of states passed in.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `add(AccessibleState state)`

  Adds a new state to the current state set if it is not already present.

  `void`

  `addAll(AccessibleState[] states)`

  Adds all of the states to the existing state set.

  `void`

  `clear()`

  Removes all the states from the current state set.

  `boolean`

  `contains(AccessibleState state)`

  Checks if the current state is in the state set.

  `boolean`

  `remove(AccessibleState state)`

  Removes a state from the current state set.

  `AccessibleState[]`

  `toArray()`

  Returns the current state set as an array of `AccessibleState`.

  `String`

  `toString()`

  Creates a localized string representing all the states in the set using
  the default locale.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### states

    protected [Vector](../../../java.base/java/util/Vector.md "class in java.util")<[AccessibleState](AccessibleState.md "class in javax.accessibility")> states

    Each entry in the `Vector` represents an `AccessibleState`.

    See Also:
    :   - [`add(javax.accessibility.AccessibleState)`](#add(javax.accessibility.AccessibleState))
        - [`addAll(javax.accessibility.AccessibleState[])`](#addAll(javax.accessibility.AccessibleState%5B%5D))
        - [`remove(javax.accessibility.AccessibleState)`](#remove(javax.accessibility.AccessibleState))
        - [`contains(javax.accessibility.AccessibleState)`](#contains(javax.accessibility.AccessibleState))
        - [`toArray()`](#toArray())
        - [`clear()`](#clear())
* ## Constructor Details

  + ### AccessibleStateSet

    public AccessibleStateSet()

    Creates a new empty state set.
  + ### AccessibleStateSet

    public AccessibleStateSet([AccessibleState](AccessibleState.md "class in javax.accessibility")[] states)

    Creates a new state with the initial set of states contained in the array
    of states passed in. Duplicate entries are ignored.

    Parameters:
    :   `states` - an array of `AccessibleState` describing the state
        set
* ## Method Details

  + ### add

    public boolean add([AccessibleState](AccessibleState.md "class in javax.accessibility") state)

    Adds a new state to the current state set if it is not already present.
    If the state is already in the state set, the state set is unchanged and
    the return value is `false`. Otherwise, the state is added to the
    state set and the return value is `true`.

    Parameters:
    :   `state` - the state to add to the state set

    Returns:
    :   `true` if state is added to the state set; `false` if
        the state set is unchanged
  + ### addAll

    public void addAll([AccessibleState](AccessibleState.md "class in javax.accessibility")[] states)

    Adds all of the states to the existing state set. Duplicate entries are
    ignored.

    Parameters:
    :   `states` - `AccessibleState` array describing the state set
  + ### remove

    public boolean remove([AccessibleState](AccessibleState.md "class in javax.accessibility") state)

    Removes a state from the current state set. If the state is not in the
    set, the state set will be unchanged and the return value will be
    `false`. If the state is in the state set, it will be removed from
    the set and the return value will be `true`.

    Parameters:
    :   `state` - the state to remove from the state set

    Returns:
    :   `true` if the state is in the state set; `false` if
        the state set will be unchanged
  + ### clear

    public void clear()

    Removes all the states from the current state set.
  + ### contains

    public boolean contains([AccessibleState](AccessibleState.md "class in javax.accessibility") state)

    Checks if the current state is in the state set.

    Parameters:
    :   `state` - the state

    Returns:
    :   `true` if the state is in the state set; otherwise
        `false`
  + ### toArray

    public [AccessibleState](AccessibleState.md "class in javax.accessibility")[] toArray()

    Returns the current state set as an array of `AccessibleState`.

    Returns:
    :   `AccessibleState` array containing the current state
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Creates a localized string representing all the states in the set using
    the default locale.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   comma separated localized string

    See Also:
    :   - [`AccessibleBundle.toDisplayString(java.lang.String, java.util.Locale)`](AccessibleBundle.md#toDisplayString(java.lang.String,java.util.Locale))