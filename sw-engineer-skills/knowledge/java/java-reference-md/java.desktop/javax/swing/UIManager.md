Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class UIManager

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.UIManager

All Implemented Interfaces:
:   `Serializable`

---

public class UIManager
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

`UIManager` manages the current look and feel, the set of
available look and feels, `PropertyChangeListeners` that
are notified when the look and feel changes, look and feel defaults, and
convenience methods for obtaining various default values.

## Specifying the look and feel

The look and feel can be specified in two distinct ways: by
specifying the fully qualified name of the class for the look and
feel, or by creating an instance of `LookAndFeel` and passing
it to `setLookAndFeel`. The following example illustrates
setting the look and feel to the system look and feel:

```
   UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
```

The following example illustrates setting the look and feel based on
class name:

```
   UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel");
```

Once the look and feel has been changed it is imperative to invoke
`updateUI` on all `JComponents`. The method [`SwingUtilities.updateComponentTreeUI(java.awt.Component)`](SwingUtilities.md#updateComponentTreeUI(java.awt.Component)) makes it easy to apply `updateUI` to a containment hierarchy. Refer to it for
details. The exact behavior of not invoking `updateUI` after changing the look and feel is
unspecified. It is very possible to receive unexpected exceptions,
painting problems, or worse.

## Default look and feel

The class used for the default look and feel is chosen in the following
manner:

1. If the system property `swing.defaultlaf` is
   `non-null`, use its value as the default look and feel class
   name.- If the [`Properties`](../../../java.base/java/util/Properties.md "class in java.util") file `swing.properties`
     exists and contains the key `swing.defaultlaf`,
     use its value as the default look and feel class name. The location
     that is checked for `swing.properties` may vary depending
     upon the implementation of the Java platform. Typically the
     `swing.properties` file is located in the `conf`
     subdirectory of the Java installation directory.
     Refer to the release notes of the implementation being used for
     further details.- Otherwise use the cross platform look and feel.

## Defaults

`UIManager` manages three sets of `UIDefaults`. In order, they
are:

1. Developer defaults. With few exceptions Swing does not
   alter the developer defaults; these are intended to be modified
   and used by the developer.- Look and feel defaults. The look and feel defaults are
     supplied by the look and feel at the time it is installed as the
     current look and feel (`setLookAndFeel()` is invoked). The
     look and feel defaults can be obtained using the `getLookAndFeelDefaults()` method.- System defaults. The system defaults are provided by Swing.

Invoking any of the various `get` methods
results in checking each of the defaults, in order, returning
the first `non-null` value. For example, invoking
`UIManager.getString("Table.foreground")` results in first
checking developer defaults. If the developer defaults contain
a value for `"Table.foreground"` it is returned, otherwise
the look and feel defaults are checked, followed by the system defaults.

It's important to note that `getDefaults` returns a custom
instance of `UIDefaults` with this resolution logic built into it.
For example, `UIManager.getDefaults().getString("Table.foreground")`
is equivalent to `UIManager.getString("Table.foreground")`. Both
resolve using the algorithm just described. In many places the
documentation uses the word defaults to refer to the custom instance
of `UIDefaults` with the resolution logic as previously described.

When the look and feel is changed, `UIManager` alters only the
look and feel defaults; the developer and system defaults are not
altered by the `UIManager` in any way.

The set of defaults a particular look and feel supports is defined
and documented by that look and feel. In addition, each look and
feel, or `ComponentUI` provided by a look and feel, may
access the defaults at different times in their life cycle. Some
look and feels may aggressively look up defaults, so that changing a
default may not have an effect after installing the look and feel.
Other look and feels may lazily access defaults so that a change to
the defaults may effect an existing look and feel. Finally, other look
and feels might not configure themselves from the defaults table in
any way. None-the-less it is usually the case that a look and feel
expects certain defaults, so that in general
a `ComponentUI` provided by one look and feel will not
work with another look and feel.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `UIManager.LookAndFeelInfo`

  Provides a little information about an installed
  `LookAndFeel` for the sake of configuring a menu or
  for initial application set up.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UIManager()`

  Constructs a `UIManager`.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static void`

  `addAuxiliaryLookAndFeel(LookAndFeel laf)`

  Adds a `LookAndFeel` to the list of auxiliary look and feels.

  `static void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Adds a `PropertyChangeListener` to the listener list.

  `static LookAndFeel`

  `createLookAndFeel(String name)`

  Creates a supported built-in Java `LookAndFeel` specified
  by the given `L&F name` name.

  `static Object`

  `get(Object key)`

  Returns an object from the defaults.

  `static Object`

  `get(Object key,
  Locale l)`

  Returns an object from the defaults that is appropriate for
  the given locale.

  `static LookAndFeel[]`

  `getAuxiliaryLookAndFeels()`

  Returns the list of auxiliary look and feels (can be `null`).

  `static boolean`

  `getBoolean(Object key)`

  Returns a boolean from the defaults which is associated with
  the key value.

  `static boolean`

  `getBoolean(Object key,
  Locale l)`

  Returns a boolean from the defaults which is associated with
  the key value and the given `Locale`.

  `static Border`

  `getBorder(Object key)`

  Returns a border from the defaults.

  `static Border`

  `getBorder(Object key,
  Locale l)`

  Returns a border from the defaults that is appropriate
  for the given locale.

  `static Color`

  `getColor(Object key)`

  Returns a color from the defaults.

  `static Color`

  `getColor(Object key,
  Locale l)`

  Returns a color from the defaults that is appropriate
  for the given locale.

  `static String`

  `getCrossPlatformLookAndFeelClassName()`

  Returns the name of the `LookAndFeel` class that implements
  the default cross platform look and feel -- the Java
  Look and Feel (JLF).

  `static UIDefaults`

  `getDefaults()`

  Returns the defaults.

  `static Dimension`

  `getDimension(Object key)`

  Returns a dimension from the defaults.

  `static Dimension`

  `getDimension(Object key,
  Locale l)`

  Returns a dimension from the defaults that is appropriate
  for the given locale.

  `static Font`

  `getFont(Object key)`

  Returns a font from the defaults.

  `static Font`

  `getFont(Object key,
  Locale l)`

  Returns a font from the defaults that is appropriate
  for the given locale.

  `static Icon`

  `getIcon(Object key)`

  Returns an `Icon` from the defaults.

  `static Icon`

  `getIcon(Object key,
  Locale l)`

  Returns an `Icon` from the defaults that is appropriate
  for the given locale.

  `static Insets`

  `getInsets(Object key)`

  Returns an `Insets` object from the defaults.

  `static Insets`

  `getInsets(Object key,
  Locale l)`

  Returns an `Insets` object from the defaults that is
  appropriate for the given locale.

  `static UIManager.LookAndFeelInfo[]`

  `getInstalledLookAndFeels()`

  Returns an array of `LookAndFeelInfo`s representing the
  `LookAndFeel` implementations currently available.

  `static int`

  `getInt(Object key)`

  Returns an integer from the defaults.

  `static int`

  `getInt(Object key,
  Locale l)`

  Returns an integer from the defaults that is appropriate
  for the given locale.

  `static LookAndFeel`

  `getLookAndFeel()`

  Returns the current look and feel or `null`.

  `static UIDefaults`

  `getLookAndFeelDefaults()`

  Returns the `UIDefaults` from the current look and feel,
  that were obtained at the time the look and feel was installed.

  `static PropertyChangeListener[]`

  `getPropertyChangeListeners()`

  Returns an array of all the `PropertyChangeListener`s added
  to this UIManager with addPropertyChangeListener().

  `static String`

  `getString(Object key)`

  Returns a string from the defaults.

  `static String`

  `getString(Object key,
  Locale l)`

  Returns a string from the defaults that is appropriate for the
  given locale.

  `static String`

  `getSystemLookAndFeelClassName()`

  Returns the name of the `LookAndFeel` class that implements
  the native system look and feel if there is one, otherwise
  the name of the default cross platform `LookAndFeel`
  class.

  `static ComponentUI`

  `getUI(JComponent target)`

  Returns the appropriate `ComponentUI` implementation for
  `target`.

  `static void`

  `installLookAndFeel(String name,
  String className)`

  Adds the specified look and feel to the set of available look
  and feels.

  `static void`

  `installLookAndFeel(UIManager.LookAndFeelInfo info)`

  Adds the specified look and feel to the set of available look
  and feels.

  `static Object`

  `put(Object key,
  Object value)`

  Stores an object in the developer defaults.

  `static boolean`

  `removeAuxiliaryLookAndFeel(LookAndFeel laf)`

  Removes a `LookAndFeel` from the list of auxiliary look and feels.

  `static void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Removes a `PropertyChangeListener` from the listener list.

  `static void`

  `setInstalledLookAndFeels(UIManager.LookAndFeelInfo[] infos)`

  Sets the set of available look and feels.

  `static void`

  `setLookAndFeel(String className)`

  Loads the `LookAndFeel` specified by the given class
  name, using the current thread's context class loader, and
  passes it to `setLookAndFeel(LookAndFeel)`.

  `static void`

  `setLookAndFeel(LookAndFeel newLookAndFeel)`

  Sets the current look and feel to `newLookAndFeel`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### UIManager

    public UIManager()

    Constructs a `UIManager`.
* ## Method Details

  + ### getInstalledLookAndFeels

    public static [UIManager.LookAndFeelInfo](UIManager.LookAndFeelInfo.md "class in javax.swing")[] getInstalledLookAndFeels()

    Returns an array of `LookAndFeelInfo`s representing the
    `LookAndFeel` implementations currently available. The
    `LookAndFeelInfo` objects can be used by an
    application to construct a menu of look and feel options for
    the user, or to determine which look and feel to set at startup
    time. To avoid the penalty of creating numerous `LookAndFeel` objects, `LookAndFeelInfo` maintains the
    class name of the `LookAndFeel` class, not the actual
    `LookAndFeel` instance.

    The following example illustrates setting the current look and feel
    from an instance of `LookAndFeelInfo`:

    ```
       UIManager.setLookAndFeel(info.getClassName());
    ```

    Returns:
    :   an array of `LookAndFeelInfo` objects

    See Also:
    :   - [`setLookAndFeel(javax.swing.LookAndFeel)`](#setLookAndFeel(javax.swing.LookAndFeel))
  + ### setInstalledLookAndFeels

    public static void setInstalledLookAndFeels([UIManager.LookAndFeelInfo](UIManager.LookAndFeelInfo.md "class in javax.swing")[] infos)
    throws [SecurityException](../../../java.base/java/lang/SecurityException.md "class in java.lang")

    Sets the set of available look and feels. While this method does
    not check to ensure all of the `LookAndFeelInfos` are
    `non-null`, it is strongly recommended that only `non-null`
    values are supplied in the `infos` array.

    Parameters:
    :   `infos` - set of `LookAndFeelInfo` objects specifying
        the available look and feels

    Throws:
    :   `NullPointerException` - if `infos` is `null`
    :   `SecurityException`

    See Also:
    :   - [`getInstalledLookAndFeels()`](#getInstalledLookAndFeels())
  + ### installLookAndFeel

    public static void installLookAndFeel([UIManager.LookAndFeelInfo](UIManager.LookAndFeelInfo.md "class in javax.swing") info)

    Adds the specified look and feel to the set of available look
    and feels. While this method allows a `null` `info`,
    it is strongly recommended that a `non-null` value be used.

    Parameters:
    :   `info` - a `LookAndFeelInfo` object that names the
        look and feel and identifies the class that implements it

    See Also:
    :   - [`setInstalledLookAndFeels(javax.swing.UIManager.LookAndFeelInfo[])`](#setInstalledLookAndFeels(javax.swing.UIManager.LookAndFeelInfo%5B%5D))
  + ### installLookAndFeel

    public static void installLookAndFeel([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className)

    Adds the specified look and feel to the set of available look
    and feels. While this method does not check the
    arguments in any way, it is strongly recommended that `non-null` values be supplied.

    Parameters:
    :   `name` - descriptive name of the look and feel
    :   `className` - name of the class that implements the look and feel

    See Also:
    :   - [`setInstalledLookAndFeels(javax.swing.UIManager.LookAndFeelInfo[])`](#setInstalledLookAndFeels(javax.swing.UIManager.LookAndFeelInfo%5B%5D))
  + ### getLookAndFeel

    public static [LookAndFeel](LookAndFeel.md "class in javax.swing") getLookAndFeel()

    Returns the current look and feel or `null`.

    Returns:
    :   current look and feel, or `null`

    See Also:
    :   - [`setLookAndFeel(javax.swing.LookAndFeel)`](#setLookAndFeel(javax.swing.LookAndFeel))
  + ### createLookAndFeel

    public static [LookAndFeel](LookAndFeel.md "class in javax.swing") createLookAndFeel([String](../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [UnsupportedLookAndFeelException](UnsupportedLookAndFeelException.md "class in javax.swing")

    Creates a supported built-in Java `LookAndFeel` specified
    by the given `L&F name` name.

    Parameters:
    :   `name` - a `String` specifying the name of the built-in
        look and feel

    Returns:
    :   the built-in `LookAndFeel` object

    Throws:
    :   `NullPointerException` - if `name` is `null`
    :   `UnsupportedLookAndFeelException` - if the built-in Java `L&F`
        is not found for the given name or it is not supported by the
        underlying platform

    Since:
    :   9

    See Also:
    :   - [`LookAndFeel.getName()`](LookAndFeel.md#getName())
        - [`LookAndFeel.isSupportedLookAndFeel()`](LookAndFeel.md#isSupportedLookAndFeel())
  + ### setLookAndFeel

    public static void setLookAndFeel([LookAndFeel](LookAndFeel.md "class in javax.swing") newLookAndFeel)
    throws [UnsupportedLookAndFeelException](UnsupportedLookAndFeelException.md "class in javax.swing")

    Sets the current look and feel to `newLookAndFeel`.
    If the current look and feel is `non-null` `uninitialize` is invoked on it. If `newLookAndFeel` is
    `non-null`, `initialize` is invoked on it followed
    by `getDefaults`. The defaults returned from `newLookAndFeel.getDefaults()` replace those of the defaults
    from the previous look and feel. If the `newLookAndFeel` is
    `null`, the look and feel defaults are set to `null`.

    A value of `null` can be used to set the look and feel
    to `null`. As the `LookAndFeel` is required for
    most of Swing to function, setting the `LookAndFeel` to
    `null` is strongly discouraged.

    This is a JavaBeans bound property.

    Parameters:
    :   `newLookAndFeel` - `LookAndFeel` to install

    Throws:
    :   `UnsupportedLookAndFeelException` - if
        `newLookAndFeel` is `non-null` and
        `newLookAndFeel.isSupportedLookAndFeel()` returns
        `false`

    See Also:
    :   - [`getLookAndFeel()`](#getLookAndFeel())
  + ### setLookAndFeel

    public static void setLookAndFeel([String](../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [ClassNotFoundException](../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"),
    [InstantiationException](../../../java.base/java/lang/InstantiationException.md "class in java.lang"),
    [IllegalAccessException](../../../java.base/java/lang/IllegalAccessException.md "class in java.lang"),
    [UnsupportedLookAndFeelException](UnsupportedLookAndFeelException.md "class in javax.swing")

    Loads the `LookAndFeel` specified by the given class
    name, using the current thread's context class loader, and
    passes it to `setLookAndFeel(LookAndFeel)`.

    Parameters:
    :   `className` - a string specifying the name of the class that implements
        the look and feel

    Throws:
    :   `ClassNotFoundException` - if the `LookAndFeel`
        class could not be found
    :   `InstantiationException` - if a new instance of the class
        couldn't be created
    :   `IllegalAccessException` - if the class or initializer isn't accessible
    :   `UnsupportedLookAndFeelException` - if
        `lnf.isSupportedLookAndFeel()` is false
    :   `ClassCastException` - if `className` does not identify
        a class that extends `LookAndFeel`
    :   `NullPointerException` - if `className` is `null`
  + ### getSystemLookAndFeelClassName

    public static [String](../../../java.base/java/lang/String.md "class in java.lang") getSystemLookAndFeelClassName()

    Returns the name of the `LookAndFeel` class that implements
    the native system look and feel if there is one, otherwise
    the name of the default cross platform `LookAndFeel`
    class. This value can be overridden by setting the
    `swing.systemlaf` system property.

    Returns:
    :   the `String` of the `LookAndFeel`
        class

    See Also:
    :   - [`setLookAndFeel(javax.swing.LookAndFeel)`](#setLookAndFeel(javax.swing.LookAndFeel))
        - [`getCrossPlatformLookAndFeelClassName()`](#getCrossPlatformLookAndFeelClassName())
  + ### getCrossPlatformLookAndFeelClassName

    public static [String](../../../java.base/java/lang/String.md "class in java.lang") getCrossPlatformLookAndFeelClassName()

    Returns the name of the `LookAndFeel` class that implements
    the default cross platform look and feel -- the Java
    Look and Feel (JLF). This value can be overridden by setting the
    `swing.crossplatformlaf` system property.

    Returns:
    :   a string with the JLF implementation-class

    See Also:
    :   - [`setLookAndFeel(javax.swing.LookAndFeel)`](#setLookAndFeel(javax.swing.LookAndFeel))
        - [`getSystemLookAndFeelClassName()`](#getSystemLookAndFeelClassName())
  + ### getDefaults

    public static [UIDefaults](UIDefaults.md "class in javax.swing") getDefaults()

    Returns the defaults. The returned defaults resolve using the
    logic specified in the class documentation.

    Returns:
    :   a `UIDefaults` object containing the default values
  + ### getFont

    public static [Font](../../java/awt/Font.md "class in java.awt") getFont([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns a font from the defaults. If the value for `key` is
    not a `Font`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the font

    Returns:
    :   the `Font` object

    Throws:
    :   `NullPointerException` - if `key` is `null`
  + ### getFont

    public static [Font](../../java/awt/Font.md "class in java.awt") getFont([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns a font from the defaults that is appropriate
    for the given locale. If the value for `key` is
    not a `Font`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the font
    :   `l` - the `Locale` for which the font is desired; refer
        to `UIDefaults` for details on how a `null`
        `Locale` is handled

    Returns:
    :   the `Font` object

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### getColor

    public static [Color](../../java/awt/Color.md "class in java.awt") getColor([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns a color from the defaults. If the value for `key` is
    not a `Color`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the color

    Returns:
    :   the `Color` object

    Throws:
    :   `NullPointerException` - if `key` is `null`
  + ### getColor

    public static [Color](../../java/awt/Color.md "class in java.awt") getColor([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns a color from the defaults that is appropriate
    for the given locale. If the value for `key` is
    not a `Color`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the color
    :   `l` - the `Locale` for which the color is desired; refer
        to `UIDefaults` for details on how a `null`
        `Locale` is handled

    Returns:
    :   the `Color` object

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### getIcon

    public static [Icon](Icon.md "interface in javax.swing") getIcon([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns an `Icon` from the defaults. If the value for
    `key` is not an `Icon`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the icon

    Returns:
    :   the `Icon` object

    Throws:
    :   `NullPointerException` - if `key` is `null`
  + ### getIcon

    public static [Icon](Icon.md "interface in javax.swing") getIcon([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns an `Icon` from the defaults that is appropriate
    for the given locale. If the value for
    `key` is not an `Icon`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the icon
    :   `l` - the `Locale` for which the icon is desired; refer
        to `UIDefaults` for details on how a `null`
        `Locale` is handled

    Returns:
    :   the `Icon` object

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### getBorder

    public static [Border](border/Border.md "interface in javax.swing.border") getBorder([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns a border from the defaults. If the value for
    `key` is not a `Border`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the border

    Returns:
    :   the `Border` object

    Throws:
    :   `NullPointerException` - if `key` is `null`
  + ### getBorder

    public static [Border](border/Border.md "interface in javax.swing.border") getBorder([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns a border from the defaults that is appropriate
    for the given locale. If the value for
    `key` is not a `Border`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the border
    :   `l` - the `Locale` for which the border is desired; refer
        to `UIDefaults` for details on how a `null`
        `Locale` is handled

    Returns:
    :   the `Border` object

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### getString

    public static [String](../../../java.base/java/lang/String.md "class in java.lang") getString([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns a string from the defaults. If the value for
    `key` is not a `String`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the string

    Returns:
    :   the `String`

    Throws:
    :   `NullPointerException` - if `key` is `null`
  + ### getString

    public static [String](../../../java.base/java/lang/String.md "class in java.lang") getString([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns a string from the defaults that is appropriate for the
    given locale. If the value for
    `key` is not a `String`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the string
    :   `l` - the `Locale` for which the string is desired; refer
        to `UIDefaults` for details on how a `null`
        `Locale` is handled

    Returns:
    :   the `String`

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### getInt

    public static int getInt([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns an integer from the defaults. If the value for
    `key` is not an `Integer`, or does not exist,
    `0` is returned.

    Parameters:
    :   `key` - an `Object` specifying the int

    Returns:
    :   the int

    Throws:
    :   `NullPointerException` - if `key` is `null`
  + ### getInt

    public static int getInt([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns an integer from the defaults that is appropriate
    for the given locale. If the value for
    `key` is not an `Integer`, or does not exist,
    `0` is returned.

    Parameters:
    :   `key` - an `Object` specifying the int
    :   `l` - the `Locale` for which the int is desired; refer
        to `UIDefaults` for details on how a `null`
        `Locale` is handled

    Returns:
    :   the int

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### getBoolean

    public static boolean getBoolean([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns a boolean from the defaults which is associated with
    the key value. If the key is not found or the key doesn't represent
    a boolean value then `false` is returned.

    Parameters:
    :   `key` - an `Object` specifying the key for the desired boolean value

    Returns:
    :   the boolean value corresponding to the key

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### getBoolean

    public static boolean getBoolean([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns a boolean from the defaults which is associated with
    the key value and the given `Locale`. If the key is not
    found or the key doesn't represent
    a boolean value then `false` will be returned.

    Parameters:
    :   `key` - an `Object` specifying the key for the desired
        boolean value
    :   `l` - the `Locale` for which the boolean is desired; refer
        to `UIDefaults` for details on how a `null`
        `Locale` is handled

    Returns:
    :   the boolean value corresponding to the key

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### getInsets

    public static [Insets](../../java/awt/Insets.md "class in java.awt") getInsets([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns an `Insets` object from the defaults. If the value
    for `key` is not an `Insets`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the `Insets` object

    Returns:
    :   the `Insets` object

    Throws:
    :   `NullPointerException` - if `key` is `null`
  + ### getInsets

    public static [Insets](../../java/awt/Insets.md "class in java.awt") getInsets([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns an `Insets` object from the defaults that is
    appropriate for the given locale. If the value
    for `key` is not an `Insets`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the `Insets` object
    :   `l` - the `Locale` for which the object is desired; refer
        to `UIDefaults` for details on how a `null`
        `Locale` is handled

    Returns:
    :   the `Insets` object

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### getDimension

    public static [Dimension](../../java/awt/Dimension.md "class in java.awt") getDimension([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns a dimension from the defaults. If the value
    for `key` is not a `Dimension`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the dimension object

    Returns:
    :   the `Dimension` object

    Throws:
    :   `NullPointerException` - if `key` is `null`
  + ### getDimension

    public static [Dimension](../../java/awt/Dimension.md "class in java.awt") getDimension([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns a dimension from the defaults that is appropriate
    for the given locale. If the value
    for `key` is not a `Dimension`, `null` is returned.

    Parameters:
    :   `key` - an `Object` specifying the dimension object
    :   `l` - the `Locale` for which the object is desired; refer
        to `UIDefaults` for details on how a `null`
        `Locale` is handled

    Returns:
    :   the `Dimension` object

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### get

    public static [Object](../../../java.base/java/lang/Object.md "class in java.lang") get([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns an object from the defaults.

    Parameters:
    :   `key` - an `Object` specifying the desired object

    Returns:
    :   the `Object`

    Throws:
    :   `NullPointerException` - if `key` is `null`
  + ### get

    public static [Object](../../../java.base/java/lang/Object.md "class in java.lang") get([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns an object from the defaults that is appropriate for
    the given locale.

    Parameters:
    :   `key` - an `Object` specifying the desired object
    :   `l` - the `Locale` for which the object is desired; refer
        to `UIDefaults` for details on how a `null`
        `Locale` is handled

    Returns:
    :   the `Object`

    Throws:
    :   `NullPointerException` - if `key` is `null`

    Since:
    :   1.4
  + ### put

    public static [Object](../../../java.base/java/lang/Object.md "class in java.lang") put([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Stores an object in the developer defaults. This is a cover method
    for `getDefaults().put(key, value)`. This only effects the
    developer defaults, not the system or look and feel defaults.

    Parameters:
    :   `key` - an `Object` specifying the retrieval key
    :   `value` - the `Object` to store; refer to
        `UIDefaults` for details on how `null` is
        handled

    Returns:
    :   the `Object` returned by [`UIDefaults.put(java.lang.Object, java.lang.Object)`](UIDefaults.md#put(java.lang.Object,java.lang.Object))

    Throws:
    :   `NullPointerException` - if `key` is `null`

    See Also:
    :   - [`UIDefaults.put(java.lang.Object, java.lang.Object)`](UIDefaults.md#put(java.lang.Object,java.lang.Object))
  + ### getUI

    public static [ComponentUI](plaf/ComponentUI.md "class in javax.swing.plaf") getUI([JComponent](JComponent.md "class in javax.swing") target)

    Returns the appropriate `ComponentUI` implementation for
    `target`. Typically, this is a cover for
    `getDefaults().getUI(target)`. However, if an auxiliary
    look and feel has been installed, this first invokes
    `getUI(target)` on the multiplexing look and feel's
    defaults, and returns that value if it is `non-null`.

    Parameters:
    :   `target` - the `JComponent` to return the
        `ComponentUI` for

    Returns:
    :   the `ComponentUI` object for `target`

    Throws:
    :   `NullPointerException` - if `target` is `null`

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getLookAndFeelDefaults

    public static [UIDefaults](UIDefaults.md "class in javax.swing") getLookAndFeelDefaults()

    Returns the `UIDefaults` from the current look and feel,
    that were obtained at the time the look and feel was installed.

    In general, developers should use the `UIDefaults` returned from
    `getDefaults()`. As the current look and feel may expect
    certain values to exist, altering the `UIDefaults` returned
    from this method could have unexpected results.

    Returns:
    :   `UIDefaults` from the current look and feel

    See Also:
    :   - [`getDefaults()`](#getDefaults())
        - [`setLookAndFeel(LookAndFeel)`](#setLookAndFeel(javax.swing.LookAndFeel))
        - [`LookAndFeel.getDefaults()`](LookAndFeel.md#getDefaults())
  + ### addAuxiliaryLookAndFeel

    public static void addAuxiliaryLookAndFeel([LookAndFeel](LookAndFeel.md "class in javax.swing") laf)

    Adds a `LookAndFeel` to the list of auxiliary look and feels.
    The auxiliary look and feels tell the multiplexing look and feel what
    other `LookAndFeel` classes for a component instance are to be used
    in addition to the default `LookAndFeel` class when creating a
    multiplexing UI. The change will only take effect when a new
    UI class is created or when the default look and feel is changed
    on a component instance.

    Note these are not the same as the installed look and feels.

    Parameters:
    :   `laf` - the `LookAndFeel` object

    See Also:
    :   - [`removeAuxiliaryLookAndFeel(javax.swing.LookAndFeel)`](#removeAuxiliaryLookAndFeel(javax.swing.LookAndFeel))
        - [`setLookAndFeel(javax.swing.LookAndFeel)`](#setLookAndFeel(javax.swing.LookAndFeel))
        - [`getAuxiliaryLookAndFeels()`](#getAuxiliaryLookAndFeels())
        - [`getInstalledLookAndFeels()`](#getInstalledLookAndFeels())
  + ### removeAuxiliaryLookAndFeel

    public static boolean removeAuxiliaryLookAndFeel([LookAndFeel](LookAndFeel.md "class in javax.swing") laf)

    Removes a `LookAndFeel` from the list of auxiliary look and feels.
    The auxiliary look and feels tell the multiplexing look and feel what
    other `LookAndFeel` classes for a component instance are to be used
    in addition to the default `LookAndFeel` class when creating a
    multiplexing UI. The change will only take effect when a new
    UI class is created or when the default look and feel is changed
    on a component instance.

    Note these are not the same as the installed look and feels.

    Parameters:
    :   `laf` - the `LookAndFeel` to be removed

    Returns:
    :   true if the `LookAndFeel` was removed from the list

    See Also:
    :   - [`removeAuxiliaryLookAndFeel(javax.swing.LookAndFeel)`](#removeAuxiliaryLookAndFeel(javax.swing.LookAndFeel))
        - [`getAuxiliaryLookAndFeels()`](#getAuxiliaryLookAndFeels())
        - [`setLookAndFeel(javax.swing.LookAndFeel)`](#setLookAndFeel(javax.swing.LookAndFeel))
        - [`getInstalledLookAndFeels()`](#getInstalledLookAndFeels())
  + ### getAuxiliaryLookAndFeels

    public static [LookAndFeel](LookAndFeel.md "class in javax.swing")[] getAuxiliaryLookAndFeels()

    Returns the list of auxiliary look and feels (can be `null`).
    The auxiliary look and feels tell the multiplexing look and feel what
    other `LookAndFeel` classes for a component instance are
    to be used in addition to the default LookAndFeel class when creating a
    multiplexing UI.

    Note these are not the same as the installed look and feels.

    Returns:
    :   list of auxiliary `LookAndFeel`s or `null`

    See Also:
    :   - [`addAuxiliaryLookAndFeel(javax.swing.LookAndFeel)`](#addAuxiliaryLookAndFeel(javax.swing.LookAndFeel))
        - [`removeAuxiliaryLookAndFeel(javax.swing.LookAndFeel)`](#removeAuxiliaryLookAndFeel(javax.swing.LookAndFeel))
        - [`setLookAndFeel(javax.swing.LookAndFeel)`](#setLookAndFeel(javax.swing.LookAndFeel))
        - [`getInstalledLookAndFeels()`](#getInstalledLookAndFeels())
  + ### addPropertyChangeListener

    public static void addPropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Adds a `PropertyChangeListener` to the listener list.
    The listener is registered for all properties.

    Parameters:
    :   `listener` - the `PropertyChangeListener` to be added

    See Also:
    :   - [`PropertyChangeSupport`](../../java/beans/PropertyChangeSupport.md "class in java.beans")
  + ### removePropertyChangeListener

    public static void removePropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Removes a `PropertyChangeListener` from the listener list.
    This removes a `PropertyChangeListener` that was registered
    for all properties.

    Parameters:
    :   `listener` - the `PropertyChangeListener` to be removed

    See Also:
    :   - [`PropertyChangeSupport`](../../java/beans/PropertyChangeSupport.md "class in java.beans")
  + ### getPropertyChangeListeners

    public static [PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans")[] getPropertyChangeListeners()

    Returns an array of all the `PropertyChangeListener`s added
    to this UIManager with addPropertyChangeListener().

    Returns:
    :   all of the `PropertyChangeListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4