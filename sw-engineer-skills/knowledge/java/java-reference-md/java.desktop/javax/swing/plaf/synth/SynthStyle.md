Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthStyle

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.synth.SynthStyle

Direct Known Subclasses:
:   `NimbusStyle`

---

public abstract class SynthStyle
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

`SynthStyle` is a set of style properties.
Each `SynthUI` references at least one
`SynthStyle` that is obtained using a
`SynthStyleFactory`. You typically don't need to interact with
this class directly, rather you will load a
[Synth File Format file](doc-files/synthFileFormat.md) into
`SynthLookAndFeel` that will create a set of SynthStyles.

Since:
:   1.5

See Also:
:   * [`SynthLookAndFeel`](SynthLookAndFeel.md "class in javax.swing.plaf.synth")
    * [`SynthStyleFactory`](SynthStyleFactory.md "class in javax.swing.plaf.synth")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthStyle()`

  Constructs a SynthStyle.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `get(SynthContext context,
  Object key)`

  Getter for a region specific style property.

  `boolean`

  `getBoolean(SynthContext context,
  Object key,
  boolean defaultValue)`

  Convenience method to get a specific style property whose value is
  an Boolean.

  `Color`

  `getColor(SynthContext context,
  ColorType type)`

  Returns the color for the specified state.

  `protected abstract Color`

  `getColorForState(SynthContext context,
  ColorType type)`

  Returns the color for the specified state.

  `Font`

  `getFont(SynthContext context)`

  Returns the Font for the specified state.

  `protected abstract Font`

  `getFontForState(SynthContext context)`

  Returns the font for the specified state.

  `SynthGraphicsUtils`

  `getGraphicsUtils(SynthContext context)`

  Returns the `SynthGraphicUtils` for the specified context.

  `Icon`

  `getIcon(SynthContext context,
  Object key)`

  Convenience method to get a specific style property whose value is
  an Icon.

  `Insets`

  `getInsets(SynthContext context,
  Insets insets)`

  Returns the Insets that are used to calculate sizing information.

  `int`

  `getInt(SynthContext context,
  Object key,
  int defaultValue)`

  Convenience method to get a specific style property whose value is
  a `Number`.

  `SynthPainter`

  `getPainter(SynthContext context)`

  Returns the `SynthPainter` that will be used for painting.

  `String`

  `getString(SynthContext context,
  Object key,
  String defaultValue)`

  Convenience method to get a specific style property whose value is
  a String.

  `void`

  `installDefaults(SynthContext context)`

  Installs the necessary state from this Style on the
  `JComponent` from `context`.

  `boolean`

  `isOpaque(SynthContext context)`

  Returns true if the region is opaque.

  `void`

  `uninstallDefaults(SynthContext context)`

  Uninstalls any state that this style installed on
  the `JComponent` from `context`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthStyle

    public SynthStyle()

    Constructs a SynthStyle.
* ## Method Details

  + ### getGraphicsUtils

    public [SynthGraphicsUtils](SynthGraphicsUtils.md "class in javax.swing.plaf.synth") getGraphicsUtils([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Returns the `SynthGraphicUtils` for the specified context.

    Parameters:
    :   `context` - SynthContext identifying requester

    Returns:
    :   SynthGraphicsUtils
  + ### getColor

    public [Color](../../../../java/awt/Color.md "class in java.awt") getColor([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [ColorType](ColorType.md "class in javax.swing.plaf.synth") type)

    Returns the color for the specified state. This gives precedence to
    foreground and background of the `JComponent`. If the
    `Color` from the `JComponent` is not appropriate,
    or not used, this will invoke `getColorForState`. Subclasses
    should generally not have to override this, instead override
    [`getColorForState(javax.swing.plaf.synth.SynthContext, javax.swing.plaf.synth.ColorType)`](#getColorForState(javax.swing.plaf.synth.SynthContext,javax.swing.plaf.synth.ColorType)).

    Parameters:
    :   `context` - SynthContext identifying requester
    :   `type` - Type of color being requested.

    Returns:
    :   Color
  + ### getColorForState

    protected abstract [Color](../../../../java/awt/Color.md "class in java.awt") getColorForState([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [ColorType](ColorType.md "class in javax.swing.plaf.synth") type)

    Returns the color for the specified state. This should NOT call any
    methods on the `JComponent`.

    Parameters:
    :   `context` - SynthContext identifying requester
    :   `type` - Type of color being requested.

    Returns:
    :   Color to render with
  + ### getFont

    public [Font](../../../../java/awt/Font.md "class in java.awt") getFont([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Returns the Font for the specified state. This redirects to the
    `JComponent` from the `context` as necessary.
    If this does not redirect
    to the JComponent [`getFontForState(javax.swing.plaf.synth.SynthContext)`](#getFontForState(javax.swing.plaf.synth.SynthContext)) is invoked.

    Parameters:
    :   `context` - SynthContext identifying requester

    Returns:
    :   Font to render with
  + ### getFontForState

    protected abstract [Font](../../../../java/awt/Font.md "class in java.awt") getFontForState([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Returns the font for the specified state. This should NOT call any
    method on the `JComponent`.

    Parameters:
    :   `context` - SynthContext identifying requester

    Returns:
    :   Font to render with
  + ### getInsets

    public [Insets](../../../../java/awt/Insets.md "class in java.awt") getInsets([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") insets)

    Returns the Insets that are used to calculate sizing information.

    Parameters:
    :   `context` - SynthContext identifying requester
    :   `insets` - Insets to place return value in.

    Returns:
    :   Sizing Insets.
  + ### getPainter

    public [SynthPainter](SynthPainter.md "class in javax.swing.plaf.synth") getPainter([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Returns the `SynthPainter` that will be used for painting.
    This may return null.

    Parameters:
    :   `context` - SynthContext identifying requester

    Returns:
    :   SynthPainter to use
  + ### isOpaque

    public boolean isOpaque([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Returns true if the region is opaque.

    Parameters:
    :   `context` - SynthContext identifying requester

    Returns:
    :   true if region is opaque.
  + ### get

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") get([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") key)

    Getter for a region specific style property.

    Parameters:
    :   `context` - SynthContext identifying requester
    :   `key` - Property being requested.

    Returns:
    :   Value of the named property
  + ### installDefaults

    public void installDefaults([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Installs the necessary state from this Style on the
    `JComponent` from `context`.

    Parameters:
    :   `context` - SynthContext identifying component to install properties
        to.
  + ### uninstallDefaults

    public void uninstallDefaults([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Uninstalls any state that this style installed on
    the `JComponent` from `context`.

    Styles should NOT depend upon this being called, in certain cases
    it may never be called.

    Parameters:
    :   `context` - SynthContext identifying component to install properties
        to.
  + ### getInt

    public int getInt([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") key,
    int defaultValue)

    Convenience method to get a specific style property whose value is
    a `Number`. If the value is a `Number`,
    `intValue` is returned, otherwise `defaultValue`
    is returned.

    Parameters:
    :   `context` - SynthContext identifying requester
    :   `key` - Property being requested.
    :   `defaultValue` - Value to return if the property has not been
        specified, or is not a Number

    Returns:
    :   Value of the named property
  + ### getBoolean

    public boolean getBoolean([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") key,
    boolean defaultValue)

    Convenience method to get a specific style property whose value is
    an Boolean.

    Parameters:
    :   `context` - SynthContext identifying requester
    :   `key` - Property being requested.
    :   `defaultValue` - Value to return if the property has not been
        specified, or is not a Boolean

    Returns:
    :   Value of the named property
  + ### getIcon

    public [Icon](../../Icon.md "interface in javax.swing") getIcon([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") key)

    Convenience method to get a specific style property whose value is
    an Icon.

    Parameters:
    :   `context` - SynthContext identifying requester
    :   `key` - Property being requested.

    Returns:
    :   Value of the named property, or null if not specified
  + ### getString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getString([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") key,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") defaultValue)

    Convenience method to get a specific style property whose value is
    a String.

    Parameters:
    :   `context` - SynthContext identifying requester
    :   `key` - Property being requested.
    :   `defaultValue` - Value to return if the property has not been
        specified, or is not a String

    Returns:
    :   Value of the named property