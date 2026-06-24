Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class Popup

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.Popup

---

public class Popup
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Popups are used to display a `Component` to the user, typically
on top of all the other `Component`s in a particular containment
hierarchy. `Popup`s have a very small life cycle. Once you
have obtained a `Popup`, and hidden it (invoked the
`hide` method), you should no longer
invoke any methods on it. This allows the `PopupFactory` to cache
`Popup`s for later use.

The general contract is that if you need to change the size of the
`Component`, or location of the `Popup`, you should
obtain a new `Popup`.

`Popup` does not descend from `Component`, rather
implementations of `Popup` are responsible for creating
and maintaining their own `Component`s to render the
requested `Component` to the user.

You typically do not explicitly create an instance of `Popup`,
instead obtain one from a `PopupFactory`.

Since:
:   1.4

See Also:
:   * [`PopupFactory`](PopupFactory.md "class in javax.swing")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Popup()`

  Creates a `Popup`.

  `protected`

  `Popup(Component owner,
  Component contents,
  int x,
  int y)`

  Creates a `Popup` for the Component `owner`
  containing the Component `contents`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `hide()`

  Hides and disposes of the `Popup`.

  `void`

  `show()`

  Makes the `Popup` visible.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Popup

    protected Popup([Component](../../java/awt/Component.md "class in java.awt") owner,
    [Component](../../java/awt/Component.md "class in java.awt") contents,
    int x,
    int y)

    Creates a `Popup` for the Component `owner`
    containing the Component `contents`. `owner`
    is used to determine which `Window` the new
    `Popup` will parent the `Component` the
    `Popup` creates to.
    A null `owner` implies there is no valid parent.
    `x` and
    `y` specify the preferred initial location to place
    the `Popup` at. Based on screen size, or other parameters,
    the `Popup` may not display at `x` and
    `y`.

    Parameters:
    :   `owner` - Component mouse coordinates are relative to, may be null
    :   `contents` - Contents of the Popup
    :   `x` - Initial x screen coordinate
    :   `y` - Initial y screen coordinate

    Throws:
    :   `IllegalArgumentException` - if contents is null
  + ### Popup

    protected Popup()

    Creates a `Popup`. This is provided for subclasses.
* ## Method Details

  + ### show

    public void show()

    Makes the `Popup` visible. If the `Popup` is
    currently visible, this has no effect.
  + ### hide

    public void hide()

    Hides and disposes of the `Popup`. Once a `Popup`
    has been disposed you should no longer invoke methods on it. A
    `dispose`d `Popup` may be reclaimed and later used
    based on the `PopupFactory`. As such, if you invoke methods
    on a `disposed` `Popup`, indeterminate
    behavior will result.