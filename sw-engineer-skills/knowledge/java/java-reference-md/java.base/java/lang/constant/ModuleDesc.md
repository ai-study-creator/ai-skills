Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Interface ModuleDesc

---

public sealed interface ModuleDesc

A nominal descriptor for a `Module` constant.

To create a [`ModuleDesc`](ModuleDesc.md "interface in java.lang.constant") for a module, use the [`of(String)`](#of(java.lang.String))
method.

Since:
:   21

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object o)`

  Compare the specified object with this descriptor for equality.

  `String`

  `name()`

  Returns the module name of this [`ModuleDesc`](ModuleDesc.md "interface in java.lang.constant").

  `static ModuleDesc`

  `of(String name)`

  Returns a [`ModuleDesc`](ModuleDesc.md "interface in java.lang.constant") for a module,
  given the name of the module.

* ## Method Details

  + ### of

    static [ModuleDesc](ModuleDesc.md "interface in java.lang.constant") of([String](../String.md "class in java.lang") name)

    Returns a [`ModuleDesc`](ModuleDesc.md "interface in java.lang.constant") for a module,
    given the name of the module.

    Parameters:
    :   `name` - the module name

    Returns:
    :   a [`ModuleDesc`](ModuleDesc.md "interface in java.lang.constant") describing the desired module

    Throws:
    :   `NullPointerException` - if the argument is `null`
    :   `IllegalArgumentException` - if the name string is not in the
        correct format
  + ### name

    [String](../String.md "class in java.lang") name()

    Returns the module name of this [`ModuleDesc`](ModuleDesc.md "interface in java.lang.constant").

    Returns:
    :   the module name
  + ### equals

    boolean equals([Object](../Object.md "class in java.lang") o)

    Compare the specified object with this descriptor for equality.
    Returns `true` if and only if the specified object is
    also a [`ModuleDesc`](ModuleDesc.md "interface in java.lang.constant") and both describe the same module.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the other object

    Returns:
    :   whether this descriptor is equal to the other object

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")