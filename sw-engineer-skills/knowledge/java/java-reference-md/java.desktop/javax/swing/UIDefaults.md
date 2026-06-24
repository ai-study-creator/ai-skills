Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class UIDefaults

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.Dictionary](../../../java.base/java/util/Dictionary.md "class in java.util")<[Object](../../../java.base/java/lang/Object.md "class in java.lang"),[Object](../../../java.base/java/lang/Object.md "class in java.lang")>

[java.util.Hashtable](../../../java.base/java/util/Hashtable.md "class in java.util")<[Object](../../../java.base/java/lang/Object.md "class in java.lang"),[Object](../../../java.base/java/lang/Object.md "class in java.lang")>

javax.swing.UIDefaults

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Map<Object,Object>`

---

public class UIDefaults
extends [Hashtable](../../../java.base/java/util/Hashtable.md "class in java.util")<[Object](../../../java.base/java/lang/Object.md "class in java.lang"),[Object](../../../java.base/java/lang/Object.md "class in java.lang")>

A table of defaults for Swing components. Applications can set/get
default values via the `UIManager`.

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

See Also:
:   * [`UIManager`](UIManager.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static interface`

  `UIDefaults.ActiveValue`

  This class enables one to store an entry in the defaults
  table that's constructed each time it's looked up with one of
  the `getXXX(key)` methods.

  `static class`

  `UIDefaults.LazyInputMap`

  `LazyInputMap` will create a `InputMap`
  in its `createValue`
  method.

  `static interface`

  `UIDefaults.LazyValue`

  This class enables one to store an entry in the defaults
  table that isn't constructed until the first time it's
  looked up with one of the `getXXX(key)` methods.

  `static class`

  `UIDefaults.ProxyLazyValue`

  This class provides an implementation of `LazyValue`
  which can be
  used to delay loading of the Class for the instance to be created.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UIDefaults()`

  Creates an empty defaults table.

  `UIDefaults(int initialCapacity,
  float loadFactor)`

  Creates an empty defaults table with the specified initial capacity and
  load factor.

  `UIDefaults(Object[] keyValueList)`

  Creates a defaults table initialized with the specified
  key/value pairs.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Adds a `PropertyChangeListener` to the listener list.

  `void`

  `addResourceBundle(String bundleName)`

  Adds a resource bundle to the list of resource bundles that are
  searched for localized values.

  `protected void`

  `firePropertyChange(String propertyName,
  Object oldValue,
  Object newValue)`

  Support for reporting bound property changes.

  `Object`

  `get(Object key)`

  Returns the value for key.

  `Object`

  `get(Object key,
  Locale l)`

  Returns the value for key associated with the given locale.

  `boolean`

  `getBoolean(Object key)`

  If the value of `key` is boolean, return the
  boolean value, otherwise return false.

  `boolean`

  `getBoolean(Object key,
  Locale l)`

  If the value of `key` for the given `Locale`
  is boolean, return the boolean value, otherwise return false.

  `Border`

  `getBorder(Object key)`

  If the value of `key` is a `Border` return it,
  otherwise return `null`.

  `Border`

  `getBorder(Object key,
  Locale l)`

  If the value of `key` for the given `Locale`
  is a `Border` return it, otherwise return `null`.

  `Color`

  `getColor(Object key)`

  If the value of `key` is a `Color` return it,
  otherwise return `null`.

  `Color`

  `getColor(Object key,
  Locale l)`

  If the value of `key` for the given `Locale`
  is a `Color` return it, otherwise return `null`.

  `Locale`

  `getDefaultLocale()`

  Returns the default locale.

  `Dimension`

  `getDimension(Object key)`

  If the value of `key` is a `Dimension` return it,
  otherwise return `null`.

  `Dimension`

  `getDimension(Object key,
  Locale l)`

  If the value of `key` for the given `Locale`
  is a `Dimension` return it, otherwise return `null`.

  `Font`

  `getFont(Object key)`

  If the value of `key` is a `Font` return it,
  otherwise return `null`.

  `Font`

  `getFont(Object key,
  Locale l)`

  If the value of `key` for the given `Locale`
  is a `Font` return it, otherwise return `null`.

  `Icon`

  `getIcon(Object key)`

  If the value of `key` is an `Icon` return it,
  otherwise return `null`.

  `Icon`

  `getIcon(Object key,
  Locale l)`

  If the value of `key` for the given `Locale`
  is an `Icon` return it, otherwise return `null`.

  `Insets`

  `getInsets(Object key)`

  If the value of `key` is an `Insets` return it,
  otherwise return `null`.

  `Insets`

  `getInsets(Object key,
  Locale l)`

  If the value of `key` for the given `Locale`
  is an `Insets` return it, otherwise return `null`.

  `int`

  `getInt(Object key)`

  If the value of `key` is an `Integer` return its
  integer value, otherwise return 0.

  `int`

  `getInt(Object key,
  Locale l)`

  If the value of `key` for the given `Locale`
  is an `Integer` return its integer value, otherwise return 0.

  `PropertyChangeListener[]`

  `getPropertyChangeListeners()`

  Returns an array of all the `PropertyChangeListener`s added
  to this UIDefaults with addPropertyChangeListener().

  `String`

  `getString(Object key)`

  If the value of `key` is a `String` return it,
  otherwise return `null`.

  `String`

  `getString(Object key,
  Locale l)`

  If the value of `key` for the given `Locale`
  is a `String` return it, otherwise return `null`.

  `ComponentUI`

  `getUI(JComponent target)`

  Creates an `ComponentUI` implementation for the
  specified component.

  `Class<? extends ComponentUI>`

  `getUIClass(String uiClassID)`

  Returns the L&F class that renders this component.

  `Class<? extends ComponentUI>`

  `getUIClass(String uiClassID,
  ClassLoader uiClassLoader)`

  The value of `get(uidClassID)` must be the
  `String` name of a
  class that implements the corresponding `ComponentUI`
  class.

  `protected void`

  `getUIError(String msg)`

  If `getUI()` fails for any reason,
  it calls this method before returning `null`.

  `Object`

  `put(Object key,
  Object value)`

  Sets the value of `key` to `value` for all locales.

  `void`

  `putDefaults(Object[] keyValueList)`

  Puts all of the key/value pairs in the database and
  unconditionally generates one `PropertyChangeEvent`.

  `void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Removes a `PropertyChangeListener` from the listener list.

  `void`

  `removeResourceBundle(String bundleName)`

  Removes a resource bundle from the list of resource bundles that are
  searched for localized defaults.

  `void`

  `setDefaultLocale(Locale l)`

  Sets the default locale.

  ### Methods inherited from class java.util.[Hashtable](../../../java.base/java/util/Hashtable.md "class in java.util")

  `clear, clone, compute, computeIfAbsent, computeIfPresent, contains, containsKey, containsValue, elements, entrySet, equals, forEach, getOrDefault, hashCode, isEmpty, keys, keySet, merge, putAll, putIfAbsent, rehash, remove, remove, replace, replace, replaceAll, size, toString, values`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UIDefaults

    public UIDefaults()

    Creates an empty defaults table.
  + ### UIDefaults

    public UIDefaults(int initialCapacity,
    float loadFactor)

    Creates an empty defaults table with the specified initial capacity and
    load factor.

    Parameters:
    :   `initialCapacity` - the initial capacity of the defaults table
    :   `loadFactor` - the load factor of the defaults table

    Since:
    :   1.6

    See Also:
    :   - [`Hashtable`](../../../java.base/java/util/Hashtable.md "class in java.util")
  + ### UIDefaults

    public UIDefaults([Object](../../../java.base/java/lang/Object.md "class in java.lang")[] keyValueList)

    Creates a defaults table initialized with the specified
    key/value pairs. For example:

    ```
            Object[] uiDefaults = {
                 "Font", new Font("Dialog", Font.BOLD, 12),
                "Color", Color.red,
                 "five", Integer.valueOf(5)
            }
            UIDefaults myDefaults = new UIDefaults(uiDefaults);
    ```

    Parameters:
    :   `keyValueList` - an array of objects containing the key/value
        pairs
