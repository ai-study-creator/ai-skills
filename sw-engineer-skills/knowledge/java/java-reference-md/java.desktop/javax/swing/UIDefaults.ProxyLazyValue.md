Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class UIDefaults.ProxyLazyValue

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.UIDefaults.ProxyLazyValue

All Implemented Interfaces:
:   `UIDefaults.LazyValue`

Enclosing class:
:   `UIDefaults`

---

public static class UIDefaults.ProxyLazyValue
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [UIDefaults.LazyValue](UIDefaults.LazyValue.md "interface in javax.swing")

This class provides an implementation of `LazyValue`
which can be
used to delay loading of the Class for the instance to be created.
It also avoids creation of an anonymous inner class for the
`LazyValue`
subclass. Both of these improve performance at the time that a
a Look and Feel is loaded, at the cost of a slight performance
reduction the first time `createValue` is called
(since Reflection APIs are used).

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ProxyLazyValue(String c)`

  Creates a `LazyValue` which will construct an instance
  when asked.

  `ProxyLazyValue(String c,
  Object[] o)`

  Creates a `LazyValue` which will construct an instance
  when asked.

  `ProxyLazyValue(String c,
  String m)`

  Creates a `LazyValue` which will construct an instance
  when asked.

  `ProxyLazyValue(String c,
  String m,
  Object[] o)`

  Creates a `LazyValue` which will construct an instance
  when asked.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `createValue(UIDefaults table)`

  Creates the value retrieved from the `UIDefaults` table.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ProxyLazyValue

    public ProxyLazyValue([String](../../../java.base/java/lang/String.md "class in java.lang") c)

    Creates a `LazyValue` which will construct an instance
    when asked.

    Parameters:
    :   `c` - a `String` specifying the classname
        of the instance to be created on demand
  + ### ProxyLazyValue

    public ProxyLazyValue([String](../../../java.base/java/lang/String.md "class in java.lang") c,
    [String](../../../java.base/java/lang/String.md "class in java.lang") m)

    Creates a `LazyValue` which will construct an instance
    when asked.

    Parameters:
    :   `c` - a `String` specifying the classname of
        the class
        containing a static method to be called for
        instance creation
    :   `m` - a `String` specifying the static
        method to be called on class c
  + ### ProxyLazyValue

    public ProxyLazyValue([String](../../../java.base/java/lang/String.md "class in java.lang") c,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] o)

    Creates a `LazyValue` which will construct an instance
    when asked.

    Parameters:
    :   `c` - a `String` specifying the classname
        of the instance to be created on demand
    :   `o` - an array of `Objects` to be passed as
        parameters to the constructor in class c
  + ### ProxyLazyValue

    public ProxyLazyValue([String](../../../java.base/java/lang/String.md "class in java.lang") c,
    [String](../../../java.base/java/lang/String.md "class in java.lang") m,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] o)

    Creates a `LazyValue` which will construct an instance
    when asked.

    Parameters:
    :   `c` - a `String` specifying the classname
        of the class
        containing a static method to be called for
        instance creation.
    :   `m` - a `String` specifying the static method
        to be called on class c
    :   `o` - an array of `Objects` to be passed as
        parameters to the static method in class c
* ## Method Details

  + ### createValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") createValue([UIDefaults](UIDefaults.md "class in javax.swing") table)

    Creates the value retrieved from the `UIDefaults` table.
    The object is created each time it is accessed.

    Specified by:
    :   `createValue` in interface `UIDefaults.LazyValue`

    Parameters:
    :   `table` - a `UIDefaults` table

    Returns:
    :   the created `Object`