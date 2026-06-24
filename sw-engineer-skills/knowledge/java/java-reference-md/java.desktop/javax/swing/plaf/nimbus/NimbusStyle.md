Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.nimbus](package-summary.md)

# Class NimbusStyle

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.synth.SynthStyle](../synth/SynthStyle.md "class in javax.swing.plaf.synth")

javax.swing.plaf.nimbus.NimbusStyle

---

public final class NimbusStyle
extends [SynthStyle](../synth/SynthStyle.md "class in javax.swing.plaf.synth")

A SynthStyle implementation used by Nimbus. Each Region that has been
registered with the NimbusLookAndFeel will have an associated NimbusStyle.
Third party components that are registered with the NimbusLookAndFeel will
therefore be handed a NimbusStyle from the look and feel from the
#getStyle(JComponent, Region) method.

This class properly reads and retrieves values placed in the UIDefaults
according to the standard Nimbus naming conventions. It will create and
retrieve painters, fonts, colors, and other data stored there.

NimbusStyle also supports the ability to override settings on a per
component basis. NimbusStyle checks the component's client property map for
"Nimbus.Overrides". If the value associated with this key is an instance of
UIDefaults, then the values in that defaults table will override the standard
Nimbus defaults in UIManager, but for that component instance only.

Optionally, you may specify the client property
"Nimbus.Overrides.InheritDefaults". If true, this client property indicates
that the defaults located in UIManager should first be read, and then
replaced with defaults located in the component client properties. If false,
then only the defaults located in the component client property map will
be used. If not specified, it is assumed to be true.

You must specify "Nimbus.Overrides" for "Nimbus.Overrides.InheritDefaults"
to have any effect. "Nimbus.Overrides" indicates whether there are any
overrides, while "Nimbus.Overrides.InheritDefaults" indicates whether those
overrides should first be initialized with the defaults from UIManager.

The NimbusStyle is reloaded whenever a property change event is fired
for a component for "Nimbus.Overrides" or "Nimbus.Overrides.InheritDefaults".
So for example, setting a new UIDefaults on a component would cause the
style to be reloaded.

The values are only read out of UIManager once, and then cached. If
you need to read the values again (for example, if the UI is being reloaded),
then discard this NimbusStyle and read a new one from NimbusLookAndFeel
using NimbusLookAndFeel.getStyle.

The primary API of interest in this class for 3rd party component authors
are the three methods which retrieve painters: #getBackgroundPainter,
#getForegroundPainter, and #getBorderPainter.

NimbusStyle allows you to specify custom states, or modify the order of
states. Synth (and thus Nimbus) has the concept of a "state". For example,
a JButton might be in the "MOUSE\_OVER" state, or the "ENABLED" state, or the
"DISABLED" state. These are all "standard" states which are defined in synth,
and which apply to all synth Regions.

Sometimes, however, you need to have a custom state. For example, you
want JButton to render differently if it's parent is a JToolbar. In Nimbus,
you specify these custom states by including a special key in UIDefaults.
The following UIDefaults entries define three states for this button:

```
     JButton.States = Enabled, Disabled, Toolbar
     JButton[Enabled].backgroundPainter = somePainter
     JButton[Disabled].background = BLUE
     JButton[Toolbar].backgroundPainter = someOtherPaint
```