* ## Method Details

  + ### get

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") get([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns the value for key. If the value is a
    `UIDefaults.LazyValue` then the real
    value is computed with `LazyValue.createValue()`,
    the table entry is replaced, and the real value is returned.
    If the value is an `UIDefaults.ActiveValue`
    the table entry is not replaced - the value is computed
    with `ActiveValue.createValue()` for each
    `get()` call.
    If the key is not found in the table then it is searched for in the list
    of resource bundles maintained by this object. The resource bundles are
    searched most recently added first using the locale returned by
    `getDefaultLocale`. `LazyValues` and
    `ActiveValues` are not supported in the resource bundles.

    Specified by:
    :   `get` in interface `Map<Object,Object>`

    Overrides:
    :   `get` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - the desired key

    Returns:
    :   the value for `key`

    Since:
    :   1.4

    See Also:
    :   - [`UIDefaults.LazyValue`](UIDefaults.LazyValue.md "interface in javax.swing")
        - [`UIDefaults.ActiveValue`](UIDefaults.ActiveValue.md "interface in javax.swing")
        - [`Hashtable.get(java.lang.Object)`](../../../java.base/java/util/Hashtable.md#get(java.lang.Object))
        - [`getDefaultLocale()`](#getDefaultLocale())
        - [`addResourceBundle(java.lang.String)`](#addResourceBundle(java.lang.String))
  + ### get

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") get([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns the value for key associated with the given locale.
    If the value is a `UIDefaults.LazyValue` then the real
    value is computed with `LazyValue.createValue()`,
    the table entry is replaced, and the real value is returned.
    If the value is an `UIDefaults.ActiveValue`
    the table entry is not replaced - the value is computed
    with `ActiveValue.createValue()` for each
    `get()` call.
    If the key is not found in the table then it is searched for in the list
    of resource bundles maintained by this object. The resource bundles are
    searched most recently added first using the given locale.
    `LazyValues` and `ActiveValues` are not supported
    in the resource bundles.

    Parameters:
    :   `key` - the desired key
    :   `l` - the desired `locale`

    Returns:
    :   the value for `key`

    Since:
    :   1.4

    See Also:
    :   - [`UIDefaults.LazyValue`](UIDefaults.LazyValue.md "interface in javax.swing")
        - [`UIDefaults.ActiveValue`](UIDefaults.ActiveValue.md "interface in javax.swing")
        - [`Hashtable.get(java.lang.Object)`](../../../java.base/java/util/Hashtable.md#get(java.lang.Object))
        - [`addResourceBundle(java.lang.String)`](#addResourceBundle(java.lang.String))
  + ### put

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") put([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Sets the value of `key` to `value` for all locales.
    If `key` is a string and the new value isn't
    equal to the old one, fire a `PropertyChangeEvent`.
    If value is `null`, the key is removed from the table.

    Specified by:
    :   `put` in interface `Map<Object,Object>`

    Overrides:
    :   `put` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - the unique `Object` who's value will be used
        to retrieve the data value associated with it
    :   `value` - the new `Object` to store as data under
        that key

    Returns:
    :   the previous `Object` value, or `null`

    See Also:
    :   - [`putDefaults(java.lang.Object[])`](#putDefaults(java.lang.Object%5B%5D))
        - [`Hashtable.put(K, V)`](../../../java.base/java/util/Hashtable.md#put(K,V))
  + ### putDefaults

    public void putDefaults([Object](../../../java.base/java/lang/Object.md "class in java.lang")[] keyValueList)

    Puts all of the key/value pairs in the database and
    unconditionally generates one `PropertyChangeEvent`.
    The events oldValue and newValue will be `null` and its
    `propertyName` will be "UIDefaults". The key/value pairs are
    added for all locales.

    Parameters:
    :   `keyValueList` - an array of key/value pairs

    See Also:
    :   - [`put(java.lang.Object, java.lang.Object)`](#put(java.lang.Object,java.lang.Object))
        - [`Hashtable.put(K, V)`](../../../java.base/java/util/Hashtable.md#put(K,V))
  + ### getFont

    public [Font](../../java/awt/Font.md "class in java.awt") getFont([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    If the value of `key` is a `Font` return it,
    otherwise return `null`.

    Parameters:
    :   `key` - the desired key

    Returns:
    :   if the value for `key` is a `Font`,
        return the `Font` object; otherwise return
        `null`
  + ### getFont

    public [Font](../../java/awt/Font.md "class in java.awt") getFont([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    If the value of `key` for the given `Locale`
    is a `Font` return it, otherwise return `null`.

    Parameters:
    :   `key` - the desired key
    :   `l` - the desired locale

    Returns:
    :   if the value for `key` and `Locale`
        is a `Font`,
        return the `Font` object; otherwise return
        `null`

    Since:
    :   1.4
  + ### getColor

    public [Color](../../java/awt/Color.md "class in java.awt") getColor([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    If the value of `key` is a `Color` return it,
    otherwise return `null`.

    Parameters:
    :   `key` - the desired key

    Returns:
    :   if the value for `key` is a `Color`,
        return the `Color` object; otherwise return
        `null`
  + ### getColor

    public [Color](../../java/awt/Color.md "class in java.awt") getColor([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    If the value of `key` for the given `Locale`
    is a `Color` return it, otherwise return `null`.

    Parameters:
    :   `key` - the desired key
    :   `l` - the desired locale

    Returns:
    :   if the value for `key` and `Locale`
        is a `Color`,
        return the `Color` object; otherwise return
        `null`

    Since:
    :   1.4
  + ### getIcon

    public [Icon](Icon.md "interface in javax.swing") getIcon([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    If the value of `key` is an `Icon` return it,
    otherwise return `null`.

    Parameters:
    :   `key` - the desired key

    Returns:
    :   if the value for `key` is an `Icon`,
        return the `Icon` object; otherwise return
        `null`
  + ### getIcon

    public [Icon](Icon.md "interface in javax.swing") getIcon([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    If the value of `key` for the given `Locale`
    is an `Icon` return it, otherwise return `null`.

    Parameters:
    :   `key` - the desired key
    :   `l` - the desired locale

    Returns:
    :   if the value for `key` and `Locale`
        is an `Icon`,
        return the `Icon` object; otherwise return
        `null`

    Since:
    :   1.4
  + ### getBorder

    public [Border](border/Border.md "interface in javax.swing.border") getBorder([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    If the value of `key` is a `Border` return it,
    otherwise return `null`.

    Parameters:
    :   `key` - the desired key

    Returns:
    :   if the value for `key` is a `Border`,
        return the `Border` object; otherwise return
        `null`
  + ### getBorder

    public [Border](border/Border.md "interface in javax.swing.border") getBorder([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    If the value of `key` for the given `Locale`
    is a `Border` return it, otherwise return `null`.

    Parameters:
    :   `key` - the desired key
    :   `l` - the desired locale

    Returns:
    :   if the value for `key` and `Locale`
        is a `Border`,
        return the `Border` object; otherwise return
        `null`

    Since:
    :   1.4
  + ### getString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getString([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    If the value of `key` is a `String` return it,
    otherwise return `null`.

    Parameters:
    :   `key` - the desired key

    Returns:
    :   if the value for `key` is a `String`,
        return the `String` object; otherwise return
        `null`
  + ### getString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getString([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    If the value of `key` for the given `Locale`
    is a `String` return it, otherwise return `null`.

    Parameters:
    :   `key` - the desired key
    :   `l` - the desired `Locale`

    Returns:
    :   if the value for `key` for the given
        `Locale` is a `String`,
        return the `String` object; otherwise return
        `null`

    Since:
    :   1.4
  + ### getInt

    public int getInt([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    If the value of `key` is an `Integer` return its
    integer value, otherwise return 0.

    Parameters:
    :   `key` - the desired key

    Returns:
    :   if the value for `key` is an `Integer`,
        return its value, otherwise return 0
  + ### getInt

    public int getInt([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    If the value of `key` for the given `Locale`
    is an `Integer` return its integer value, otherwise return 0.

    Parameters:
    :   `key` - the desired key
    :   `l` - the desired locale

    Returns:
    :   if the value for `key` and `Locale`
        is an `Integer`,
        return its value, otherwise return 0

    Since:
    :   1.4
  + ### getBoolean

    public boolean getBoolean([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    If the value of `key` is boolean, return the
    boolean value, otherwise return false.

    Parameters:
    :   `key` - an `Object` specifying the key for the desired boolean value

    Returns:
    :   if the value of `key` is boolean, return the
        boolean value, otherwise return false.

    Since:
    :   1.4
  + ### getBoolean

    public boolean getBoolean([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    If the value of `key` for the given `Locale`
    is boolean, return the boolean value, otherwise return false.

    Parameters:
    :   `key` - an `Object` specifying the key for the desired boolean value
    :   `l` - the desired locale

    Returns:
    :   if the value for `key` and `Locale`
        is boolean, return the
        boolean value, otherwise return false.

    Since:
    :   1.4
  + ### getInsets

    public [Insets](../../java/awt/Insets.md "class in java.awt") getInsets([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    If the value of `key` is an `Insets` return it,
    otherwise return `null`.

    Parameters:
    :   `key` - the desired key

    Returns:
    :   if the value for `key` is an `Insets`,
        return the `Insets` object; otherwise return
        `null`
  + ### getInsets

    public [Insets](../../java/awt/Insets.md "class in java.awt") getInsets([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    If the value of `key` for the given `Locale`
    is an `Insets` return it, otherwise return `null`.

    Parameters:
    :   `key` - the desired key
    :   `l` - the desired locale

    Returns:
    :   if the value for `key` and `Locale`
        is an `Insets`,
        return the `Insets` object; otherwise return
        `null`

    Since:
    :   1.4
  + ### getDimension

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") getDimension([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    If the value of `key` is a `Dimension` return it,
    otherwise return `null`.

    Parameters:
    :   `key` - the desired key

    Returns:
    :   if the value for `key` is a `Dimension`,
        return the `Dimension` object; otherwise return
        `null`
  + ### getDimension

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") getDimension([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    If the value of `key` for the given `Locale`
    is a `Dimension` return it, otherwise return `null`.

    Parameters:
    :   `key` - the desired key
    :   `l` - the desired locale

    Returns:
    :   if the value for `key` and `Locale`
        is a `Dimension`,
        return the `Dimension` object; otherwise return
        `null`

    Since:
    :   1.4
  + ### getUIClass

    public [Class](../../../java.base/java/lang/Class.md "class in java.lang")<? extends [ComponentUI](plaf/ComponentUI.md "class in javax.swing.plaf")> getUIClass([String](../../../java.base/java/lang/String.md "class in java.lang") uiClassID,
    [ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") uiClassLoader)

    The value of `get(uidClassID)` must be the
    `String` name of a
    class that implements the corresponding `ComponentUI`
    class. If the class hasn't been loaded before, this method looks
    up the class with `uiClassLoader.loadClass()` if a non
    `null`
    class loader is provided, `classForName()` otherwise.

    If a mapping for `uiClassID` exists or if the specified
    class can't be found, return `null`.

    This method is used by `getUI`, it's usually
    not necessary to call it directly.

    Parameters:
    :   `uiClassID` - a string containing the class ID
    :   `uiClassLoader` - the object which will load the class

    Returns:
    :   the value of `Class.forName(get(uidClassID))`

    See Also:
    :   - [`getUI(javax.swing.JComponent)`](#getUI(javax.swing.JComponent))
  + ### getUIClass

    public [Class](../../../java.base/java/lang/Class.md "class in java.lang")<? extends [ComponentUI](plaf/ComponentUI.md "class in javax.swing.plaf")> getUIClass([String](../../../java.base/java/lang/String.md "class in java.lang") uiClassID)

    Returns the L&F class that renders this component.

    Parameters:
    :   `uiClassID` - a string containing the class ID

    Returns:
    :   the Class object returned by
        `getUIClass(uiClassID, null)`
  + ### getUIError

    protected void getUIError([String](../../../java.base/java/lang/String.md "class in java.lang") msg)

    If `getUI()` fails for any reason,
    it calls this method before returning `null`.
    Subclasses may choose to do more or less here.

    Parameters:
    :   `msg` - message string to print

    See Also:
    :   - [`getUI(javax.swing.JComponent)`](#getUI(javax.swing.JComponent))
  + ### getUI

    public [ComponentUI](plaf/ComponentUI.md "class in javax.swing.plaf") getUI([JComponent](JComponent.md "class in javax.swing") target)

    Creates an `ComponentUI` implementation for the
    specified component. In other words create the look
    and feel specific delegate object for `target`.
    This is done in two steps:
    - Look up the name of the `ComponentUI` implementation
      class under the value returned by `target.getUIClassID()`.- Use the implementation classes static `createUI()`
        method to construct a look and feel delegate.

    Parameters:
    :   `target` - the `JComponent` which needs a UI

    Returns:
    :   the `ComponentUI` object
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Adds a `PropertyChangeListener` to the listener list.
    The listener is registered for all properties.

    A `PropertyChangeEvent` will get fired whenever a default
    is changed.

    Parameters:
    :   `listener` - the `PropertyChangeListener` to be added

    See Also:
    :   - [`PropertyChangeSupport`](../../java/beans/PropertyChangeSupport.md "class in java.beans")
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Removes a `PropertyChangeListener` from the listener list.
    This removes a `PropertyChangeListener` that was registered
    for all properties.

    Parameters:
    :   `listener` - the `PropertyChangeListener` to be removed

    See Also:
    :   - [`PropertyChangeSupport`](../../java/beans/PropertyChangeSupport.md "class in java.beans")
  + ### getPropertyChangeListeners

    public [PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans")[] getPropertyChangeListeners()

    Returns an array of all the `PropertyChangeListener`s added
    to this UIDefaults with addPropertyChangeListener().

    Returns:
    :   all of the `PropertyChangeListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### firePropertyChange

    protected void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Support for reporting bound property changes. If oldValue and
    newValue are not equal and the `PropertyChangeEvent`x
    listener list isn't empty, then fire a
    `PropertyChange` event to each listener.

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property

    See Also:
    :   - [`PropertyChangeSupport`](../../java/beans/PropertyChangeSupport.md "class in java.beans")
  + ### addResourceBundle

    public void addResourceBundle([String](../../../java.base/java/lang/String.md "class in java.lang") bundleName)

    Adds a resource bundle to the list of resource bundles that are
    searched for localized values. Resource bundles are searched in
    the reverse order they were added, using the
    [system class loader](../../../java.base/java/lang/ClassLoader.md#getSystemClassLoader()).
    In other words, the most recently added bundle is searched first.

    Parameters:
    :   `bundleName` - the base name of the resource bundle to be added

    Since:
    :   1.4

    See Also:
    :   - [`ResourceBundle`](../../../java.base/java/util/ResourceBundle.md "class in java.util")
        - [`removeResourceBundle(java.lang.String)`](#removeResourceBundle(java.lang.String))
        - [`ResourceBundle.getBundle(String, Locale, ClassLoader)`](../../../java.base/java/util/ResourceBundle.md#getBundle(java.lang.String,java.util.Locale,java.lang.ClassLoader))
  + ### removeResourceBundle

    public void removeResourceBundle([String](../../../java.base/java/lang/String.md "class in java.lang") bundleName)

    Removes a resource bundle from the list of resource bundles that are
    searched for localized defaults.

    Parameters:
    :   `bundleName` - the base name of the resource bundle to be removed

    Since:
    :   1.4

    See Also:
    :   - [`ResourceBundle`](../../../java.base/java/util/ResourceBundle.md "class in java.util")
        - [`addResourceBundle(java.lang.String)`](#addResourceBundle(java.lang.String))
  + ### setDefaultLocale

    public void setDefaultLocale([Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Sets the default locale. The default locale is used in retrieving
    localized values via `get` methods that do not take a
    locale argument. As of release 1.4, Swing UI objects should retrieve
    localized values using the locale of their component rather than the
    default locale. The default locale exists to provide compatibility with
    pre 1.4 behaviour.

    Parameters:
    :   `l` - the new default locale

    Since:
    :   1.4

    See Also:
    :   - [`getDefaultLocale()`](#getDefaultLocale())
        - [`get(Object)`](#get(java.lang.Object))
        - [`get(Object,Locale)`](#get(java.lang.Object,java.util.Locale))
  + ### getDefaultLocale

    public [Locale](../../../java.base/java/util/Locale.md "class in java.util") getDefaultLocale()

    Returns the default locale. The default locale is used in retrieving
    localized values via `get` methods that do not take a
    locale argument. As of release 1.4, Swing UI objects should retrieve
    localized values using the locale of their component rather than the
    default locale. The default locale exists to provide compatibility with
    pre 1.4 behaviour.

    Returns:
    :   the default locale

    Since:
    :   1.4

    See Also:
    :   - [`setDefaultLocale(java.util.Locale)`](#setDefaultLocale(java.util.Locale))
        - [`get(Object)`](#get(java.lang.Object))
        - [`get(Object,Locale)`](#get(java.lang.Object,java.util.Locale))