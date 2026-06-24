Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class GraphicsEnvironment

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.GraphicsEnvironment

---

public abstract class GraphicsEnvironment
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The `GraphicsEnvironment` class describes the collection
of [`GraphicsDevice`](GraphicsDevice.md "class in java.awt") objects and [`Font`](Font.md "class in java.awt") objects
available to a Java(tm) application on a particular platform.
The resources in this `GraphicsEnvironment` might be local
or on a remote machine. `GraphicsDevice` objects can be
screens, printers or image buffers and are the destination of
[`Graphics2D`](Graphics2D.md "class in java.awt") drawing methods. Each `GraphicsDevice`
has a number of [`GraphicsConfiguration`](GraphicsConfiguration.md "class in java.awt") objects associated with
it. These objects specify the different configurations in which the
`GraphicsDevice` can be used.

See Also:
:   * [`GraphicsDevice`](GraphicsDevice.md "class in java.awt")
    * [`GraphicsConfiguration`](GraphicsConfiguration.md "class in java.awt")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `GraphicsEnvironment()`

  This is an abstract class and cannot be instantiated directly.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Graphics2D`

  `createGraphics(BufferedImage img)`

  Returns a `Graphics2D` object for rendering into the
  specified [`BufferedImage`](image/BufferedImage.md "class in java.awt.image").

  `abstract Font[]`

  `getAllFonts()`

  Returns an array containing a one-point size instance of all fonts
  available in this `GraphicsEnvironment`.

  `abstract String[]`

  `getAvailableFontFamilyNames()`

  Returns an array containing the names of all font families in this
  `GraphicsEnvironment` localized for the default locale,
  as returned by `Locale.getDefault()`.

  `abstract String[]`

  `getAvailableFontFamilyNames(Locale l)`

  Returns an array containing the names of all font families in this
  `GraphicsEnvironment` localized for the specified locale.

  `Point`

  `getCenterPoint()`

  Returns the Point where Windows should be centered.

  `abstract GraphicsDevice`

  `getDefaultScreenDevice()`

  Returns the default screen `GraphicsDevice`.

  `static GraphicsEnvironment`

  `getLocalGraphicsEnvironment()`

  Returns the local `GraphicsEnvironment`.

  `Rectangle`

  `getMaximumWindowBounds()`

  Returns the maximum bounds for centered Windows.

  `abstract GraphicsDevice[]`

  `getScreenDevices()`

  Returns an array of all of the screen `GraphicsDevice`
  objects.

  `static boolean`

  `isHeadless()`

  Tests whether or not a display, keyboard, and mouse can be
  supported in this environment.

  `boolean`

  `isHeadlessInstance()`

  Returns whether or not a display, keyboard, and mouse can be
  supported in this graphics environment.

  `void`

  `preferLocaleFonts()`

  Indicates a preference for locale-specific fonts in the mapping of
  logical fonts to physical fonts.

  `void`

  `preferProportionalFonts()`

  Indicates a preference for proportional over non-proportional (for
  example dual-spaced CJK fonts) fonts in the mapping of logical fonts
  to physical fonts.

  `boolean`

  `registerFont(Font font)`

  Registers a *created* `Font` in this
  `GraphicsEnvironment`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### GraphicsEnvironment

    protected GraphicsEnvironment()

    This is an abstract class and cannot be instantiated directly.
    Instances must be obtained from a suitable factory or query method.
* ## Method Details

  + ### getLocalGraphicsEnvironment

    public static [GraphicsEnvironment](GraphicsEnvironment.md "class in java.awt") getLocalGraphicsEnvironment()

    Returns the local `GraphicsEnvironment`.

    Returns:
    :   the local `GraphicsEnvironment`
  + ### isHeadless

    public static boolean isHeadless()

    Tests whether or not a display, keyboard, and mouse can be
    supported in this environment. If this method returns true,
    a HeadlessException is thrown from areas of the Toolkit
    and GraphicsEnvironment that are dependent on a display,
    keyboard, or mouse.

    Returns:
    :   `true` if this environment cannot support
        a display, keyboard, and mouse; `false`
        otherwise

    Since:
    :   1.4

    See Also:
    :   - [`HeadlessException`](HeadlessException.md "class in java.awt")
  + ### isHeadlessInstance

    public boolean isHeadlessInstance()

    Returns whether or not a display, keyboard, and mouse can be
    supported in this graphics environment. If this returns true,
    `HeadlessException` will be thrown from areas of the
    graphics environment that are dependent on a display, keyboard, or
    mouse.

    Returns:
    :   `true` if a display, keyboard, and mouse
        can be supported in this environment; `false`
        otherwise

    Since:
    :   1.4

    See Also:
    :   - [`HeadlessException`](HeadlessException.md "class in java.awt")
        - [`isHeadless()`](#isHeadless())
  + ### getScreenDevices

    public abstract [GraphicsDevice](GraphicsDevice.md "class in java.awt")[] getScreenDevices()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns an array of all of the screen `GraphicsDevice`
    objects.

    Returns:
    :   an array containing all the `GraphicsDevice`
        objects that represent screen devices

    Throws:
    :   `HeadlessException` - if isHeadless() returns true

    See Also:
    :   - [`isHeadless()`](#isHeadless())
  + ### getDefaultScreenDevice

    public abstract [GraphicsDevice](GraphicsDevice.md "class in java.awt") getDefaultScreenDevice()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns the default screen `GraphicsDevice`.

    Returns:
    :   the `GraphicsDevice` that represents the
        default screen device

    Throws:
    :   `HeadlessException` - if isHeadless() returns true

    See Also:
    :   - [`isHeadless()`](#isHeadless())
  + ### createGraphics

    public abstract [Graphics2D](Graphics2D.md "class in java.awt") createGraphics([BufferedImage](image/BufferedImage.md "class in java.awt.image") img)

    Returns a `Graphics2D` object for rendering into the
    specified [`BufferedImage`](image/BufferedImage.md "class in java.awt.image").

    Parameters:
    :   `img` - the specified `BufferedImage`

    Returns:
    :   a `Graphics2D` to be used for rendering into
        the specified `BufferedImage`

    Throws:
    :   `NullPointerException` - if `img` is null
  + ### getAllFonts

    public abstract [Font](Font.md "class in java.awt")[] getAllFonts()

    Returns an array containing a one-point size instance of all fonts
    available in this `GraphicsEnvironment`. Typical usage
    would be to allow a user to select a particular font. Then, the
    application can size the font and set various font attributes by
    calling the `deriveFont` method on the chosen instance.

    This method provides for the application the most precise control
    over which `Font` instance is used to render text.
    If a font in this `GraphicsEnvironment` has multiple
    programmable variations, only one
    instance of that `Font` is returned in the array, and
    other variations must be derived by the application.

    If a font in this environment has multiple programmable variations,
    such as Multiple-Master fonts, only one instance of that font is
    returned in the `Font` array. The other variations
    must be derived by the application.

    Returns:
    :   an array of `Font` objects

    Since:
    :   1.2

    See Also:
    :   - [`getAvailableFontFamilyNames()`](#getAvailableFontFamilyNames())
        - [`Font`](Font.md "class in java.awt")
        - [`Font.deriveFont(int, float)`](Font.md#deriveFont(int,float))
        - [`Font.getFontName()`](Font.md#getFontName())
  + ### getAvailableFontFamilyNames

    public abstract [String](../../../java.base/java/lang/String.md "class in java.lang")[] getAvailableFontFamilyNames()

    Returns an array containing the names of all font families in this
    `GraphicsEnvironment` localized for the default locale,
    as returned by `Locale.getDefault()`.

    Typical usage would be for presentation to a user for selection of
    a particular family name. An application can then specify this name
    when creating a font, in conjunction with a style, such as bold or
    italic, giving the font system flexibility in choosing its own best
    match among multiple fonts in the same font family.

    Returns:
    :   an array of `String` containing font family names
        localized for the default locale, or a suitable alternative
        name if no name exists for this locale.

    Since:
    :   1.2

    See Also:
    :   - [`getAllFonts()`](#getAllFonts())
        - [`Font`](Font.md "class in java.awt")
        - [`Font.getFamily()`](Font.md#getFamily())
  + ### getAvailableFontFamilyNames

    public abstract [String](../../../java.base/java/lang/String.md "class in java.lang")[] getAvailableFontFamilyNames([Locale](../../../java.base/java/util/Locale.md "class in java.util") l)

    Returns an array containing the names of all font families in this
    `GraphicsEnvironment` localized for the specified locale.

    Typical usage would be for presentation to a user for selection of
    a particular family name. An application can then specify this name
    when creating a font, in conjunction with a style, such as bold or
    italic, giving the font system flexibility in choosing its own best
    match among multiple fonts in the same font family.

    Parameters:
    :   `l` - a [`Locale`](../../../java.base/java/util/Locale.md "class in java.util") object that represents a
        particular geographical, political, or cultural region.
        Specifying `null` is equivalent to
        specifying `Locale.getDefault()`.

    Returns:
    :   an array of `String` containing font family names
        localized for the specified `Locale`, or a
        suitable alternative name if no name exists for the specified locale.

    Since:
    :   1.2

    See Also:
    :   - [`getAllFonts()`](#getAllFonts())
        - [`Font`](Font.md "class in java.awt")
        - [`Font.getFamily()`](Font.md#getFamily())
  + ### registerFont

    public boolean registerFont([Font](Font.md "class in java.awt") font)

    Registers a *created* `Font` in this
    `GraphicsEnvironment`.
    A created font is one that was returned from calling
    [`Font.createFont(int, java.io.InputStream)`](Font.md#createFont(int,java.io.InputStream)), or derived from a created font by
    calling [`Font.deriveFont(int, float)`](Font.md#deriveFont(int,float)).
    After calling this method for such a font, it is available to
    be used in constructing new `Font`s by name or family name,
    and is enumerated by [`getAvailableFontFamilyNames()`](#getAvailableFontFamilyNames()) and
    [`getAllFonts()`](#getAllFonts()) within the execution context of this
    application or applet. This means applets cannot register fonts in
    a way that they are visible to other applets.

    Reasons that this method might not register the font and therefore
    return `false` are:
    - The font is not a *created* `Font`.- The font conflicts with a non-created `Font` already
        in this `GraphicsEnvironment`. For example if the name
        is that of a system font, or a logical font as described in the
        documentation of the [`Font`](Font.md "class in java.awt") class. It is implementation dependent
        whether a font may also conflict if it has the same family name
        as a system font.

        Notice that an application can supersede the registration
        of an earlier created font with a new one.

    Parameters:
    :   `font` - the font to be registered

    Returns:
    :   true if the `font` is successfully
        registered in this `GraphicsEnvironment`.

    Throws:
    :   `NullPointerException` - if `font` is null

    Since:
    :   1.6
  + ### preferLocaleFonts

    public void preferLocaleFonts()

    Indicates a preference for locale-specific fonts in the mapping of
    logical fonts to physical fonts. Calling this method indicates that font
    rendering should primarily use fonts specific to the primary writing
    system (the one indicated by the default encoding and the initial
    default locale). For example, if the primary writing system is
    Japanese, then characters should be rendered using a Japanese font
    if possible, and other fonts should only be used for characters for
    which the Japanese font doesn't have glyphs.

    The actual change in font rendering behavior resulting from a call
    to this method is implementation dependent; it may have no effect at
    all, or the requested behavior may already match the default behavior.
    The behavior may differ between font rendering in lightweight
    and peered components. Since calling this method requests a
    different font, clients should expect different metrics, and may need
    to recalculate window sizes and layout. Therefore this method should
    be called before user interface initialisation.

    Since:
    :   1.5
  + ### preferProportionalFonts

    public void preferProportionalFonts()

    Indicates a preference for proportional over non-proportional (for
    example dual-spaced CJK fonts) fonts in the mapping of logical fonts
    to physical fonts. If the default mapping contains fonts for which
    proportional and non-proportional variants exist, then calling
    this method indicates the mapping should use a proportional variant.

    The actual change in font rendering behavior resulting from a call to
    this method is implementation dependent; it may have no effect at all.
    The behavior may differ between font rendering in lightweight and
    peered components. Since calling this method requests a
    different font, clients should expect different metrics, and may need
    to recalculate window sizes and layout. Therefore this method should
    be called before user interface initialisation.

    Since:
    :   1.5
  + ### getCenterPoint

    public [Point](Point.md "class in java.awt") getCenterPoint()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns the Point where Windows should be centered.
    It is recommended that centered Windows be checked to ensure they fit
    within the available display area using getMaximumWindowBounds().

    Returns:
    :   the point where Windows should be centered

    Throws:
    :   `HeadlessException` - if isHeadless() returns true

    Since:
    :   1.4

    See Also:
    :   - [`getMaximumWindowBounds()`](#getMaximumWindowBounds())
  + ### getMaximumWindowBounds

    public [Rectangle](Rectangle.md "class in java.awt") getMaximumWindowBounds()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns the maximum bounds for centered Windows.
    These bounds account for objects in the native windowing system such as
    task bars and menu bars. The returned bounds will reside on a single
    display with one exception: on multi-screen systems where Windows should
    be centered across all displays, this method returns the bounds of the
    entire display area.

    To get the usable bounds of a single display, use
    `GraphicsConfiguration.getBounds()` and
    `Toolkit.getScreenInsets()`.

    Returns:
    :   the maximum bounds for centered Windows

    Throws:
    :   `HeadlessException` - if isHeadless() returns true

    Since:
    :   1.4

    See Also:
    :   - [`getCenterPoint()`](#getCenterPoint())
        - [`GraphicsConfiguration.getBounds()`](GraphicsConfiguration.md#getBounds())
        - [`Toolkit.getScreenInsets(java.awt.GraphicsConfiguration)`](Toolkit.md#getScreenInsets(java.awt.GraphicsConfiguration))