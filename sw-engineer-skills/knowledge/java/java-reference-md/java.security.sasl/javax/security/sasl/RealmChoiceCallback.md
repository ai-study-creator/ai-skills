Module [java.security.sasl](../../../module-summary.md)

Package [javax.security.sasl](package-summary.md)

# Class RealmChoiceCallback

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.security.auth.callback.ChoiceCallback](../../../../java.base/javax/security/auth/callback/ChoiceCallback.md "class in javax.security.auth.callback")

javax.security.sasl.RealmChoiceCallback

All Implemented Interfaces:
:   `Serializable`, `Callback`

---

public class RealmChoiceCallback
extends [ChoiceCallback](../../../../java.base/javax/security/auth/callback/ChoiceCallback.md "class in javax.security.auth.callback")

This callback is used by `SaslClient` and `SaslServer`
to obtain a realm given a list of realm choices.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.security.sasl.RealmChoiceCallback)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RealmChoiceCallback(String prompt,
  String[] choices,
  int defaultChoice,
  boolean multiple)`

  Constructs a `RealmChoiceCallback` with a prompt, a list of
  choices and a default choice.
* ## Method Summary

  ### Methods inherited from class javax.security.auth.callback.[ChoiceCallback](../../../../java.base/javax/security/auth/callback/ChoiceCallback.md "class in javax.security.auth.callback")

  `allowMultipleSelections, getChoices, getDefaultChoice, getPrompt, getSelectedIndexes, setSelectedIndex, setSelectedIndexes`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RealmChoiceCallback

    public RealmChoiceCallback([String](../../../../java.base/java/lang/String.md "class in java.lang") prompt,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] choices,
    int defaultChoice,
    boolean multiple)

    Constructs a `RealmChoiceCallback` with a prompt, a list of
    choices and a default choice.

    Parameters:
    :   `prompt` - the non-null prompt to use to request the realm.
    :   `choices` - the non-null list of realms to choose from.
    :   `defaultChoice` - the choice to be used as the default choice
        when the list of choices is displayed. It is an index into
        the `choices` array.
    :   `multiple` - true if multiple choices allowed; false otherwise

    Throws:
    :   `IllegalArgumentException` - If `prompt` is null or the empty string,
        if `choices` has a length of 0, if any element from
        `choices` is null or empty, or if `defaultChoice`
        does not fall within the array boundary of `choices`