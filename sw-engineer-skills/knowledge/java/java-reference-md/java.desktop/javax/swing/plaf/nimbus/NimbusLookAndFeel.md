Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.nimbus](package-summary.md)

# Class NimbusLookAndFeel

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.LookAndFeel](../../LookAndFeel.md "class in javax.swing")

[javax.swing.plaf.basic.BasicLookAndFeel](../basic/BasicLookAndFeel.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.synth.SynthLookAndFeel](../synth/SynthLookAndFeel.md "class in javax.swing.plaf.synth")

javax.swing.plaf.nimbus.NimbusLookAndFeel

All Implemented Interfaces:
:   `Serializable`

---

public class NimbusLookAndFeel
extends [SynthLookAndFeel](../synth/SynthLookAndFeel.md "class in javax.swing.plaf.synth")

The NimbusLookAndFeel class.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NimbusLookAndFeel()`

  Create a new NimbusLookAndFeel.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `UIDefaults`

  `getDefaults()`

  Returns the defaults for this SynthLookAndFeel.

  `protected final Color`

  `getDerivedColor(Color color1,
  Color color2,
  float midPoint)`

  Decodes and returns a color, which is derived from a offset between two
  other colors.

  `protected final Color`

  `getDerivedColor(Color color1,
  Color color2,
  float midPoint,
  boolean uiResource)`

  Decodes and returns a color, which is derived from an offset between two
  other colors.

  `Color`

  `getDerivedColor(String uiDefaultParentName,
  float hOffset,
  float sOffset,
  float bOffset,
  int aOffset,
  boolean uiResource)`

  Get a derived color, derived colors are shared instances and is color
  value will change when its parent UIDefault color changes.

  `String`

  `getDescription()`

  Returns a textual description of this look and feel.

  `Icon`

  `getDisabledIcon(JComponent component,
  Icon icon)`

  Returns an `Icon` with a disabled appearance.

  `String`

  `getID()`

  Return a string that identifies this look and feel.

  `String`

  `getName()`

  Return a short string that identifies this look and feel.

  `static NimbusStyle`

  `getStyle(JComponent c,
  Region r)`

  Gets the style associated with the given component and region.

  `void`

  `initialize()`

  Called by UIManager when this look and feel is installed.

  `void`

  `register(Region region,
  String prefix)`

  Registers a third party component with the NimbusLookAndFeel.

  `boolean`

  `shouldUpdateStyleOnAncestorChanged()`

  Returns whether or not the UIs should update their
  `SynthStyles` from the `SynthStyleFactory`
  when the ancestor of the `JComponent` changes.

  `protected boolean`

  `shouldUpdateStyleOnEvent(PropertyChangeEvent ev)`

  Returns whether or not the UIs should update their styles when a
  particular event occurs.

  `void`

  `uninitialize()`

  Called by UIManager when this look and feel is uninstalled.

  ### Methods inherited from class javax.swing.plaf.synth.[SynthLookAndFeel](../synth/SynthLookAndFeel.md "class in javax.swing.plaf.synth")

  `createUI, getRegion, getStyleFactory, isNativeLookAndFeel, isSupportedLookAndFeel, load, load, setStyleFactory, updateStyles`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicLookAndFeel](../basic/BasicLookAndFeel.md "class in javax.swing.plaf.basic")

  `createAudioAction, getAudioActionMap, initClassDefaults, initComponentDefaults, initSystemColorDefaults, loadSystemColors, playSound`

  ### Methods inherited from class javax.swing.[LookAndFeel](../../LookAndFeel.md "class in javax.swing")

  `getDesktopPropertyValue, getDisabledSelectedIcon, getLayoutStyle, getSupportsWindowDecorations, installBorder, installColors, installColorsAndFont, installProperty, loadKeyBindings, makeComponentInputMap, makeIcon, makeInputMap, makeKeyBindings, provideErrorFeedback, toString, uninstallBorder`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NimbusLookAndFeel

    public NimbusLookAndFeel()

    Create a new NimbusLookAndFeel.
* ## Method Details

  + ### initialize

    public void initialize()

    Called by UIManager when this look and feel is installed.

    Overrides:
    :   `initialize` in class `SynthLookAndFeel`

    See Also:
    :   - [`LookAndFeel.uninitialize()`](../../LookAndFeel.md#uninitialize())
        - [`UIManager.setLookAndFeel(javax.swing.LookAndFeel)`](../../UIManager.md#setLookAndFeel(javax.swing.LookAndFeel))
  + ### uninitialize

    public void uninitialize()

    Called by UIManager when this look and feel is uninstalled.

    Overrides:
    :   `uninitialize` in class `SynthLookAndFeel`

    See Also:
    :   - [`LookAndFeel.initialize()`](../../LookAndFeel.md#initialize())
        - [`UIManager.setLookAndFeel(javax.swing.LookAndFeel)`](../../UIManager.md#setLookAndFeel(javax.swing.LookAndFeel))
  + ### getDefaults

    public [UIDefaults](../../UIDefaults.md "class in javax.swing") getDefaults()

    Returns the defaults for this SynthLookAndFeel.

    Overrides:
    :   `getDefaults` in class `SynthLookAndFeel`

    Returns:
    :   Defaults table.

    See Also:
    :   - [`BasicLookAndFeel.initClassDefaults(javax.swing.UIDefaults)`](../basic/BasicLookAndFeel.md#initClassDefaults(javax.swing.UIDefaults))
        - [`BasicLookAndFeel.initSystemColorDefaults(javax.swing.UIDefaults)`](../basic/BasicLookAndFeel.md#initSystemColorDefaults(javax.swing.UIDefaults))
        - [`BasicLookAndFeel.initComponentDefaults(javax.swing.UIDefaults)`](../basic/BasicLookAndFeel.md#initComponentDefaults(javax.swing.UIDefaults))
  + ### getStyle

    public static [NimbusStyle](NimbusStyle.md "class in javax.swing.plaf.nimbus") getStyle([JComponent](../../JComponent.md "class in javax.swing") c,
    [Region](../synth/Region.md "class in javax.swing.plaf.synth") r)

    Gets the style associated with the given component and region. This
    will never return null. If an appropriate component and region cannot
    be determined, then a default style is returned.

    Parameters:
    :   `c` - a non-null reference to a JComponent
    :   `r` - a non-null reference to the region of the component c

    Returns:
    :   a non-null reference to a NimbusStyle.
  + ### getName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Return a short string that identifies this look and feel. This
    String will be the unquoted String "Nimbus".

    Overrides:
    :   `getName` in class `SynthLookAndFeel`

    Returns:
    :   a short string identifying this look and feel.
  + ### getID

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getID()

    Return a string that identifies this look and feel. This String will
    be the unquoted String "Nimbus".

    Overrides:
    :   `getID` in class `SynthLookAndFeel`

    Returns:
    :   a short string identifying this look and feel.
  + ### getDescription

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns a textual description of this look and feel.

    Overrides:
    :   `getDescription` in class `SynthLookAndFeel`

    Returns:
    :   textual description of this look and feel.
  + ### shouldUpdateStyleOnAncestorChanged

    public boolean shouldUpdateStyleOnAncestorChanged()

    Returns whether or not the UIs should update their
    `SynthStyles` from the `SynthStyleFactory`
    when the ancestor of the `JComponent` changes. A subclass
    that provided a `SynthStyleFactory` that based the
    return value from `getStyle` off the containment hierarchy
    would override this method to return true.

    Overrides:
    :   `shouldUpdateStyleOnAncestorChanged` in class `SynthLookAndFeel`

    Returns:
    :   `true`
  + ### shouldUpdateStyleOnEvent

    protected boolean shouldUpdateStyleOnEvent([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") ev)

    Returns whether or not the UIs should update their styles when a
    particular event occurs.

    Overridden to return `true` when one of the following
    properties change:
    - `"Nimbus.Overrides"`- `"Nimbus.Overrides.InheritDefaults"`- `"JComponent.sizeVariant"`

    Overrides:
    :   `shouldUpdateStyleOnEvent` in class `SynthLookAndFeel`

    Parameters:
    :   `ev` - a `PropertyChangeEvent`

    Returns:
    :   whether or not the UIs should update their styles

    Since:
    :   1.7
  + ### register

    public void register([Region](../synth/Region.md "class in javax.swing.plaf.synth") region,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") prefix)

    Registers a third party component with the NimbusLookAndFeel.

    Regions represent Components and areas within Components that act as
    independent painting areas. Once registered with the NimbusLookAndFeel,
    NimbusStyles for these Regions can be retrieved via the
    `getStyle` method.

    The NimbusLookAndFeel uses a standard naming scheme for entries in the
    UIDefaults table. The key for each property, state, painter, and other
    default registered in UIDefaults for a specific Region will begin with
    the specified `prefix`

    For example, suppose I had a component named JFoo. Suppose I then registered
    this component with the NimbusLookAndFeel in this manner:

    ```
         laf.register(NimbusFooUI.FOO_REGION, "Foo");
    ```

    In this case, I could then register properties for this component with
    UIDefaults in the following manner:

    ```
         UIManager.put("Foo.background", new ColorUIResource(Color.BLACK));
         UIManager.put("Foo.Enabled.backgroundPainter", new FooBackgroundPainter());
    ```

    It is also possible to register a named component with Nimbus.
    For example, suppose you wanted to style the background of a JPanel
    named "MyPanel" differently from other JPanels. You could accomplish this
    by doing the following:

    ```
         laf.register(Region.PANEL, "\"MyPanel\"");
         UIManager.put("\"MyPanel\".background", new ColorUIResource(Color.RED));
    ```

    Parameters:
    :   `region` - The Synth Region that is being registered. Such as Button, or
        ScrollBarThumb, or NimbusFooUI.FOO\_REGION.
    :   `prefix` - The UIDefault prefix. For example, could be ComboBox, or if
        a named components, "MyComboBox", or even something like
        ToolBar."MyComboBox"."ComboBox.arrowButton"
  + ### getDisabledIcon

    public [Icon](../../Icon.md "interface in javax.swing") getDisabledIcon([JComponent](../../JComponent.md "class in javax.swing") component,
    [Icon](../../Icon.md "interface in javax.swing") icon)

    Description copied from class: `LookAndFeel`

    Returns an `Icon` with a disabled appearance.
    This method is used to generate a disabled `Icon` when
    one has not been specified. For example, if you create a
    `JButton` and only specify an `Icon` via
    `setIcon` this method will be called to generate the
    disabled `Icon`. If `null` is passed as
    `icon` this method returns `null`.

    Some look and feels might not render the disabled `Icon`, in which
    case they will ignore this.

    Overrides:
    :   `getDisabledIcon` in class `LookAndFeel`

    Parameters:
    :   `component` - `JComponent` that will display the `Icon`,
        may be `null`
    :   `icon` - `Icon` to generate the disabled icon from

    Returns:
    :   disabled `Icon`, or `null` if a suitable
        `Icon` can not be generated
  + ### getDerivedColor

    public [Color](../../../../java/awt/Color.md "class in java.awt") getDerivedColor([String](../../../../../java.base/java/lang/String.md "class in java.lang") uiDefaultParentName,
    float hOffset,
    float sOffset,
    float bOffset,
    int aOffset,
    boolean uiResource)

    Get a derived color, derived colors are shared instances and is color
    value will change when its parent UIDefault color changes.

    Parameters:
    :   `uiDefaultParentName` - The parent UIDefault key
    :   `hOffset` - The hue offset
    :   `sOffset` - The saturation offset
    :   `bOffset` - The brightness offset
    :   `aOffset` - The alpha offset
    :   `uiResource` - True if the derived color should be a
        UIResource, false if it should not be

    Returns:
    :   The stored derived color
  + ### getDerivedColor

    protected final [Color](../../../../java/awt/Color.md "class in java.awt") getDerivedColor([Color](../../../../java/awt/Color.md "class in java.awt") color1,
    [Color](../../../../java/awt/Color.md "class in java.awt") color2,
    float midPoint,
    boolean uiResource)

    Decodes and returns a color, which is derived from an offset between two
    other colors.

    Parameters:
    :   `color1` - The first color
    :   `color2` - The second color
    :   `midPoint` - The offset between color 1 and color 2, a value of 0.0 is
        color 1 and 1.0 is color 2;
    :   `uiResource` - True if the derived color should be a UIResource

    Returns:
    :   The derived color
  + ### getDerivedColor

    protected final [Color](../../../../java/awt/Color.md "class in java.awt") getDerivedColor([Color](../../../../java/awt/Color.md "class in java.awt") color1,
    [Color](../../../../java/awt/Color.md "class in java.awt") color2,
    float midPoint)

    Decodes and returns a color, which is derived from a offset between two
    other colors.

    Parameters:
    :   `color1` - The first color
    :   `color2` - The second color
    :   `midPoint` - The offset between color 1 and color 2, a value of 0.0 is
        color 1 and 1.0 is color 2;

    Returns:
    :   The derived color, which will be a UIResource