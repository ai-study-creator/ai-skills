Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class DefaultMetalTheme

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.metal.MetalTheme](MetalTheme.md "class in javax.swing.plaf.metal")

javax.swing.plaf.metal.DefaultMetalTheme

Direct Known Subclasses:
:   `OceanTheme`

---

public class DefaultMetalTheme
extends [MetalTheme](MetalTheme.md "class in javax.swing.plaf.metal")

A concrete implementation of `MetalTheme` providing
the original look of the Java Look and Feel, code-named "Steel". Refer
to [`MetalLookAndFeel.setCurrentTheme(javax.swing.plaf.metal.MetalTheme)`](MetalLookAndFeel.md#setCurrentTheme(javax.swing.plaf.metal.MetalTheme)) for details on changing
the default theme.

All colors returned by `DefaultMetalTheme` are completely
opaque.

## Font Style

`DefaultMetalTheme` uses bold fonts for many controls. To make all
controls (with the exception of the internal frame title bars and
client decorated frame title bars) use plain fonts you can do either of
the following:

* Set the system property `swing.boldMetal` to
  `false`. For example,
  `java -Dswing.boldMetal=false MyApp`.* Set the defaults property `swing.boldMetal` to
    `Boolean.FALSE`. For example:
    `UIManager.put("swing.boldMetal", Boolean.FALSE);`

The defaults property `swing.boldMetal`, if set,
takes precedence over the system property of the same name. After
setting this defaults property you need to re-install
`MetalLookAndFeel`, as well as update the UI
of any previously created widgets. Otherwise the results are undefined.
The following illustrates how to do this:

```
   // turn off bold fonts
   UIManager.put("swing.boldMetal", Boolean.FALSE);

   // re-install the Metal Look and Feel
   UIManager.setLookAndFeel(new MetalLookAndFeel());

   // Update the ComponentUIs for all Components. This
   // needs to be invoked for all windows.
   SwingUtilities.updateComponentTreeUI(rootComponent);
```

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`MetalLookAndFeel`](MetalLookAndFeel.md "class in javax.swing.plaf.metal")
    * [`MetalLookAndFeel.setCurrentTheme(javax.swing.plaf.metal.MetalTheme)`](MetalLookAndFeel.md#setCurrentTheme(javax.swing.plaf.metal.MetalTheme))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultMetalTheme()`

  Creates and returns an instance of `DefaultMetalTheme`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `FontUIResource`

  `getControlTextFont()`

  Returns the control text font.

  `FontUIResource`

  `getMenuTextFont()`

  Returns the menu text font.

  `String`

  `getName()`

  Returns the name of this theme.

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

  `FontUIResource`

  `getSubTextFont()`

  Returns the sub-text font.

  `FontUIResource`

  `getSystemTextFont()`

  Returns the system text font.

  `FontUIResource`

  `getUserTextFont()`

  Returns the user text font.

  `FontUIResource`

  `getWindowTitleFont()`

  Returns the window title font.

  ### Methods inherited from class javax.swing.plaf.metal.[MetalTheme](MetalTheme.md "class in javax.swing.plaf.metal")

  `addCustomEntriesToTable, getAcceleratorForeground, getAcceleratorSelectedForeground, getBlack, getControl, getControlDarkShadow, getControlDisabled, getControlHighlight, getControlInfo, getControlShadow, getControlTextColor, getDesktopColor, getFocusColor, getHighlightedTextColor, getInactiveControlTextColor, getInactiveSystemTextColor, getMenuBackground, getMenuDisabledForeground, getMenuForeground, getMenuSelectedBackground, getMenuSelectedForeground, getPrimaryControl, getPrimaryControlDarkShadow, getPrimaryControlHighlight, getPrimaryControlInfo, getPrimaryControlShadow, getSeparatorBackground, getSeparatorForeground, getSystemTextColor, getTextHighlightColor, getUserTextColor, getWhite, getWindowBackground, getWindowTitleBackground, getWindowTitleForeground, getWindowTitleInactiveBackground, getWindowTitleInactiveForeground`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DefaultMetalTheme

    public DefaultMetalTheme()

    Creates and returns an instance of `DefaultMetalTheme`.
* ## Method Details

  + ### getName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of this theme. This returns `"Steel"`.

    Specified by:
    :   `getName` in class `MetalTheme`

    Returns:
    :   the name of this theme.
  + ### getPrimary1

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimary1()

    Returns the primary 1 color. This returns a color with rgb values
    of 102, 102, and 153, respectively.

    Specified by:
    :   `getPrimary1` in class `MetalTheme`

    Returns:
    :   the primary 1 color
  + ### getPrimary2

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimary2()

    Returns the primary 2 color. This returns a color with rgb values
    of 153, 153, 204, respectively.

    Specified by:
    :   `getPrimary2` in class `MetalTheme`

    Returns:
    :   the primary 2 color
  + ### getPrimary3

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getPrimary3()

    Returns the primary 3 color. This returns a color with rgb values
    204, 204, 255, respectively.

    Specified by:
    :   `getPrimary3` in class `MetalTheme`

    Returns:
    :   the primary 3 color
  + ### getSecondary1

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSecondary1()

    Returns the secondary 1 color. This returns a color with rgb values
    102, 102, and 102, respectively.

    Specified by:
    :   `getSecondary1` in class `MetalTheme`

    Returns:
    :   the secondary 1 color
  + ### getSecondary2

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSecondary2()

    Returns the secondary 2 color. This returns a color with rgb values
    153, 153, and 153, respectively.

    Specified by:
    :   `getSecondary2` in class `MetalTheme`

    Returns:
    :   the secondary 2 color
  + ### getSecondary3

    protected [ColorUIResource](../ColorUIResource.md "class in javax.swing.plaf") getSecondary3()

    Returns the secondary 3 color. This returns a color with rgb values
    204, 204, and 204, respectively.

    Specified by:
    :   `getSecondary3` in class `MetalTheme`

    Returns:
    :   the secondary 3 color
  + ### getControlTextFont

    public [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getControlTextFont()

    Returns the control text font. This returns Dialog, 12pt. If
    plain fonts have been enabled as described in [font style](#fontStyle), the font style is plain. Otherwise the font style is
    bold.

    Specified by:
    :   `getControlTextFont` in class `MetalTheme`

    Returns:
    :   the control text font
  + ### getSystemTextFont

    public [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getSystemTextFont()

    Returns the system text font. This returns Dialog, 12pt, plain.

    Specified by:
    :   `getSystemTextFont` in class `MetalTheme`

    Returns:
    :   the system text font
  + ### getUserTextFont

    public [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getUserTextFont()

    Returns the user text font. This returns Dialog, 12pt, plain.

    Specified by:
    :   `getUserTextFont` in class `MetalTheme`

    Returns:
    :   the user text font
  + ### getMenuTextFont

    public [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getMenuTextFont()

    Returns the menu text font. This returns Dialog, 12pt. If
    plain fonts have been enabled as described in [font style](#fontStyle), the font style is plain. Otherwise the font style is
    bold.

    Specified by:
    :   `getMenuTextFont` in class `MetalTheme`

    Returns:
    :   the menu text font
  + ### getWindowTitleFont

    public [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getWindowTitleFont()

    Returns the window title font. This returns Dialog, 12pt, bold.

    Specified by:
    :   `getWindowTitleFont` in class `MetalTheme`

    Returns:
    :   the window title font
  + ### getSubTextFont

    public [FontUIResource](../FontUIResource.md "class in javax.swing.plaf") getSubTextFont()

    Returns the sub-text font. This returns Dialog, 10pt, plain.

    Specified by:
    :   `getSubTextFont` in class `MetalTheme`

    Returns:
    :   the sub-text font