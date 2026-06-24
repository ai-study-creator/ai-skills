Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface Observer

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="9")
public interface Observer

Deprecated.

This interface has been deprecated. See the [`Observable`](Observable.md "class in java.util")
class for further information.

A class can implement the `Observer` interface when it
wants to be informed of changes in observable objects.

Since:
:   1.0

See Also:
:   * [`Observable`](Observable.md "class in java.util")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `update(Observable o,
  Object arg)`

  Deprecated.

  This method is called whenever the observed object is changed.

* ## Method Details

  + ### update

    void update([Observable](Observable.md "class in java.util") o,
    [Object](../lang/Object.md "class in java.lang") arg)

    Deprecated.

    This method is called whenever the observed object is changed. An
    application calls an `Observable` object's
    `notifyObservers` method to have all the object's
    observers notified of the change.

    Parameters:
    :   `o` - the observable object.
    :   `arg` - an argument passed to the `notifyObservers`
        method.