Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class OceanTheme

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.metal.MetalTheme](MetalTheme.md "class in javax.swing.plaf.metal")

[javax.swing.plaf.metal.DefaultMetalTheme](DefaultMetalTheme.md "class in javax.swing.plaf.metal")

javax.swing.plaf.metal.OceanTheme

---

public class OceanTheme
extends [DefaultMetalTheme](DefaultMetalTheme.md "class in javax.swing.plaf.metal")

The default theme for the `MetalLookAndFeel`.

The designers
of the Metal Look and Feel strive to keep the default look up to
date, possibly through the use of new themes in the future.
Therefore, developers should only use this class directly when they
wish to customize the "Ocean" look, or force it to be the current
theme, regardless of future updates.

All colors returned by `OceanTheme` are completely
opaque.

Since:
:   1.5

See Also:
:   * [`MetalLookAndFeel.setCurrentTheme(javax.swing.plaf.metal.MetalTheme)`](MetalLookAndFeel.md#setCurrentTheme(javax.swing.plaf.metal.MetalTheme))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OceanTheme()`

  Creates an instance of `OceanTheme`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addCustomEntriesToTable(UIDefaults table)`

  Add this theme's custom entries to the defaults table.

  `protected ColorUIResource`

  `getBlack()`

  Returns the black color.

  `ColorUIResource`

  `getControlTextColor()`

  Returns the control text color.

  `ColorUIResource`

  `getDesktopColor()`

  Returns the desktop color.

  `ColorUIResource`

  `getInactiveControlTextColor()`

  Returns the inactive control text color.

  `ColorUIResource`

  `getMenuDisabledForeground()`

  Returns the menu disabled foreground color.

  `String`

  `getName()`

  Return the name of this theme, "Ocean".

  `protected ColorUIResource`

  `getPrimary1()`

  Returns the primary 1 color.

  `protected ColorUIResource`

  `getPrimary2()`

  Returns the primary 2 color.

  `protected ColorUIResource`

  `getPrimary3()`

  Returns the primary 3 color.

  `protected ColorUIResource`

  `getSecondary1()`

  Returns the secondary 1 color.

  `protected ColorUIResource`

  `getSecondary2()`

  Returns the secondary 2 color.

  `protected ColorUIResource`

  `getSecondary3()`

  Returns the secondary 3 color.

  ### Methods inherited from class javax.swing.plaf.metal.[DefaultMetalTheme](DefaultMetalTheme.md "class in javax.swing.plaf.metal")

  `getControlTextFont, getMenuTextFont, getSubTextFont, getSystemTextFont, getUserTextFont, getWindowTitleFont`

  ### Methods inherited from class javax.swing.plaf.metal.[MetalTheme](MetalTheme.md "class in javax.swing.plaf.metal")

  `getAcceleratorForeground, getAcceleratorSelectedForeground, getControl, getControlDarkShadow, getControlDisabled, getControlHighlight, getControlInfo, getControlShadow, getFocusColor, getHighlightedTextColor, getInactiveSystemTextColor, getMenuBackground, getMenuForeground, getMenuSelectedBackground, getMenuSelectedForeground, getPrimaryControl, getPrimaryControlDarkShadow, getPrimaryControlHighlight, getPrimaryControlInfo, getPrimaryControlShadow, getSeparatorBackground, getSeparatorForeground, getSystemTextColor, getTextHighlightColor, getUserTextColor, getWhite, getWindowBackground, getWindowTitleBackground, getWindowTitleForeground, getWindowTitleInactiveBackground, getWindowTitleInactiveForeground`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### OceanTheme

    public OceanTheme()

    Creates an instance of `OceanTheme`
* ## Method Details

  + ### addCustomEntriesToTable

    public void addCustomEntriesToTable([UIDefaults](../../UIDefaults.md "class in javax.swing") table)

    Add this theme's custom entries to the defaults table.

    Overrides:
    :   `addCustomEntriesToTable` in class `MetalTheme`

    Parameters:
    :   `table` - the defaults table, non-null

    Throws:
    :   `NullPointerException` - if `table` is `null`

    See Also:
    :   - [`MetalLookAndFeel.getDefaults()`](MetalLookAndFeel.md#getDefaults())
  + ### getName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Return the name of this theme, "Ocean".

    Overrides:
    :   `getName` in class `DefaultMetalTheme`

    Returns:
    :   "Ocean"
  + ### getPrimary1

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimary1()

    Returns the primary 1 color. This returns a color with an rgb hex value
    of `0x6382BF`.

    Overrides:
    :   `getPrimary1` in class `DefaultMetalTheme`

    Returns:
    :   the primary 1 color

    See Also:
    :   - [`Color.decode(java.lang.String)`](../../../../java/awt/Color.md#decode(java.lang.String))
  + ### getPrimary2

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimary2()

    Returns the primary 2 color. This returns a color with an rgb hex value
    of `0xA3B8CC`.

    Overrides:
    :   `getPrimary2` in class `DefaultMetalTheme`

    Returns:
    :   the primary 2 color

    See Also:
    :   - [`Color.decode(java.lang.String)`](../../../../java/awt/Color.md#decode(java.lang.String))
  + ### getPrimary3

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimary3()

    Returns the primary 3 color. This returns a color with an rgb hex value
    of `0xB8CFE5`.

    Overrides:
    :   `getPrimary3` in class `DefaultMetalTheme`

    Returns:
    :   the primary 3 color

    See Also:
    :   - [`Color.decode(java.lang.String)`](../../../../java/awt/Color.md#decode(java.lang.String))
  + ### getSecondary1

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSecondary1()

    Returns the secondary 1 color. This returns a color with an rgb hex
    value of `0x7A8A99`.

    Overrides:
    :   `getSecondary1` in class `DefaultMetalTheme`

    Returns:
    :   the secondary 1 color

    See Also:
    :   - [`Color.decode(java.lang.String)`](../../../../java/awt/Color.md#decode(java.lang.String))
  + ### getSecondary2

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSecondary2()

    Returns the secondary 2 color. This returns a color with an rgb hex
    value of `0xB8CFE5`.

    Overrides:
    :   `getSecondary2` in class `DefaultMetalTheme`

    Returns:
    :   the secondary 2 color

    See Also:
    :   - [`Color.decode(java.lang.String)`](../../../../java/awt/Color.md#decode(java.lang.String))
  + ### getSecondary3

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSecondary3()

    Returns the secondary 3 color. This returns a color with an rgb hex
    value of `0xEEEEEE`.

    Overrides:
    :   `getSecondary3` in class `DefaultMetalTheme`

    Returns:
    :   the secondary 3 color

    See Also:
    :   - [`Color.decode(java.lang.String)`](../../../../java/awt/Color.md#decode(java.lang.String))
  + ### getBlack

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getBlack()

    Returns the black color. This returns a color with an rgb hex
    value of `0x333333`.

    Overrides:
    :   `getBlack` in class `MetalTheme`

    Returns:
    :   the black color

    See Also:
    :   - [`Color.decode(java.lang.String)`](../../../../java/awt/Color.md#decode(java.lang.String))
  + ### getDesktopColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getDesktopColor()

    Returns the desktop color. This returns a color with an rgb hex
    value of `0xFFFFFF`.

    Overrides:
    :   `getDesktopColor` in class `MetalTheme`

    Returns:
    :   the desktop color

    See Also:
    :   - [`Color.decode(java.lang.String)`](../../../../java/awt/Color.md#decode(java.lang.String))
  + ### getInactiveControlTextColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getInactiveControlTextColor()

    Returns the inactive control text color. This returns a color with an
    rgb hex value of `0x999999`.

    Overrides:
    :   `getInactiveControlTextColor` in class `MetalTheme`

    Returns:
    :   the inactive control text color
  + ### getControlTextColor

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getControlTextColor()

    Returns the control text color. This returns a color with an
    rgb hex value of `0x333333`.

    Overrides:
    :   `getControlTextColor` in class `MetalTheme`

    Returns:
    :   the control text color
  + ### getMenuDisabledForeground

    public [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getMenuDisabledForeground()

    Returns the menu disabled foreground color. This returns a color with an
    rgb hex value of `0x999999`.

    Overrides:
    :   `getMenuDisabledForeground` in class `MetalTheme`

    Returns:
    :   the menu disabled foreground color