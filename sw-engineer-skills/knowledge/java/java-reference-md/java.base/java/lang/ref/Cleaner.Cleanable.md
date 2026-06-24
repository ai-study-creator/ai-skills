Module [java.base](../../../module-summary.md)

Package [java.lang.ref](package-summary.md)

# Interface Cleaner.Cleanable

Enclosing class:
:   `Cleaner`

---

public static interface Cleaner.Cleanable

`Cleanable` represents an object and a
cleaning action registered in a `Cleaner`.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `clean()`

  Unregisters the cleanable and invokes the cleaning action.

* ## Method Details

  + ### clean

    void clean()

    Unregisters the cleanable and invokes the cleaning action.
    The cleanable's cleaning action is invoked at most once
    regardless of the number of calls to `clean`.