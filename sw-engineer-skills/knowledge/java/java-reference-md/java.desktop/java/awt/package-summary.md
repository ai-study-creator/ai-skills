Module [java.desktop](../../module-summary.md)

# Package java.awt

---

package java.awt

Contains all of the classes for creating user interfaces and for painting
graphics and images. A user interface object such as a button or a scrollbar
is called, in AWT terminology, a component. The Component class is the root
of all AWT components. See Component for a detailed description of properties
that all AWT components share.

Some components fire events when a user interacts with the components. The
AWTEvent class and its subclasses are used to represent the events that AWT
components can fire. See AWTEvent for a description of the AWT event model.

A container is a component that can contain components and other containers.
A container can also have a layout manager that controls the visual placement
of components in the container. The AWT package contains several layout
manager classes and an interface for building your own layout manager. See
Container and LayoutManager for more information.

Each `Component` object is limited in its maximum size and its location
because the values are stored as an integer. Also, a platform may further
restrict maximum size and location coordinates. The exact maximum values are
dependent on the platform. There is no way to change these maximum values,
either in Java code or in native code. These limitations also impose
restrictions on component layout. If the bounds of a Component object exceed
a platform limit, there is no way to properly arrange them within a Container
object. The object's bounds are defined by any object's coordinate in
combination with its size on a respective axis.

## Additional Specification

* [The AWT Focus Subsystem](doc-files/FocusSpec.md)* [The AWT Modality](doc-files/Modality.md)* [The Java AWT Native Interface (JAWT)](../../../../specs/AWT_Native_Interface.md)

Since:
:   1.0

