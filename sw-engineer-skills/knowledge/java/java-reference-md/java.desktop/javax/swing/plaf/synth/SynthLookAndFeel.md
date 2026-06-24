Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthLookAndFeel

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.LookAndFeel](../../LookAndFeel.md "class in javax.swing")

[javax.swing.plaf.basic.BasicLookAndFeel](../basic/BasicLookAndFeel.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthLookAndFeel

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `NimbusLookAndFeel`

---

public class SynthLookAndFeel
extends [BasicLookAndFeel](../basic/BasicLookAndFeel.md "class in javax.swing.plaf.basic")

SynthLookAndFeel provides the basis for creating a customized look and
feel. SynthLookAndFeel does not directly provide a look, all painting is
delegated.
You need to either provide a configuration file, by way of the
[`load(java.io.InputStream, java.lang.Class<?>)`](#load(java.io.InputStream,java.lang.Class)) method, or provide your own [`SynthStyleFactory`](SynthStyleFactory.md "class in javax.swing.plaf.synth")
to [`setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory)`](#setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory)). Refer to the
[package summary](package-summary.md) for an example of
loading a file, and [`SynthStyleFactory`](SynthStyleFactory.md "class in javax.swing.plaf.synth") for
an example of providing your own `SynthStyleFactory` to
`setStyleFactory`.

[`SynthIcon`](SynthIcon.md "interface in javax.swing.plaf.synth") interface provides
`paintIcon(synthContext, graphics, x, y, width, height)` method that
allows to draw the icon with the given `SynthContext`.

**Warning:**
This class implements [`Serializable`](../../../../../java.base/java/io/Serializable.md "interface in java.io") as a side effect of it
extending [`BasicLookAndFeel`](../basic/BasicLookAndFeel.md "class in javax.swing.plaf.basic"). It is not intended to be serialized.
An attempt to serialize it will
result in [`NotSerializableException`](../../../../../java.base/java/io/NotSerializableException.md "class in java.io").

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthLookAndFeel()`

  Creates a SynthLookAndFeel.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates the Synth look and feel `ComponentUI` for
  the passed in `JComponent`.

  `UIDefaults`

  `getDefaults()`

  Returns the defaults for this SynthLookAndFeel.

  `String`

  `getDescription()`

  Returns a textual description of SynthLookAndFeel.

  `String`

  `getID()`

  Return a string that identifies this look and feel.

  `String`

  `getName()`

  Return a short string that identifies this look and feel.

  `static Region`

  `getRegion(JComponent c)`

  Returns the Region for the JComponent `c`.

  `static SynthStyle`

  `getStyle(JComponent c,
  Region region)`

  Gets a SynthStyle for the specified region of the specified component.

  `static SynthStyleFactory`

  `getStyleFactory()`

  Returns the current SynthStyleFactory.

  `void`

  `initialize()`

  Called by UIManager when this look and feel is installed.

  `boolean`

  `isNativeLookAndFeel()`

  Returns false, SynthLookAndFeel is not a native look and feel.

  `boolean`

  `isSupportedLookAndFeel()`

  Returns true, SynthLookAndFeel is always supported.

  `void`

  `load(InputStream input,
  Class<?> resourceBase)`

  Loads the set of `SynthStyle`s that will be used by
  this `SynthLookAndFeel`.

  `void`

  `load(URL url)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Use [`load(InputStream, Class)`](#load(java.io.InputStream,java.lang.Class)) or
  [`setStyleFactory(SynthStyleFactory)`](#setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory)) instead

  `static void`

  `setStyleFactory(SynthStyleFactory cache)`

  Sets the SynthStyleFactory that the UI classes provided by
  synth will use to obtain a SynthStyle.

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

  `static void`

  `updateStyles(Component c)`

  Updates the style associated with `c`, and all its children.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicLookAndFeel](../basic/BasicLookAndFeel.md "class in javax.swing.plaf.basic")

  `createAudioAction, getAudioActionMap, initClassDefaults, initComponentDefaults, initSystemColorDefaults, loadSystemColors, playSound`

  ### Methods inherited from class javax.swing.[LookAndFeel](../../LookAndFeel.md "class in javax.swing")

  `getDesktopPropertyValue, getDisabledIcon, getDisabledSelectedIcon, getLayoutStyle, getSupportsWindowDecorations, installBorder, installColors, installColorsAndFont, installProperty, loadKeyBindings, makeComponentInputMap, makeIcon, makeInputMap, makeKeyBindings, provideErrorFeedback, toString, uninstallBorder`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SynthLookAndFeel

    public SynthLookAndFeel()

    Creates a SynthLookAndFeel.

    For the returned `SynthLookAndFeel` to be useful you need to
    invoke `load` to specify the set of
    `SynthStyle`s, or invoke `setStyleFactory`.

    See Also:
    :   - [`load(java.io.InputStream, java.lang.Class<?>)`](#load(java.io.InputStream,java.lang.Class))
        - [`setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory)`](#setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory))
* ## Method Details

  + ### setStyleFactory

    public static void setStyleFactory([SynthStyleFactory](SynthStyleFactory.md "class in javax.swing.plaf.synth") cache)

    Sets the SynthStyleFactory that the UI classes provided by
    synth will use to obtain a SynthStyle.

    Parameters:
    :   `cache` - SynthStyleFactory the UIs should use.
  + ### getStyleFactory

    public static [SynthStyleFactory](SynthStyleFactory.md "class in javax.swing.plaf.synth") getStyleFactory()

    Returns the current SynthStyleFactory.

    Returns:
    :   SynthStyleFactory
  + ### getStyle

    public static [SynthStyle](SynthStyle.md "class in javax.swing.plaf.synth") getStyle([JComponent](../../JComponent.md "class in javax.swing") c,
    [Region](Region.md "class in javax.swing.plaf.synth") region)

    Gets a SynthStyle for the specified region of the specified component.
    This is not for general consumption, only custom UIs should call this
    method.

    Parameters:
    :   `c` - JComponent to get the SynthStyle for
    :   `region` - Identifies the region of the specified component

    Returns:
    :   SynthStyle to use.
  + ### updateStyles

    public static void updateStyles([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Updates the style associated with `c`, and all its children.
    This is a lighter version of
    `SwingUtilities.updateComponentTreeUI`.

    Parameters:
    :   `c` - Component to update style for.
  + ### getRegion

    public static [Region](Region.md "class in javax.swing.plaf.synth") getRegion([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Region for the JComponent `c`.

    Parameters:
    :   `c` - JComponent to fetch the Region for

    Returns:
    :   Region corresponding to `c`
  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates the Synth look and feel `ComponentUI` for
    the passed in `JComponent`.

    Parameters:
    :   `c` - JComponent to create the `ComponentUI` for

    Returns:
    :   ComponentUI to use for `c`
  + ### load

    public void load([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") input,
    [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<?> resourceBase)
    throws [ParseException](../../../../../java.base/java/text/ParseException.md "class in java.text")

    Loads the set of `SynthStyle`s that will be used by
    this `SynthLookAndFeel`. `resourceBase` is
    used to resolve any path based resources, for example an
    `Image` would be resolved by
    `resourceBase.getResource(path)`. Refer to
    [Synth File Format](doc-files/synthFileFormat.md)
    for more information.

    Parameters:
    :   `input` - InputStream to load from
    :   `resourceBase` - used to resolve any images or other resources

    Throws:
    :   `ParseException` - if there is an error in parsing
    :   `IllegalArgumentException` - if input or resourceBase is `null`
  + ### load

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="21",
    [forRemoval](../../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
    public void load([URL](../../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [ParseException](../../../../../java.base/java/text/ParseException.md "class in java.text"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Use [`load(InputStream, Class)`](#load(java.io.InputStream,java.lang.Class)) or
    [`setStyleFactory(SynthStyleFactory)`](#setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory)) instead

    Loads the set of `SynthStyle`s that will be used by
    this `SynthLookAndFeel`. Path based resources are resolved
    relatively to the specified `URL` of the style. For example
    an `Image` would be resolved by
    `new URL(synthFile, path)`. Refer to
    [Synth File Format](doc-files/synthFileFormat.md) for more
    information.

    Whilst this API may be safe for loading local resources that are
    delivered with a `LookAndFeel` or application, and so have an
    equal level of trust with application code, using it to load from
    remote resources, particularly any which may have a lower level of
    trust, is strongly discouraged.
    The alternative mechanisms to load styles from an `InputStream`
    [load(InputStream, Class)](#load(java.io.InputStream,java.lang.Class))
    using resources co-located with the application or by providing a
    `SynthStyleFactory` to
    [setStyleFactory(SynthStyleFactory)](#setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory))
    are preferred.
    Consequently this method is deprecated and will be removed in a future
    release.

    Parameters:
    :   `url` - the `URL` to load the set of
        `SynthStyle` from

    Throws:
    :   `ParseException` - if there is an error in parsing
    :   `IllegalArgumentException` - if synthSet is `null`
    :   `IOException` - if synthSet cannot be opened as an `InputStream`

    Since:
    :   1.6
  + ### initialize

    public void initialize()

    Called by UIManager when this look and feel is installed.

    Overrides:
    :   `initialize` in class `BasicLookAndFeel`

    See Also:
    :   - [`LookAndFeel.uninitialize()`](../../LookAndFeel.md#uninitialize())
        - [`UIManager.setLookAndFeel(javax.swing.LookAndFeel)`](../../UIManager.md#setLookAndFeel(javax.swing.LookAndFeel))
  + ### uninitialize

    public void uninitialize()

    Called by UIManager when this look and feel is uninstalled.

    Overrides:
    :   `uninitialize` in class `BasicLookAndFeel`

    See Also:
    :   - [`LookAndFeel.initialize()`](../../LookAndFeel.md#initialize())
        - [`UIManager.setLookAndFeel(javax.swing.LookAndFeel)`](../../UIManager.md#setLookAndFeel(javax.swing.LookAndFeel))
  + ### getDefaults

    public [UIDefaults](../../UIDefaults.md "class in javax.swing") getDefaults()

    Returns the defaults for this SynthLookAndFeel.

    Overrides:
    :   `getDefaults` in class `BasicLookAndFeel`

    Returns:
    :   Defaults table.

    See Also:
    :   - [`BasicLookAndFeel.initClassDefaults(javax.swing.UIDefaults)`](../basic/BasicLookAndFeel.md#initClassDefaults(javax.swing.UIDefaults))
        - [`BasicLookAndFeel.initSystemColorDefaults(javax.swing.UIDefaults)`](../basic/BasicLookAndFeel.md#initSystemColorDefaults(javax.swing.UIDefaults))
        - [`BasicLookAndFeel.initComponentDefaults(javax.swing.UIDefaults)`](../basic/BasicLookAndFeel.md#initComponentDefaults(javax.swing.UIDefaults))
  + ### isSupportedLookAndFeel

    public boolean isSupportedLookAndFeel()

    Returns true, SynthLookAndFeel is always supported.

    Specified by:
    :   `isSupportedLookAndFeel` in class `LookAndFeel`

    Returns:
    :   true.

    See Also:
    :   - [`UIManager.setLookAndFeel(javax.swing.LookAndFeel)`](../../UIManager.md#setLookAndFeel(javax.swing.LookAndFeel))
  + ### isNativeLookAndFeel

    public boolean isNativeLookAndFeel()

    Returns false, SynthLookAndFeel is not a native look and feel.

    Specified by:
    :   `isNativeLookAndFeel` in class `LookAndFeel`

    Returns:
    :   false
  + ### getDescription

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns a textual description of SynthLookAndFeel.

    Specified by:
    :   `getDescription` in class `LookAndFeel`

    Returns:
    :   textual description of synth.
  + ### getName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Return a short string that identifies this look and feel.

    Specified by:
    :   `getName` in class `LookAndFeel`

    Returns:
    :   a short string identifying this look and feel.
  + ### getID

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getID()

    Return a string that identifies this look and feel.

    Specified by:
    :   `getID` in class `LookAndFeel`

    Returns:
    :   a short string identifying this look and feel.
  + ### shouldUpdateStyleOnAncestorChanged

    public boolean shouldUpdateStyleOnAncestorChanged()

    Returns whether or not the UIs should update their
    `SynthStyles` from the `SynthStyleFactory`
    when the ancestor of the `JComponent` changes. A subclass
    that provided a `SynthStyleFactory` that based the
    return value from `getStyle` off the containment hierarchy
    would override this method to return true.

    Returns:
    :   whether or not the UIs should update their
        `SynthStyles` from the `SynthStyleFactory`
        when the ancestor changed.
  + ### shouldUpdateStyleOnEvent

    protected boolean shouldUpdateStyleOnEvent([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") ev)

    Returns whether or not the UIs should update their styles when a
    particular event occurs.

    Parameters:
    :   `ev` - a `PropertyChangeEvent`

    Returns:
    :   whether or not the UIs should update their styles

    Since:
    :   1.7