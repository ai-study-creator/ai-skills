Module [java.base](../../../../module-summary.md)

# Package javax.security.auth.callback

---

package javax.security.auth.callback

This package provides the classes necessary for services
to interact with applications in order to retrieve
information (authentication data including usernames
or passwords, for example) or to display information
(error and warning messages, for example).

Since:
:   1.4

* Related Packages

  Module

  Package

  Description

  [java.base](../../../../module-summary.md)

  [javax.security.auth](../package-summary.md)

  This package provides a framework for authentication and
  authorization.

  [java.security.jgss](../../../../../java.security.jgss/module-summary.md)

  [javax.security.auth.kerberos](../../../../../java.security.jgss/javax/security/auth/kerberos/package-summary.md)

  This package contains utility classes related to the Kerberos network
  authentication protocol.

  [java.base](../../../../module-summary.md)

  [javax.security.auth.login](../login/package-summary.md)

  This package provides a pluggable authentication framework.

  [java.base](../../../../module-summary.md)

  [javax.security.auth.spi](../spi/package-summary.md)

  This package provides the interface to be used for
  implementing pluggable authentication modules.

  [java.base](../../../../module-summary.md)

  [javax.security.auth.x500](../x500/package-summary.md)

  This package contains the classes that should be used to store
  X500 Principal and X500 Private Credentials in a
  *Subject*.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [Callback](Callback.md "interface in javax.security.auth.callback")

  Implementations of this interface are passed to a
  `CallbackHandler`, allowing underlying security services
  the ability to interact with a calling application to retrieve specific
  authentication data such as usernames and passwords, or to display
  certain information, such as error and warning messages.

  [CallbackHandler](CallbackHandler.md "interface in javax.security.auth.callback")

  An application implements a `CallbackHandler` and passes
  it to underlying security services so that they may interact with
  the application to retrieve specific authentication data,
  such as usernames and passwords, or to display certain information,
  such as error and warning messages.

  [ChoiceCallback](ChoiceCallback.md "class in javax.security.auth.callback")

  Underlying security services instantiate and pass a
  `ChoiceCallback` to the `handle`
  method of a `CallbackHandler` to display a list of choices
  and to retrieve the selected choice(s).

  [ConfirmationCallback](ConfirmationCallback.md "class in javax.security.auth.callback")

  Underlying security services instantiate and pass a
  `ConfirmationCallback` to the `handle`
  method of a `CallbackHandler` to ask for YES/NO,
  OK/CANCEL, YES/NO/CANCEL or other similar confirmations.

  [LanguageCallback](LanguageCallback.md "class in javax.security.auth.callback")

  Underlying security services instantiate and pass a
  `LanguageCallback` to the `handle`
  method of a `CallbackHandler` to retrieve the `Locale`
  used for localizing text.

  [NameCallback](NameCallback.md "class in javax.security.auth.callback")

  Underlying security services instantiate and pass a
  `NameCallback` to the `handle`
  method of a `CallbackHandler` to retrieve name information.

  [PasswordCallback](PasswordCallback.md "class in javax.security.auth.callback")

  Underlying security services instantiate and pass a
  `PasswordCallback` to the `handle`
  method of a `CallbackHandler` to retrieve password information.

  [TextInputCallback](TextInputCallback.md "class in javax.security.auth.callback")

  Underlying security services instantiate and pass a
  `TextInputCallback` to the `handle`
  method of a `CallbackHandler` to retrieve generic text
  information.

  [TextOutputCallback](TextOutputCallback.md "class in javax.security.auth.callback")

  Underlying security services instantiate and pass a
  `TextOutputCallback` to the `handle`
  method of a `CallbackHandler` to display information messages,
  warning messages and error messages.

  [UnsupportedCallbackException](UnsupportedCallbackException.md "class in javax.security.auth.callback")

  Signals that a `CallbackHandler` does not
  recognize a particular `Callback`.