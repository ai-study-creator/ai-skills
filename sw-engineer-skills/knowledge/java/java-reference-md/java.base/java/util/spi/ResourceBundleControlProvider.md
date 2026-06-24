Module [java.base](../../../module-summary.md)

Package [java.util.spi](package-summary.md)

# Interface ResourceBundleControlProvider

---

public interface ResourceBundleControlProvider

An interface for service providers that provide implementations of [`ResourceBundle.Control`](../ResourceBundle.Control.md "class in java.util"). The [default resource bundle loading
behavior](../ResourceBundle.md#default_behavior) of the `ResourceBundle.getBundle` factory methods that take
no [`ResourceBundle.Control`](../ResourceBundle.Control.md "class in java.util") instance can be modified with `ResourceBundleControlProvider` implementations.

Provider implementations are loaded from the application's class path
using [`ServiceLoader`](../ServiceLoader.md "class in java.util") at the first invocation of the
`ResourceBundle.getBundle` factory method that takes no
[`ResourceBundle.Control`](../ResourceBundle.Control.md "class in java.util") instance.

All `ResourceBundleControlProvider`s are ignored in named modules.

Since:
:   1.8

See Also:
:   * [`ResourceBundle.getBundle`](../ResourceBundle.md#getBundle(java.lang.String,java.util.Locale,java.lang.ClassLoader,java.util.ResourceBundle.Control))
    * [`ServiceLoader.load(Class)`](../ServiceLoader.md#load(java.lang.Class))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ResourceBundle.Control`

  `getControl(String baseName)`

  Returns a `ResourceBundle.Control` instance that is used
  to handle resource bundle loading for the given `baseName`.

* ## Method Details

  + ### getControl

    [ResourceBundle.Control](../ResourceBundle.Control.md "class in java.util") getControl([String](../../lang/String.md "class in java.lang") baseName)

    Returns a `ResourceBundle.Control` instance that is used
    to handle resource bundle loading for the given `baseName`. This method must return `null` if the given
    `baseName` isn't handled by this provider.

    Parameters:
    :   `baseName` - the base name of the resource bundle

    Returns:
    :   a `ResourceBundle.Control` instance,
        or `null` if the given `baseName` is not
        applicable to this provider.

    Throws:
    :   `NullPointerException` - if `baseName` is `null`