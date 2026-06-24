Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JColorChooser

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JColorChooser

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A component that supports selecting a Color.")
public class JColorChooser
extends [JComponent](JComponent.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

`JColorChooser` provides a pane of controls designed to allow
a user to manipulate and select a color.
For information about using color choosers, see
[How to Use Color Choosers](https://docs.oracle.com/javase/tutorial/uiswing/components/colorchooser.html),
a section in *The Java Tutorial*.

This class provides three levels of API:

1. A static convenience method which shows a modal color-chooser
   dialog and returns the color selected by the user.- A static convenience method for creating a color-chooser dialog
     where `ActionListeners` can be specified to be invoked when
     the user presses one of the dialog buttons.- The ability to create instances of `JColorChooser` panes
       directly (within any container). `PropertyChange` listeners
       can be added to detect when the current "color" property changes.

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

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JColorChooser.AccessibleJColorChooser`

  This class implements accessibility support for the
  `JColorChooser` class.

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

  `protected AccessibleContext`

  `accessibleContext`

  The accessible context.

  `static final String`

  `CHOOSER_PANELS_PROPERTY`

  The chooserPanel array property name.

  `static final String`

  `PREVIEW_PANEL_PROPERTY`

  The preview panel property name.

  `static final String`

  `SELECTION_MODEL_PROPERTY`

  The selection model property name.

  ### Fields inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JColorChooser()`

  Creates a color chooser pane with an initial color of white.

  `JColorChooser(Color initialColor)`

  Creates a color chooser pane with the specified initial color.

  `JColorChooser(ColorSelectionModel model)`

  Creates a color chooser pane with the specified
  `ColorSelectionModel`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChooserPanel(AbstractColorChooserPanel panel)`

  Adds a color chooser panel to the color chooser.

  `static JDialog`

  `createDialog(Component c,
  String title,
  boolean modal,
  JColorChooser chooserPane,
  ActionListener okListener,
  ActionListener cancelListener)`

  Creates and returns a new dialog containing the specified
  `ColorChooser` pane along with "OK", "Cancel", and "Reset"
  buttons.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JColorChooser.

  `AbstractColorChooserPanel[]`

  `getChooserPanels()`

  Returns the specified color panels.

  `Color`

  `getColor()`

  Gets the current color value from the color chooser.

  `boolean`

  `getDragEnabled()`

  Gets the value of the `dragEnabled` property.

  `JComponent`

  `getPreviewPanel()`

  Returns the preview panel that shows a chosen color.

  `ColorSelectionModel`

  `getSelectionModel()`

  Returns the data model that handles color selections.

  `ColorChooserUI`

  `getUI()`

  Returns the L&F object that renders this component.

  `String`

  `getUIClassID()`

  Returns the name of the L&F class that renders this component.

  `protected String`

  `paramString()`

  Returns a string representation of this `JColorChooser`.

  `AbstractColorChooserPanel`

  `removeChooserPanel(AbstractColorChooserPanel panel)`

  Removes the Color Panel specified.

  `void`

  `setChooserPanels(AbstractColorChooserPanel[] panels)`

  Specifies the Color Panels used to choose a color value.

  `void`

  `setColor(int c)`

  Sets the current color of the color chooser to the
  specified color.

  `void`

  `setColor(int r,
  int g,
  int b)`

  Sets the current color of the color chooser to the
  specified RGB color.

  `void`

  `setColor(Color color)`

  Sets the current color of the color chooser to the specified color.

  `void`

  `setDragEnabled(boolean b)`

  Sets the `dragEnabled` property,
  which must be `true` to enable
  automatic drag handling (the first part of drag and drop)
  on this component.

  `void`

  `setPreviewPanel(JComponent preview)`

  Sets the current preview panel.

  `void`

  `setSelectionModel(ColorSelectionModel newModel)`

  Sets the model containing the selected color.

  `void`

  `setUI(ColorChooserUI ui)`

  Sets the L&F object that renders this component.

  `static Color`

  `showDialog(Component component,
  String title,
  Color initialColor)`

  Shows a modal color-chooser dialog and blocks until the
  dialog is hidden.

  `static Color`

  `showDialog(Component component,
  String title,
  Color initialColor,
  boolean colorTransparencySelectionEnabled)`

  Shows a modal color-chooser dialog and blocks until the
  dialog is hidden.

  `void`

  `updateUI()`

  Notification from the `UIManager` that the L&F has changed.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### SELECTION\_MODEL\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") SELECTION\_MODEL\_PROPERTY

    The selection model property name.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JColorChooser.SELECTION_MODEL_PROPERTY)
  + ### PREVIEW\_PANEL\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") PREVIEW\_PANEL\_PROPERTY

    The preview panel property name.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JColorChooser.PREVIEW_PANEL_PROPERTY)
  + ### CHOOSER\_PANELS\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CHOOSER\_PANELS\_PROPERTY

    The chooserPanel array property name.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JColorChooser.CHOOSER_PANELS_PROPERTY)
  + ### accessibleContext

    protected [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") accessibleContext

    The accessible context.
* ## Constructor Details

  + ### JColorChooser

    public JColorChooser()

    Creates a color chooser pane with an initial color of white.
  + ### JColorChooser

    public JColorChooser([Color](../../java/awt/Color.md "class in java.awt") initialColor)

    Creates a color chooser pane with the specified initial color.

    Parameters:
    :   `initialColor` - the initial color set in the chooser
  + ### JColorChooser

    public JColorChooser([ColorSelectionModel](colorchooser/ColorSelectionModel.md "interface in javax.swing.colorchooser") model)

    Creates a color chooser pane with the specified
    `ColorSelectionModel`.

    Parameters:
    :   `model` - the `ColorSelectionModel` to be used
* ## Method Details

  + ### showDialog

    public static [Color](../../java/awt/Color.md "class in java.awt") showDialog([Component](../../java/awt/Component.md "class in java.awt") component,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    [Color](../../java/awt/Color.md "class in java.awt") initialColor)
    throws [HeadlessException](../../java/awt/HeadlessException.md "class in java.awt")

    Shows a modal color-chooser dialog and blocks until the
    dialog is hidden. If the user presses the "OK" button, then
    this method hides/disposes the dialog and returns the selected color.
    If the user presses the "Cancel" button or closes the dialog without
    pressing "OK", then this method hides/disposes the dialog and returns
    `null`.

    Parameters:
    :   `component` - the parent `Component` for the dialog
    :   `title` - the String containing the dialog's title
    :   `initialColor` - the initial Color set when the color-chooser is shown

    Returns:
    :   the selected color or `null` if the user opted out

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
  + ### showDialog

    public static [Color](../../java/awt/Color.md "class in java.awt") showDialog([Component](../../java/awt/Component.md "class in java.awt") component,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    [Color](../../java/awt/Color.md "class in java.awt") initialColor,
    boolean colorTransparencySelectionEnabled)
    throws [HeadlessException](../../java/awt/HeadlessException.md "class in java.awt")

    Shows a modal color-chooser dialog and blocks until the
    dialog is hidden. If the user presses the "OK" button, then
    this method hides/disposes the dialog and returns the selected color.
    If the user presses the "Cancel" button or closes the dialog without
    pressing "OK", then this method hides/disposes the dialog and returns
    `null`.

    Parameters:
    :   `component` - the parent `Component` for the dialog
    :   `title` - the String containing the dialog's title
    :   `initialColor` - the initial Color set when the color-chooser is shown
    :   `colorTransparencySelectionEnabled` - true if the transparency of
        a color can be selected

    Returns:
    :   the selected color or `null` if the user opted out

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
  + ### createDialog

    public static [JDialog](JDialog.md "class in javax.swing") createDialog([Component](../../java/awt/Component.md "class in java.awt") c,
    [String](../../../java.base/java/lang/String.md "class in java.lang") title,
    boolean modal,
    [JColorChooser](JColorChooser.md "class in javax.swing") chooserPane,
    [ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event") okListener,
    [ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event") cancelListener)
    throws [HeadlessException](../../java/awt/HeadlessException.md "class in java.awt")

    Creates and returns a new dialog containing the specified
    `ColorChooser` pane along with "OK", "Cancel", and "Reset"
    buttons. If the "OK" or "Cancel" buttons are pressed, the dialog is
    automatically hidden (but not disposed). If the "Reset"
    button is pressed, the color-chooser's color will be reset to the
    color which was set the last time `show` was invoked on the
    dialog and the dialog will remain showing.

    Parameters:
    :   `c` - the parent component for the dialog
    :   `title` - the title for the dialog
    :   `modal` - a boolean. When true, the remainder of the program
        is inactive until the dialog is closed.
    :   `chooserPane` - the color-chooser to be placed inside the dialog
    :   `okListener` - the ActionListener invoked when "OK" is pressed
    :   `cancelListener` - the ActionListener invoked when "Cancel" is pressed

    Returns:
    :   a new dialog containing the color-chooser pane

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
  + ### getUI

    public [ColorChooserUI](plaf/ColorChooserUI.md "class in javax.swing.plaf") getUI()

    Returns the L&F object that renders this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the `ColorChooserUI` object that renders
        this component
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the color chooser\'s LookAndFeel.")
    public void setUI([ColorChooserUI](plaf/ColorChooserUI.md "class in javax.swing.plaf") ui)

    Sets the L&F object that renders this component.

    Parameters:
    :   `ui` - the `ColorChooserUI` L&F object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Notification from the `UIManager` that the L&F has changed.
    Replaces the current UI object with the latest version from the
    `UIManager`.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the name of the L&F class that renders this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "ColorChooserUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getColor

    public [Color](../../java/awt/Color.md "class in java.awt") getColor()

    Gets the current color value from the color chooser.
    By default, this delegates to the model.

    Returns:
    :   the current color value of the color chooser
  + ### setColor

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="The current color the chooser is to display.")
    public void setColor([Color](../../java/awt/Color.md "class in java.awt") color)

    Sets the current color of the color chooser to the specified color.
    The `ColorSelectionModel` will fire a `ChangeEvent`

    Parameters:
    :   `color` - the color to be set in the color chooser

    See Also:
    :   - [`Container.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../../java/awt/Container.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### setColor

    public void setColor(int r,
    int g,
    int b)

    Sets the current color of the color chooser to the
    specified RGB color. Note that the values of red, green,
    and blue should be between the numbers 0 and 255, inclusive.

    Parameters:
    :   `r` - an int specifying the amount of Red
    :   `g` - an int specifying the amount of Green
    :   `b` - an int specifying the amount of Blue

    Throws:
    :   `IllegalArgumentException` - if r,g,b values are out of range

    See Also:
    :   - [`Color`](../../java/awt/Color.md "class in java.awt")
  + ### setColor

    public void setColor(int c)

    Sets the current color of the color chooser to the
    specified color.

    Parameters:
    :   `c` - an integer value that sets the current color in the chooser
        where the low-order 8 bits specify the Blue value,
        the next 8 bits specify the Green value, and the 8 bits
        above that specify the Red value.
  + ### setDragEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="Determines whether automatic drag handling is enabled.")
    public void setDragEnabled(boolean b)

    Sets the `dragEnabled` property,
    which must be `true` to enable
    automatic drag handling (the first part of drag and drop)
    on this component.
    The `transferHandler` property needs to be set
    to a non-`null` value for the drag to do
    anything. The default value of the `dragEnabled`
    property
    is `false`.

    When automatic drag handling is enabled,
    most look and feels begin a drag-and-drop operation
    when the user presses the mouse button over the preview panel.
    Some look and feels might not support automatic drag and drop;
    they will ignore this property. You can work around such
    look and feels by modifying the component
    to directly call the `exportAsDrag` method of a
    `TransferHandler`.

    Parameters:
    :   `b` - the value to set the `dragEnabled` property to

    Throws:
    :   `HeadlessException` - if
        `b` is `true` and
        `GraphicsEnvironment.isHeadless()`
        returns `true`

    Since:
    :   1.4

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`getDragEnabled()`](#getDragEnabled())
        - [`JComponent.setTransferHandler(javax.swing.TransferHandler)`](JComponent.md#setTransferHandler(javax.swing.TransferHandler))
        - [`TransferHandler`](TransferHandler.md "class in javax.swing")
  + ### getDragEnabled

    public boolean getDragEnabled()

    Gets the value of the `dragEnabled` property.

    Returns:
    :   the value of the `dragEnabled` property

    Since:
    :   1.4

    See Also:
    :   - [`setDragEnabled(boolean)`](#setDragEnabled(boolean))
  + ### setPreviewPanel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI component which displays the current color.")
    public void setPreviewPanel([JComponent](JComponent.md "class in javax.swing") preview)

    Sets the current preview panel.
    This will fire a `PropertyChangeEvent` for the property
    named "previewPanel".

    Parameters:
    :   `preview` - the `JComponent` which displays the current color

    See Also:
    :   - [`Container.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../../java/awt/Container.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getPreviewPanel

    public [JComponent](JComponent.md "class in javax.swing") getPreviewPanel()

    Returns the preview panel that shows a chosen color.

    Returns:
    :   a `JComponent` object -- the preview panel
  + ### addChooserPanel

    public void addChooserPanel([AbstractColorChooserPanel](colorchooser/AbstractColorChooserPanel.md "class in javax.swing.colorchooser") panel)

    Adds a color chooser panel to the color chooser.

    Parameters:
    :   `panel` - the `AbstractColorChooserPanel` to be added
  + ### removeChooserPanel

    public [AbstractColorChooserPanel](colorchooser/AbstractColorChooserPanel.md "class in javax.swing.colorchooser") removeChooserPanel([AbstractColorChooserPanel](colorchooser/AbstractColorChooserPanel.md "class in javax.swing.colorchooser") panel)

    Removes the Color Panel specified.

    Parameters:
    :   `panel` - a string that specifies the panel to be removed

    Returns:
    :   the color panel

    Throws:
    :   `IllegalArgumentException` - if panel is not in list of
        known chooser panels
  + ### setChooserPanels

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="An array of different chooser types.")
    public void setChooserPanels([AbstractColorChooserPanel](colorchooser/AbstractColorChooserPanel.md "class in javax.swing.colorchooser")[] panels)

    Specifies the Color Panels used to choose a color value.

    Parameters:
    :   `panels` - an array of `AbstractColorChooserPanel`
        objects
  + ### getChooserPanels

    public [AbstractColorChooserPanel](colorchooser/AbstractColorChooserPanel.md "class in javax.swing.colorchooser")[] getChooserPanels()

    Returns the specified color panels.

    Returns:
    :   an array of `AbstractColorChooserPanel` objects
  + ### getSelectionModel

    public [ColorSelectionModel](colorchooser/ColorSelectionModel.md "interface in javax.swing.colorchooser") getSelectionModel()

    Returns the data model that handles color selections.

    Returns:
    :   a `ColorSelectionModel` object
  + ### setSelectionModel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [description](../../java/beans/BeanProperty.md#description())="The model which contains the currently selected color.")
    public void setSelectionModel([ColorSelectionModel](colorchooser/ColorSelectionModel.md "interface in javax.swing.colorchooser") newModel)

    Sets the model containing the selected color.

    Parameters:
    :   `newModel` - the new `ColorSelectionModel` object
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JColorChooser`.
    This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this `JColorChooser`
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JColorChooser.
    For color choosers, the AccessibleContext takes the form of an
    AccessibleJColorChooser.
    A new AccessibleJColorChooser instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJColorChooser that serves as the
        AccessibleContext of this JColorChooser