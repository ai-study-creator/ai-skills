Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.callback](package-summary.md)

# Class ChoiceCallback

[java.lang.Object](../../../../java/lang/Object.md "class in java.lang")

javax.security.auth.callback.ChoiceCallback

All Implemented Interfaces:
:   `Serializable`, `Callback`

Direct Known Subclasses:
:   `RealmChoiceCallback`

---

public class ChoiceCallback
extends [Object](../../../../java/lang/Object.md "class in java.lang")
implements [Callback](Callback.md "interface in javax.security.auth.callback"), [Serializable](../../../../java/io/Serializable.md "interface in java.io")

Underlying security services instantiate and pass a
`ChoiceCallback` to the `handle`
method of a `CallbackHandler` to display a list of choices
and to retrieve the selected choice(s).

Since:
:   1.4

See Also:
:   * [`CallbackHandler`](CallbackHandler.md "interface in javax.security.auth.callback")
    * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.callback.ChoiceCallback)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ChoiceCallback(String prompt,
  String[] choices,
  int defaultChoice,
  boolean multipleSelectionsAllowed)`

  Construct a `ChoiceCallback` with a prompt,
  a list of choices, a default choice, and a boolean specifying
  whether multiple selections from the list of choices are allowed.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `allowMultipleSelections()`

  Get the boolean determining whether multiple selections from
  the `choices` list are allowed.

  `String[]`

  `getChoices()`

  Get the list of choices.

  `int`

  `getDefaultChoice()`

  Get the defaultChoice.

  `String`

  `getPrompt()`

  Get the prompt.

  `int[]`

  `getSelectedIndexes()`

  Get the selected choices.

  `void`

  `setSelectedIndex(int selection)`

  Set the selected choice.

  `void`

  `setSelectedIndexes(int[] selections)`

  Set the selected choices.

  ### Methods inherited from class java.lang.[Object](../../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ChoiceCallback

    public ChoiceCallback([String](../../../../java/lang/String.md "class in java.lang") prompt,
    [String](../../../../java/lang/String.md "class in java.lang")[] choices,
    int defaultChoice,
    boolean multipleSelectionsAllowed)

    Construct a `ChoiceCallback` with a prompt,
    a list of choices, a default choice, and a boolean specifying
    whether multiple selections from the list of choices are allowed.

    Parameters:
    :   `prompt` - the prompt used to describe the list of choices.
    :   `choices` - the list of choices. The array is cloned to protect
        against subsequent modification.
    :   `defaultChoice` - the choice to be used as the default choice
        when the list of choices are displayed. This value
        is represented as an index into the
        `choices` array.
    :   `multipleSelectionsAllowed` - boolean specifying whether multiple
        selections can be made from the list of choices.

    Throws:
    :   `IllegalArgumentException` - if `prompt` is null,
        if `prompt` has a length of 0,
        if `choices` is null,
        if `choices` has a length of 0,
        if any element from `choices` is null,
        if any element from `choices`
        has a length of 0 or if `defaultChoice`
        does not fall within the array boundaries of
        `choices`.
* ## Method Details

  + ### getPrompt

    public [String](../../../../java/lang/String.md "class in java.lang") getPrompt()

    Get the prompt.

    Returns:
    :   the prompt.
  + ### getChoices

    public [String](../../../../java/lang/String.md "class in java.lang")[] getChoices()

    Get the list of choices.

    Returns:
    :   a copy of the list of choices.
  + ### getDefaultChoice

    public int getDefaultChoice()

    Get the defaultChoice.

    Returns:
    :   the defaultChoice, represented as an index into
        the `choices` list.
  + ### allowMultipleSelections

    public boolean allowMultipleSelections()

    Get the boolean determining whether multiple selections from
    the `choices` list are allowed.

    Returns:
    :   whether multiple selections are allowed.
  + ### setSelectedIndex

    public void setSelectedIndex(int selection)

    Set the selected choice.

    Parameters:
    :   `selection` - the selection represented as an index into the
        `choices` list.

    See Also:
    :   - [`getSelectedIndexes()`](#getSelectedIndexes())
  + ### setSelectedIndexes

    public void setSelectedIndexes(int[] selections)

    Set the selected choices.

    Parameters:
    :   `selections` - the selections represented as indexes into the
        `choices` list. The array is cloned to protect
        against subsequent modification.

    Throws:
    :   `UnsupportedOperationException` - if multiple selections are
        not allowed, as determined by
        `allowMultipleSelections`.

    See Also:
    :   - [`getSelectedIndexes()`](#getSelectedIndexes())
  + ### getSelectedIndexes

    public int[] getSelectedIndexes()

    Get the selected choices.

    Returns:
    :   a copy of the selected choices, represented as indexes into the
        `choices` list.

    See Also:
    :   - [`setSelectedIndexes(int[])`](#setSelectedIndexes(int%5B%5D))