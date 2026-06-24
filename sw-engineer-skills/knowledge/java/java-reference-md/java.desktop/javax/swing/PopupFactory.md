Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class PopupFactory

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.PopupFactory

---

public class PopupFactory
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

`PopupFactory`, as the name implies, is used to obtain
instances of `Popup`s. `Popup`s are used to
display a `Component` above all other `Component`s
in a particular containment hierarchy. The general contract is that
once you have obtained a `Popup` from a
`PopupFactory`, you must invoke `hide` on the
`Popup`. The typical usage is:

```
   PopupFactory factory = PopupFactory.getSharedInstance();
   Popup popup = factory.getPopup(owner, contents, x, y);
   popup.show();
   ...
   popup.hide();
```

Since:
:   1.4

See Also:
:   * [`Popup`](Popup.md "class in javax.swing")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PopupFactory()`

  Constructs a `PopupFactory`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Popup`

  `getPopup(Component owner,
  Component contents,
  int x,
  int y)`

  Creates a `Popup` for the Component `owner`
  containing the Component `contents`.

  `protected Popup`

  `getPopup(Component owner,
  Component contents,
  int x,
  int y,
  boolean isHeavyWeightPopup)`

  Creates a `Popup` for the Component `owner`
  containing the Component `contents`.

  `static PopupFactory`

  `getSharedInstance()`

  Returns the shared `PopupFactory` which can be used
  to obtain `Popup`s.

  `static void`

  `setSharedInstance(PopupFactory factory)`

  Sets the `PopupFactory` that will be used to obtain
  `Popup`s.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PopupFactory

    public PopupFactory()

    Constructs a `PopupFactory`.
* ## Method Details

  + ### setSharedInstance

    public static void setSharedInstance([PopupFactory](PopupFactory.md "class in javax.swing") factory)

    Sets the `PopupFactory` that will be used to obtain
    `Popup`s.
    This will throw an `IllegalArgumentException` if
    `factory` is null.

    Parameters:
    :   `factory` - Shared PopupFactory

    Throws:
    :   `IllegalArgumentException` - if `factory` is null

    See Also:
    :   - [`getPopup(java.awt.Component, java.awt.Component, int, int)`](#getPopup(java.awt.Component,java.awt.Component,int,int))
  + ### getSharedInstance

    public static [PopupFactory](PopupFactory.md "class in javax.swing") getSharedInstance()

    Returns the shared `PopupFactory` which can be used
    to obtain `Popup`s.

    Returns:
    :   Shared PopupFactory
  + ### getPopup

    public [Popup](Popup.md "class in javax.swing") getPopup([Component](../../java/awt/Component.md "class in java.awt") owner,
    [Component](../../java/awt/Component.md "class in java.awt") contents,
    int x,
    int y)
    throws [IllegalArgumentException](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a `Popup` for the Component `owner`
    containing the Component `contents`. `owner`
    is used to determine which `Window` the new
    `Popup` will parent the `Component` the
    `Popup` creates to. A null `owner` implies there
    is no valid parent. `x` and
    `y` specify the preferred initial location to place
    the `Popup` at. Based on screen size, or other parameters,
    the `Popup` may not display at `x` and
    `y`.

    Parameters:
    :   `owner` - Component mouse coordinates are relative to, may be null
    :   `contents` - Contents of the Popup
    :   `x` - Initial x screen coordinate
    :   `y` - Initial y screen coordinate

    Returns:
    :   Popup containing Contents

    Throws:
    :   `IllegalArgumentException` - if contents is null
  + ### getPopup

    protected [Popup](Popup.md "class in javax.swing") getPopup([Component](../../java/awt/Component.md "class in java.awt") owner,
    [Component](../../java/awt/Component.md "class in java.awt") contents,
    int x,
    int y,
    boolean isHeavyWeightPopup)
    throws [IllegalArgumentException](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a `Popup` for the Component `owner`
    containing the Component `contents`.
    The window containing the component `owner`
    will be used as the parent window. A null `owner` implies there
    is no valid parent. `x` and `y` specify the preferred
    initial location to place the `Popup` at. Based on screen size,
    or other parameters, the `Popup` may not display at `x` and
    `y`. `isHeavyWeightPopup` specifies if the `Popup`
    will be heavyweight. Passing `true` will force the `Popup`
    type to be heavyweight, otherwise `Popup` type will be selected by
    `Popup` factory. Lightweight `Popup` windows are more
    efficient than heavyweight (native peer) windows, but lightweight
    and heavyweight components do not mix well in a GUI.
    This method is intended to be used only by PopupFactory sub-classes.

    Parameters:
    :   `owner` - Component mouse coordinates are relative to, may be null
    :   `contents` - Contents of the Popup
    :   `x` - Initial x screen coordinate
    :   `y` - Initial y screen coordinate
    :   `isHeavyWeightPopup` - true if Popup should be heavy weight,
        otherwise popup type will be selected by popup factory.

    Returns:
    :   Popup containing Contents

    Throws:
    :   `IllegalArgumentException` - if contents is null