Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Class DefaultTreeCellRenderer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../JComponent.md "class in javax.swing")

[javax.swing.JLabel](../JLabel.md "class in javax.swing")

javax.swing.tree.DefaultTreeCellRenderer

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `SwingConstants`, `TreeCellRenderer`

---

public class DefaultTreeCellRenderer
extends [JLabel](../JLabel.md "class in javax.swing")
implements [TreeCellRenderer](TreeCellRenderer.md "interface in javax.swing.tree")

Displays an entry in a tree.
`DefaultTreeCellRenderer` is not opaque and
unless you subclass paint you should not change this.
See [How to Use Trees](https://docs.oracle.com/javase/tutorial/uiswing/components/tree.html)
in *The Java Tutorial*
for examples of customizing node display using this class.

The set of icons and colors used by `DefaultTreeCellRenderer`
can be configured using the various setter methods. The value for
each property is initialized from the defaults table. When the
look and feel changes (`updateUI` is invoked), any properties
that have a value of type `UIResource` are refreshed from the
defaults table. The following table lists the mapping between
`DefaultTreeCellRenderer` property and defaults table key:

Properties

| Property Key | |
| --- | --- |
| "leafIcon" "Tree.leafIcon"|  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | "closedIcon" "Tree.closedIcon"|  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | "openIcon" "Tree.openIcon"|  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | "textSelectionColor" "Tree.selectionForeground"|  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | | "textNonSelectionColor" "Tree.textForeground"|  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | | "backgroundSelectionColor" "Tree.selectionBackground"|  |  |  |  | | --- | --- | --- | --- | | "backgroundNonSelectionColor" "Tree.textBackground"|  |  | | --- | --- | | "borderSelectionColor" "Tree.selectionBorderColor" | | | | | | | | | | | | | | | |

**Implementation Note:**
This class overrides
`invalidate`,
`validate`,
`revalidate`,
`repaint`,
and
`firePropertyChange`
solely to improve performance.
If not overridden, these frequently called methods would execute code paths
that are unnecessary for the default tree cell renderer.
If you write your own renderer,
take care to weigh the benefits and
drawbacks of overriding these methods.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JLabel](../JLabel.md "class in javax.swing")

  `JLabel.AccessibleJLabel`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Color`

  `backgroundNonSelectionColor`

  Color to use for the background when the node isn't selected.

  `protected Color`

  `backgroundSelectionColor`

  Color to use for the background when a node is selected.

  `protected Color`

  `borderSelectionColor`

  Color to use for the focus indicator when the node has focus.

  `protected Icon`

  `closedIcon`

  Icon used to show non-leaf nodes that aren't expanded.

  `protected boolean`

  `hasFocus`

  True if has focus.

  `protected Icon`

  `leafIcon`

  Icon used to show leaf nodes.

  `protected Icon`

  `openIcon`

  Icon used to show non-leaf nodes that are expanded.

  `protected boolean`

  `selected`

  Is the value currently selected.

  `protected Color`

  `textNonSelectionColor`

  Color to use for the foreground for non-selected nodes.

  `protected Color`

  `textSelectionColor`

  Color to use for the foreground for selected nodes.

  ### Fields inherited from class javax.swing.[JLabel](../JLabel.md "class in javax.swing")

  `labelFor`

  ### Fields inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultTreeCellRenderer()`

  Creates a `DefaultTreeCellRenderer`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `firePropertyChange(String propertyName,
  boolean oldValue,
  boolean newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  byte oldValue,
  byte newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  char oldValue,
  char newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  double oldValue,
  double newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  float oldValue,
  float newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  int oldValue,
  int newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  long oldValue,
  long newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  short oldValue,
  short newValue)`

  Overridden for performance reasons.

  `protected void`

  `firePropertyChange(String propertyName,
  Object oldValue,
  Object newValue)`

  Overridden for performance reasons.

  `Color`

  `getBackgroundNonSelectionColor()`

  Returns the background color to be used for non selected nodes.

  `Color`

  `getBackgroundSelectionColor()`

  Returns the color to use for the background if node is selected.

  `Color`

  `getBorderSelectionColor()`

  Returns the color the border is drawn.

  `Icon`

  `getClosedIcon()`

  Returns the icon used to represent non-leaf nodes that are not
  expanded.

  `Icon`

  `getDefaultClosedIcon()`

  Returns the default icon, for the current laf, that is used to
  represent non-leaf nodes that are not expanded.

  `Icon`

  `getDefaultLeafIcon()`

  Returns the default icon, for the current laf, that is used to
  represent leaf nodes.

  `Icon`

  `getDefaultOpenIcon()`

  Returns the default icon, for the current laf, that is used to
  represent non-leaf nodes that are expanded.

  `Font`

  `getFont()`

  Gets the font of this component.

  `Icon`

  `getLeafIcon()`

  Returns the icon used to represent leaf nodes.

  `Icon`

  `getOpenIcon()`

  Returns the icon used to represent non-leaf nodes that are expanded.

  `Dimension`

  `getPreferredSize()`

  Overrides `JComponent.getPreferredSize` to
  return slightly wider preferred size value.

  `Color`

  `getTextNonSelectionColor()`

  Returns the color the text is drawn with when the node isn't selected.

  `Color`

  `getTextSelectionColor()`

  Returns the color the text is drawn with when the node is selected.

  `Component`

  `getTreeCellRendererComponent(JTree tree,
  Object value,
  boolean sel,
  boolean expanded,
  boolean leaf,
  int row,
  boolean hasFocus)`

  Configures the renderer based on the passed in components.

  `void`

  `invalidate()`

  Overridden for performance reasons.

  `void`

  `paint(Graphics g)`

  Paints the value.

  `void`

  `repaint()`

  Overridden for performance reasons.

  `void`

  `repaint(long tm,
  int x,
  int y,
  int width,
  int height)`

  Overridden for performance reasons.

  `void`

  `repaint(Rectangle r)`

  Overridden for performance reasons.

  `void`

  `revalidate()`

  Overridden for performance reasons.

  `void`

  `setBackground(Color color)`

  Subclassed to map `ColorUIResource`s to null.

  `void`

  `setBackgroundNonSelectionColor(Color newColor)`

  Sets the background color to be used for non selected nodes.

  `void`

  `setBackgroundSelectionColor(Color newColor)`

  Sets the color to use for the background if node is selected.

  `void`

  `setBorderSelectionColor(Color newColor)`

  Sets the color to use for the border.

  `void`

  `setClosedIcon(Icon newIcon)`

  Sets the icon used to represent non-leaf nodes that are not expanded.

  `void`

  `setFont(Font font)`

  Subclassed to map `FontUIResource`s to null.

  `void`

  `setLeafIcon(Icon newIcon)`

  Sets the icon used to represent leaf nodes.

  `void`

  `setOpenIcon(Icon newIcon)`

  Sets the icon used to represent non-leaf nodes that are expanded.

  `void`

  `setTextNonSelectionColor(Color newColor)`

  Sets the color the text is drawn with when the node isn't selected.

  `void`

  `setTextSelectionColor(Color newColor)`

  Sets the color the text is drawn with when the node is selected.

  `void`

  `updateUI()`

  Resets the UI property to a value from the current look and feel.

  `void`

  `validate()`

  Overridden for performance reasons.

  ### Methods inherited from class javax.swing.[JLabel](../JLabel.md "class in javax.swing")

  `checkHorizontalKey, checkVerticalKey, getAccessibleContext, getDisabledIcon, getDisplayedMnemonic, getDisplayedMnemonicIndex, getHorizontalAlignment, getHorizontalTextPosition, getIcon, getIconTextGap, getLabelFor, getText, getUI, getUIClassID, getVerticalAlignment, getVerticalTextPosition, imageUpdate, paramString, setDisabledIcon, setDisplayedMnemonic, setDisplayedMnemonic, setDisplayedMnemonicIndex, setHorizontalAlignment, setHorizontalTextPosition, setIcon, setIconTextGap, setLabelFor, setText, setUI, setVerticalAlignment, setVerticalTextPosition`

  ### Methods inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### selected

    protected boolean selected

    Is the value currently selected.
  + ### hasFocus

    protected boolean hasFocus

    True if has focus.
  + ### closedIcon

    protected transient [Icon](../Icon.md "interface in javax.swing") closedIcon

    Icon used to show non-leaf nodes that aren't expanded.
  + ### leafIcon

    protected transient [Icon](../Icon.md "interface in javax.swing") leafIcon

    Icon used to show leaf nodes.
  + ### openIcon

    protected transient [Icon](../Icon.md "interface in javax.swing") openIcon

    Icon used to show non-leaf nodes that are expanded.
  + ### textSelectionColor

    protected [Color](../../../java/awt/Color.md "class in java.awt") textSelectionColor

    Color to use for the foreground for selected nodes.
  + ### textNonSelectionColor

    protected [Color](../../../java/awt/Color.md "class in java.awt") textNonSelectionColor

    Color to use for the foreground for non-selected nodes.
  + ### backgroundSelectionColor

    protected [Color](../../../java/awt/Color.md "class in java.awt") backgroundSelectionColor

    Color to use for the background when a node is selected.
  + ### backgroundNonSelectionColor

    protected [Color](../../../java/awt/Color.md "class in java.awt") backgroundNonSelectionColor

    Color to use for the background when the node isn't selected.
  + ### borderSelectionColor

    protected [Color](../../../java/awt/Color.md "class in java.awt") borderSelectionColor

    Color to use for the focus indicator when the node has focus.
