Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Toolkit

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.Toolkit

---

public abstract class Toolkit
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

This class is the abstract superclass of all actual
implementations of the Abstract Window Toolkit. Subclasses of
the `Toolkit` class are used to bind the various components
to particular native toolkit implementations.

Many GUI events may be delivered to user
asynchronously, if the opposite is not specified explicitly.
As well as
many GUI operations may be performed asynchronously.
This fact means that if the state of a component is set, and then
the state immediately queried, the returned value may not yet
reflect the requested change. This behavior includes, but is not
limited to:

* Scrolling to a specified position.
    
  For example, calling `ScrollPane.setScrollPosition`
  and then `getScrollPosition` may return an incorrect
  value if the original request has not yet been processed.* Moving the focus from one component to another.
      
    For more information, see
    [Timing
    Focus Transfers](https://docs.oracle.com/javase/tutorial/uiswing/misc/focus.html#transferTiming), a section in
    [The Swing
    Tutorial](https://docs.oracle.com/javase/tutorial/uiswing/).* Making a top-level container visible.
        
      Calling `setVisible(true)` on a `Window`,
      `Frame` or `Dialog` may occur
      asynchronously.* Setting the size or location of a top-level container.
          
        Calls to `setSize`, `setBounds` or
        `setLocation` on a `Window`,
        `Frame` or `Dialog` are forwarded
        to the underlying window management system and may be
        ignored or modified. See [`Window`](Window.md "class in java.awt") for
        more information.

Most applications should not call any of the methods in this
class directly. The methods defined by `Toolkit` are
the "glue" that joins the platform-independent classes in the
`java.awt` package with their counterparts in
`java.awt.peer`. Some methods defined by
`Toolkit` query the native operating system directly.

Since:
:   1.0

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final Map<String,Object>`

  `desktopProperties`

  The desktop properties.

  `protected final PropertyChangeSupport`

  `desktopPropsSupport`

  The desktop properties change support.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Toolkit()`

  Constructs a `Toolkit`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAWTEventListener(AWTEventListener listener,
  long eventMask)`

  Adds an AWTEventListener to receive all AWTEvents dispatched
  system-wide that conform to the given `eventMask`.

  `void`

  `addPropertyChangeListener(String name,
  PropertyChangeListener pcl)`

  Adds the specified property change listener for the named desktop
  property.

  `boolean`

  `areExtraMouseButtonsEnabled()`

  Reports whether events from extra mouse buttons are allowed to be processed and posted into
  `EventQueue`.

  `abstract void`

  `beep()`

  Emits an audio beep depending on native system settings and hardware
  capabilities.

  `abstract int`

  `checkImage(Image image,
  int width,
  int height,
  ImageObserver observer)`

  Indicates the construction status of a specified image that is
  being prepared for display.

  `Cursor`

  `createCustomCursor(Image cursor,
  Point hotSpot,
  String name)`

  Creates a new custom cursor object.

  `<T extends DragGestureRecognizer>  
  T`

  `createDragGestureRecognizer(Class<T> abstractRecognizerClass,
  DragSource ds,
  Component c,
  int srcActions,
  DragGestureListener dgl)`

  Creates a concrete, platform dependent, subclass of the abstract
  DragGestureRecognizer class requested, and associates it with the
  DragSource, Component and DragGestureListener specified.

  `Image`

  `createImage(byte[] imagedata)`

  Creates an image which decodes the image stored in the specified
  byte array.

  `abstract Image`

  `createImage(byte[] imagedata,
  int imageoffset,
  int imagelength)`

  Creates an image which decodes the image stored in the specified
  byte array, and at the specified offset and length.

  `abstract Image`

  `createImage(ImageProducer producer)`

  Creates an image with the specified image producer.

  `abstract Image`

  `createImage(String filename)`

  Returns an image which gets pixel data from the specified file.

  `abstract Image`

  `createImage(URL url)`

  Returns an image which gets pixel data from the specified URL.

  `AWTEventListener[]`

  `getAWTEventListeners()`

  Returns an array of all the `AWTEventListener`s
  registered on this toolkit.

  `AWTEventListener[]`

  `getAWTEventListeners(long eventMask)`

  Returns an array of all the `AWTEventListener`s
  registered on this toolkit which listen to all of the event
  types specified in the `eventMask` argument.

  `Dimension`

  `getBestCursorSize(int preferredWidth,
  int preferredHeight)`

  Returns the supported cursor dimension which is closest to the desired
  sizes.

  `abstract ColorModel`

  `getColorModel()`

  Determines the color model of this toolkit's screen.

  `static Toolkit`

  `getDefaultToolkit()`

  Gets the default toolkit.

  `final Object`

  `getDesktopProperty(String propertyName)`

  Obtains a value for the specified desktop property.

  `abstract String[]`

  `getFontList()`

  Deprecated.

  see [`GraphicsEnvironment.getAvailableFontFamilyNames()`](GraphicsEnvironment.md#getAvailableFontFamilyNames())

  `abstract FontMetrics`

  `getFontMetrics(Font font)`

  Deprecated.

  As of JDK version 1.2, replaced by the `Font`
  method `getLineMetrics`.

  `abstract Image`

  `getImage(String filename)`

  Returns an image which gets pixel data from the specified file,
  whose format can be either GIF, JPEG or PNG.

  `abstract Image`

  `getImage(URL url)`

  Returns an image which gets pixel data from the specified URL.

  `boolean`

  `getLockingKeyState(int keyCode)`

  Returns whether the given locking key on the keyboard is currently in
  its "on" state.

  `int`

  `getMaximumCursorColors()`

  Returns the maximum number of colors the Toolkit supports in a custom cursor
  palette.

  `int`

  `getMenuShortcutKeyMask()`

  Deprecated.

  It is recommended that extended modifier keys and
  [`getMenuShortcutKeyMaskEx()`](#getMenuShortcutKeyMaskEx()) be used instead

  `int`

  `getMenuShortcutKeyMaskEx()`

  Determines which extended modifier key is the appropriate accelerator
  key for menu shortcuts.

  `protected static Container`

  `getNativeContainer(Component c)`

  Give native peers the ability to query the native container
  given a native component (eg the direct parent may be lightweight).

  `PrintJob`

  `getPrintJob(Frame frame,
  String jobtitle,
  JobAttributes jobAttributes,
  PageAttributes pageAttributes)`

  Gets a `PrintJob` object which is the result of initiating
  a print operation on the toolkit's platform.

  `abstract PrintJob`

  `getPrintJob(Frame frame,
  String jobtitle,
  Properties props)`

  Gets a `PrintJob` object which is the result of initiating
  a print operation on the toolkit's platform.

  `static String`

  `getProperty(String key,
  String defaultValue)`

  Gets a property with the specified key and default.

  `PropertyChangeListener[]`

  `getPropertyChangeListeners()`

  Returns an array of all the property change listeners
  registered on this toolkit.

  `PropertyChangeListener[]`

  `getPropertyChangeListeners(String propertyName)`

  Returns an array of all property change listeners
  associated with the specified name of a desktop property.

  `Insets`

  `getScreenInsets(GraphicsConfiguration gc)`

  Gets the insets of the screen.

  `abstract int`

  `getScreenResolution()`

  Returns the screen resolution in dots-per-inch.

  `abstract Dimension`

  `getScreenSize()`

  Gets the size of the screen.

  `abstract Clipboard`

  `getSystemClipboard()`

  Gets the singleton instance of the system Clipboard which interfaces
  with clipboard facilities provided by the native platform.

  `final EventQueue`

  `getSystemEventQueue()`

  Get the application's or applet's EventQueue instance.

  `protected abstract EventQueue`

  `getSystemEventQueueImpl()`

  Gets the application's or applet's `EventQueue`
  instance, without checking access.

  `Clipboard`

  `getSystemSelection()`

  Gets the singleton instance of the system selection as a
  `Clipboard` object.

  `protected void`

  `initializeDesktopProperties()`

  initializeDesktopProperties

  `boolean`

  `isAlwaysOnTopSupported()`

  Returns whether the always-on-top mode is supported by this toolkit.

  `boolean`

  `isDynamicLayoutActive()`

  Returns whether dynamic layout of Containers on resize is currently
  enabled on the underlying operating system and/or window manager.

  `protected boolean`

  `isDynamicLayoutSet()`

  Returns whether the layout of Containers is validated dynamically
  during resizing, or statically, after resizing is complete.

  `boolean`

  `isFrameStateSupported(int state)`

  Returns whether Toolkit supports this state for
  `Frame`s.

  `abstract boolean`

  `isModalExclusionTypeSupported(Dialog.ModalExclusionType modalExclusionType)`

  Returns whether the given modal exclusion type is supported by this
  toolkit.

  `abstract boolean`

  `isModalityTypeSupported(Dialog.ModalityType modalityType)`

  Returns whether the given modality type is supported by this toolkit.

  `protected Object`

  `lazilyLoadDesktopProperty(String name)`

  An opportunity to lazily evaluate desktop property values.

  `protected void`

  `loadSystemColors(int[] systemColors)`

  Fills in the integer array that is supplied as an argument
  with the current system color values.

  `abstract Map<TextAttribute,?>`

  `mapInputMethodHighlight(InputMethodHighlight highlight)`

  Returns a map of visual attributes for the abstract level description
  of the given input method highlight, or null if no mapping is found.

  `abstract boolean`

  `prepareImage(Image image,
  int width,
  int height,
  ImageObserver observer)`

  Prepares an image for rendering.

  `void`

  `removeAWTEventListener(AWTEventListener listener)`

  Removes an AWTEventListener from receiving dispatched AWTEvents.

  `void`

  `removePropertyChangeListener(String name,
  PropertyChangeListener pcl)`

  Removes the specified property change listener for the named
  desktop property.

  `protected final void`

  `setDesktopProperty(String name,
  Object newValue)`

  Sets the named desktop property to the specified value and fires a
  property change event to notify any listeners that the value has changed.

  `void`

  `setDynamicLayout(boolean dynamic)`

  Controls whether the layout of Containers is validated dynamically
  during resizing, or statically, after resizing is complete.

  `void`

  `setLockingKeyState(int keyCode,
  boolean on)`

  Sets the state of the given locking key on the keyboard.

  `abstract void`

  `sync()`

  Synchronizes this toolkit's graphics state.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### desktopProperties

    protected final [Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[Object](../../../java.base/java/lang/Object.md "class in java.lang")> desktopProperties

    The desktop properties.
  + ### desktopPropsSupport

    protected final [PropertyChangeSupport](../beans/PropertyChangeSupport.md "class in java.beans") desktopPropsSupport

    The desktop properties change support.
* ## Constructor Details

  + ### Toolkit

    protected Toolkit()

    Constructs a `Toolkit`.
* ## Method Details

  + ### loadSystemColors

    protected void loadSystemColors(int[] systemColors)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Fills in the integer array that is supplied as an argument
    with the current system color values.

    Parameters:
    :   `systemColors` - an integer array.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.1

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### setDynamicLayout

    public void setDynamicLayout(boolean dynamic)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Controls whether the layout of Containers is validated dynamically
    during resizing, or statically, after resizing is complete.
    Use `isDynamicLayoutActive()` to detect if this feature enabled
    in this program and is supported by this operating system
    and/or window manager.
    Note that this feature is supported not on all platforms, and
    conversely, that this feature cannot be turned off on some platforms.
    On these platforms where dynamic layout during resizing is not supported
    (or is always supported), setting this property has no effect.
    Note that this feature can be set or unset as a property of the
    operating system or window manager on some platforms. On such
    platforms, the dynamic resize property must be set at the operating
    system or window manager level before this method can take effect.
    This method does not change support or settings of the underlying
    operating system or
    window manager. The OS/WM support can be
    queried using getDesktopProperty("awt.dynamicLayoutSupported") method.

    Parameters:
    :   `dynamic` - If true, Containers should re-layout their
        components as the Container is being resized. If false,
        the layout will be validated after resizing is completed.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.4

    See Also:
    :   - [`isDynamicLayoutSet()`](#isDynamicLayoutSet())
        - [`isDynamicLayoutActive()`](#isDynamicLayoutActive())
        - [`getDesktopProperty(String propertyName)`](#getDesktopProperty(java.lang.String))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### isDynamicLayoutSet

    protected boolean isDynamicLayoutSet()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns whether the layout of Containers is validated dynamically
    during resizing, or statically, after resizing is complete.
    Note: this method returns the value that was set programmatically;
    it does not reflect support at the level of the operating system
    or window manager for dynamic layout on resizing, or the current
    operating system or window manager settings. The OS/WM support can
    be queried using getDesktopProperty("awt.dynamicLayoutSupported").

    Returns:
    :   true if validation of Containers is done dynamically,
        false if validation is done after resizing is finished.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.4

    See Also:
    :   - [`setDynamicLayout(boolean dynamic)`](#setDynamicLayout(boolean))
        - [`isDynamicLayoutActive()`](#isDynamicLayoutActive())
        - [`getDesktopProperty(String propertyName)`](#getDesktopProperty(java.lang.String))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### isDynamicLayoutActive

    public boolean isDynamicLayoutActive()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns whether dynamic layout of Containers on resize is currently
    enabled on the underlying operating system and/or window manager. If the
    platform supports it, `setDynamicLayout(boolean)` may be used to
    programmatically enable or disable platform dynamic layout. Regardless of
    whether that toggling is supported, or whether `true` or `false` is specified as an argument, or has never been called at all, this
    method will return the active current platform behavior and which will be
    followed by the JDK in determining layout policy during resizing.

    If dynamic layout is currently inactive then Containers re-layout their
    components when resizing is completed. As a result the
    `Component.validate()` method will be invoked only once per resize.
    If dynamic layout is currently active then Containers re-layout their
    components on every native resize event and the `validate()` method
    will be invoked each time. The OS/WM support can be queried using the
    getDesktopProperty("awt.dynamicLayoutSupported") method. This property
    will reflect the platform capability but is not sufficient to tell if it
    is presently enabled.

    Returns:
    :   true if dynamic layout of Containers on resize is currently
        active, false otherwise.

    Throws:
    :   `HeadlessException` - if the GraphicsEnvironment.isHeadless() method
        returns true

    Since:
    :   1.4

    See Also:
    :   - [`setDynamicLayout(boolean dynamic)`](#setDynamicLayout(boolean))
        - [`isDynamicLayoutSet()`](#isDynamicLayoutSet())
        - [`getDesktopProperty(String propertyName)`](#getDesktopProperty(java.lang.String))
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### getScreenSize

    public abstract [Dimension](Dimension.md "class in java.awt") getScreenSize()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Gets the size of the screen. On systems with multiple displays, the
    primary display is used. Multi-screen aware display dimensions are
    available from `GraphicsConfiguration` and
    `GraphicsDevice`.

    Returns:
    :   the size of this toolkit's screen, in pixels.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    See Also:
    :   - [`GraphicsConfiguration.getBounds()`](GraphicsConfiguration.md#getBounds())
        - [`GraphicsDevice.getDisplayMode()`](GraphicsDevice.md#getDisplayMode())
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### getScreenResolution

    public abstract int getScreenResolution()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns the screen resolution in dots-per-inch.

    Returns:
    :   this toolkit's screen resolution, in dots-per-inch.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### getScreenInsets

    public [Insets](Insets.md "class in java.awt") getScreenInsets([GraphicsConfiguration](GraphicsConfiguration.md "class in java.awt") gc)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Gets the insets of the screen.

    Parameters:
    :   `gc` - a `GraphicsConfiguration`

    Returns:
    :   the insets of this toolkit's screen, in pixels.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.4

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### getColorModel

    public abstract [ColorModel](image/ColorModel.md "class in java.awt.image") getColorModel()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Determines the color model of this toolkit's screen.

    `ColorModel` is an abstract class that
    encapsulates the ability to translate between the
    pixel values of an image and its red, green, blue,
    and alpha components.

    This toolkit method is called by the
    `getColorModel` method
    of the `Component` class.

    Returns:
    :   the color model of this toolkit's screen.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`ColorModel`](image/ColorModel.md "class in java.awt.image")
        - [`Component.getColorModel()`](Component.md#getColorModel())
  + ### getFontList

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public abstract [String](../../../java.base/java/lang/String.md "class in java.lang")[] getFontList()

    Deprecated.

    see [`GraphicsEnvironment.getAvailableFontFamilyNames()`](GraphicsEnvironment.md#getAvailableFontFamilyNames())

    Returns the names of the available fonts in this toolkit.

    For 1.1, the following font names are deprecated (the replacement
    name follows):
    - TimesRoman (use Serif)- Helvetica (use SansSerif)- Courier (use Monospaced)

    The ZapfDingbats fontname is also deprecated in 1.1 but the characters
    are defined in Unicode starting at 0x2700, and as of 1.1 Java supports
    those characters.

    Returns:
    :   the names of the available fonts in this toolkit.

    See Also:
    :   - [`GraphicsEnvironment.getAvailableFontFamilyNames()`](GraphicsEnvironment.md#getAvailableFontFamilyNames())
  + ### getFontMetrics

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public abstract [FontMetrics](FontMetrics.md "class in java.awt") getFontMetrics([Font](Font.md "class in java.awt") font)

    Deprecated.

    As of JDK version 1.2, replaced by the `Font`
    method `getLineMetrics`.

    Gets the screen device metrics for rendering of the font.

    Parameters:
    :   `font` - a font

    Returns:
    :   the screen metrics of the specified font in this toolkit

    See Also:
    :   - [`LineMetrics`](font/LineMetrics.md "class in java.awt.font")
        - [`Font.getLineMetrics(java.lang.String, java.awt.font.FontRenderContext)`](Font.md#getLineMetrics(java.lang.String,java.awt.font.FontRenderContext))
        - [`GraphicsEnvironment.getScreenDevices()`](GraphicsEnvironment.md#getScreenDevices())
  + ### sync

    public abstract void sync()

    Synchronizes this toolkit's graphics state. Some window systems
    may do buffering of graphics events.

    This method ensures that the display is up-to-date. It is useful
    for animation.
  + ### getDefaultToolkit

    public static [Toolkit](Toolkit.md "class in java.awt") getDefaultToolkit()

    Gets the default toolkit.

    If a system property named `"java.awt.headless"` is set
    to `true` then the headless implementation
    of `Toolkit` is used,
    otherwise the default platform-specific implementation of
    `Toolkit` is used.

    If this Toolkit is not a headless implementation and if they exist, service
    providers of [`AccessibilityProvider`](../../javax/accessibility/AccessibilityProvider.md "class in javax.accessibility") will be loaded
    if specified by the system property
    `javax.accessibility.assistive_technologies`.

    An example of setting this property is to invoke Java with
    `-Djavax.accessibility.assistive_technologies=MyServiceProvider`.
    In addition to MyServiceProvider other service providers can be specified
    using a comma separated list. Service providers are loaded after the AWT
    toolkit is created.

    If the list of assistive technology providers as provided through system
    property "`javax.accessibility.assistive_technologies`"
    is the empty string or contains only
    [white space](../../../java.base/java/lang/Character.md#isWhitespace(int)) characters it is
    ignored. All other errors are handled via an AWTError exception.

    The names specified in the assistive\_technologies property are used to query
    each service provider implementation. If the requested name matches the
    [name](../../javax/accessibility/AccessibilityProvider.md#getName()) of the service provider, the
    [`AccessibilityProvider.activate()`](../../javax/accessibility/AccessibilityProvider.md#activate()) method will be invoked to activate the
    matching service provider.

    Returns:
    :   the default toolkit.

    Throws:
    :   `AWTError` - in case of an error loading assistive technologies.

    See Also:
    :   - [`ServiceLoader`](../../../java.base/java/util/ServiceLoader.md "class in java.util")
        - [`AccessibilityProvider`](../../javax/accessibility/AccessibilityProvider.md "class in javax.accessibility")
  + ### getImage

    public abstract [Image](Image.md "class in java.awt") getImage([String](../../../java.base/java/lang/String.md "class in java.lang") filename)

    Returns an image which gets pixel data from the specified file,
    whose format can be either GIF, JPEG or PNG.
    The underlying toolkit attempts to resolve multiple requests
    with the same filename to the same returned Image.

    Since the mechanism required to facilitate this sharing of
    `Image` objects may continue to hold onto images
    that are no longer in use for an indefinite period of time,
    developers are encouraged to implement their own caching of
    images by using the [`createImage`](#createImage(java.lang.String))
    variant wherever available.
    If the image data contained in the specified file changes,
    the `Image` object returned from this method may
    still contain stale information which was loaded from the
    file after a prior call.
    Previously loaded image data can be manually discarded by
    calling the [`flush`](Image.md#flush()) method on the
    returned `Image`.

    This method first checks if there is a security manager installed.
    If so, the method calls the security manager's
    `checkRead` method with the file specified to ensure
    that the access to the image is allowed.

    Parameters:
    :   `filename` - the name of a file containing pixel data
        in a recognized file format.

    Returns:
    :   an image which gets its pixel data from
        the specified file.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        checkRead method doesn't allow the operation.

    See Also:
    :   - [`createImage(java.lang.String)`](#createImage(java.lang.String))
  + ### getImage

    public abstract [Image](Image.md "class in java.awt") getImage([URL](../../../java.base/java/net/URL.md "class in java.net") url)

    Returns an image which gets pixel data from the specified URL.
    The pixel data referenced by the specified URL must be in one
    of the following formats: GIF, JPEG or PNG.
    The underlying toolkit attempts to resolve multiple requests
    with the same URL to the same returned Image.

    Since the mechanism required to facilitate this sharing of
    `Image` objects may continue to hold onto images
    that are no longer in use for an indefinite period of time,
    developers are encouraged to implement their own caching of
    images by using the [`createImage`](#createImage(java.net.URL))
    variant wherever available.
    If the image data stored at the specified URL changes,
    the `Image` object returned from this method may
    still contain stale information which was fetched from the
    URL after a prior call.
    Previously loaded image data can be manually discarded by
    calling the [`flush`](Image.md#flush()) method on the
    returned `Image`.

    This method first checks if there is a security manager installed.
    If so, the method calls the security manager's
    `checkPermission` method with the corresponding
    permission to ensure that the access to the image is allowed.
    If the connection to the specified URL requires
    either `URLPermission` or `SocketPermission`,
    then `URLPermission` is used for security checks.

    Parameters:
    :   `url` - the URL to use in fetching the pixel data.

    Returns:
    :   an image which gets its pixel data from
        the specified URL.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        checkPermission method doesn't allow
        the operation.

    See Also:
    :   - [`createImage(java.net.URL)`](#createImage(java.net.URL))
  + ### createImage

    public abstract [Image](Image.md "class in java.awt") createImage([String](../../../java.base/java/lang/String.md "class in java.lang") filename)

    Returns an image which gets pixel data from the specified file.
    The returned Image is a new object which will not be shared
    with any other caller of this method or its getImage variant.

    This method first checks if there is a security manager installed.
    If so, the method calls the security manager's
    `checkRead` method with the specified file to ensure
    that the image creation is allowed.

    Parameters:
    :   `filename` - the name of a file containing pixel data
        in a recognized file format.

    Returns:
    :   an image which gets its pixel data from
        the specified file.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        checkRead method doesn't allow the operation.

    See Also:
    :   - [`getImage(java.lang.String)`](#getImage(java.lang.String))
  + ### createImage

    public abstract [Image](Image.md "class in java.awt") createImage([URL](../../../java.base/java/net/URL.md "class in java.net") url)

    Returns an image which gets pixel data from the specified URL.
    The returned Image is a new object which will not be shared
    with any other caller of this method or its getImage variant.

    This method first checks if there is a security manager installed.
    If so, the method calls the security manager's
    `checkPermission` method with the corresponding
    permission to ensure that the image creation is allowed.
    If the connection to the specified URL requires
    either `URLPermission` or `SocketPermission`,
    then `URLPermission` is used for security checks.

    Parameters:
    :   `url` - the URL to use in fetching the pixel data.

    Returns:
    :   an image which gets its pixel data from
        the specified URL.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        checkPermission method doesn't allow
        the operation.

    See Also:
    :   - [`getImage(java.net.URL)`](#getImage(java.net.URL))
  + ### prepareImage

    public abstract boolean prepareImage([Image](Image.md "class in java.awt") image,
    int width,
    int height,
    [ImageObserver](image/ImageObserver.md "interface in java.awt.image") observer)

    Prepares an image for rendering.

    If the values of the width and height arguments are both
    `-1`, this method prepares the image for rendering
    on the default screen; otherwise, this method prepares an image
    for rendering on the default screen at the specified width and height.

    The image data is downloaded asynchronously in another thread,
    and an appropriately scaled screen representation of the image is
    generated.

    This method is called by components `prepareImage`
    methods.

    Information on the flags returned by this method can be found
    with the definition of the `ImageObserver` interface.

    Parameters:
    :   `image` - the image for which to prepare a
        screen representation.
    :   `width` - the width of the desired screen
        representation, or `-1`.
    :   `height` - the height of the desired screen
        representation, or `-1`.
    :   `observer` - the `ImageObserver`
        object to be notified as the
        image is being prepared.

    Returns:
    :   `true` if the image has already been
        fully prepared; `false` otherwise.

    See Also:
    :   - [`Component.prepareImage(java.awt.Image, java.awt.image.ImageObserver)`](Component.md#prepareImage(java.awt.Image,java.awt.image.ImageObserver))
        - [`Component.prepareImage(java.awt.Image, int, int, java.awt.image.ImageObserver)`](Component.md#prepareImage(java.awt.Image,int,int,java.awt.image.ImageObserver))
        - [`ImageObserver`](image/ImageObserver.md "interface in java.awt.image")
  + ### checkImage

    public abstract int checkImage([Image](Image.md "class in java.awt") image,
    int width,
    int height,
    [ImageObserver](image/ImageObserver.md "interface in java.awt.image") observer)

    Indicates the construction status of a specified image that is
    being prepared for display.

    If the values of the width and height arguments are both
    `-1`, this method returns the construction status of
    a screen representation of the specified image in this toolkit.
    Otherwise, this method returns the construction status of a
    scaled representation of the image at the specified width
    and height.

    This method does not cause the image to begin loading.
    An application must call `prepareImage` to force
    the loading of an image.

    This method is called by the component's `checkImage`
    methods.

    Information on the flags returned by this method can be found
    with the definition of the `ImageObserver` interface.

    Parameters:
    :   `image` - the image whose status is being checked.
    :   `width` - the width of the scaled version whose status is
        being checked, or `-1`.
    :   `height` - the height of the scaled version whose status
        is being checked, or `-1`.
    :   `observer` - the `ImageObserver` object to be
        notified as the image is being prepared.

    Returns:
    :   the bitwise inclusive **OR** of the
        `ImageObserver` flags for the
        image data that is currently available.

    See Also:
    :   - [`prepareImage(java.awt.Image, int, int, java.awt.image.ImageObserver)`](#prepareImage(java.awt.Image,int,int,java.awt.image.ImageObserver))
        - [`Component.checkImage(java.awt.Image, java.awt.image.ImageObserver)`](Component.md#checkImage(java.awt.Image,java.awt.image.ImageObserver))
        - [`Component.checkImage(java.awt.Image, int, int, java.awt.image.ImageObserver)`](Component.md#checkImage(java.awt.Image,int,int,java.awt.image.ImageObserver))
        - [`ImageObserver`](image/ImageObserver.md "interface in java.awt.image")
  + ### createImage

    public abstract [Image](Image.md "class in java.awt") createImage([ImageProducer](image/ImageProducer.md "interface in java.awt.image") producer)

    Creates an image with the specified image producer.

    Parameters:
    :   `producer` - the image producer to be used.

    Returns:
    :   an image with the specified image producer.

    See Also:
    :   - [`Image`](Image.md "class in java.awt")
        - [`ImageProducer`](image/ImageProducer.md "interface in java.awt.image")
        - [`Component.createImage(java.awt.image.ImageProducer)`](Component.md#createImage(java.awt.image.ImageProducer))
  + ### createImage

    public [Image](Image.md "class in java.awt") createImage(byte[] imagedata)

    Creates an image which decodes the image stored in the specified
    byte array.

    The data must be in some image format, such as GIF or JPEG,
    that is supported by this toolkit.

    Parameters:
    :   `imagedata` - an array of bytes, representing
        image data in a supported image format.

    Returns:
    :   an image.

    Since:
    :   1.1
  + ### createImage

    public abstract [Image](Image.md "class in java.awt") createImage(byte[] imagedata,
    int imageoffset,
    int imagelength)

    Creates an image which decodes the image stored in the specified
    byte array, and at the specified offset and length.
    The data must be in some image format, such as GIF or JPEG,
    that is supported by this toolkit.

    Parameters:
    :   `imagedata` - an array of bytes, representing
        image data in a supported image format.
    :   `imageoffset` - the offset of the beginning
        of the data in the array.
    :   `imagelength` - the length of the data in the array.

    Returns:
    :   an image.

    Since:
    :   1.1
  + ### getPrintJob

    public abstract [PrintJob](PrintJob.md "class in java.awt") getPrintJob([Frame](Frame.md "class in java.awt") frame,
    [String](../../../java.base/java/lang/String.md "class in java.lang") jobtitle,
    [Properties](../../../java.base/java/util/Properties.md "class in java.util") props)

    Gets a `PrintJob` object which is the result of initiating
    a print operation on the toolkit's platform.

    Each actual implementation of this method should first check if there
    is a security manager installed. If there is, the method should call
    the security manager's `checkPrintJobAccess` method to
    ensure initiation of a print operation is allowed. If the default
    implementation of `checkPrintJobAccess` is used (that is,
    that method is not overridden), then this results in a call to the
    security manager's `checkPermission` method with a
    `RuntimePermission("queuePrintJob")` permission.

    Parameters:
    :   `frame` - the parent of the print dialog. May not be null.
    :   `jobtitle` - the title of the PrintJob. A null title is equivalent
        to "".
    :   `props` - a Properties object containing zero or more properties.
        Properties are not standardized and are not consistent across
        implementations. Because of this, PrintJobs which require job
        and page control should use the version of this function which
        takes JobAttributes and PageAttributes objects. This object
        may be updated to reflect the user's job choices on exit. May
        be null.

    Returns:
    :   a `PrintJob` object, or `null` if the
        user cancelled the print job.

    Throws:
    :   `NullPointerException` - if frame is null
    :   `SecurityException` - if this thread is not allowed to initiate a
        print job request

    Since:
    :   1.1

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`PrintJob`](PrintJob.md "class in java.awt")
        - [`RuntimePermission`](../../../java.base/java/lang/RuntimePermission.md "class in java.lang")
  + ### getPrintJob

    public [PrintJob](PrintJob.md "class in java.awt") getPrintJob([Frame](Frame.md "class in java.awt") frame,
    [String](../../../java.base/java/lang/String.md "class in java.lang") jobtitle,
    [JobAttributes](JobAttributes.md "class in java.awt") jobAttributes,
    [PageAttributes](PageAttributes.md "class in java.awt") pageAttributes)

    Gets a `PrintJob` object which is the result of initiating
    a print operation on the toolkit's platform.

    Each actual implementation of this method should first check if there
    is a security manager installed. If there is, the method should call
    the security manager's `checkPrintJobAccess` method to
    ensure initiation of a print operation is allowed. If the default
    implementation of `checkPrintJobAccess` is used (that is,
    that method is not overridden), then this results in a call to the
    security manager's `checkPermission` method with a
    `RuntimePermission("queuePrintJob")` permission.

    Parameters:
    :   `frame` - the parent of the print dialog. May not be null.
    :   `jobtitle` - the title of the PrintJob. A null title is equivalent
        to "".
    :   `jobAttributes` - a set of job attributes which will control the
        PrintJob. The attributes will be updated to reflect the user's
        choices as outlined in the JobAttributes documentation. May be
        null.
    :   `pageAttributes` - a set of page attributes which will control the
        PrintJob. The attributes will be applied to every page in the
        job. The attributes will be updated to reflect the user's
        choices as outlined in the PageAttributes documentation. May be
        null.

    Returns:
    :   a `PrintJob` object, or `null` if the
        user cancelled the print job.

    Throws:
    :   `NullPointerException` - if frame is null
    :   `IllegalArgumentException` - if pageAttributes specifies differing
        cross feed and feed resolutions. Also if this thread has
        access to the file system and jobAttributes specifies
        print to file, and the specified destination file exists but
        is a directory rather than a regular file, does not exist but
        cannot be created, or cannot be opened for any other reason.
        However in the case of print to file, if a dialog is also
        requested to be displayed then the user will be given an
        opportunity to select a file and proceed with printing.
        The dialog will ensure that the selected output file
        is valid before returning from this method.
    :   `SecurityException` - if this thread is not allowed to initiate a
        print job request, or if jobAttributes specifies print to file,
        and this thread is not allowed to access the file system

    Since:
    :   1.3

    See Also:
    :   - [`PrintJob`](PrintJob.md "class in java.awt")
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`RuntimePermission`](../../../java.base/java/lang/RuntimePermission.md "class in java.lang")
        - [`JobAttributes`](JobAttributes.md "class in java.awt")
        - [`PageAttributes`](PageAttributes.md "class in java.awt")
  + ### beep

    public abstract void beep()

    Emits an audio beep depending on native system settings and hardware
    capabilities.

    Since:
    :   1.1
  + ### getSystemClipboard

    public abstract [Clipboard](../../../java.datatransfer/java/awt/datatransfer/Clipboard.md "class in java.awt.datatransfer") getSystemClipboard()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Gets the singleton instance of the system Clipboard which interfaces
    with clipboard facilities provided by the native platform. This
    clipboard enables data transfer between Java programs and native
    applications which use native clipboard facilities.

    In addition to any and all default formats text returned by the system
    Clipboard's `getTransferData()` method is available in the
    following flavors:
    - DataFlavor.stringFlavor
    - DataFlavor.plainTextFlavor (**deprecated**)As with `java.awt.datatransfer.StringSelection`, if the
    requested flavor is `DataFlavor.plainTextFlavor`, or an
    equivalent flavor, a Reader is returned. **Note:** The behavior of
    the system Clipboard's `getTransferData()` method for
    `DataFlavor.plainTextFlavor`, and equivalent DataFlavors, is
    inconsistent with the definition of `DataFlavor.plainTextFlavor`.
    Because of this, support for
    `DataFlavor.plainTextFlavor`, and equivalent flavors, is
    **deprecated**.

    Each actual implementation of this method should first check if there
    is a security manager installed. If there is, the method should call
    the security manager's [`checkPermission`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission)) method to check `AWTPermission("accessClipboard")`.

    Returns:
    :   the system Clipboard

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.1

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`Clipboard`](../../../java.datatransfer/java/awt/datatransfer/Clipboard.md "class in java.awt.datatransfer")
        - [`StringSelection`](../../../java.datatransfer/java/awt/datatransfer/StringSelection.md "class in java.awt.datatransfer")
        - [`DataFlavor.stringFlavor`](../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md#stringFlavor)
        - [`DataFlavor.plainTextFlavor`](../../../java.datatransfer/java/awt/datatransfer/DataFlavor.md#plainTextFlavor)
        - [`Reader`](../../../java.base/java/io/Reader.md "class in java.io")
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### getSystemSelection

    public [Clipboard](../../../java.datatransfer/java/awt/datatransfer/Clipboard.md "class in java.awt.datatransfer") getSystemSelection()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Gets the singleton instance of the system selection as a
    `Clipboard` object. This allows an application to read and
    modify the current, system-wide selection.

    An application is responsible for updating the system selection whenever
    the user selects text, using either the mouse or the keyboard.
    Typically, this is implemented by installing a
    `FocusListener` on all `Component`s which support
    text selection, and, between `FOCUS_GAINED` and
    `FOCUS_LOST` events delivered to that `Component`,
    updating the system selection `Clipboard` when the selection
    changes inside the `Component`. Properly updating the system
    selection ensures that a Java application will interact correctly with
    native applications and other Java applications running simultaneously
    on the system. Note that `java.awt.TextComponent` and
    `javax.swing.text.JTextComponent` already adhere to this
    policy. When using these classes, and their subclasses, developers need
    not write any additional code.

    Some platforms do not support a system selection `Clipboard`.
    On those platforms, this method will return `null`. In such a
    case, an application is absolved from its responsibility to update the
    system selection `Clipboard` as described above.

    Each actual implementation of this method should first check if there
    is a security manager installed. If there is, the method should call
    the security manager's [`checkPermission`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission)) method to check `AWTPermission("accessClipboard")`.

    Returns:
    :   the system selection as a `Clipboard`, or
        `null` if the native platform does not support a
        system selection `Clipboard`

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.4

    See Also:
    :   - [`Clipboard`](../../../java.datatransfer/java/awt/datatransfer/Clipboard.md "class in java.awt.datatransfer")
        - [`FocusListener`](event/FocusListener.md "interface in java.awt.event")
        - [`FocusEvent.FOCUS_GAINED`](event/FocusEvent.md#FOCUS_GAINED)
        - [`FocusEvent.FOCUS_LOST`](event/FocusEvent.md#FOCUS_LOST)
        - [`TextComponent`](TextComponent.md "class in java.awt")
        - [`JTextComponent`](../../javax/swing/text/JTextComponent.md "class in javax.swing.text")
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
        - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### getMenuShortcutKeyMask

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="10")
    public int getMenuShortcutKeyMask()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Deprecated.

    It is recommended that extended modifier keys and
    [`getMenuShortcutKeyMaskEx()`](#getMenuShortcutKeyMaskEx()) be used instead

    Determines which modifier key is the appropriate accelerator
    key for menu shortcuts.

    Menu shortcuts, which are embodied in the
    `MenuShortcut` class, are handled by the
    `MenuBar` class.

    By default, this method returns `Event.CTRL_MASK`.
    Toolkit implementations should override this method if the
    **Control** key isn't the correct key for accelerators.

    Returns:
    :   the modifier mask on the `Event` class
        that is used for menu shortcuts on this toolkit.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.1

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`MenuBar`](MenuBar.md "class in java.awt")
        - [`MenuShortcut`](MenuShortcut.md "class in java.awt")
  + ### getMenuShortcutKeyMaskEx

    public int getMenuShortcutKeyMaskEx()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Determines which extended modifier key is the appropriate accelerator
    key for menu shortcuts.

    Menu shortcuts, which are embodied in the `MenuShortcut` class, are
    handled by the `MenuBar` class.

    By default, this method returns `InputEvent.CTRL_DOWN_MASK`.
    Toolkit implementations should override this method if the
    **Control** key isn't the correct key for accelerators.

    Returns:
    :   the modifier mask on the `InputEvent` class that is used
        for menu shortcuts on this toolkit

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless() returns
        true

    Since:
    :   10

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`MenuBar`](MenuBar.md "class in java.awt")
        - [`MenuShortcut`](MenuShortcut.md "class in java.awt")
  + ### getLockingKeyState

    public boolean getLockingKeyState(int keyCode)
    throws [UnsupportedOperationException](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang")

    Returns whether the given locking key on the keyboard is currently in
    its "on" state.
    Valid key codes are
    [`VK_CAPS_LOCK`](event/KeyEvent.md#VK_CAPS_LOCK),
    [`VK_NUM_LOCK`](event/KeyEvent.md#VK_NUM_LOCK),
    [`VK_SCROLL_LOCK`](event/KeyEvent.md#VK_SCROLL_LOCK), and
    [`VK_KANA_LOCK`](event/KeyEvent.md#VK_KANA_LOCK).

    Parameters:
    :   `keyCode` - the key code

    Returns:
    :   `true` if the given key is currently in its "on" state;
        otherwise `false`

    Throws:
    :   `IllegalArgumentException` - if `keyCode`
        is not one of the valid key codes
    :   `UnsupportedOperationException` - if the host system doesn't
        allow getting the state of this key programmatically, or if the keyboard
        doesn't have this key
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.3

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### setLockingKeyState

    public void setLockingKeyState(int keyCode,
    boolean on)
    throws [UnsupportedOperationException](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang")

    Sets the state of the given locking key on the keyboard.
    Valid key codes are
    [`VK_CAPS_LOCK`](event/KeyEvent.md#VK_CAPS_LOCK),
    [`VK_NUM_LOCK`](event/KeyEvent.md#VK_NUM_LOCK),
    [`VK_SCROLL_LOCK`](event/KeyEvent.md#VK_SCROLL_LOCK), and
    [`VK_KANA_LOCK`](event/KeyEvent.md#VK_KANA_LOCK).

    Depending on the platform, setting the state of a locking key may
    involve event processing and therefore may not be immediately
    observable through getLockingKeyState.

    Parameters:
    :   `keyCode` - the key code
    :   `on` - the state of the key

    Throws:
    :   `IllegalArgumentException` - if `keyCode`
        is not one of the valid key codes
    :   `UnsupportedOperationException` - if the host system doesn't
        allow setting the state of this key programmatically, or if the keyboard
        doesn't have this key
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.3

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### getNativeContainer

    protected static [Container](Container.md "class in java.awt") getNativeContainer([Component](Component.md "class in java.awt") c)

    Give native peers the ability to query the native container
    given a native component (eg the direct parent may be lightweight).

    Parameters:
    :   `c` - the component to fetch the container for

    Returns:
    :   the native container object for the component
  + ### createCustomCursor

    public [Cursor](Cursor.md "class in java.awt") createCustomCursor([Image](Image.md "class in java.awt") cursor,
    [Point](Point.md "class in java.awt") hotSpot,
    [String](../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IndexOutOfBoundsException](../../../java.base/java/lang/IndexOutOfBoundsException.md "class in java.lang"),
    [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a new custom cursor object.
    If the image to display is invalid, the cursor will be hidden (made
    completely transparent), and the hotspot will be set to (0, 0).

    Note that multi-frame images are invalid and may cause this
    method to hang.

    Parameters:
    :   `cursor` - the image to display when the cursor is activated
    :   `hotSpot` - the X and Y of the large cursor's hot spot; the
        hotSpot values must be less than the Dimension returned by
        `getBestCursorSize`
    :   `name` - a localized description of the cursor, for Java Accessibility use

    Returns:
    :   the cursor created

    Throws:
    :   `IndexOutOfBoundsException` - if the hotSpot values are outside
        the bounds of the cursor
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.2

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### getBestCursorSize

    public [Dimension](Dimension.md "class in java.awt") getBestCursorSize(int preferredWidth,
    int preferredHeight)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns the supported cursor dimension which is closest to the desired
    sizes. Systems which only support a single cursor size will return that
    size regardless of the desired sizes. Systems which don't support custom
    cursors will return a dimension of 0, 0.

    Note: if an image is used whose dimensions don't match a supported size
    (as returned by this method), the Toolkit implementation will attempt to
    resize the image to a supported size.
    Since converting low-resolution images is difficult,
    no guarantees are made as to the quality of a cursor image which isn't a
    supported size. It is therefore recommended that this method
    be called and an appropriate image used so no image conversion is made.

    Parameters:
    :   `preferredWidth` - the preferred cursor width the component would like
        to use.
    :   `preferredHeight` - the preferred cursor height the component would like
        to use.

    Returns:
    :   the closest matching supported cursor size, or a dimension of 0,0 if
        the Toolkit implementation doesn't support custom cursors.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.2

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### getMaximumCursorColors

    public int getMaximumCursorColors()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns the maximum number of colors the Toolkit supports in a custom cursor
    palette.

    Note: if an image is used which has more colors in its palette than
    the supported maximum, the Toolkit implementation will attempt to flatten the
    palette to the maximum. Since converting low-resolution images is difficult,
    no guarantees are made as to the quality of a cursor image which has more
    colors than the system supports. It is therefore recommended that this method
    be called and an appropriate image used so no image conversion is made.

    Returns:
    :   the maximum number of colors, or zero if custom cursors are not
        supported by this Toolkit implementation.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    Since:
    :   1.2

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### isFrameStateSupported

    public boolean isFrameStateSupported(int state)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns whether Toolkit supports this state for
    `Frame`s. This method tells whether the *UI
    concept* of, say, maximization or iconification is
    supported. It will always return false for "compound" states
    like `Frame.ICONIFIED|Frame.MAXIMIZED_VERT`.
    In other words, the rule of thumb is that only queries with a
    single frame state constant as an argument are meaningful.

    Note that supporting a given concept is a platform-
    dependent feature. Due to native limitations the Toolkit
    object may report a particular state as supported, however at
    the same time the Toolkit object will be unable to apply the
    state to a given frame. This circumstance has two following
    consequences:
    - Only the return value of `false` for the present
      method actually indicates that the given state is not
      supported. If the method returns `true` the given state
      may still be unsupported and/or unavailable for a particular
      frame.- The developer should consider examining the value of the
        [`WindowEvent.getNewState()`](event/WindowEvent.md#getNewState()) method of the
        `WindowEvent` received through the [`WindowStateListener`](event/WindowStateListener.md "interface in java.awt.event"), rather than assuming
        that the state given to the `setExtendedState()` method
        will be definitely applied. For more information see the
        documentation for the [`Frame.setExtendedState(int)`](Frame.md#setExtendedState(int)) method.

    Parameters:
    :   `state` - one of named frame state constants.

    Returns:
    :   `true` is this frame state is supported by
        this Toolkit implementation, `false` otherwise.

    Throws:
    :   `HeadlessException` - if `GraphicsEnvironment.isHeadless()`
        returns `true`.

    Since:
    :   1.4

    See Also:
    :   - [`Window.addWindowStateListener(java.awt.event.WindowStateListener)`](Window.md#addWindowStateListener(java.awt.event.WindowStateListener))
  + ### getProperty

    public static [String](../../../java.base/java/lang/String.md "class in java.lang") getProperty([String](../../../java.base/java/lang/String.md "class in java.lang") key,
    [String](../../../java.base/java/lang/String.md "class in java.lang") defaultValue)

    Gets a property with the specified key and default.
    This method returns defaultValue if the property is not found.

    Parameters:
    :   `key` - the key
    :   `defaultValue` - the default value

    Returns:
    :   the value of the property or the default value
        if the property was not found
  + ### getSystemEventQueue

    public final [EventQueue](EventQueue.md "class in java.awt") getSystemEventQueue()

    Get the application's or applet's EventQueue instance.
    Depending on the Toolkit implementation, different EventQueues
    may be returned for different applets. Applets should
    therefore not assume that the EventQueue instance returned
    by this method will be shared by other applets or the system.

    If there is a security manager then its
    [`checkPermission`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission)) method
    is called to check `AWTPermission("accessEventQueue")`.

    Returns:
    :   the `EventQueue` object

    Throws:
    :   `SecurityException` - if a security manager is set and it denies access to
        the `EventQueue`

    See Also:
    :   - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### getSystemEventQueueImpl

    protected abstract [EventQueue](EventQueue.md "class in java.awt") getSystemEventQueueImpl()

    Gets the application's or applet's `EventQueue`
    instance, without checking access. For security reasons,
    this can only be called from a `Toolkit` subclass.

    Returns:
    :   the `EventQueue` object
  + ### createDragGestureRecognizer

    public <T extends [DragGestureRecognizer](dnd/DragGestureRecognizer.md "class in java.awt.dnd")> T createDragGestureRecognizer([Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> abstractRecognizerClass,
    [DragSource](dnd/DragSource.md "class in java.awt.dnd") ds,
    [Component](Component.md "class in java.awt") c,
    int srcActions,
    [DragGestureListener](dnd/DragGestureListener.md "interface in java.awt.dnd") dgl)

    Creates a concrete, platform dependent, subclass of the abstract
    DragGestureRecognizer class requested, and associates it with the
    DragSource, Component and DragGestureListener specified.
    subclasses should override this to provide their own implementation

    Type Parameters:
    :   `T` - the type of DragGestureRecognizer to create

    Parameters:
    :   `abstractRecognizerClass` - The abstract class of the required recognizer
    :   `ds` - The DragSource
    :   `c` - The Component target for the DragGestureRecognizer
    :   `srcActions` - The actions permitted for the gesture
    :   `dgl` - The DragGestureListener

    Returns:
    :   the new object or null. Always returns null if
        GraphicsEnvironment.isHeadless() returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### getDesktopProperty

    public final [Object](../../../java.base/java/lang/Object.md "class in java.lang") getDesktopProperty([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName)

    Obtains a value for the specified desktop property.
    A desktop property is a uniquely named value for a resource that
    is Toolkit global in nature. Usually it also is an abstract
    representation for an underlying platform dependent desktop setting.
    For more information on desktop properties supported by the AWT see
    [AWT Desktop Properties](doc-files/DesktopProperties.md).

    Parameters:
    :   `propertyName` - the property name

    Returns:
    :   the value for the specified desktop property
  + ### setDesktopProperty

    protected final void setDesktopProperty([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Sets the named desktop property to the specified value and fires a
    property change event to notify any listeners that the value has changed.

    Parameters:
    :   `name` - the property name
    :   `newValue` - the new property value
  + ### lazilyLoadDesktopProperty

    protected [Object](../../../java.base/java/lang/Object.md "class in java.lang") lazilyLoadDesktopProperty([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    An opportunity to lazily evaluate desktop property values.

    Parameters:
    :   `name` - the name

    Returns:
    :   the desktop property or null
  + ### initializeDesktopProperties

    protected void initializeDesktopProperties()

    initializeDesktopProperties
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [PropertyChangeListener](../beans/PropertyChangeListener.md "interface in java.beans") pcl)

    Adds the specified property change listener for the named desktop
    property. When a [`PropertyChangeListenerProxy`](../beans/PropertyChangeListenerProxy.md "class in java.beans") object is added,
    its property name is ignored, and the wrapped listener is added.
    If `name` is `null` or `pcl` is `null`,
    no exception is thrown and no action is performed.

    Parameters:
    :   `name` - The name of the property to listen for
    :   `pcl` - The property change listener

    Since:
    :   1.2

    See Also:
    :   - [`PropertyChangeSupport.addPropertyChangeListener(String, PropertyChangeListener)`](../beans/PropertyChangeSupport.md#addPropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener))
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [PropertyChangeListener](../beans/PropertyChangeListener.md "interface in java.beans") pcl)

    Removes the specified property change listener for the named
    desktop property. When a [`PropertyChangeListenerProxy`](../beans/PropertyChangeListenerProxy.md "class in java.beans") object
    is removed, its property name is ignored, and
    the wrapped listener is removed.
    If `name` is `null` or `pcl` is `null`,
    no exception is thrown and no action is performed.

    Parameters:
    :   `name` - The name of the property to remove
    :   `pcl` - The property change listener

    Since:
    :   1.2

    See Also:
    :   - [`PropertyChangeSupport.removePropertyChangeListener(String, PropertyChangeListener)`](../beans/PropertyChangeSupport.md#removePropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener))
  + ### getPropertyChangeListeners

    public [PropertyChangeListener](../beans/PropertyChangeListener.md "interface in java.beans")[] getPropertyChangeListeners()

    Returns an array of all the property change listeners
    registered on this toolkit. The returned array
    contains [`PropertyChangeListenerProxy`](../beans/PropertyChangeListenerProxy.md "class in java.beans") objects
    that associate listeners with the names of desktop properties.

    Returns:
    :   all of this toolkit's [`PropertyChangeListener`](../beans/PropertyChangeListener.md "interface in java.beans")
        objects wrapped in `java.beans.PropertyChangeListenerProxy` objects
        or an empty array if no listeners are added

    Since:
    :   1.4

    See Also:
    :   - [`PropertyChangeSupport.getPropertyChangeListeners()`](../beans/PropertyChangeSupport.md#getPropertyChangeListeners())
  + ### getPropertyChangeListeners

    public [PropertyChangeListener](../beans/PropertyChangeListener.md "interface in java.beans")[] getPropertyChangeListeners([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName)

    Returns an array of all property change listeners
    associated with the specified name of a desktop property.

    Parameters:
    :   `propertyName` - the named property

    Returns:
    :   all of the `PropertyChangeListener` objects
        associated with the specified name of a desktop property
        or an empty array if no such listeners are added

    Since:
    :   1.4

    See Also:
    :   - [`PropertyChangeSupport.getPropertyChangeListeners(String)`](../beans/PropertyChangeSupport.md#getPropertyChangeListeners(java.lang.String))
  + ### isAlwaysOnTopSupported

    public boolean isAlwaysOnTopSupported()

    Returns whether the always-on-top mode is supported by this toolkit.
    To detect whether the always-on-top mode is supported for a
    particular Window, use [`Window.isAlwaysOnTopSupported()`](Window.md#isAlwaysOnTopSupported()).

    Returns:
    :   `true`, if current toolkit supports the always-on-top mode,
        otherwise returns `false`

    Since:
    :   1.6

    See Also:
    :   - [`Window.isAlwaysOnTopSupported()`](Window.md#isAlwaysOnTopSupported())
        - [`Window.setAlwaysOnTop(boolean)`](Window.md#setAlwaysOnTop(boolean))
  + ### isModalityTypeSupported

    public abstract boolean isModalityTypeSupported([Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") modalityType)

    Returns whether the given modality type is supported by this toolkit. If
    a dialog with unsupported modality type is created, then
    `Dialog.ModalityType.MODELESS` is used instead.

    Parameters:
    :   `modalityType` - modality type to be checked for support by this toolkit

    Returns:
    :   `true`, if current toolkit supports given modality
        type, `false` otherwise

    Since:
    :   1.6

    See Also:
    :   - [`Dialog.ModalityType`](Dialog.ModalityType.md "enum class in java.awt")
        - [`Dialog.getModalityType()`](Dialog.md#getModalityType())
        - [`Dialog.setModalityType(java.awt.Dialog.ModalityType)`](Dialog.md#setModalityType(java.awt.Dialog.ModalityType))
  + ### isModalExclusionTypeSupported

    public abstract boolean isModalExclusionTypeSupported([Dialog.ModalExclusionType](Dialog.ModalExclusionType.md "enum class in java.awt") modalExclusionType)

    Returns whether the given modal exclusion type is supported by this
    toolkit. If an unsupported modal exclusion type property is set on a window,
    then `Dialog.ModalExclusionType.NO_EXCLUDE` is used instead.

    Parameters:
    :   `modalExclusionType` - modal exclusion type to be checked for support by this toolkit

    Returns:
    :   `true`, if current toolkit supports given modal exclusion
        type, `false` otherwise

    Since:
    :   1.6

    See Also:
    :   - [`Dialog.ModalExclusionType`](Dialog.ModalExclusionType.md "enum class in java.awt")
        - [`Window.getModalExclusionType()`](Window.md#getModalExclusionType())
        - [`Window.setModalExclusionType(java.awt.Dialog.ModalExclusionType)`](Window.md#setModalExclusionType(java.awt.Dialog.ModalExclusionType))
  + ### addAWTEventListener

    public void addAWTEventListener([AWTEventListener](event/AWTEventListener.md "interface in java.awt.event") listener,
    long eventMask)

    Adds an AWTEventListener to receive all AWTEvents dispatched
    system-wide that conform to the given `eventMask`.

    First, if there is a security manager, its `checkPermission`
    method is called with an
    `AWTPermission("listenToAllAWTEvents")` permission.
    This may result in a SecurityException.

    `eventMask` is a bitmask of event types to receive.
    It is constructed by bitwise OR-ing together the event masks
    defined in `AWTEvent`.

    Note: event listener use is not recommended for normal
    application use, but are intended solely to support special
    purpose facilities including support for accessibility,
    event record/playback, and diagnostic tracing.
    If listener is null, no exception is thrown and no action is performed.

    Parameters:
    :   `listener` - the event listener.
    :   `eventMask` - the bitmask of event types to receive

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow the operation.

    Since:
    :   1.2

    See Also:
    :   - [`removeAWTEventListener(java.awt.event.AWTEventListener)`](#removeAWTEventListener(java.awt.event.AWTEventListener))
        - [`getAWTEventListeners()`](#getAWTEventListeners())
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTEvent`](AWTEvent.md "class in java.awt")
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
        - [`AWTEventListener`](event/AWTEventListener.md "interface in java.awt.event")
        - [`AWTEventListenerProxy`](event/AWTEventListenerProxy.md "class in java.awt.event")
  + ### removeAWTEventListener

    public void removeAWTEventListener([AWTEventListener](event/AWTEventListener.md "interface in java.awt.event") listener)

    Removes an AWTEventListener from receiving dispatched AWTEvents.

    First, if there is a security manager, its `checkPermission`
    method is called with an
    `AWTPermission("listenToAllAWTEvents")` permission.
    This may result in a SecurityException.

    Note: event listener use is not recommended for normal
    application use, but are intended solely to support special
    purpose facilities including support for accessibility,
    event record/playback, and diagnostic tracing.
    If listener is null, no exception is thrown and no action is performed.

    Parameters:
    :   `listener` - the event listener.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow the operation.

    Since:
    :   1.2

    See Also:
    :   - [`addAWTEventListener(java.awt.event.AWTEventListener, long)`](#addAWTEventListener(java.awt.event.AWTEventListener,long))
        - [`getAWTEventListeners()`](#getAWTEventListeners())
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTEvent`](AWTEvent.md "class in java.awt")
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
        - [`AWTEventListener`](event/AWTEventListener.md "interface in java.awt.event")
        - [`AWTEventListenerProxy`](event/AWTEventListenerProxy.md "class in java.awt.event")
  + ### getAWTEventListeners

    public [AWTEventListener](event/AWTEventListener.md "interface in java.awt.event")[] getAWTEventListeners()

    Returns an array of all the `AWTEventListener`s
    registered on this toolkit.
    If there is a security manager, its `checkPermission`
    method is called with an
    `AWTPermission("listenToAllAWTEvents")` permission.
    This may result in a SecurityException.
    Listeners can be returned
    within `AWTEventListenerProxy` objects, which also contain
    the event mask for the given listener.
    Note that listener objects
    added multiple times appear only once in the returned array.

    Returns:
    :   all of the `AWTEventListener`s or an empty
        array if no listeners are currently registered

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow the operation.

    Since:
    :   1.4

    See Also:
    :   - [`addAWTEventListener(java.awt.event.AWTEventListener, long)`](#addAWTEventListener(java.awt.event.AWTEventListener,long))
        - [`removeAWTEventListener(java.awt.event.AWTEventListener)`](#removeAWTEventListener(java.awt.event.AWTEventListener))
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTEvent`](AWTEvent.md "class in java.awt")
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
        - [`AWTEventListener`](event/AWTEventListener.md "interface in java.awt.event")
        - [`AWTEventListenerProxy`](event/AWTEventListenerProxy.md "class in java.awt.event")
  + ### getAWTEventListeners

    public [AWTEventListener](event/AWTEventListener.md "interface in java.awt.event")[] getAWTEventListeners(long eventMask)

    Returns an array of all the `AWTEventListener`s
    registered on this toolkit which listen to all of the event
    types specified in the `eventMask` argument.
    If there is a security manager, its `checkPermission`
    method is called with an
    `AWTPermission("listenToAllAWTEvents")` permission.
    This may result in a SecurityException.
    Listeners can be returned
    within `AWTEventListenerProxy` objects, which also contain
    the event mask for the given listener.
    Note that listener objects
    added multiple times appear only once in the returned array.

    Parameters:
    :   `eventMask` - the bitmask of event types to listen for

    Returns:
    :   all of the `AWTEventListener`s registered
        on this toolkit for the specified
        event types, or an empty array if no such listeners
        are currently registered

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow the operation.

    Since:
    :   1.4

    See Also:
    :   - [`addAWTEventListener(java.awt.event.AWTEventListener, long)`](#addAWTEventListener(java.awt.event.AWTEventListener,long))
        - [`removeAWTEventListener(java.awt.event.AWTEventListener)`](#removeAWTEventListener(java.awt.event.AWTEventListener))
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTEvent`](AWTEvent.md "class in java.awt")
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
        - [`AWTEventListener`](event/AWTEventListener.md "interface in java.awt.event")
        - [`AWTEventListenerProxy`](event/AWTEventListenerProxy.md "class in java.awt.event")
  + ### mapInputMethodHighlight

    public abstract [Map](../../../java.base/java/util/Map.md "interface in java.util")<[TextAttribute](font/TextAttribute.md "class in java.awt.font"),?> mapInputMethodHighlight([InputMethodHighlight](im/InputMethodHighlight.md "class in java.awt.im") highlight)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns a map of visual attributes for the abstract level description
    of the given input method highlight, or null if no mapping is found.
    The style field of the input method highlight is ignored. The map
    returned is unmodifiable.

    Parameters:
    :   `highlight` - input method highlight

    Returns:
    :   style attribute map, or `null`

    Throws:
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless` returns true

    Since:
    :   1.3

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### areExtraMouseButtonsEnabled

    public boolean areExtraMouseButtonsEnabled()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Reports whether events from extra mouse buttons are allowed to be processed and posted into
    `EventQueue`.
      
    To change the returned value it is necessary to set the `sun.awt.enableExtraMouseButtons`
    property before the `Toolkit` class initialization. This setting could be done on the application
    startup by the following command:

    ```
     java -Dsun.awt.enableExtraMouseButtons=false Application
    ```

    Alternatively, the property could be set in the application by using the following code:

    ```
     System.setProperty("sun.awt.enableExtraMouseButtons", "true");
    ```

    before the `Toolkit` class initialization.
    If not set by the time of the `Toolkit` class initialization, this property will be
    initialized with `true`.
    Changing this value after the `Toolkit` class initialization will have no effect.

    Returns:
    :   `true` if events from extra mouse buttons are allowed to be processed and posted;
        `false` otherwise

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless() returns true

    Since:
    :   1.7

    See Also:
    :   - [`System.getProperty(String propertyName)`](../../../java.base/java/lang/System.md#getProperty(java.lang.String))
        - [`System.setProperty(String propertyName, String value)`](../../../java.base/java/lang/System.md#setProperty(java.lang.String,java.lang.String))
        - [`EventQueue`](EventQueue.md "class in java.awt")