Module [java.security.sasl](../../../module-summary.md)

Package [javax.security.sasl](package-summary.md)

# Class RealmCallback

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.security.auth.callback.TextInputCallback](../../../../java.base/javax/security/auth/callback/TextInputCallback.md "class in javax.security.auth.callback")

javax.security.sasl.RealmCallback

All Implemented Interfaces:
:   `Serializable`, `Callback`

---

public class RealmCallback
extends [TextInputCallback](../../../../java.base/javax/security/auth/callback/TextInputCallback.md "class in javax.security.auth.callback")

This callback is used by `SaslClient` and `SaslServer`
to retrieve realm information.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.security.sasl.RealmCallback)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RealmCallback(String prompt)`

  Constructs a `RealmCallback` with a prompt.

  `RealmCallback(String prompt,
  String defaultRealmInfo)`

  Constructs a `RealmCallback` with a prompt and default
  realm information.
* ## Method Summary

  ### Methods inherited from class javax.security.auth.callback.[TextInputCallback](../../../../java.base/javax/security/auth/callback/TextInputCallback.md "class in javax.security.auth.callback")

  `getDefaultText, getPrompt, getText, setText`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RealmCallback

    public RealmCallback([String](../../../../java.base/java/lang/String.md "class in java.lang") prompt)

    Constructs a `RealmCallback` with a prompt.

    Parameters:
    :   `prompt` - The non-null prompt to use to request the realm information.

    Throws:
    :   `IllegalArgumentException` - If `prompt` is null or
        the empty string.
  + ### RealmCallback

    public RealmCallback([String](../../../../java.base/java/lang/String.md "class in java.lang") prompt,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") defaultRealmInfo)

    Constructs a `RealmCallback` with a prompt and default
    realm information.

    Parameters:
    :   `prompt` - The non-null prompt to use to request the realm information.
    :   `defaultRealmInfo` - The non-null default realm information to use.

    Throws:
    :   `IllegalArgumentException` - If `prompt` is null or
        the empty string,
        or if `defaultRealm` is empty or null.