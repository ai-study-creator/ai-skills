Module [java.base](../../../../module-summary.md)

Package [javax.security.auth.callback](package-summary.md)

# Interface Callback

All Known Implementing Classes:
:   `AuthorizeCallback`, `ChoiceCallback`, `ConfirmationCallback`, `LanguageCallback`, `NameCallback`, `PasswordCallback`, `RealmCallback`, `RealmChoiceCallback`, `TextInputCallback`, `TextOutputCallback`

---

public interface Callback

Implementations of this interface are passed to a
`CallbackHandler`, allowing underlying security services
the ability to interact with a calling application to retrieve specific
authentication data such as usernames and passwords, or to display
certain information, such as error and warning messages.

`Callback` implementations do not retrieve or
display the information requested by underlying security services.
`Callback` implementations simply provide the means
to pass such requests to applications, and for applications,
if appropriate, to return requested information back to the
underlying security services.

Since:
:   1.4

See Also:
:   * [`CallbackHandler`](CallbackHandler.md "interface in javax.security.auth.callback")
    * [`ChoiceCallback`](ChoiceCallback.md "class in javax.security.auth.callback")
    * [`ConfirmationCallback`](ConfirmationCallback.md "class in javax.security.auth.callback")
    * [`LanguageCallback`](LanguageCallback.md "class in javax.security.auth.callback")
    * [`NameCallback`](NameCallback.md "class in javax.security.auth.callback")
    * [`PasswordCallback`](PasswordCallback.md "class in javax.security.auth.callback")
    * [`TextInputCallback`](TextInputCallback.md "class in javax.security.auth.callback")
    * [`TextOutputCallback`](TextOutputCallback.md "class in javax.security.auth.callback")