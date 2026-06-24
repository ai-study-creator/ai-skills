Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JRootPane

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JRootPane

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

---

public class JRootPane
extends [JComponent](JComponent.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

A lightweight container used behind the scenes by
`JFrame`, `JDialog`, `JWindow`,
`JApplet`, and `JInternalFrame`.
For task-oriented information on functionality provided by root panes
see [How to Use Root Panes](https://docs.oracle.com/javase/tutorial/uiswing/components/rootpane.html),
a section in *The Java Tutorial*.

The following image shows the relationships between
the classes that use root panes.

![The following text describes this graphic.](doc-files/JRootPane-1.gif)

The "heavyweight" components (those that delegate to a peer, or native
component on the host system) are shown with a darker, heavier box. The four
heavyweight JFC/Swing containers (`JFrame`, `JDialog`,
`JWindow`, and `JApplet`) are
shown in relation to the AWT classes they extend.
These four components are the
only heavyweight containers in the Swing library. The lightweight container
`JInternalFrame` is also shown.
All five of these JFC/Swing containers implement the
`RootPaneContainer` interface,
and they all delegate their operations to a
`JRootPane` (shown with a little "handle" on top).
> **Note:** The `JComponent` method `getRootPane`
> can be used to obtain the `JRootPane` that contains
> a given component.

Example:

![the following text describes this graphic.](doc-files/JRootPane-2.gif)

The diagram at right shows the structure of a `JRootPane`.
A `JRootpane` is made up of a `glassPane`,
an optional `menuBar`, and a `contentPane`.
(The `JLayeredPane` manages the `menuBar`
and the `contentPane`.)
The `glassPane` sits over the top of everything,
where it is in a position to intercept mouse movements.
Since the `glassPane` (like the `contentPane`)
can be an arbitrary component, it is also possible to set up the
`glassPane` for drawing. Lines and images on the
`glassPane` can then range
over the frames underneath without being limited by their boundaries.

Although the `menuBar` component is optional,
the `layeredPane`, `contentPane`,
and `glassPane` always exist.
Attempting to set them to `null` generates an exception.

To add components to the `JRootPane` (other than the
optional menu bar), you add the object to the `contentPane`
of the `JRootPane`, like this:

```
       rootPane.getContentPane().add(child);
```

The same principle holds true for setting layout managers, removing
components, listing children, etc. All these methods are invoked on
the `contentPane` instead of on the `JRootPane`.
> **Note:** The default layout manager for the `contentPane` is
> a `BorderLayout` manager. However, the `JRootPane`
> uses a custom `LayoutManager`.
> So, when you want to change the layout manager for the components you added
> to a `JRootPane`, be sure to use code like this:
>
> ```
>     rootPane.getContentPane().setLayout(new BoxLayout());
> ```

If a `JMenuBar` component is set on the `JRootPane`,
it is positioned along the upper edge of the frame.
The `contentPane` is adjusted in location and size to
fill the remaining area.
(The `JMenuBar` and the `contentPane` are added to the
`layeredPane` component at the
`JLayeredPane.FRAME_CONTENT_LAYER` layer.)

The `layeredPane` is the parent of all children in the
`JRootPane` -- both as the direct parent of the menu and
the grandparent of all components added to the `contentPane`.
It is an instance of `JLayeredPane`,
which provides the ability to add components at several layers.
This capability is very useful when working with menu popups,
dialog boxes, and dragging -- situations in which you need to place
a component on top of all other components in the pane.

The `glassPane` sits on top of all other components in the
`JRootPane`.
That provides a convenient place to draw above all other components,
and makes it possible to intercept mouse events,
which is useful both for dragging and for drawing.
Developers can use `setVisible` on the `glassPane`
to control when the `glassPane` displays over the other children.
By default the `glassPane` is not visible.

The custom `LayoutManager` used by `JRootPane`
ensures that:

1. The `glassPane` fills the entire viewable
   area of the `JRootPane` (bounds - insets).- The `layeredPane` fills the entire viewable area of the
     `JRootPane`. (bounds - insets)- The `menuBar` is positioned at the upper edge of the
       `layeredPane`.- The `contentPane` fills the entire viewable area,
         minus the `menuBar`, if present.

Any other views in the `JRootPane` view hierarchy are ignored.

If you replace the `LayoutManager` of the `JRootPane`,
you are responsible for managing all of these views.
So ordinarily you will want to be sure that you
change the layout manager for the `contentPane` rather than
for the `JRootPane` itself!

The painting architecture of Swing requires an opaque
`JComponent`
to exist in the containment hierarchy above all other components. This is
typically provided by way of the content pane. If you replace the content
pane, it is recommended that you make the content pane opaque
by way of `setOpaque(true)`. Additionally, if the content pane
overrides `paintComponent`, it
will need to completely fill in the background in an opaque color in
`paintComponent`.

**Warning:** Swing is not thread safe. For more
information see [Swing's Threading
Policy](package-summary.md#threading).

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

See Also:
:   * [`JLayeredPane`](JLayeredPane.md "class in javax.swing")
    * [`JMenuBar`](JMenuBar.md "class in javax.swing")
    * [`JWindow`](JWindow.md "class in javax.swing")
    * [`JFrame`](JFrame.md "class in javax.swing")
    * [`JDialog`](JDialog.md "class in javax.swing")
    * [`JApplet`](JApplet.md "class in javax.swing")
    * [`JInternalFrame`](JInternalFrame.md "class in javax.swing")
    * [`JComponent`](JComponent.md "class in javax.swing")
    * [`BoxLayout`](BoxLayout.md "class in javax.swing")
    * [Mixing Heavy and Light Components](http://www.oracle.com/technetwork/articles/java/mixing-components-433992.html)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JRootPane.AccessibleJRootPane`

  This class implements accessibility support for the
  `JRootPane` class.

  `protected class`

  `JRootPane.RootLayout`

  A custom layout manager that is responsible for the layout of
  layeredPane, glassPane, and menuBar.

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `COLOR_CHOOSER_DIALOG`

  Constant used for the windowDecorationStyle property.

  `protected Container`

  `contentPane`

  The content pane.

  `protected JButton`

  `defaultButton`

  The button that gets activated when the pane has the focus and
  a UI-specific action like pressing the **Enter** key occurs.

  `static final int`

  `ERROR_DIALOG`

  Constant used for the windowDecorationStyle property.

  `static final int`

  `FILE_CHOOSER_DIALOG`

  Constant used for the windowDecorationStyle property.

  `static final int`

  `FRAME`

  Constant used for the windowDecorationStyle property.

  `protected Component`

  `glassPane`

  The glass pane that overlays the menu bar and content pane,
  so it can intercept mouse movements and such.

  `static final int`

  `INFORMATION_DIALOG`

  Constant used for the windowDecorationStyle property.

  `protected JLayeredPane`

  `layeredPane`

  The layered pane that manages the menu bar and content pane.

  `protected JMenuBar`

  `menuBar`

  The menu bar.

  `static final int`

  `NONE`

  Constant used for the windowDecorationStyle property.

  `static final int`

  `PLAIN_DIALOG`

  Constant used for the windowDecorationStyle property.

  `static final int`

  `QUESTION_DIALOG`

  Constant used for the windowDecorationStyle property.

  `static final int`

  `WARNING_DIALOG`

  Constant used for the windowDecorationStyle property.

  ### Fields inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JRootPane()`

  Creates a `JRootPane`, setting up its
  `glassPane`, `layeredPane`,
  and `contentPane`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `addImpl(Component comp,
  Object constraints,
  int index)`

  Overridden to enforce the position of the glass component as
  the zero child.

  `void`

  `addNotify()`

  Notifies this component that it now has a parent component.

  `protected Container`

  `createContentPane()`

  Called by the constructor methods to create the default
  `contentPane`.

  `protected Component`

  `createGlassPane()`

  Called by the constructor methods to create the default
  `glassPane`.

  `protected JLayeredPane`

  `createLayeredPane()`

  Called by the constructor methods to create the default
  `layeredPane`.

  `protected LayoutManager`

  `createRootLayout()`

  Called by the constructor methods to create the default
  `layoutManager`.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` associated with this
  `JRootPane`.

  `Container`

  `getContentPane()`

  Returns the content pane -- the container that holds the components
  parented by the root pane.

  `JButton`

  `getDefaultButton()`

  Returns the value of the `defaultButton` property.

  `Component`

  `getGlassPane()`

  Returns the current glass pane for this `JRootPane`.

  `JMenuBar`

  `getJMenuBar()`

  Returns the menu bar from the layered pane.

  `JLayeredPane`

  `getLayeredPane()`

  Gets the layered pane used by the root pane.

  `JMenuBar`

  `getMenuBar()`

  Deprecated.

  As of Swing version 1.0.3
  replaced by `getJMenuBar()`.

  `RootPaneUI`

  `getUI()`

  Returns the L&F object that renders this component.

  `String`

  `getUIClassID()`

  Returns a string that specifies the name of the L&F class
  that renders this component.

  `int`

  `getWindowDecorationStyle()`

  Returns a constant identifying the type of Window decorations the
  `JRootPane` is providing.

  `boolean`

  `isOptimizedDrawingEnabled()`

  The `glassPane` and `contentPane`
  have the same bounds, which means `JRootPane`
  does not tiles its children and this should return false.

  `boolean`

  `isValidateRoot()`

  If a descendant of this `JRootPane` calls
  `revalidate`, validate from here on down.

  `protected String`

  `paramString()`

  Returns a string representation of this `JRootPane`.

  `void`

  `removeNotify()`

  Notifies this component that it no longer has a parent component.

  `void`

  `setContentPane(Container content)`

  Sets the content pane -- the container that holds the components
  parented by the root pane.

  `void`

  `setDefaultButton(JButton defaultButton)`

  Sets the `defaultButton` property,
  which determines the current default button for this `JRootPane`.

  `void`

  `setDoubleBuffered(boolean aFlag)`

  Sets whether this component should use a buffer to paint.

  `void`

  `setGlassPane(Component glass)`

  Sets a specified `Component` to be the glass pane for this
  root pane.

  `void`

  `setJMenuBar(JMenuBar menu)`

  Adds or changes the menu bar used in the layered pane.

  `void`

  `setLayeredPane(JLayeredPane layered)`

  Sets the layered pane for the root pane.

  `void`

  `setMenuBar(JMenuBar menu)`

  Deprecated.

  As of Swing version 1.0.3
  replaced by `setJMenuBar(JMenuBar menu)`.

  `void`

  `setUI(RootPaneUI ui)`

  Sets the L&F object that renders this component.

  `void`

  `setWindowDecorationStyle(int windowDecorationStyle)`

  Sets the type of Window decorations (such as borders, widgets for
  closing a Window, title ...) the `JRootPane` should
  provide.

  `void`

  `updateUI()`

  Resets the UI property to a value from the current look and feel.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NONE

    public static final int NONE

    Constant used for the windowDecorationStyle property. Indicates that
    the `JRootPane` should not provide any sort of
    Window decorations.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JRootPane.NONE)
  + ### FRAME

    public static final int FRAME

    Constant used for the windowDecorationStyle property. Indicates that
    the `JRootPane` should provide decorations appropriate for
    a Frame.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JRootPane.FRAME)
  + ### PLAIN\_DIALOG

    public static final int PLAIN\_DIALOG

    Constant used for the windowDecorationStyle property. Indicates that
    the `JRootPane` should provide decorations appropriate for
    a Dialog.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JRootPane.PLAIN_DIALOG)
  + ### INFORMATION\_DIALOG

    public static final int INFORMATION\_DIALOG

    Constant used for the windowDecorationStyle property. Indicates that
    the `JRootPane` should provide decorations appropriate for
    a Dialog used to display an informational message.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JRootPane.INFORMATION_DIALOG)
  + ### ERROR\_DIALOG

    public static final int ERROR\_DIALOG

    Constant used for the windowDecorationStyle property. Indicates that
    the `JRootPane` should provide decorations appropriate for
    a Dialog used to display an error message.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JRootPane.ERROR_DIALOG)
  + ### COLOR\_CHOOSER\_DIALOG

    public static final int COLOR\_CHOOSER\_DIALOG

    Constant used for the windowDecorationStyle property. Indicates that
    the `JRootPane` should provide decorations appropriate for
    a Dialog used to display a `JColorChooser`.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JRootPane.COLOR_CHOOSER_DIALOG)
  + ### FILE\_CHOOSER\_DIALOG

    public static final int FILE\_CHOOSER\_DIALOG

    Constant used for the windowDecorationStyle property. Indicates that
    the `JRootPane` should provide decorations appropriate for
    a Dialog used to display a `JFileChooser`.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JRootPane.FILE_CHOOSER_DIALOG)
  + ### QUESTION\_DIALOG

    public static final int QUESTION\_DIALOG

    Constant used for the windowDecorationStyle property. Indicates that
    the `JRootPane` should provide decorations appropriate for
    a Dialog used to present a question to the user.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JRootPane.QUESTION_DIALOG)
  + ### WARNING\_DIALOG

    public static final int WARNING\_DIALOG

    Constant used for the windowDecorationStyle property. Indicates that
    the `JRootPane` should provide decorations appropriate for
    a Dialog used to display a warning message.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JRootPane.WARNING_DIALOG)
  + ### menuBar

    protected [JMenuBar](JMenuBar.md "class in javax.swing") menuBar

    The menu bar.
  + ### contentPane

    protected [Container](../../java/awt/Container.md "class in java.awt") contentPane

    The content pane.
  + ### layeredPane

    protected [JLayeredPane](JLayeredPane.md "class in javax.swing") layeredPane

    The layered pane that manages the menu bar and content pane.
  + ### glassPane

    protected [Component](../../java/awt/Component.md "class in java.awt") glassPane

    The glass pane that overlays the menu bar and content pane,
    so it can intercept mouse movements and such.
  + ### defaultButton

    protected [JButton](JButton.md "class in javax.swing") defaultButton

    The button that gets activated when the pane has the focus and
    a UI-specific action like pressing the **Enter** key occurs.
* ## Constructor Details

  + ### JRootPane

    public JRootPane()

    Creates a `JRootPane`, setting up its
    `glassPane`, `layeredPane`,
    and `contentPane`.
* ## Method Details

  + ### setDoubleBuffered

    public void setDoubleBuffered(boolean aFlag)

    Sets whether this component should use a buffer to paint.
    If set to true, all the drawing from this component will be done
    in an offscreen painting buffer. The offscreen painting buffer will
    the be copied onto the screen.
    If a `Component` is buffered and one of its ancestor
    is also buffered, the ancestor buffer will be used.

    Overrides:
    :   `setDoubleBuffered` in class `JComponent`

    Parameters:
    :   `aFlag` - if true, set this component to be double buffered

    Since:
    :   1.6
  + ### getWindowDecorationStyle

    public int getWindowDecorationStyle()

    Returns a constant identifying the type of Window decorations the
    `JRootPane` is providing.

    Returns:
    :   One of `NONE`, `FRAME`,
        `PLAIN_DIALOG`, `INFORMATION_DIALOG`,
        `ERROR_DIALOG`, `COLOR_CHOOSER_DIALOG`,
        `FILE_CHOOSER_DIALOG`, `QUESTION_DIALOG` or
        `WARNING_DIALOG`.

    Since:
    :   1.4

    See Also:
    :   - [`setWindowDecorationStyle(int)`](#setWindowDecorationStyle(int))
  + ### setWindowDecorationStyle

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"JRootPane.NONE","JRootPane.FRAME","JRootPane.PLAIN\_DIALOG","JRootPane.INFORMATION\_DIALOG","JRootPane.ERROR\_DIALOG","JRootPane.COLOR\_CHOOSER\_DIALOG","JRootPane.FILE\_CHOOSER\_DIALOG","JRootPane.QUESTION\_DIALOG","JRootPane.WARNING\_DIALOG"},
    [description](../../java/beans/BeanProperty.md#description())="Identifies the type of Window decorations to provide")
    public void setWindowDecorationStyle(int windowDecorationStyle)

    Sets the type of Window decorations (such as borders, widgets for
    closing a Window, title ...) the `JRootPane` should
    provide. The default is to provide no Window decorations
    (`NONE`).

    This is only a hint, and some look and feels may not support
    this.
    This is a bound property.

    Parameters:
    :   `windowDecorationStyle` - Constant identifying Window decorations
        to provide.

    Throws:
    :   `IllegalArgumentException` - if `style` is
        not one of: `NONE`, `FRAME`,
        `PLAIN_DIALOG`, `INFORMATION_DIALOG`,
        `ERROR_DIALOG`, `COLOR_CHOOSER_DIALOG`,
        `FILE_CHOOSER_DIALOG`, `QUESTION_DIALOG`, or
        `WARNING_DIALOG`.

    Since:
    :   1.4

    See Also:
    :   - [`JDialog.setDefaultLookAndFeelDecorated(boolean)`](JDialog.md#setDefaultLookAndFeelDecorated(boolean))
        - [`JFrame.setDefaultLookAndFeelDecorated(boolean)`](JFrame.md#setDefaultLookAndFeelDecorated(boolean))
        - [`LookAndFeel.getSupportsWindowDecorations()`](LookAndFeel.md#getSupportsWindowDecorations())
  + ### getUI

    public [RootPaneUI](plaf/RootPaneUI.md "class in javax.swing.plaf") getUI()

    Returns the L&F object that renders this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   `LabelUI` object

    Since:
    :   1.3
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the Component\'s LookAndFeel.")
    public void setUI([RootPaneUI](plaf/RootPaneUI.md "class in javax.swing.plaf") ui)

    Sets the L&F object that renders this component.

    Parameters:
    :   `ui` - the `LabelUI` L&F object

    Since:
    :   1.3

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Resets the UI property to a value from the current look and feel.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns a string that specifies the name of the L&F class
    that renders this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "RootPaneUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### createLayeredPane

    protected [JLayeredPane](JLayeredPane.md "class in javax.swing") createLayeredPane()

    Called by the constructor methods to create the default
    `layeredPane`.
    Bt default it creates a new `JLayeredPane`.

    Returns:
    :   the default `layeredPane`
  + ### createContentPane

    protected [Container](../../java/awt/Container.md "class in java.awt") createContentPane()

    Called by the constructor methods to create the default
    `contentPane`.
    By default this method creates a new `JComponent` add sets a
    `BorderLayout` as its `LayoutManager`.

    Returns:
    :   the default `contentPane`
  + ### createGlassPane

    protected [Component](../../java/awt/Component.md "class in java.awt") createGlassPane()

    Called by the constructor methods to create the default
    `glassPane`.
    By default this method creates a new `JComponent`
    with visibility set to false.

    Returns:
    :   the default `glassPane`
  + ### createRootLayout

    protected [LayoutManager](../../java/awt/LayoutManager.md "interface in java.awt") createRootLayout()

    Called by the constructor methods to create the default
    `layoutManager`.

    Returns:
    :   the default `layoutManager`.
  + ### setJMenuBar

    public void setJMenuBar([JMenuBar](JMenuBar.md "class in javax.swing") menu)

    Adds or changes the menu bar used in the layered pane.

    Parameters:
    :   `menu` - the `JMenuBar` to add
  + ### setMenuBar

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void setMenuBar([JMenuBar](JMenuBar.md "class in javax.swing") menu)

    Deprecated.

    As of Swing version 1.0.3
    replaced by `setJMenuBar(JMenuBar menu)`.

    Specifies the menu bar value.

    Parameters:
    :   `menu` - the `JMenuBar` to add.
  + ### getJMenuBar

    public [JMenuBar](JMenuBar.md "class in javax.swing") getJMenuBar()

    Returns the menu bar from the layered pane.

    Returns:
    :   the `JMenuBar` used in the pane
  + ### getMenuBar

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [JMenuBar](JMenuBar.md "class in javax.swing") getMenuBar()

    Deprecated.

    As of Swing version 1.0.3
    replaced by `getJMenuBar()`.

    Returns the menu bar value.

    Returns:
    :   the `JMenuBar` used in the pane
  + ### setContentPane

    public void setContentPane([Container](../../java/awt/Container.md "class in java.awt") content)

    Sets the content pane -- the container that holds the components
    parented by the root pane.

    Swing's painting architecture requires an opaque `JComponent`
    in the containment hierarchy. This is typically provided by the
    content pane. If you replace the content pane it is recommended you
    replace it with an opaque `JComponent`.

    Parameters:
    :   `content` - the `Container` to use for component-contents

    Throws:
    :   `IllegalComponentStateException` - (a runtime
        exception) if the content pane parameter is `null`
  + ### getContentPane

    public [Container](../../java/awt/Container.md "class in java.awt") getContentPane()

    Returns the content pane -- the container that holds the components
    parented by the root pane.

    Returns:
    :   the `Container` that holds the component-contents
  + ### setLayeredPane

    public void setLayeredPane([JLayeredPane](JLayeredPane.md "class in javax.swing") layered)

    Sets the layered pane for the root pane. The layered pane
    typically holds a content pane and an optional `JMenuBar`.

    Parameters:
    :   `layered` - the `JLayeredPane` to use

    Throws:
    :   `IllegalComponentStateException` - (a runtime
        exception) if the layered pane parameter is `null`
  + ### getLayeredPane

    public [JLayeredPane](JLayeredPane.md "class in javax.swing") getLayeredPane()

    Gets the layered pane used by the root pane. The layered pane
    typically holds a content pane and an optional `JMenuBar`.

    Returns:
    :   the `JLayeredPane` currently in use
  + ### setGlassPane

    public void setGlassPane([Component](../../java/awt/Component.md "class in java.awt") glass)

    Sets a specified `Component` to be the glass pane for this
    root pane. The glass pane should normally be a lightweight,
    transparent component, because it will be made visible when
    ever the root pane needs to grab input events.

    The new glass pane's visibility is changed to match that of
    the current glass pane. An implication of this is that care
    must be taken when you want to replace the glass pane and
    make it visible. Either of the following will work:

    ```
       root.setGlassPane(newGlassPane);
       newGlassPane.setVisible(true);
    ```

    or:

    ```
       root.getGlassPane().setVisible(true);
       root.setGlassPane(newGlassPane);
    ```

    Parameters:
    :   `glass` - the `Component` to use as the glass pane
        for this `JRootPane`

    Throws:
    :   `NullPointerException` - if the `glass` parameter is
        `null`
  + ### getGlassPane

    public [Component](../../java/awt/Component.md "class in java.awt") getGlassPane()

    Returns the current glass pane for this `JRootPane`.

    Returns:
    :   the current glass pane

    See Also:
    :   - [`setGlassPane(java.awt.Component)`](#setGlassPane(java.awt.Component))
  + ### isValidateRoot

    public boolean isValidateRoot()

    If a descendant of this `JRootPane` calls
    `revalidate`, validate from here on down.

    Deferred requests to layout a component and its descendents again.
    For example, calls to `revalidate`, are pushed upwards to
    either a `JRootPane` or a `JScrollPane`
    because both classes override `isValidateRoot` to return true.

    Overrides:
    :   `isValidateRoot` in class `JComponent`

    Returns:
    :   true

    See Also:
    :   - [`JComponent.isValidateRoot()`](JComponent.md#isValidateRoot())
        - [`Container.isValidateRoot()`](../../java/awt/Container.md#isValidateRoot())
  + ### isOptimizedDrawingEnabled

    public boolean isOptimizedDrawingEnabled()

    The `glassPane` and `contentPane`
    have the same bounds, which means `JRootPane`
    does not tiles its children and this should return false.
    On the other hand, the `glassPane`
    is normally not visible, and so this can return true if the
    `glassPane` isn't visible. Therefore, the
    return value here depends upon the visibility of the
    `glassPane`.

    Overrides:
    :   `isOptimizedDrawingEnabled` in class `JComponent`

    Returns:
    :   true if this component's children don't overlap
  + ### addNotify

    public void addNotify()

    Notifies this component that it now has a parent component.
    When this method is invoked, the chain of parent components is
    set up with `KeyboardAction` event listeners.
    This method is called by the toolkit internally and should
    not be called directly by programs.

    Overrides:
    :   `addNotify` in class `JComponent`

    See Also:
    :   - [`JComponent.registerKeyboardAction(java.awt.event.ActionListener, java.lang.String, javax.swing.KeyStroke, int)`](JComponent.md#registerKeyboardAction(java.awt.event.ActionListener,java.lang.String,javax.swing.KeyStroke,int))
  + ### removeNotify

    public void removeNotify()

    Notifies this component that it no longer has a parent component.
    When this method is invoked, any `KeyboardAction`s
    set up in the chain of parent components are removed.
    This method is called by the toolkit internally and should
    not be called directly by programs.

    Overrides:
    :   `removeNotify` in class `JComponent`

    See Also:
    :   - [`JComponent.registerKeyboardAction(java.awt.event.ActionListener, java.lang.String, javax.swing.KeyStroke, int)`](JComponent.md#registerKeyboardAction(java.awt.event.ActionListener,java.lang.String,javax.swing.KeyStroke,int))
  + ### setDefaultButton

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="The button activated by default in this root pane")
    public void setDefaultButton([JButton](JButton.md "class in javax.swing") defaultButton)

    Sets the `defaultButton` property,
    which determines the current default button for this `JRootPane`.
    The default button is the button which will be activated
    when a UI-defined activation event (typically the **Enter** key)
    occurs in the root pane regardless of whether or not the button
    has keyboard focus (unless there is another component within
    the root pane which consumes the activation event,
    such as a `JTextPane`).
    For default activation to work, the button must be an enabled
    descendent of the root pane when activation occurs.
    To remove a default button from this root pane, set this
    property to `null`.

    Parameters:
    :   `defaultButton` - the `JButton` which is to be the default button

    See Also:
    :   - [`JButton.isDefaultButton()`](JButton.md#isDefaultButton())
  + ### getDefaultButton

    public [JButton](JButton.md "class in javax.swing") getDefaultButton()

    Returns the value of the `defaultButton` property.

    Returns:
    :   the `JButton` which is currently the default button

    See Also:
    :   - [`setDefaultButton(javax.swing.JButton)`](#setDefaultButton(javax.swing.JButton))
  + ### addImpl

    protected void addImpl([Component](../../java/awt/Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints,
    int index)

    Overridden to enforce the position of the glass component as
    the zero child.

    Overrides:
    :   `addImpl` in class `Container`

    Parameters:
    :   `comp` - the component to be enhanced
    :   `constraints` - the constraints to be respected
    :   `index` - the index

    See Also:
    :   - [`Container.add(Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.add(Component, int)`](../../java/awt/Container.md#add(java.awt.Component,int))
        - [`Container.add(Component, java.lang.Object)`](../../java/awt/Container.md#add(java.awt.Component,java.lang.Object))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
        - [`LayoutManager`](../../java/awt/LayoutManager.md "interface in java.awt")
        - [`LayoutManager2`](../../java/awt/LayoutManager2.md "interface in java.awt")
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JRootPane`.
    This method is intended to be used only for debugging purposes,
    and the content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this `JRootPane`.
  + ### getAccessibleContext

    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` associated with this
    `JRootPane`. For root panes, the
    `AccessibleContext` takes the form of an
    `AccessibleJRootPane`.
    A new `AccessibleJRootPane` instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an `AccessibleJRootPane` that serves as the
        `AccessibleContext` of this `JRootPane`