Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleKeyBinding

---

public interface AccessibleKeyBinding

The `AccessibleKeyBinding` interface should be supported by any object
that has a keyboard bindings such as a keyboard mnemonic and/or keyboard
shortcut which can be used to select the object. This interface provides the
standard mechanism for an assistive technology to determine the key bindings
which exist for this object. Any object that has such key bindings should
support this interface.

Since:
:   1.4

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getAccessibleKeyBinding(int i)`

  Returns a key binding for this object.

  `int`

  `getAccessibleKeyBindingCount()`

  Returns the number of key bindings for this object.

* ## Method Details

  + ### getAccessibleKeyBindingCount

    int getAccessibleKeyBindingCount()

    Returns the number of key bindings for this object.

    Returns:
    :   the zero-based number of key bindings for this object
  + ### getAccessibleKeyBinding

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAccessibleKeyBinding(int i)

    Returns a key binding for this object. The value returned is an
    `java.lang.Object` which must be cast to appropriate type depending
    on the underlying implementation of the key.

    Parameters:
    :   `i` - zero-based index of the key bindings

    Returns:
    :   a `javax.lang.Object` which specifies the key binding

    See Also:
    :   - [`getAccessibleKeyBindingCount()`](#getAccessibleKeyBindingCount())