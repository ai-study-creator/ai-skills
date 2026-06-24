Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleBundle

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.accessibility.AccessibleBundle

Direct Known Subclasses:
:   `AccessibleRelation`, `AccessibleRole`, `AccessibleState`

---

public abstract class AccessibleBundle
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Base class used to maintain a strongly typed enumeration. This is the
superclass of [`AccessibleState`](AccessibleState.md "class in javax.accessibility") and [`AccessibleRole`](AccessibleRole.md "class in javax.accessibility").

The [`toDisplayString()`](#toDisplayString()) method allows you to obtain the localized
string for a locale independent key from a predefined `ResourceBundle`
for the keys defined in this class. This localized string is intended to be
readable by humans.

See Also:
:   * [`AccessibleRole`](AccessibleRole.md "class in javax.accessibility")
    * [`AccessibleState`](AccessibleState.md "class in javax.accessibility")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected String`

  `key`

  The locale independent name of the state.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleBundle()`

  Construct an `AccessibleBundle`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toDisplayString()`

  Gets localized string describing the key using the default locale.

  `protected String`

  `toDisplayString(String name,
  Locale locale)`

  Obtains the key as a localized string.

  `String`

  `toDisplayString(Locale locale)`

  Obtains the key as a localized string.

  `String`

  `toString()`

  Gets localized string describing the key using the default locale.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### key

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") key

    The locale independent name of the state. This is a programmatic name
    that is not intended to be read by humans.

    See Also:
    :   - [`toDisplayString(java.lang.String, java.util.Locale)`](#toDisplayString(java.lang.String,java.util.Locale))
* ## Constructor Details

  + ### AccessibleBundle

    public AccessibleBundle()

    Construct an `AccessibleBundle`.
* ## Method Details

  + ### toDisplayString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") toDisplayString([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") locale)

    Obtains the key as a localized string. If a localized string cannot be
    found for the key, the locale independent key stored in the role will be
    returned. This method is intended to be used only by subclasses so that
    they can specify their own resource bundles which contain localized
    strings for their keys.

    Parameters:
    :   `name` - the name of the resource bundle to use for lookup
    :   `locale` - the locale for which to obtain a localized string

    Returns:
    :   a localized string for the key
  + ### toDisplayString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toDisplayString([Locale](../../../java.base/java/util/Locale.md "class in java.util") locale)

    Obtains the key as a localized string. If a localized string cannot be
    found for the key, the locale independent key stored in the role will be
    returned.

    Parameters:
    :   `locale` - the locale for which to obtain a localized string

    Returns:
    :   a localized string for the key
  + ### toDisplayString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toDisplayString()

    Gets localized string describing the key using the default locale.

    Returns:
    :   a localized string describing the key using the default locale
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Gets localized string describing the key using the default locale.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a localized string describing the key using the default locale

    See Also:
    :   - [`toDisplayString(java.lang.String, java.util.Locale)`](#toDisplayString(java.lang.String,java.util.Locale))