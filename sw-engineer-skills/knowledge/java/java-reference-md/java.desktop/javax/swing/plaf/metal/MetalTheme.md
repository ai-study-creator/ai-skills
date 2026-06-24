Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalTheme

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.metal.MetalTheme

Direct Known Subclasses:
:   `DefaultMetalTheme`

---

public abstract class MetalTheme
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

`MetalTheme` provides the color palette and fonts used by
the Java Look and Feel.

`MetalTheme` is abstract, see `DefaultMetalTheme` and
`OceanTheme` for concrete implementations.

`MetalLookAndFeel` maintains the current theme that the
the `ComponentUI` implementations for metal use. Refer to
[`MetalLookAndFeel.setCurrentTheme(MetalTheme)`](MetalLookAndFeel.md#setCurrentTheme(javax.swing.plaf.metal.MetalTheme)) for details on changing
the current theme.

`MetalTheme` provides a number of public methods for getting
colors. These methods are implemented in terms of a
handful of protected abstract methods. A subclass need only override
the protected abstract methods (`getPrimary1`,
`getPrimary2`, `getPrimary3`, `getSecondary1`,
`getSecondary2`, and `getSecondary3`); although a subclass
may override the other public methods for more control over the set of
colors that are used.

Concrete implementations of `MetalTheme` must return `non-null`
values from all methods. While the behavior of returning `null` is
not specified, returning `null` will result in incorrect behavior.

It is strongly recommended that subclasses return completely opaque colors.
To do otherwise may result in rendering problems, such as visual garbage.

See Also:
:   * [`DefaultMetalTheme`](DefaultMetalTheme.md "class in javax.swing.plaf.metal")
    * [`OceanTheme`](OceanTheme.md "class in javax.swing.plaf.metal")
    * [`MetalLookAndFeel.setCurrentTheme(javax.swing.plaf.metal.MetalTheme)`](MetalLookAndFeel.md#setCurrentTheme(javax.swing.plaf.metal.MetalTheme))

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MetalTheme()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addCustomEntriesToTable(UIDefaults table)`

  Adds values specific to this theme to the defaults table.

  `ColorUIResource`

  `getAcceleratorForeground()`

  Returns the accelerator foreground color.

  `ColorUIResource`

  `getAcceleratorSelectedForeground()`

  Returns the accelerator selected foreground color.

  `protected ColorUIResource`

  `getBlack()`

  Returns the black color.

  `ColorUIResource`

  `getControl()`

  Returns the control color.

  `ColorUIResource`

  `getControlDarkShadow()`

  Returns the control dark shadow color.

  `ColorUIResource`

  `getControlDisabled()`

  Returns the control disabled color.

  `ColorUIResource`

  `getControlHighlight()`

  Returns the control highlight color.

  `ColorUIResource`

  `getControlInfo()`

  Returns the control info color.

  `ColorUIResource`

  `getControlShadow()`

  Returns the control shadow color.

  `ColorUIResource`

  `getControlTextColor()`

  Returns the control text color.

  `abstract FontUIResource`

  `getControlTextFont()`

  Returns the control text font.

  `ColorUIResource`

  `getDesktopColor()`

  Returns the desktop color.

  `ColorUIResource`

  `getFocusColor()`

  Returns the focus color.

  `ColorUIResource`

  `getHighlightedTextColor()`

  Returns the highlighted text color.

  `ColorUIResource`

  `getInactiveControlTextColor()`

  Returns the inactive control text color.

  `ColorUIResource`

  `getInactiveSystemTextColor()`

  Returns the inactive system text color.

  `ColorUIResource`

  `getMenuBackground()`

  Returns the menu background color.

  `ColorUIResource`

  `getMenuDisabledForeground()`

  Returns the menu disabled foreground color.

  `ColorUIResource`

  `getMenuForeground()`

  Returns the menu foreground color.

  `ColorUIResource`

  `getMenuSelectedBackground()`

  Returns the menu selected background color.

  `ColorUIResource`

  `getMenuSelectedForeground()`

  Returns the menu selected foreground color.

  `abstract FontUIResource`

  `getMenuTextFont()`

  Returns the menu text font.

  `abstract String`

  `getName()`

  Returns the name of this theme.

  `protected abstract ColorUIResource`

  `getPrimary1()`

  Returns the primary 1 color.

  `protected abstract ColorUIResource`

  `getPrimary2()`

  Returns the primary 2 color.

  `protected abstract ColorUIResource`

  `getPrimary3()`

  Returns the primary 3 color.

  `ColorUIResource`

  `getPrimaryControl()`

  Returns the primary control color.

  `ColorUIResource`

  `getPrimaryControlDarkShadow()`

  Returns the primary control dark shadow color.

  `ColorUIResource`

  `getPrimaryControlHighlight()`

  Returns the primary control highlight color.

  `ColorUIResource`

  `getPrimaryControlInfo()`

  Returns the primary control info color.

  `ColorUIResource`

  `getPrimaryControlShadow()`

  Returns the primary control shadow color.

  `protected abstract ColorUIResource`

  `getSecondary1()`

  Returns the secondary 1 color.

  `protected abstract ColorUIResource`

  `getSecondary2()`

  Returns the secondary 2 color.

  `protected abstract ColorUIResource`

  `getSecondary3()`

  Returns the secondary 3 color.

  `ColorUIResource`

  `getSeparatorBackground()`

  Returns the separator background color.

  `ColorUIResource`

  `getSeparatorForeground()`

  Returns the separator foreground color.

  `abstract FontUIResource`

  `getSubTextFont()`

  Returns the sub-text font.

  `ColorUIResource`

  `getSystemTextColor()`

  Returns the system text color.

  `abstract FontUIResource`

  `getSystemTextFont()`

  Returns the system text font.

  `ColorUIResource`

  `getTextHighlightColor()`

  Returns the text highlight color.

  `ColorUIResource`

  `getUserTextColor()`

  Returns the user text color.

  `abstract FontUIResource`

  `getUserTextFont()`

  Returns the user text font.

  `protected ColorUIResource`

  `getWhite()`

  Returns the white color.

  `ColorUIResource`

  `getWindowBackground()`

  Returns the window background color.

  `ColorUIResource`

  `getWindowTitleBackground()`

  Returns the window title background color.

  `abstract FontUIResource`

  `getWindowTitleFont()`

  Returns the window title font.

  `ColorUIResource`

  `getWindowTitleForeground()`

  Returns the window title foreground color.

  `ColorUIResource`

  `getWindowTitleInactiveBackground()`

  Returns the window title inactive background color.

  `ColorUIResource`

  `getWindowTitleInactiveForeground()`

  Returns the window title inactive foreground color.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalTheme

    protected MetalTheme()

    Constructor for subclasses to call.
* ## Method Details

  + ### getName

    public abstract [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of this theme.

    Returns:
    :   the name of this theme
  + ### getPrimary1

    protected abstract [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimary1()

    Returns the primary 1 color.

    Returns:
    :   the primary 1 color
  + ### getPrimary2

    protected abstract [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimary2()

    Returns the primary 2 color.

    Returns:
    :   the primary 2 color
  + ### getPrimary3

    protected abstract [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimary3()

    Returns the primary 3 color.

    Returns:
    :   the primary 3 color
  + ### getSecondary1

    protected abstract [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSecondary1()

    Returns the secondary 1 color.

    Returns:
    :   the secondary 1 color
  + ### getSecondary2

    protected abstract [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSecondary2()

    Returns the secondary 2 color.

    Returns:
    :   the secondary 2 color
  + ### getSecondary3

    protected abstract [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSecondary3()

    Returns the secondary 3 color.

    Returns:
    :   the secondary 3 color
  + ### getControlTextFont

    public abstract [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getControlTextFont()

    Returns the control text font.

    Returns:
    :   the control text font
  + ### getSystemTextFont

    public abstract [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getSystemTextFont()

    Returns the system text font.

    Returns:
    :   the system text font
  + ### getUserTextFont

    public abstract [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getUserTextFont()

    Returns the user text font.

    Returns:
    :   the user text font
  + ### getMenuTextFont

    public abstract [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getMenuTextFont()

    Returns the menu text font.

    Returns:
    :   the menu text font
  + ### getWindowTitleFont

    public abstract [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getWindowTitleFont()

    Returns the window title font.

    Returns:
    :   the window title font
  + ### getSubTextFont

    public abstract [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getSubTextFont()

    Returns the sub-text font.

    Returns:
    :   the sub-text font
  + ### getWhite

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getWhite()

    Returns the white color. This returns opaque white
    (`0xFFFFFFFF`).

    Returns:
    :   the white color
  + ### getBlack

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getBlack()

    Returns the black color. This returns opaque black
    (`0xFF000000`).

    Returns:
    :   the black color
  + ### getFocusColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getFocusColor()

    Returns the focus color. This returns the value of
    `getPrimary2()`.

    Returns:
    :   the focus color
  + ### getDesktopColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getDesktopColor()

    Returns the desktop color. This returns the value of
    `getPrimary2()`.

    Returns:
    :   the desktop color
  + ### getControl

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getControl()

    Returns the control color. This returns the value of
    `getSecondary3()`.

    Returns:
    :   the control color
  + ### getControlShadow

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getControlShadow()

    Returns the control shadow color. This returns
    the value of `getSecondary2()`.

    Returns:
    :   the control shadow color
  + ### getControlDarkShadow

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getControlDarkShadow()

    Returns the control dark shadow color. This returns
    the value of `getSecondary1()`.

    Returns:
    :   the control dark shadow color
  + ### getControlInfo

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getControlInfo()

    Returns the control info color. This returns
    the value of `getBlack()`.

    Returns:
    :   the control info color
  + ### getControlHighlight

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getControlHighlight()

    Returns the control highlight color. This returns
    the value of `getWhite()`.

    Returns:
    :   the control highlight color
  + ### getControlDisabled

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getControlDisabled()

    Returns the control disabled color. This returns
    the value of `getSecondary2()`.

    Returns:
    :   the control disabled color
  + ### getPrimaryControl

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimaryControl()

    Returns the primary control color. This returns
    the value of `getPrimary3()`.

    Returns:
    :   the primary control color
  + ### getPrimaryControlShadow

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimaryControlShadow()

    Returns the primary control shadow color. This returns
    the value of `getPrimary2()`.

    Returns:
    :   the primary control shadow color
  + ### getPrimaryControlDarkShadow

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimaryControlDarkShadow()

    Returns the primary control dark shadow color. This
    returns the value of `getPrimary1()`.

    Returns:
    :   the primary control dark shadow color
  + ### getPrimaryControlInfo

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimaryControlInfo()

    Returns the primary control info color. This
    returns the value of `getBlack()`.

    Returns:
    :   the primary control info color
  + ### getPrimaryControlHighlight

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimaryControlHighlight()

    Returns the primary control highlight color. This
    returns the value of `getWhite()`.

    Returns:
    :   the primary control highlight color
  + ### getSystemTextColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSystemTextColor()

    Returns the system text color. This returns the value of
    `getBlack()`.

    Returns:
    :   the system text color
  + ### getControlTextColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getControlTextColor()

    Returns the control text color. This returns the value of
    `getControlInfo()`.

    Returns:
    :   the control text color
  + ### getInactiveControlTextColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getInactiveControlTextColor()

    Returns the inactive control text color. This returns the value of
    `getControlDisabled()`.

    Returns:
    :   the inactive control text color
  + ### getInactiveSystemTextColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getInactiveSystemTextColor()

    Returns the inactive system text color. This returns the value of
    `getSecondary2()`.

    Returns:
    :   the inactive system text color
  + ### getUserTextColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getUserTextColor()

    Returns the user text color. This returns the value of
    `getBlack()`.

    Returns:
    :   the user text color
  + ### getTextHighlightColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getTextHighlightColor()

    Returns the text highlight color. This returns the value of
    `getPrimary3()`.

    Returns:
    :   the text highlight color
  + ### getHighlightedTextColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getHighlightedTextColor()

    Returns the highlighted text color. This returns the value of
    `getControlTextColor()`.

    Returns:
    :   the highlighted text color
  + ### getWindowBackground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getWindowBackground()

    Returns the window background color. This returns the value of
    `getWhite()`.

    Returns:
    :   the window background color
  + ### getWindowTitleBackground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getWindowTitleBackground()

    Returns the window title background color. This returns the value of
    `getPrimary3()`.

    Returns:
    :   the window title background color
  + ### getWindowTitleForeground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getWindowTitleForeground()

    Returns the window title foreground color. This returns the value of
    `getBlack()`.

    Returns:
    :   the window title foreground color
  + ### getWindowTitleInactiveBackground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getWindowTitleInactiveBackground()

    Returns the window title inactive background color. This
    returns the value of `getSecondary3()`.

    Returns:
    :   the window title inactive background color
  + ### getWindowTitleInactiveForeground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getWindowTitleInactiveForeground()

    Returns the window title inactive foreground color. This
    returns the value of `getBlack()`.

    Returns:
    :   the window title inactive foreground color
  + ### getMenuBackground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getMenuBackground()

    Returns the menu background color. This
    returns the value of `getSecondary3()`.

    Returns:
    :   the menu background color
  + ### getMenuForeground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getMenuForeground()

    Returns the menu foreground color. This
    returns the value of `getBlack()`.

    Returns:
    :   the menu foreground color
  + ### getMenuSelectedBackground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getMenuSelectedBackground()

    Returns the menu selected background color. This
    returns the value of `getPrimary2()`.

    Returns:
    :   the menu selected background color
  + ### getMenuSelectedForeground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getMenuSelectedForeground()

    Returns the menu selected foreground color. This
    returns the value of `getBlack()`.

    Returns:
    :   the menu selected foreground color
  + ### getMenuDisabledForeground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getMenuDisabledForeground()

    Returns the menu disabled foreground color. This
    returns the value of `getSecondary2()`.

    Returns:
    :   the menu disabled foreground color
  + ### getSeparatorBackground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSeparatorBackground()

    Returns the separator background color. This
    returns the value of `getWhite()`.

    Returns:
    :   the separator background color
  + ### getSeparatorForeground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSeparatorForeground()

    Returns the separator foreground color. This
    returns the value of `getPrimary1()`.

    Returns:
    :   the separator foreground color
  + ### getAcceleratorForeground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getAcceleratorForeground()

    Returns the accelerator foreground color. This
    returns the value of `getPrimary1()`.

    Returns:
    :   the accelerator foreground color
  + ### getAcceleratorSelectedForeground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getAcceleratorSelectedForeground()

    Returns the accelerator selected foreground color. This
    returns the value of `getBlack()`.

    Returns:
    :   the accelerator selected foreground color
  + ### addCustomEntriesToTable

    public void addCustomEntriesToTable([UIDefaults](../../UIDefaults.md "class in javax.swing") table)

    Adds values specific to this theme to the defaults table. This method
    is invoked when the look and feel defaults are obtained from
    `MetalLookAndFeel`.

    This implementation does nothing; it is provided for subclasses
    that wish to customize the defaults table.

    Parameters:
    :   `table` - the `UIDefaults` to add the values to

    See Also:
    :   - [`MetalLookAndFeel.getDefaults()`](MetalLookAndFeel.md#getDefaults())