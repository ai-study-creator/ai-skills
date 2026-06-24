Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class SystemColor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Color](Color.md "class in java.awt")

java.awt.SystemColor

All Implemented Interfaces:
:   `Paint`, `Transparency`, `Serializable`

---

public final class SystemColor
extends [Color](Color.md "class in java.awt")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A class to encapsulate symbolic colors representing the color of
native GUI objects on a system. For systems which support the dynamic
update of the system colors (when the user changes the colors)
the actual RGB values of these symbolic colors will also change
dynamically. In order to compare the "current" RGB value of a
`SystemColor` object with a non-symbolic Color object,
`getRGB` should be used rather than `equals`.

Note that the way in which these system colors are applied to GUI objects
may vary slightly from platform to platform since GUI objects may be
rendered differently on each platform.

System color values may also be available through the `getDesktopProperty`
method on `java.awt.Toolkit`.

See Also:
:   * [`Toolkit.getDesktopProperty(java.lang.String)`](Toolkit.md#getDesktopProperty(java.lang.String))
    * [Serialized Form](../../../serialized-form.md#java.awt.SystemColor)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ACTIVE_CAPTION`

  The array index for the
  [`activeCaption`](#activeCaption) system color.

  `static final int`

  `ACTIVE_CAPTION_BORDER`

  The array index for the
  [`activeCaptionBorder`](#activeCaptionBorder) system color.

  `static final int`

  `ACTIVE_CAPTION_TEXT`

  The array index for the
  [`activeCaptionText`](#activeCaptionText) system color.

  `static final SystemColor`

  `activeCaption`

  The color rendered for the window-title background of the currently active window.

  `static final SystemColor`

  `activeCaptionBorder`

  The color rendered for the border around the currently active window.

  `static final SystemColor`

  `activeCaptionText`

  The color rendered for the window-title text of the currently active window.

  `static final SystemColor`

  `control`

  The color rendered for the background of control panels and control objects,
  such as pushbuttons.

  `static final int`

  `CONTROL`

  The array index for the
  [`control`](#control) system color.

  `static final int`

  `CONTROL_DK_SHADOW`

  The array index for the
  [`controlDkShadow`](#controlDkShadow) system color.

  `static final int`

  `CONTROL_HIGHLIGHT`

  The array index for the
  [`controlHighlight`](#controlHighlight) system color.

  `static final int`

  `CONTROL_LT_HIGHLIGHT`

  The array index for the
  [`controlLtHighlight`](#controlLtHighlight) system color.

  `static final int`

  `CONTROL_SHADOW`

  The array index for the
  [`controlShadow`](#controlShadow) system color.

  `static final int`

  `CONTROL_TEXT`

  The array index for the
  [`controlText`](#controlText) system color.

  `static final SystemColor`

  `controlDkShadow`

  The color rendered for dark shadow areas on 3D control objects, such as pushbuttons.

  `static final SystemColor`

  `controlHighlight`

  The color rendered for light areas of 3D control objects, such as pushbuttons.

  `static final SystemColor`

  `controlLtHighlight`

  The color rendered for highlight areas of 3D control objects, such as pushbuttons.

  `static final SystemColor`

  `controlShadow`

  The color rendered for shadow areas of 3D control objects, such as pushbuttons.

  `static final SystemColor`

  `controlText`

  The color rendered for the text of control panels and control objects,
  such as pushbuttons.

  `static final SystemColor`

  `desktop`

  The color rendered for the background of the desktop.

  `static final int`

  `DESKTOP`

  The array index for the
  [`desktop`](#desktop) system color.

  `static final int`

  `INACTIVE_CAPTION`

  The array index for the
  [`inactiveCaption`](#inactiveCaption) system color.

  `static final int`

  `INACTIVE_CAPTION_BORDER`

  The array index for the
  [`inactiveCaptionBorder`](#inactiveCaptionBorder) system color.

  `static final int`

  `INACTIVE_CAPTION_TEXT`

  The array index for the
  [`inactiveCaptionText`](#inactiveCaptionText) system color.

  `static final SystemColor`

  `inactiveCaption`

  The color rendered for the window-title background of inactive windows.

  `static final SystemColor`

  `inactiveCaptionBorder`

  The color rendered for the border around inactive windows.

  `static final SystemColor`

  `inactiveCaptionText`

  The color rendered for the window-title text of inactive windows.

  `static final SystemColor`

  `info`

  The color rendered for the background of tooltips or spot help.

  `static final int`

  `INFO`

  The array index for the
  [`info`](#info) system color.

  `static final int`

  `INFO_TEXT`

  The array index for the
  [`infoText`](#infoText) system color.

  `static final SystemColor`

  `infoText`

  The color rendered for the text of tooltips or spot help.

  `static final SystemColor`

  `menu`

  The color rendered for the background of menus.

  `static final int`

  `MENU`

  The array index for the
  [`menu`](#menu) system color.

  `static final int`

  `MENU_TEXT`

  The array index for the
  [`menuText`](#menuText) system color.

  `static final SystemColor`

  `menuText`

  The color rendered for the text of menus.

  `static final int`

  `NUM_COLORS`

  The number of system colors in the array.

  `static final SystemColor`

  `scrollbar`

  The color rendered for the background of scrollbars.

  `static final int`

  `SCROLLBAR`

  The array index for the
  [`scrollbar`](#scrollbar) system color.

  `static final SystemColor`

  `text`

  The color rendered for the background of text control objects, such as
  textfields and comboboxes.

  `static final int`

  `TEXT`

  The array index for the
  [`text`](#text) system color.

  `static final int`

  `TEXT_HIGHLIGHT`

  The array index for the
  [`textHighlight`](#textHighlight) system color.

  `static final int`

  `TEXT_HIGHLIGHT_TEXT`

  The array index for the
  [`textHighlightText`](#textHighlightText) system color.

  `static final int`

  `TEXT_INACTIVE_TEXT`

  The array index for the
  [`textInactiveText`](#textInactiveText) system color.

  `static final int`

  `TEXT_TEXT`

  The array index for the
  [`textText`](#textText) system color.

  `static final SystemColor`

  `textHighlight`

  The color rendered for the background of selected items, such as in menus,
  comboboxes, and text.

  `static final SystemColor`

  `textHighlightText`

  The color rendered for the text of selected items, such as in menus, comboboxes,
  and text.

  `static final SystemColor`

  `textInactiveText`

  The color rendered for the text of inactive items, such as in menus.

  `static final SystemColor`

  `textText`

  The color rendered for the text of text control objects, such as textfields
  and comboboxes.

  `static final SystemColor`

  `window`

  The color rendered for the background of interior regions inside windows.

  `static final int`

  `WINDOW`

  The array index for the
  [`window`](#window) system color.

  `static final int`

  `WINDOW_BORDER`

  The array index for the
  [`windowBorder`](#windowBorder) system color.

  `static final int`

  `WINDOW_TEXT`

  The array index for the
  [`windowText`](#windowText) system color.

  `static final SystemColor`

  `windowBorder`

  The color rendered for the border around interior regions inside windows.

  `static final SystemColor`

  `windowText`

  The color rendered for text of interior regions inside windows.

  ### Fields inherited from class java.awt.[Color](Color.md "class in java.awt")

  `black, BLACK, blue, BLUE, cyan, CYAN, DARK_GRAY, darkGray, gray, GRAY, green, GREEN, LIGHT_GRAY, lightGray, magenta, MAGENTA, orange, ORANGE, pink, PINK, red, RED, white, WHITE, yellow, YELLOW`

  ### Fields inherited from interface java.awt.[Transparency](Transparency.md "interface in java.awt")

  `BITMASK, OPAQUE, TRANSLUCENT`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  Returns a string representation of this `Color`'s values.

  ### Methods inherited from class java.awt.[Color](Color.md "class in java.awt")

  `brighter, createContext, darker, decode, equals, getAlpha, getBlue, getColor, getColor, getColor, getColorComponents, getColorComponents, getColorSpace, getComponents, getComponents, getGreen, getHSBColor, getRed, getRGB, getRGBColorComponents, getRGBComponents, getTransparency, hashCode, HSBtoRGB, RGBtoHSB`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### DESKTOP

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int DESKTOP

    The array index for the
    [`desktop`](#desktop) system color.

    See Also:
    :   - [`desktop`](#desktop)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.DESKTOP)
  + ### ACTIVE\_CAPTION

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int ACTIVE\_CAPTION

    The array index for the
    [`activeCaption`](#activeCaption) system color.

    See Also:
    :   - [`activeCaption`](#activeCaption)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.ACTIVE_CAPTION)
  + ### ACTIVE\_CAPTION\_TEXT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int ACTIVE\_CAPTION\_TEXT

    The array index for the
    [`activeCaptionText`](#activeCaptionText) system color.

    See Also:
    :   - [`activeCaptionText`](#activeCaptionText)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.ACTIVE_CAPTION_TEXT)
  + ### ACTIVE\_CAPTION\_BORDER

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int ACTIVE\_CAPTION\_BORDER

    The array index for the
    [`activeCaptionBorder`](#activeCaptionBorder) system color.

    See Also:
    :   - [`activeCaptionBorder`](#activeCaptionBorder)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.ACTIVE_CAPTION_BORDER)
  + ### INACTIVE\_CAPTION

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int INACTIVE\_CAPTION

    The array index for the
    [`inactiveCaption`](#inactiveCaption) system color.

    See Also:
    :   - [`inactiveCaption`](#inactiveCaption)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.INACTIVE_CAPTION)
  + ### INACTIVE\_CAPTION\_TEXT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int INACTIVE\_CAPTION\_TEXT

    The array index for the
    [`inactiveCaptionText`](#inactiveCaptionText) system color.

    See Also:
    :   - [`inactiveCaptionText`](#inactiveCaptionText)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.INACTIVE_CAPTION_TEXT)
  + ### INACTIVE\_CAPTION\_BORDER

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int INACTIVE\_CAPTION\_BORDER

    The array index for the
    [`inactiveCaptionBorder`](#inactiveCaptionBorder) system color.

    See Also:
    :   - [`inactiveCaptionBorder`](#inactiveCaptionBorder)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.INACTIVE_CAPTION_BORDER)
  + ### WINDOW

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int WINDOW

    The array index for the
    [`window`](#window) system color.

    See Also:
    :   - [`window`](#window)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.WINDOW)
  + ### WINDOW\_BORDER

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int WINDOW\_BORDER

    The array index for the
    [`windowBorder`](#windowBorder) system color.

    See Also:
    :   - [`windowBorder`](#windowBorder)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.WINDOW_BORDER)
  + ### WINDOW\_TEXT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int WINDOW\_TEXT

    The array index for the
    [`windowText`](#windowText) system color.

    See Also:
    :   - [`windowText`](#windowText)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.WINDOW_TEXT)
  + ### MENU

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int MENU

    The array index for the
    [`menu`](#menu) system color.

    See Also:
    :   - [`menu`](#menu)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.MENU)
  + ### MENU\_TEXT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int MENU\_TEXT

    The array index for the
    [`menuText`](#menuText) system color.

    See Also:
    :   - [`menuText`](#menuText)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.MENU_TEXT)
  + ### TEXT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TEXT

    The array index for the
    [`text`](#text) system color.

    See Also:
    :   - [`text`](#text)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.TEXT)
  + ### TEXT\_TEXT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TEXT\_TEXT

    The array index for the
    [`textText`](#textText) system color.

    See Also:
    :   - [`textText`](#textText)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.TEXT_TEXT)
  + ### TEXT\_HIGHLIGHT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TEXT\_HIGHLIGHT

    The array index for the
    [`textHighlight`](#textHighlight) system color.

    See Also:
    :   - [`textHighlight`](#textHighlight)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.TEXT_HIGHLIGHT)
  + ### TEXT\_HIGHLIGHT\_TEXT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TEXT\_HIGHLIGHT\_TEXT

    The array index for the
    [`textHighlightText`](#textHighlightText) system color.

    See Also:
    :   - [`textHighlightText`](#textHighlightText)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.TEXT_HIGHLIGHT_TEXT)
  + ### TEXT\_INACTIVE\_TEXT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TEXT\_INACTIVE\_TEXT

    The array index for the
    [`textInactiveText`](#textInactiveText) system color.

    See Also:
    :   - [`textInactiveText`](#textInactiveText)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.TEXT_INACTIVE_TEXT)
  + ### CONTROL

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CONTROL

    The array index for the
    [`control`](#control) system color.

    See Also:
    :   - [`control`](#control)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.CONTROL)
  + ### CONTROL\_TEXT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CONTROL\_TEXT

    The array index for the
    [`controlText`](#controlText) system color.

    See Also:
    :   - [`controlText`](#controlText)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.CONTROL_TEXT)
  + ### CONTROL\_HIGHLIGHT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CONTROL\_HIGHLIGHT

    The array index for the
    [`controlHighlight`](#controlHighlight) system color.

    See Also:
    :   - [`controlHighlight`](#controlHighlight)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.CONTROL_HIGHLIGHT)
  + ### CONTROL\_LT\_HIGHLIGHT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CONTROL\_LT\_HIGHLIGHT

    The array index for the
    [`controlLtHighlight`](#controlLtHighlight) system color.

    See Also:
    :   - [`controlLtHighlight`](#controlLtHighlight)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.CONTROL_LT_HIGHLIGHT)
  + ### CONTROL\_SHADOW

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CONTROL\_SHADOW

    The array index for the
    [`controlShadow`](#controlShadow) system color.

    See Also:
    :   - [`controlShadow`](#controlShadow)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.CONTROL_SHADOW)
  + ### CONTROL\_DK\_SHADOW

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int CONTROL\_DK\_SHADOW

    The array index for the
    [`controlDkShadow`](#controlDkShadow) system color.

    See Also:
    :   - [`controlDkShadow`](#controlDkShadow)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.CONTROL_DK_SHADOW)
  + ### SCROLLBAR

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int SCROLLBAR

    The array index for the
    [`scrollbar`](#scrollbar) system color.

    See Also:
    :   - [`scrollbar`](#scrollbar)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.SCROLLBAR)
  + ### INFO

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int INFO

    The array index for the
    [`info`](#info) system color.

    See Also:
    :   - [`info`](#info)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.INFO)
  + ### INFO\_TEXT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int INFO\_TEXT

    The array index for the
    [`infoText`](#infoText) system color.

    See Also:
    :   - [`infoText`](#infoText)
        - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.INFO_TEXT)
  + ### NUM\_COLORS

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int NUM\_COLORS

    The number of system colors in the array.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.SystemColor.NUM_COLORS)
  + ### desktop

    public static final [SystemColor](SystemColor.md "class in java.awt") desktop

    The color rendered for the background of the desktop.
  + ### activeCaption

    public static final [SystemColor](SystemColor.md "class in java.awt") activeCaption

    The color rendered for the window-title background of the currently active window.
  + ### activeCaptionText

    public static final [SystemColor](SystemColor.md "class in java.awt") activeCaptionText

    The color rendered for the window-title text of the currently active window.
  + ### activeCaptionBorder

    public static final [SystemColor](SystemColor.md "class in java.awt") activeCaptionBorder

    The color rendered for the border around the currently active window.
  + ### inactiveCaption

    public static final [SystemColor](SystemColor.md "class in java.awt") inactiveCaption

    The color rendered for the window-title background of inactive windows.
  + ### inactiveCaptionText

    public static final [SystemColor](SystemColor.md "class in java.awt") inactiveCaptionText

    The color rendered for the window-title text of inactive windows.
  + ### inactiveCaptionBorder

    public static final [SystemColor](SystemColor.md "class in java.awt") inactiveCaptionBorder

    The color rendered for the border around inactive windows.
  + ### window

    public static final [SystemColor](SystemColor.md "class in java.awt") window

    The color rendered for the background of interior regions inside windows.
  + ### windowBorder

    public static final [SystemColor](SystemColor.md "class in java.awt") windowBorder

    The color rendered for the border around interior regions inside windows.
  + ### windowText

    public static final [SystemColor](SystemColor.md "class in java.awt") windowText

    The color rendered for text of interior regions inside windows.
  + ### menu

    public static final [SystemColor](SystemColor.md "class in java.awt") menu

    The color rendered for the background of menus.
  + ### menuText

    public static final [SystemColor](SystemColor.md "class in java.awt") menuText

    The color rendered for the text of menus.
  + ### text

    public static final [SystemColor](SystemColor.md "class in java.awt") text

    The color rendered for the background of text control objects, such as
    textfields and comboboxes.
  + ### textText

    public static final [SystemColor](SystemColor.md "class in java.awt") textText

    The color rendered for the text of text control objects, such as textfields
    and comboboxes.
  + ### textHighlight

    public static final [SystemColor](SystemColor.md "class in java.awt") textHighlight

    The color rendered for the background of selected items, such as in menus,
    comboboxes, and text.
  + ### textHighlightText

    public static final [SystemColor](SystemColor.md "class in java.awt") textHighlightText

    The color rendered for the text of selected items, such as in menus, comboboxes,
    and text.
  + ### textInactiveText

    public static final [SystemColor](SystemColor.md "class in java.awt") textInactiveText

    The color rendered for the text of inactive items, such as in menus.
  + ### control

    public static final [SystemColor](SystemColor.md "class in java.awt") control

    The color rendered for the background of control panels and control objects,
    such as pushbuttons.
  + ### controlText

    public static final [SystemColor](SystemColor.md "class in java.awt") controlText

    The color rendered for the text of control panels and control objects,
    such as pushbuttons.
  + ### controlHighlight

    public static final [SystemColor](SystemColor.md "class in java.awt") controlHighlight

    The color rendered for light areas of 3D control objects, such as pushbuttons.
    This color is typically derived from the `control` background color
    to provide a 3D effect.
  + ### controlLtHighlight

    public static final [SystemColor](SystemColor.md "class in java.awt") controlLtHighlight

    The color rendered for highlight areas of 3D control objects, such as pushbuttons.
    This color is typically derived from the `control` background color
    to provide a 3D effect.
  + ### controlShadow

    public static final [SystemColor](SystemColor.md "class in java.awt") controlShadow

    The color rendered for shadow areas of 3D control objects, such as pushbuttons.
    This color is typically derived from the `control` background color
    to provide a 3D effect.
  + ### controlDkShadow

    public static final [SystemColor](SystemColor.md "class in java.awt") controlDkShadow

    The color rendered for dark shadow areas on 3D control objects, such as pushbuttons.
    This color is typically derived from the `control` background color
    to provide a 3D effect.
  + ### scrollbar

    public static final [SystemColor](SystemColor.md "class in java.awt") scrollbar

    The color rendered for the background of scrollbars.
  + ### info

    public static final [SystemColor](SystemColor.md "class in java.awt") info

    The color rendered for the background of tooltips or spot help.
  + ### infoText

    public static final [SystemColor](SystemColor.md "class in java.awt") infoText

    The color rendered for the text of tooltips or spot help.
* ## Method Details

  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `Color`'s values.
    This method is intended to be used only for debugging purposes,
    and the content and format of the returned string may vary between
    implementations.
    The returned string may be empty but may not be `null`.

    Overrides:
    :   `toString` in class `Color`

    Returns:
    :   a string representation of this `Color`