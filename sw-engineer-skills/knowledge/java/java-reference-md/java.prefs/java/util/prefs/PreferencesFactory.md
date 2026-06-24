Module [java.prefs](../../../module-summary.md)

Package [java.util.prefs](package-summary.md)

# Interface PreferencesFactory

---

public interface PreferencesFactory

A factory object that generates Preferences objects. Providers of
new [`Preferences`](Preferences.md "class in java.util.prefs") implementations should provide corresponding
`PreferencesFactory` implementations so that the new
`Preferences` implementation can be installed in place of the
platform-specific default implementation.

**This class is for `Preferences` implementers only.
Normal users of the `Preferences` facility should have no need to
consult this documentation.**

Since:
:   1.4

See Also:
:   * [`Preferences`](Preferences.md "class in java.util.prefs")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Preferences`

  `systemRoot()`

  Returns the system root preference node.

  `Preferences`

  `userRoot()`

  Returns the user root preference node corresponding to the calling
  user.

* ## Method Details

  + ### systemRoot

    [Preferences](Preferences.md "class in java.util.prefs") systemRoot()

    Returns the system root preference node. (Multiple calls on this
    method will return the same object reference.)

    Returns:
    :   the system root preference node
  + ### userRoot

    [Preferences](Preferences.md "class in java.util.prefs") userRoot()

    Returns the user root preference node corresponding to the calling
    user. In a server, the returned value will typically depend on
    some implicit client-context.

    Returns:
    :   the user root preference node corresponding to the calling
        user