* ## Constructor Details

  + ### DefaultTreeCellRenderer

    public DefaultTreeCellRenderer()

    Creates a `DefaultTreeCellRenderer`. Icons and text color are
    determined from the `UIManager`.
* ## Method Details

  + ### updateUI

    public void updateUI()

    Resets the UI property to a value from the current look and feel.

    Overrides:
    :   `updateUI` in class `JLabel`

    Since:
    :   1.7

    See Also:
    :   - [`JComponent.updateUI()`](../JComponent.md#updateUI())
  + ### getDefaultOpenIcon

    public [Icon](../Icon.md "interface in javax.swing") getDefaultOpenIcon()

    Returns the default icon, for the current laf, that is used to
    represent non-leaf nodes that are expanded.

    Returns:
    :   the default icon, for the current laf, that is used to
        represent non-leaf nodes that are expanded.
  + ### getDefaultClosedIcon

    public [Icon](../Icon.md "interface in javax.swing") getDefaultClosedIcon()

    Returns the default icon, for the current laf, that is used to
    represent non-leaf nodes that are not expanded.

    Returns:
    :   the default icon, for the current laf, that is used to
        represent non-leaf nodes that are not expanded.
  + ### getDefaultLeafIcon

    public [Icon](../Icon.md "interface in javax.swing") getDefaultLeafIcon()

    Returns the default icon, for the current laf, that is used to
    represent leaf nodes.

    Returns:
    :   the default icon, for the current laf, that is used to
        represent leaf nodes.
  + ### setOpenIcon

    public void setOpenIcon([Icon](../Icon.md "interface in javax.swing") newIcon)

    Sets the icon used to represent non-leaf nodes that are expanded.

    Parameters:
    :   `newIcon` - the icon to be used for expanded non-leaf nodes
  + ### getOpenIcon

    public [Icon](../Icon.md "interface in javax.swing") getOpenIcon()

    Returns the icon used to represent non-leaf nodes that are expanded.

    Returns:
    :   the icon used to represent non-leaf nodes that are expanded
  + ### setClosedIcon

    public void setClosedIcon([Icon](../Icon.md "interface in javax.swing") newIcon)

    Sets the icon used to represent non-leaf nodes that are not expanded.

    Parameters:
    :   `newIcon` - the icon to be used for not expanded non-leaf nodes
  + ### getClosedIcon

    public [Icon](../Icon.md "interface in javax.swing") getClosedIcon()

    Returns the icon used to represent non-leaf nodes that are not
    expanded.

    Returns:
    :   the icon used to represent non-leaf nodes that are not
        expanded
  + ### setLeafIcon

    public void setLeafIcon([Icon](../Icon.md "interface in javax.swing") newIcon)

    Sets the icon used to represent leaf nodes.

    Parameters:
    :   `newIcon` - icon to be used for leaf nodes
  + ### getLeafIcon

    public [Icon](../Icon.md "interface in javax.swing") getLeafIcon()

    Returns the icon used to represent leaf nodes.

    Returns:
    :   the icon used to represent leaf nodes
  + ### setTextSelectionColor

    public void setTextSelectionColor([Color](../../../java/awt/Color.md "class in java.awt") newColor)

    Sets the color the text is drawn with when the node is selected.

    Parameters:
    :   `newColor` - color to be used for text when the node is selected
  + ### getTextSelectionColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getTextSelectionColor()

    Returns the color the text is drawn with when the node is selected.

    Returns:
    :   the color the text is drawn with when the node is selected
  + ### setTextNonSelectionColor

    public void setTextNonSelectionColor([Color](../../../java/awt/Color.md "class in java.awt") newColor)

    Sets the color the text is drawn with when the node isn't selected.

    Parameters:
    :   `newColor` - color to be used for text when the node isn't selected
  + ### getTextNonSelectionColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getTextNonSelectionColor()

    Returns the color the text is drawn with when the node isn't selected.

    Returns:
    :   the color the text is drawn with when the node isn't selected.
  + ### setBackgroundSelectionColor

    public void setBackgroundSelectionColor([Color](../../../java/awt/Color.md "class in java.awt") newColor)

    Sets the color to use for the background if node is selected.

    Parameters:
    :   `newColor` - to be used for the background if the node is selected
  + ### getBackgroundSelectionColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getBackgroundSelectionColor()

    Returns the color to use for the background if node is selected.

    Returns:
    :   the color to use for the background if node is selected
  + ### setBackgroundNonSelectionColor

    public void setBackgroundNonSelectionColor([Color](../../../java/awt/Color.md "class in java.awt") newColor)

    Sets the background color to be used for non selected nodes.

    Parameters:
    :   `newColor` - color to be used for the background for non selected nodes
  + ### getBackgroundNonSelectionColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getBackgroundNonSelectionColor()

    Returns the background color to be used for non selected nodes.

    Returns:
    :   the background color to be used for non selected nodes.
  + ### setBorderSelectionColor

    public void setBorderSelectionColor([Color](../../../java/awt/Color.md "class in java.awt") newColor)

    Sets the color to use for the border.

    Parameters:
    :   `newColor` - color to be used for the border
  + ### getBorderSelectionColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getBorderSelectionColor()

    Returns the color the border is drawn.

    Returns:
    :   the color the border is drawn
  + ### setFont

    public void setFont([Font](../../../java/awt/Font.md "class in java.awt") font)

    Subclassed to map `FontUIResource`s to null. If
    `font` is null, or a `FontUIResource`, this
    has the effect of letting the font of the JTree show
    through. On the other hand, if `font` is non-null, and not
    a `FontUIResource`, the font becomes `font`.

    Overrides:
    :   `setFont` in class `JComponent`

    Parameters:
    :   `font` - the desired `Font` for this component

    See Also:
    :   - [`Component.getFont()`](../../../java/awt/Component.md#getFont())
  + ### getFont

    public [Font](../../../java/awt/Font.md "class in java.awt") getFont()

    Gets the font of this component.

    Specified by:
    :   `getFont` in interface `MenuContainer`

    Overrides:
    :   `getFont` in class `Component`

    Returns:
    :   this component's font; if a font has not been set
        for this component, the font of its parent is returned

    See Also:
    :   - [`Component.setFont(java.awt.Font)`](../../../java/awt/Component.md#setFont(java.awt.Font))
  + ### setBackground

    public void setBackground([Color](../../../java/awt/Color.md "class in java.awt") color)

    Subclassed to map `ColorUIResource`s to null. If
    `color` is null, or a `ColorUIResource`, this
    has the effect of letting the background color of the JTree show
    through. On the other hand, if `color` is non-null, and not
    a `ColorUIResource`, the background becomes
    `color`.

    Overrides:
    :   `setBackground` in class `JComponent`

    Parameters:
    :   `color` - the desired background `Color`

    See Also:
    :   - [`Component.getBackground()`](../../../java/awt/Component.md#getBackground())
        - [`JComponent.setOpaque(boolean)`](../JComponent.md#setOpaque(boolean))
  + ### getTreeCellRendererComponent

    public [Component](../../../java/awt/Component.md "class in java.awt") getTreeCellRendererComponent([JTree](../JTree.md "class in javax.swing") tree,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value,
    boolean sel,
    boolean expanded,
    boolean leaf,
    int row,
    boolean hasFocus)

    Configures the renderer based on the passed in components.
    The value is set from messaging the tree with
    `convertValueToText`, which ultimately invokes
    `toString` on `value`.
    The foreground color is set based on the selection and the icon
    is set based on the `leaf` and `expanded`
    parameters.

    Specified by:
    :   `getTreeCellRendererComponent` in interface `TreeCellRenderer`

    Parameters:
    :   `tree` - the receiver is being configured for
    :   `value` - the value to render
    :   `sel` - whether node is selected
    :   `expanded` - whether node is expanded
    :   `leaf` - whether node is a lead node
    :   `row` - row index
    :   `hasFocus` - whether node has focus

    Returns:
    :   the `Component` that the renderer uses to draw the value
  + ### paint

    public void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the value. The background is filled based on selected.

    Overrides:
    :   `paint` in class `JComponent`

    Parameters:
    :   `g` - the `Graphics` context in which to paint

    See Also:
    :   - [`JComponent.paintComponent(java.awt.Graphics)`](../JComponent.md#paintComponent(java.awt.Graphics))
        - [`JComponent.paintBorder(java.awt.Graphics)`](../JComponent.md#paintBorder(java.awt.Graphics))
        - [`JComponent.paintChildren(java.awt.Graphics)`](../JComponent.md#paintChildren(java.awt.Graphics))
        - [`JComponent.getComponentGraphics(java.awt.Graphics)`](../JComponent.md#getComponentGraphics(java.awt.Graphics))
        - [`JComponent.repaint(long, int, int, int, int)`](../JComponent.md#repaint(long,int,int,int,int))
  + ### getPreferredSize

    public [Dimension](../../../java/awt/Dimension.md "class in java.awt") getPreferredSize()

    Overrides `JComponent.getPreferredSize` to
    return slightly wider preferred size value.

    Overrides:
    :   `getPreferredSize` in class `JComponent`

    Returns:
    :   the value of the `preferredSize` property

    See Also:
    :   - [`JComponent.setPreferredSize(java.awt.Dimension)`](../JComponent.md#setPreferredSize(java.awt.Dimension))
        - [`ComponentUI`](../plaf/ComponentUI.md "class in javax.swing.plaf")
  + ### validate

    public void validate()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `validate` in class `Container`

    See Also:
    :   - [`Container.add(java.awt.Component)`](../../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.invalidate()`](../../../java/awt/Container.md#invalidate())
        - [`Container.isValidateRoot()`](../../../java/awt/Container.md#isValidateRoot())
        - [`JComponent.revalidate()`](../JComponent.md#revalidate())
        - [`Container.validateTree()`](../../../java/awt/Container.md#validateTree())
  + ### invalidate

    public void invalidate()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `invalidate` in class `Container`

    Since:
    :   1.5

    See Also:
    :   - [`Container.validate()`](../../../java/awt/Container.md#validate())
        - [`Container.layout()`](../../../java/awt/Container.md#layout())
        - [`LayoutManager2`](../../../java/awt/LayoutManager2.md "interface in java.awt")
  + ### revalidate

    public void revalidate()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `revalidate` in class `JComponent`

    See Also:
    :   - [`Component.invalidate()`](../../../java/awt/Component.md#invalidate())
        - [`Container.validate()`](../../../java/awt/Container.md#validate())
        - [`JComponent.isValidateRoot()`](../JComponent.md#isValidateRoot())
        - [`RepaintManager.addInvalidComponent(javax.swing.JComponent)`](../RepaintManager.md#addInvalidComponent(javax.swing.JComponent))
  + ### repaint

    public void repaint(long tm,
    int x,
    int y,
    int width,
    int height)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `repaint` in class `JComponent`

    Parameters:
    :   `tm` - this parameter is not used
    :   `x` - the x value of the dirty region
    :   `y` - the y value of the dirty region
    :   `width` - the width of the dirty region
    :   `height` - the height of the dirty region

    See Also:
    :   - [`JComponent.isPaintingOrigin()`](../JComponent.md#isPaintingOrigin())
        - [`Component.isShowing()`](../../../java/awt/Component.md#isShowing())
        - [`RepaintManager.addDirtyRegion(javax.swing.JComponent, int, int, int, int)`](../RepaintManager.md#addDirtyRegion(javax.swing.JComponent,int,int,int,int))
  + ### repaint

    public void repaint([Rectangle](../../../java/awt/Rectangle.md "class in java.awt") r)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `repaint` in class `JComponent`

    Parameters:
    :   `r` - a `Rectangle` containing the dirty region

    See Also:
    :   - [`JComponent.isPaintingOrigin()`](../JComponent.md#isPaintingOrigin())
        - [`Component.isShowing()`](../../../java/awt/Component.md#isShowing())
        - [`RepaintManager.addDirtyRegion(javax.swing.JComponent, int, int, int, int)`](../RepaintManager.md#addDirtyRegion(javax.swing.JComponent,int,int,int,int))
  + ### repaint

    public void repaint()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `repaint` in class `Component`

    Since:
    :   1.5

    See Also:
    :   - [`Component.update(Graphics)`](../../../java/awt/Component.md#update(java.awt.Graphics))
  + ### firePropertyChange

    protected void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the property whose value has changed
    :   `oldValue` - the property's previous value
    :   `newValue` - the property's new value
  + ### firePropertyChange

    public void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    byte oldValue,
    byte newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a byte)
    :   `newValue` - the new value of the property (as a byte)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    char oldValue,
    char newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `JComponent`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a char)
    :   `newValue` - the new value of the property (as a char)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    short oldValue,
    short newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a short)
    :   `newValue` - the new value of the property (as a short)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    int oldValue,
    int newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `JComponent`

    Parameters:
    :   `propertyName` - the property whose value has changed
    :   `oldValue` - the property's previous value
    :   `newValue` - the property's new value
  + ### firePropertyChange

    public void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    long oldValue,
    long newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a long)
    :   `newValue` - the new value of the property (as a long)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    float oldValue,
    float newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a float)
    :   `newValue` - the new value of the property (as a float)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    double oldValue,
    double newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a double)
    :   `newValue` - the new value of the property (as a double)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    boolean oldValue,
    boolean newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `JComponent`

    Parameters:
    :   `propertyName` - the property whose value has changed
    :   `oldValue` - the property's previous value
    :   `newValue` - the property's new value