* Related Packages

  Module

  Package

  Description

  [java.desktop](../../module-summary.md)

  [java.awt.color](color/package-summary.md)

  Provides classes for color spaces.

  [java.datatransfer](../../../java.datatransfer/module-summary.md)

  [java.awt.datatransfer](../../../java.datatransfer/java/awt/datatransfer/package-summary.md)

  Provides interfaces and classes for transferring data between and within
  applications.

  [java.desktop](../../module-summary.md)

  [java.awt.desktop](desktop/package-summary.md)

  Provides interfaces and classes for interaction with various desktop
  capabilities.

  [java.desktop](../../module-summary.md)

  [java.awt.dnd](dnd/package-summary.md)

  Drag and Drop is a direct manipulation gesture found in many Graphical User
  Interface systems that provides a mechanism to transfer information between
  two entities logically associated with presentation elements in the GUI.

  [java.desktop](../../module-summary.md)

  [java.awt.event](event/package-summary.md)

  Provides interfaces and classes for dealing with different types of events
  fired by AWT components.

  [java.desktop](../../module-summary.md)

  [java.awt.font](font/package-summary.md)

  Provides classes and interface relating to fonts.

  [java.desktop](../../module-summary.md)

  [java.awt.geom](geom/package-summary.md)

  Provides the Java 2D classes for defining and performing operations on
  objects related to two-dimensional geometry.

  [java.desktop](../../module-summary.md)

  [java.awt.im](im/package-summary.md)

  Provides classes and interfaces for the input method framework.

  [java.desktop](../../module-summary.md)

  [java.awt.image](image/package-summary.md)

  Provides classes for creating and modifying images.

  [java.desktop](../../module-summary.md)

  [java.awt.print](print/package-summary.md)

  Provides classes and interfaces for a general printing API.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [ActiveEvent](ActiveEvent.md "interface in java.awt")

  An interface for events that know how to dispatch themselves.

  [Adjustable](Adjustable.md "interface in java.awt")

  The interface for objects which have an adjustable numeric value
  contained within a bounded range of values.

  [AlphaComposite](AlphaComposite.md "class in java.awt")

  The `AlphaComposite` class implements basic alpha
  compositing rules for combining source and destination colors
  to achieve blending and transparency effects with graphics and
  images.

  [AWTError](AWTError.md "class in java.awt")

  Thrown when a serious Abstract Window Toolkit error has occurred.

  [AWTEvent](AWTEvent.md "class in java.awt")

  The root event class for all AWT events.

  [AWTEventMulticaster](AWTEventMulticaster.md "class in java.awt")

  `AWTEventMulticaster` implements efficient and thread-safe multi-cast
  event dispatching for the AWT events defined in the `java.awt.event`
  package.

  [AWTException](AWTException.md "class in java.awt")

  Signals that an Abstract Window Toolkit exception has occurred.

  [AWTKeyStroke](AWTKeyStroke.md "class in java.awt")

  An `AWTKeyStroke` represents a key action on the
  keyboard, or equivalent input device.

  [AWTPermission](AWTPermission.md "class in java.awt")

  This class is for AWT permissions.

  [BasicStroke](BasicStroke.md "class in java.awt")

  The `BasicStroke` class defines a basic set of rendering
  attributes for the outlines of graphics primitives, which are rendered
  with a [`Graphics2D`](Graphics2D.md "class in java.awt") object that has its Stroke attribute set to
  this `BasicStroke`.

  [BorderLayout](BorderLayout.md "class in java.awt")

  A border layout lays out a container, arranging and resizing
  its components to fit in five regions:
  north, south, east, west, and center.

  [BufferCapabilities](BufferCapabilities.md "class in java.awt")

  Capabilities and properties of buffers.

  [BufferCapabilities.FlipContents](BufferCapabilities.FlipContents.md "class in java.awt")

  A type-safe enumeration of the possible back buffer contents after
  page-flipping

  [Button](Button.md "class in java.awt")

  This class creates a labeled button.

  [Canvas](Canvas.md "class in java.awt")

  A `Canvas` component represents a blank rectangular
  area of the screen onto which the application can draw or from
  which the application can trap input events from the user.

  [CardLayout](CardLayout.md "class in java.awt")

  A `CardLayout` object is a layout manager for a
  container.

  [Checkbox](Checkbox.md "class in java.awt")

  A check box is a graphical component that can be in either an
  "on" (`true`) or "off" (`false`) state.

  [CheckboxGroup](CheckboxGroup.md "class in java.awt")

  The `CheckboxGroup` class is used to group together
  a set of `Checkbox` buttons.

  [CheckboxMenuItem](CheckboxMenuItem.md "class in java.awt")

  This class represents a check box that can be included in a menu.

  [Choice](Choice.md "class in java.awt")

  The `Choice` class presents a pop-up menu of choices.

  [Color](Color.md "class in java.awt")

  The `Color` class is used to encapsulate colors in the default
  sRGB color space or colors in arbitrary color spaces identified by a
  [`ColorSpace`](color/ColorSpace.md "class in java.awt.color").

  [Component](Component.md "class in java.awt")

  A *component* is an object having a graphical representation
  that can be displayed on the screen and that can interact with the
  user.

  [Component.BaselineResizeBehavior](Component.BaselineResizeBehavior.md "enum class in java.awt")

  Enumeration of the common ways the baseline of a component can
  change as the size changes.

  [ComponentOrientation](ComponentOrientation.md "class in java.awt")

  The ComponentOrientation class encapsulates the language-sensitive
  orientation that is to be used to order the elements of a component
  or of text.

  [Composite](Composite.md "interface in java.awt")

  The `Composite` interface, along with
  [`CompositeContext`](CompositeContext.md "interface in java.awt"), defines the methods to compose a draw
  primitive with the underlying graphics area.

  [CompositeContext](CompositeContext.md "interface in java.awt")

  The `CompositeContext` interface defines the encapsulated
  and optimized environment for a compositing operation.

  [Container](Container.md "class in java.awt")

  A generic Abstract Window Toolkit(AWT) container object is a component
  that can contain other AWT components.

  [ContainerOrderFocusTraversalPolicy](ContainerOrderFocusTraversalPolicy.md "class in java.awt")

  A FocusTraversalPolicy that determines traversal order based on the order
  of child Components in a Container.

  [Cursor](Cursor.md "class in java.awt")

  A class to encapsulate the bitmap representation of the mouse cursor.

  [DefaultFocusTraversalPolicy](DefaultFocusTraversalPolicy.md "class in java.awt")

  A FocusTraversalPolicy that determines traversal order based on the order
  of child Components in a Container.

  [DefaultKeyboardFocusManager](DefaultKeyboardFocusManager.md "class in java.awt")

  The default KeyboardFocusManager for AWT applications.

  [Desktop](Desktop.md "class in java.awt")

  The `Desktop` class allows interact with various desktop capabilities.

  [Desktop.Action](Desktop.Action.md "enum class in java.awt")

  Represents an action type.

  [Dialog](Dialog.md "class in java.awt")

  A Dialog is a top-level window with a title and a border
  that is typically used to take some form of input from the user.

  [Dialog.ModalExclusionType](Dialog.ModalExclusionType.md "enum class in java.awt")

  Any top-level window can be marked not to be blocked by modal
  dialogs.

  [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt")

  Modal dialogs block all input to some top-level windows.

  [Dimension](Dimension.md "class in java.awt")

  The `Dimension` class encapsulates the width and
  height of a component (in integer precision) in a single object.

  [DisplayMode](DisplayMode.md "class in java.awt")

  The `DisplayMode` class encapsulates the bit depth, height,
  width, and refresh rate of a `GraphicsDevice`.

  [Event](Event.md "class in java.awt")

  Deprecated.

  It is recommended that `AWTEvent` and its subclasses be
  used instead

  [EventQueue](EventQueue.md "class in java.awt")

  `EventQueue` is a platform-independent class
  that queues events, both from the underlying peer classes
  and from trusted application classes.

  [FileDialog](FileDialog.md "class in java.awt")

  The `FileDialog` class displays a dialog window
  from which the user can select a file.

  [FlowLayout](FlowLayout.md "class in java.awt")

  A flow layout arranges components in a directional flow, much
  like lines of text in a paragraph.

  [FocusTraversalPolicy](FocusTraversalPolicy.md "class in java.awt")

  A FocusTraversalPolicy defines the order in which Components with a
  particular focus cycle root are traversed.

  [Font](Font.md "class in java.awt")

  The `Font` class represents fonts, which are used to
  render text in a visible way.

  [FontFormatException](FontFormatException.md "class in java.awt")

  Thrown by method createFont in the `Font` class to indicate
  that the specified font is bad.

  [FontMetrics](FontMetrics.md "class in java.awt")

  The `FontMetrics` class defines a font metrics object, which
  encapsulates information about the rendering of a particular font on a
  particular screen.

  [Frame](Frame.md "class in java.awt")

  A `Frame` is a top-level window with a title and a border.

  [GradientPaint](GradientPaint.md "class in java.awt")

  The `GradientPaint` class provides a way to fill
  a [`Shape`](Shape.md "interface in java.awt") with a linear color gradient pattern.

  [Graphics](Graphics.md "class in java.awt")

  The `Graphics` class is the abstract base class for
  all graphics contexts that allow an application to draw onto
  components that are realized on various devices, as well as
  onto off-screen images.

  [Graphics2D](Graphics2D.md "class in java.awt")

  This `Graphics2D` class extends the
  [`Graphics`](Graphics.md "class in java.awt") class to provide more sophisticated
  control over geometry, coordinate transformations, color management,
  and text layout.

  [GraphicsConfigTemplate](GraphicsConfigTemplate.md "class in java.awt")

  The `GraphicsConfigTemplate` class is used to obtain a valid
  [`GraphicsConfiguration`](GraphicsConfiguration.md "class in java.awt").

  [GraphicsConfiguration](GraphicsConfiguration.md "class in java.awt")

  The `GraphicsConfiguration` class describes the
  characteristics of a graphics destination such as a printer or monitor.

  [GraphicsDevice](GraphicsDevice.md "class in java.awt")

  The `GraphicsDevice` class describes the graphics devices
  that might be available in a particular graphics environment.

  [GraphicsDevice.WindowTranslucency](GraphicsDevice.WindowTranslucency.md "enum class in java.awt")

  Kinds of translucency supported by the underlying system.

  [GraphicsEnvironment](GraphicsEnvironment.md "class in java.awt")

  The `GraphicsEnvironment` class describes the collection
  of [`GraphicsDevice`](GraphicsDevice.md "class in java.awt") objects and [`Font`](Font.md "class in java.awt") objects
  available to a Java(tm) application on a particular platform.

  [GridBagConstraints](GridBagConstraints.md "class in java.awt")

  The `GridBagConstraints` class specifies constraints
  for components that are laid out using the
  `GridBagLayout` class.

  [GridBagLayout](GridBagLayout.md "class in java.awt")

  The `GridBagLayout` class is a flexible layout
  manager that aligns components vertically, horizontally or along their
  baseline without requiring that the components be of the same size.

  [GridBagLayoutInfo](GridBagLayoutInfo.md "class in java.awt")

  The `GridBagLayoutInfo` is an utility class for
  `GridBagLayout` layout manager.

  [GridLayout](GridLayout.md "class in java.awt")

  The `GridLayout` class is a layout manager that
  lays out a container's components in a rectangular grid.

  [HeadlessException](HeadlessException.md "class in java.awt")

  Thrown when code that is dependent on a keyboard, display, or mouse
  is called in an environment that does not support a keyboard, display,
  or mouse.

  [IllegalComponentStateException](IllegalComponentStateException.md "class in java.awt")

  Signals that an AWT component is not in an appropriate state for
  the requested operation.

  [Image](Image.md "class in java.awt")

  The abstract class `Image` is the superclass of all
  classes that represent graphical images.

  [ImageCapabilities](ImageCapabilities.md "class in java.awt")

  Capabilities and properties of images.

  [Insets](Insets.md "class in java.awt")

  An `Insets` object is a representation of the borders
  of a container.

  [ItemSelectable](ItemSelectable.md "interface in java.awt")

  The interface for objects which contain a set of items for
  which zero or more can be selected.

  [JobAttributes](JobAttributes.md "class in java.awt")

  A set of attributes which control a print job.

  [JobAttributes.DefaultSelectionType](JobAttributes.DefaultSelectionType.md "class in java.awt")

  A type-safe enumeration of possible default selection states.

  [JobAttributes.DestinationType](JobAttributes.DestinationType.md "class in java.awt")

  A type-safe enumeration of possible job destinations.

  [JobAttributes.DialogType](JobAttributes.DialogType.md "class in java.awt")

  A type-safe enumeration of possible dialogs to display to the user.

  [JobAttributes.MultipleDocumentHandlingType](JobAttributes.MultipleDocumentHandlingType.md "class in java.awt")

  A type-safe enumeration of possible multiple copy handling states.

  [JobAttributes.SidesType](JobAttributes.SidesType.md "class in java.awt")

  A type-safe enumeration of possible multi-page impositions.

  [KeyboardFocusManager](KeyboardFocusManager.md "class in java.awt")

  The KeyboardFocusManager is responsible for managing the active and focused
  Windows, and the current focus owner.

  [KeyEventDispatcher](KeyEventDispatcher.md "interface in java.awt")

  A KeyEventDispatcher cooperates with the current KeyboardFocusManager in the
  targeting and dispatching of all KeyEvents.

  [KeyEventPostProcessor](KeyEventPostProcessor.md "interface in java.awt")

  A KeyEventPostProcessor cooperates with the current KeyboardFocusManager
  in the final resolution of all unconsumed KeyEvents.

  [Label](Label.md "class in java.awt")

  A `Label` object is a component for placing text in a
  container.

  [LayoutManager](LayoutManager.md "interface in java.awt")

  Defines the interface for classes that know how to lay out
  `Container`s.

  [LayoutManager2](LayoutManager2.md "interface in java.awt")

  Defines an interface for classes that know how to layout `Container`s
  based on a layout constraints object.

  [LinearGradientPaint](LinearGradientPaint.md "class in java.awt")

  The `LinearGradientPaint` class provides a way to fill
  a [`Shape`](Shape.md "interface in java.awt") with a linear color gradient pattern.

  [List](List.md "class in java.awt")

  The `List` component presents the user with a
  scrolling list of text items.

  [MediaTracker](MediaTracker.md "class in java.awt")

  The `MediaTracker` class is a utility class to track
  the status of a number of media objects.

  [Menu](Menu.md "class in java.awt")

  A `Menu` object is a pull-down menu component
  that is deployed from a menu bar.

  [MenuBar](MenuBar.md "class in java.awt")

  The `MenuBar` class encapsulates the platform's
  concept of a menu bar bound to a frame.

  [MenuComponent](MenuComponent.md "class in java.awt")

  The abstract class `MenuComponent` is the superclass
  of all menu-related components.

  [MenuContainer](MenuContainer.md "interface in java.awt")

  The super class of all menu related containers.

  [MenuItem](MenuItem.md "class in java.awt")

  All items in a menu must belong to the class
  `MenuItem`, or one of its subclasses.

  [MenuShortcut](MenuShortcut.md "class in java.awt")

  The `MenuShortcut` class represents a keyboard accelerator
  for a MenuItem.

  [MouseInfo](MouseInfo.md "class in java.awt")

  `MouseInfo` provides methods for getting information about the mouse,
  such as mouse pointer location and the number of mouse buttons.

  [MultipleGradientPaint](MultipleGradientPaint.md "class in java.awt")

  This is the superclass for Paints which use a multiple color
  gradient to fill in their raster.

  [MultipleGradientPaint.ColorSpaceType](MultipleGradientPaint.ColorSpaceType.md "enum class in java.awt")

  The color space in which to perform the gradient interpolation.

  [MultipleGradientPaint.CycleMethod](MultipleGradientPaint.CycleMethod.md "enum class in java.awt")

  The method to use when painting outside the gradient bounds.

  [PageAttributes](PageAttributes.md "class in java.awt")

  A set of attributes which control the output of a printed page.

  [PageAttributes.ColorType](PageAttributes.ColorType.md "class in java.awt")

  A type-safe enumeration of possible color states.

  [PageAttributes.MediaType](PageAttributes.MediaType.md "class in java.awt")

  A type-safe enumeration of possible paper sizes.

  [PageAttributes.OrientationRequestedType](PageAttributes.OrientationRequestedType.md "class in java.awt")

  A type-safe enumeration of possible orientations.

  [PageAttributes.OriginType](PageAttributes.OriginType.md "class in java.awt")

  A type-safe enumeration of possible origins.

  [PageAttributes.PrintQualityType](PageAttributes.PrintQualityType.md "class in java.awt")

  A type-safe enumeration of possible print qualities.

  [Paint](Paint.md "interface in java.awt")

  This `Paint` interface defines how color patterns
  can be generated for [`Graphics2D`](Graphics2D.md "class in java.awt") operations.

  [PaintContext](PaintContext.md "interface in java.awt")

  The `PaintContext` interface defines the encapsulated
  and optimized environment to generate color patterns in device
  space for fill or stroke operations on a
  [`Graphics2D`](Graphics2D.md "class in java.awt").

  [Panel](Panel.md "class in java.awt")

  `Panel` is the simplest container class.

  [Point](Point.md "class in java.awt")

  A point representing a location in `(x,y)` coordinate space,
  specified in integer precision.

  [PointerInfo](PointerInfo.md "class in java.awt")

  A class that describes the pointer position.

  [Polygon](Polygon.md "class in java.awt")

  The `Polygon` class encapsulates a description of a
  closed, two-dimensional region within a coordinate space.

  [PopupMenu](PopupMenu.md "class in java.awt")

  A class that implements a menu which can be dynamically popped up
  at a specified position within a component.

  [PrintGraphics](PrintGraphics.md "interface in java.awt")

  An abstract class which provides a print graphics context for a page.

  [PrintJob](PrintJob.md "class in java.awt")

  An abstract class which initiates and executes a print job.

  [RadialGradientPaint](RadialGradientPaint.md "class in java.awt")

  The `RadialGradientPaint` class provides a way to fill a shape with
  a circular radial color gradient pattern.

  [Rectangle](Rectangle.md "class in java.awt")

  A `Rectangle` specifies an area in a coordinate space that is
  enclosed by the `Rectangle` object's upper-left point
  `(x,y)`
  in the coordinate space, its width, and its height.

  [RenderingHints](RenderingHints.md "class in java.awt")

  The `RenderingHints` class defines and manages collections of
  keys and associated values which allow an application to provide input
  into the choice of algorithms used by other classes which perform
  rendering and image manipulation services.

  [RenderingHints.Key](RenderingHints.Key.md "class in java.awt")

  Defines the base type of all keys used along with the
  [`RenderingHints`](RenderingHints.md "class in java.awt") class to control various
  algorithm choices in the rendering and imaging pipelines.

  [Robot](Robot.md "class in java.awt")

  This class is used to generate native system input events
  for the purposes of test automation, self-running demos, and
  other applications where control of the mouse and keyboard
  is needed.

  [Scrollbar](Scrollbar.md "class in java.awt")

  The `Scrollbar` class embodies a scroll bar, a
  familiar user-interface object.

  [ScrollPane](ScrollPane.md "class in java.awt")

  A container class which implements automatic horizontal and/or
  vertical scrolling for a single child component.

  [ScrollPaneAdjustable](ScrollPaneAdjustable.md "class in java.awt")

  This class represents the state of a horizontal or vertical
  scrollbar of a `ScrollPane`.

  [SecondaryLoop](SecondaryLoop.md "interface in java.awt")

  A helper interface to run the nested event loop.

  [Shape](Shape.md "interface in java.awt")

  The `Shape` interface provides definitions for objects
  that represent some form of geometric shape.

  [SplashScreen](SplashScreen.md "class in java.awt")

  The splash screen can be displayed at application startup, before the
  Java Virtual Machine (JVM) starts.

  [Stroke](Stroke.md "interface in java.awt")

  The `Stroke` interface allows a
  [`Graphics2D`](Graphics2D.md "class in java.awt") object to obtain a [`Shape`](Shape.md "interface in java.awt") that is the
  decorated outline, or stylistic representation of the outline,
  of the specified `Shape`.

  [SystemColor](SystemColor.md "class in java.awt")

  A class to encapsulate symbolic colors representing the color of
  native GUI objects on a system.

  [SystemTray](SystemTray.md "class in java.awt")

  The `SystemTray` class represents the system tray for a
  desktop.

  [Taskbar](Taskbar.md "class in java.awt")

  The `Taskbar` class allows a Java application to interact with
  the system task area (taskbar, Dock, etc.).

  [Taskbar.Feature](Taskbar.Feature.md "enum class in java.awt")

  List of provided features.

  [Taskbar.State](Taskbar.State.md "enum class in java.awt")

  Kinds of available window progress states.

  [TextArea](TextArea.md "class in java.awt")

  A `TextArea` object is a multi-line region
  that displays text.

  [TextComponent](TextComponent.md "class in java.awt")

  The `TextComponent` class is the superclass of
  any component that allows the editing of some text.

  [TextField](TextField.md "class in java.awt")

  A `TextField` object is a text component
  that allows for the editing of a single line of text.

  [TexturePaint](TexturePaint.md "class in java.awt")

  The `TexturePaint` class provides a way to fill a
  [`Shape`](Shape.md "interface in java.awt") with a texture that is specified as
  a [`BufferedImage`](image/BufferedImage.md "class in java.awt.image").

  [Toolkit](Toolkit.md "class in java.awt")

  This class is the abstract superclass of all actual
  implementations of the Abstract Window Toolkit.

  [Transparency](Transparency.md "interface in java.awt")

  The `Transparency` interface defines the common transparency
  modes for implementing classes.

  [TrayIcon](TrayIcon.md "class in java.awt")

  A `TrayIcon` object represents a tray icon that can be
  added to the [`system tray`](SystemTray.md "class in java.awt").

  [TrayIcon.MessageType](TrayIcon.MessageType.md "enum class in java.awt")

  The message type determines which icon will be displayed in the
  caption of the message, and a possible system sound a message
  may generate upon showing.

  [Window](Window.md "class in java.awt")

  A `Window` object is a top-level window with no borders and no
  menubar.

  [Window.Type](Window.Type.md "enum class in java.awt")

  Enumeration of available *window types*.