Module [java.desktop](../../../module-summary.md)

Package [javax.swing.undo](package-summary.md)

# Interface StateEditable

---

public interface StateEditable

StateEditable defines the interface for objects that can have
their state undone/redone by a StateEdit.

See Also:
:   * [`StateEdit`](StateEdit.md "class in javax.swing.undo")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `RCSID`

  Resource ID for this class.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `restoreState(Hashtable<?,?> state)`

  Upon receiving this message the receiver should extract any relevant
  state out of *state*.

  `void`

  `storeState(Hashtable<Object,Object> state)`

  Upon receiving this message the receiver should place any relevant
  state into *state*.

* ## Field Details

  + ### RCSID

    static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RCSID

    Resource ID for this class.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.undo.StateEditable.RCSID)
* ## Method Details

  + ### storeState

    void storeState([Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang"),[Object](../../../../java.base/java/lang/Object.md "class in java.lang")> state)

    Upon receiving this message the receiver should place any relevant
    state into *state*.

    Parameters:
    :   `state` - Hashtable object to store the state
  + ### restoreState

    void restoreState([Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> state)

    Upon receiving this message the receiver should extract any relevant
    state out of *state*.

    Parameters:
    :   `state` - Hashtable object to restore the state from it