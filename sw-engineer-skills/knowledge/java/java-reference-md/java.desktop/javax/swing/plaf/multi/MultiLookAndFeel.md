Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.multi](package-summary.md)

# Class MultiLookAndFeel

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.LookAndFeel](../../LookAndFeel.md "class in javax.swing")

javax.swing.plaf.multi.MultiLookAndFeel

---

public class MultiLookAndFeel
extends [LookAndFeel](../../LookAndFeel.md "class in javax.swing")

A multiplexing look and feel that allows more than one UI
to be associated with a component at the same time.
The primary look and feel is called
the *default* look and feel,
and the other look and feels are called *auxiliary*.

For further information, see
[Using the
Multiplexing Look and Feel.](doc-files/multi_tsc.md)

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`UIManager.addAuxiliaryLookAndFeel(javax.swing.LookAndFeel)`](../../UIManager.md#addAuxiliaryLookAndFeel(javax.swing.LookAndFeel))
    * [`javax.swing.plaf.multi`](package-summary.md)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MultiLookAndFeel()`

  Constructs a `MultiLookAndFeel`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUIs(ComponentUI mui,
  Vector<ComponentUI> uis,
  JComponent target)`

  Creates the `ComponentUI` objects
  required to present
  the `target` component,
  placing the objects in the `uis` vector and
  returning the
  `ComponentUI` object
  that best represents the component's UI.

  `UIDefaults`

  `getDefaults()`

  Creates, initializes, and returns
  the look and feel specific defaults.

  `String`

  `getDescription()`

  Returns a one-line description of this look and feel.

  `String`

  `getID()`

  Returns a string, suitable for use by applications/services,
  that identifies this look and feel.

  `String`

  `getName()`

  Returns a string, suitable for use in menus,
  that identifies this look and feel.

  `boolean`

  `isNativeLookAndFeel()`

  Returns `false`;
  this look and feel is not native to any platform.

  `boolean`

  `isSupportedLookAndFeel()`

  Returns `true`;
  every platform permits this look and feel.

  `protected static ComponentUI[]`

  `uisToArray(Vector<? extends ComponentUI> uis)`

  Creates an array,
  populates it with UI objects from the passed-in vector,
  and returns the array.

  ### Methods inherited from class javax.swing.[LookAndFeel](../../LookAndFeel.md "class in javax.swing")

  `getDesktopPropertyValue, getDisabledIcon, getDisabledSelectedIcon, getLayoutStyle, getSupportsWindowDecorations, initialize, installBorder, installColors, installColorsAndFont, installProperty, loadKeyBindings, makeComponentInputMap, makeIcon, makeInputMap, makeKeyBindings, provideErrorFeedback, toString, uninitialize, uninstallBorder`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MultiLookAndFeel

    public MultiLookAndFeel()

    Constructs a `MultiLookAndFeel`.
* ## Method Details

  + ### getName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns a string, suitable for use in menus,
    that identifies this look and feel.

    Specified by:
    :   `getName` in class `LookAndFeel`

    Returns:
    :   a string such as "Multiplexing Look and Feel"
  + ### getID

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getID()

    Returns a string, suitable for use by applications/services,
    that identifies this look and feel.

    Specified by:
    :   `getID` in class `LookAndFeel`

    Returns:
    :   "Multiplex"
  + ### getDescription

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns a one-line description of this look and feel.

    Specified by:
    :   `getDescription` in class `LookAndFeel`

    Returns:
    :   a descriptive string such as "Allows multiple UI instances per component instance"
  + ### isNativeLookAndFeel

    public boolean isNativeLookAndFeel()

    Returns `false`;
    this look and feel is not native to any platform.

    Specified by:
    :   `isNativeLookAndFeel` in class `LookAndFeel`

    Returns:
    :   `false`
  + ### isSupportedLookAndFeel

    public boolean isSupportedLookAndFeel()

    Returns `true`;
    every platform permits this look and feel.

    Specified by:
    :   `isSupportedLookAndFeel` in class `LookAndFeel`

    Returns:
    :   `true`

    See Also:
    :   - [`UIManager.setLookAndFeel(javax.swing.LookAndFeel)`](../../UIManager.md#setLookAndFeel(javax.swing.LookAndFeel))
  + ### getDefaults

    public [UIDefaults](../../UIDefaults.md "class in javax.swing") getDefaults()

    Creates, initializes, and returns
    the look and feel specific defaults.
    For this look and feel,
    the defaults consist solely of
    mappings of UI class IDs
    (such as "ButtonUI")
    to `ComponentUI` class names
    (such as "javax.swing.plaf.multi.MultiButtonUI").

    Overrides:
    :   `getDefaults` in class `LookAndFeel`

    Returns:
    :   an initialized `UIDefaults` object

    See Also:
    :   - [`JComponent.getUIClassID()`](../../JComponent.md#getUIClassID())
  + ### createUIs

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUIs([ComponentUI](../ComponentUI.md "class in javax.swing.plaf") mui,
    [Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")> uis,
    [JComponent](../../JComponent.md "class in javax.swing") target)

    Creates the `ComponentUI` objects
    required to present
    the `target` component,
    placing the objects in the `uis` vector and
    returning the
    `ComponentUI` object
    that best represents the component's UI.
    This method finds the `ComponentUI` objects
    by invoking
    `getDefaults().getUI(target)` on each
    default and auxiliary look and feel currently in use.
    The first UI object this method adds
    to the `uis` vector
    is for the default look and feel.

    This method is invoked by the `createUI` method
    of `MultiXxxxUI` classes.

    Parameters:
    :   `mui` - the `ComponentUI` object
        that represents the complete UI
        for the `target` component;
        this should be an instance
        of one of the `MultiXxxxUI` classes
    :   `uis` - a `Vector`;
        generally this is the `uis` field
        of the `mui` argument
    :   `target` - a component whose UI is represented by `mui`

    Returns:
    :   `mui` if the component has any auxiliary UI objects;
        otherwise, returns the UI object for the default look and feel
        or `null` if the default UI object couldn't be found

    See Also:
    :   - [`UIManager.getAuxiliaryLookAndFeels()`](../../UIManager.md#getAuxiliaryLookAndFeels())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](../../UIDefaults.md#getUI(javax.swing.JComponent))
        - [`MultiButtonUI.uis`](MultiButtonUI.md#uis)
        - [`MultiButtonUI.createUI(javax.swing.JComponent)`](MultiButtonUI.md#createUI(javax.swing.JComponent))
  + ### uisToArray

    protected static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf")[] uisToArray([Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<? extends [ComponentUI](../ComponentUI.md "class in javax.swing.plaf")> uis)

    Creates an array,
    populates it with UI objects from the passed-in vector,
    and returns the array.
    If `uis` is null,
    this method returns an array with zero elements.
    If `uis` is an empty vector,
    this method returns `null`.
    A run-time error occurs if any objects in the `uis` vector
    are not of type `ComponentUI`.

    Parameters:
    :   `uis` - a vector containing `ComponentUI` objects

    Returns:
    :   an array equivalent to the passed-in vector