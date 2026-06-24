Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class UIDefaults.LazyInputMap

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.UIDefaults.LazyInputMap

All Implemented Interfaces:
:   `UIDefaults.LazyValue`

Enclosing class:
:   `UIDefaults`

---

public static class UIDefaults.LazyInputMap
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [UIDefaults.LazyValue](UIDefaults.LazyValue.md "interface in javax.swing")

`LazyInputMap` will create a `InputMap`
in its `createValue`
method. The bindings are passed in the constructor.
The bindings are an array with
the even number entries being string `KeyStrokes`
(eg "alt SPACE") and
the odd number entries being the value to use in the
`InputMap` (and the key in the `ActionMap`).

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LazyInputMap(Object[] bindings)`

  Constructs a `LazyInputMap`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `createValue(UIDefaults table)`

  Creates an `InputMap` with the bindings that are
  passed in.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LazyInputMap

    public LazyInputMap([Object](../../../java.base/java/lang/Object.md "class in java.lang")[] bindings)

    Constructs a `LazyInputMap`.

    Parameters:
    :   `bindings` - the bindings
* ## Method Details

  + ### createValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") createValue([UIDefaults](UIDefaults.md "class in javax.swing") table)

    Creates an `InputMap` with the bindings that are
    passed in.

    Specified by:
    :   `createValue` in interface `UIDefaults.LazyValue`

    Parameters:
    :   `table` - a `UIDefaults` table

    Returns:
    :   the `InputMap`