As you can see, the `JButton.States` entry lists the states
that the JButton style will support. You then specify the settings for
each state. If you do not specify the `JButton.States` entry,
then the standard Synth states will be assumed. If you specify the entry
but the list of states is empty or null, then the standard synth states
will be assumed.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `LARGE_KEY`

  Large key

  `static final double`

  `LARGE_SCALE`

  Large scale

  `static final String`

  `MINI_KEY`

  Mini key

  `static final double`

  `MINI_SCALE`

  Mini scale

  `static final String`

  `SMALL_KEY`

  Small key

  `static final double`

  `SMALL_SCALE`

  Small scale
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `get(SynthContext ctx,
  Object key)`

  Getter for a region specific style property.

  `Painter<Object>`

  `getBackgroundPainter(SynthContext ctx)`

  Gets the appropriate background Painter, if there is one, for the state
  specified in the given SynthContext.

  `Painter<Object>`

  `getBorderPainter(SynthContext ctx)`

  Gets the appropriate border Painter, if there is one, for the state
  specified in the given SynthContext.

  `protected Color`

  `getColorForState(SynthContext ctx,
  ColorType type)`

  Returns the color for the specified state.

  `protected Font`

  `getFontForState(SynthContext ctx)`

  Returns the font for the specified state.

  `Painter<Object>`

  `getForegroundPainter(SynthContext ctx)`

  Gets the appropriate foreground Painter, if there is one, for the state
  specified in the given SynthContext.

  `Insets`

  `getInsets(SynthContext ctx,
  Insets in)`

  Returns the Insets that are used to calculate sizing information.

  `SynthPainter`

  `getPainter(SynthContext ctx)`

  Returns the `SynthPainter` that will be used for painting.

  `void`

  `installDefaults(SynthContext ctx)`

  Installs the necessary state from this Style on the
  `JComponent` from `context`.

  `boolean`

  `isOpaque(SynthContext ctx)`

  Returns true if the region is opaque.

  ### Methods inherited from class javax.swing.plaf.synth.[SynthStyle](../synth/SynthStyle.md "class in javax.swing.plaf.synth")

  `getBoolean, getColor, getFont, getGraphicsUtils, getIcon, getInt, getString, uninstallDefaults`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### LARGE\_KEY

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") LARGE\_KEY

    Large key

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.nimbus.NimbusStyle.LARGE_KEY)
  + ### SMALL\_KEY

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SMALL\_KEY

    Small key

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.nimbus.NimbusStyle.SMALL_KEY)
  + ### MINI\_KEY

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") MINI\_KEY

    Mini key

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.nimbus.NimbusStyle.MINI_KEY)
  + ### LARGE\_SCALE

    public static final double LARGE\_SCALE

    Large scale

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.nimbus.NimbusStyle.LARGE_SCALE)
  + ### SMALL\_SCALE

    public static final double SMALL\_SCALE

    Small scale

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.nimbus.NimbusStyle.SMALL_SCALE)
  + ### MINI\_SCALE

    public static final double MINI\_SCALE

    Mini scale

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.nimbus.NimbusStyle.MINI_SCALE)
* ## Method Details

  + ### installDefaults

    public void installDefaults([SynthContext](../synth/SynthContext.md "class in javax.swing.plaf.synth") ctx)

    Installs the necessary state from this Style on the
    `JComponent` from `context`.
    Overridden to cause this style to populate itself with data from
    UIDefaults, if necessary.

    Overrides:
    :   `installDefaults` in class `SynthStyle`

    Parameters:
    :   `ctx` - SynthContext identifying component to install properties
        to.
  + ### getInsets

    public [Insets](../../../../java/awt/Insets.md "class in java.awt") getInsets([SynthContext](../synth/SynthContext.md "class in javax.swing.plaf.synth") ctx,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") in)

    Returns the Insets that are used to calculate sizing information.
    Overridden to cause this style to populate itself with data from
    UIDefaults, if necessary.

    Overrides:
    :   `getInsets` in class `SynthStyle`

    Parameters:
    :   `ctx` - SynthContext identifying requester
    :   `in` - Insets to place return value in.

    Returns:
    :   Sizing Insets.
  + ### getColorForState

    protected [Color](../../../../java/awt/Color.md "class in java.awt") getColorForState([SynthContext](../synth/SynthContext.md "class in javax.swing.plaf.synth") ctx,
    [ColorType](../synth/ColorType.md "class in javax.swing.plaf.synth") type)

    Returns the color for the specified state. This should NOT call any
    methods on the `JComponent`.

    Overridden to cause this style to populate itself with data from
    UIDefaults, if necessary.

    In addition, NimbusStyle handles ColorTypes slightly differently from
    Synth.

    - ColorType.BACKGROUND will equate to the color stored in UIDefaults
      named "background".
    - ColorType.TEXT\_BACKGROUND will equate to the color stored in
      UIDefaults named "textBackground".
    - ColorType.FOREGROUND will equate to the color stored in UIDefaults
      named "textForeground".
    - ColorType.TEXT\_FOREGROUND will equate to the color stored in
      UIDefaults named "textForeground".

    Specified by:
    :   `getColorForState` in class `SynthStyle`

    Parameters:
    :   `ctx` - SynthContext identifying requester
    :   `type` - Type of color being requested.

    Returns:
    :   Color to render with
  + ### getFontForState

    protected [Font](../../../../java/awt/Font.md "class in java.awt") getFontForState([SynthContext](../synth/SynthContext.md "class in javax.swing.plaf.synth") ctx)

    Returns the font for the specified state. This should NOT call any
    method on the `JComponent`.
    Overridden to cause this style to populate itself with data from
    UIDefaults, if necessary. If a value named "font" is not found in
    UIDefaults, then the "defaultFont" font in UIDefaults will be returned
    instead.

    Specified by:
    :   `getFontForState` in class `SynthStyle`

    Parameters:
    :   `ctx` - SynthContext identifying requester

    Returns:
    :   Font to render with
  + ### getPainter

    public [SynthPainter](../synth/SynthPainter.md "class in javax.swing.plaf.synth") getPainter([SynthContext](../synth/SynthContext.md "class in javax.swing.plaf.synth") ctx)

    Returns the `SynthPainter` that will be used for painting.
    This may return null.
    Returns the SynthPainter for this style, which ends up delegating to
    the Painters installed in this style.

    Overrides:
    :   `getPainter` in class `SynthStyle`

    Parameters:
    :   `ctx` - SynthContext identifying requester

    Returns:
    :   SynthPainter to use
  + ### isOpaque

    public boolean isOpaque([SynthContext](../synth/SynthContext.md "class in javax.swing.plaf.synth") ctx)

    Returns true if the region is opaque.
    Overridden to cause this style to populate itself with data from
    UIDefaults, if necessary. If opacity is not specified in UI defaults,
    then it defaults to being non-opaque.

    Overrides:
    :   `isOpaque` in class `SynthStyle`

    Parameters:
    :   `ctx` - SynthContext identifying requester

    Returns:
    :   true if region is opaque.
  + ### get

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") get([SynthContext](../synth/SynthContext.md "class in javax.swing.plaf.synth") ctx,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") key)

    Getter for a region specific style property.

    Overridden to cause this style to populate itself with data from
    UIDefaults, if necessary.

    Properties in UIDefaults may be specified in a chained manner. For
    example:

    ```
     background
     Button.opacity
     Button.Enabled.foreground
     Button.Enabled+Selected.background
    ```

    In this example, suppose you were in the Enabled+Selected state and
    searched for "foreground". In this case, we first check for
    Button.Enabled+Selected.foreground, but no such color exists. We then
    fall back to the next valid state, in this case,
    Button.Enabled.foreground, and have a match. So we return it.

    Again, if we were in the state Enabled and looked for "background", we
    wouldn't find it in Button.Enabled, or in Button, but would at the top
    level in UIManager. So we return that value.

    One special note: the "key" passed to this method could be of the form
    "background" or "Button.background" where "Button" equals the prefix
    passed to the NimbusStyle constructor. In either case, it looks for
    "background".

    Overrides:
    :   `get` in class `SynthStyle`

    Parameters:
    :   `ctx` - SynthContext identifying requester
    :   `key` - must not be null

    Returns:
    :   Value of the named property
  + ### getBackgroundPainter

    public [Painter](../../Painter.md "interface in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> getBackgroundPainter([SynthContext](../synth/SynthContext.md "class in javax.swing.plaf.synth") ctx)

    Gets the appropriate background Painter, if there is one, for the state
    specified in the given SynthContext. This method does appropriate
    fallback searching, as described in #get.

    Parameters:
    :   `ctx` - The SynthContext. Must not be null.

    Returns:
    :   The background painter associated for the given state, or null if
        none could be found.
  + ### getForegroundPainter

    public [Painter](../../Painter.md "interface in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> getForegroundPainter([SynthContext](../synth/SynthContext.md "class in javax.swing.plaf.synth") ctx)

    Gets the appropriate foreground Painter, if there is one, for the state
    specified in the given SynthContext. This method does appropriate
    fallback searching, as described in #get.

    Parameters:
    :   `ctx` - The SynthContext. Must not be null.

    Returns:
    :   The foreground painter associated for the given state, or null if
        none could be found.
  + ### getBorderPainter

    public [Painter](../../Painter.md "interface in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> getBorderPainter([SynthContext](../synth/SynthContext.md "class in javax.swing.plaf.synth") ctx)

    Gets the appropriate border Painter, if there is one, for the state
    specified in the given SynthContext. This method does appropriate
    fallback searching, as described in #get.

    Parameters:
    :   `ctx` - The SynthContext. Must not be null.

    Returns:
    :   The border painter associated for the given state, or null if
        none could be found.