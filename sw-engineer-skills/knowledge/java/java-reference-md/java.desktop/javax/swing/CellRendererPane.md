Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class CellRendererPane

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

javax.swing.CellRendererPane

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

---

public class CellRendererPane
extends [Container](../../java/awt/Container.md "class in java.awt")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

This class is inserted in between cell renderers and the components that
use them. It just exists to thwart the repaint() and invalidate() methods
which would otherwise propagate up the tree when the renderer was configured.
It's used by the implementations of JTable, JTree, and JList. For example,
here's how CellRendererPane is used in the code the paints each row
in a JList:

```
   cellRendererPane = new CellRendererPane();
   ...
   Component rendererComponent = renderer.getListCellRendererComponent();
   renderer.configureListCellRenderer(dataModel.getElementAt(row), row);
   cellRendererPane.paintComponent(g, rendererComponent, this, x, y, w, h);
```

A renderer component must override isShowing() and unconditionally return
true to work correctly because the Swing paint does nothing for components
with isShowing false.

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

  `CellRendererPane.AccessibleCellRendererPane`

  This class implements accessibility support for the
  `CellRendererPane` class.

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

  `AccessibleContext` associated with this `CellRendererPan`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CellRendererPane()`

  Construct a CellRendererPane object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `addImpl(Component x,
  Object constraints,
  int index)`

  If the specified component is already a child of this then we don't
  bother doing anything - stacking order doesn't matter for cell
  renderer components (CellRendererPane doesn't paint anyway).

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this CellRendererPane.

  `void`

  `invalidate()`

  Overridden to avoid propagating a invalidate up the tree when the
  cell renderer child is configured.

  `void`

  `paint(Graphics g)`

  Shouldn't be called.

  `void`

  `paintComponent(Graphics g,
  Component c,
  Container p,
  int x,
  int y,
  int w,
  int h)`

  Calls this.paintComponent(g, c, p, x, y, w, h, false).

  `void`

  `paintComponent(Graphics g,
  Component c,
  Container p,
  int x,
  int y,
  int w,
  int h,
  boolean shouldValidate)`

  Paint a cell renderer component c on graphics object g.

  `void`

  `paintComponent(Graphics g,
  Component c,
  Container p,
  Rectangle r)`

  Calls this.paintComponent(g, c, p, r.x, r.y, r.width, r.height) where
  `r` is the input `Rectangle` parameter.

  `void`

  `update(Graphics g)`

  Shouldn't be called.

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addNotify, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getAlignmentX, getAlignmentY, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getInsets, getLayout, getListeners, getMaximumSize, getMinimumSize, getMousePosition, getPreferredSize, insets, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, isValidateRoot, layout, list, list, locate, minimumSize, paintComponents, paramString, preferredSize, print, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, removeNotify, setComponentZOrder, setFocusCycleRoot, setFocusTraversalKeys, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setFont, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, disable, disableEvents, dispatchEvent, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphics, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getToolkit, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, hide, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isOpaque, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, printAll, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, reshape, resize, resize, revalidate, setBackground, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeysEnabled, setForeground, setIgnoreRepaint, setLocale, setLocation, setLocation, setMaximumSize, setMinimumSize, setMixingCutoutShape, setName, setPreferredSize, setSize, setSize, setVisible, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### accessibleContext

    protected [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") accessibleContext

    `AccessibleContext` associated with this `CellRendererPan`
* ## Constructor Details

  + ### CellRendererPane

    public CellRendererPane()

    Construct a CellRendererPane object.
* ## Method Details

  + ### invalidate

    public void invalidate()

    Overridden to avoid propagating a invalidate up the tree when the
    cell renderer child is configured.

    Overrides:
    :   `invalidate` in class `Container`

    See Also:
    :   - [`Container.validate()`](../../java/awt/Container.md#validate())
        - [`Container.layout()`](../../java/awt/Container.md#layout())
        - [`LayoutManager2`](../../java/awt/LayoutManager2.md "interface in java.awt")
  + ### paint

    public void paint([Graphics](../../java/awt/Graphics.md "class in java.awt") g)

    Shouldn't be called.

    Overrides:
    :   `paint` in class `Container`

    Parameters:
    :   `g` - the specified Graphics window

    See Also:
    :   - [`Component.update(Graphics)`](../../java/awt/Component.md#update(java.awt.Graphics))
  + ### update

    public void update([Graphics](../../java/awt/Graphics.md "class in java.awt") g)

    Shouldn't be called.

    Overrides:
    :   `update` in class `Container`

    Parameters:
    :   `g` - the specified Graphics window

    See Also:
    :   - [`Component.update(Graphics)`](../../java/awt/Component.md#update(java.awt.Graphics))
  + ### addImpl

    protected void addImpl([Component](../../java/awt/Component.md "class in java.awt") x,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints,
    int index)

    If the specified component is already a child of this then we don't
    bother doing anything - stacking order doesn't matter for cell
    renderer components (CellRendererPane doesn't paint anyway).

    Overrides:
    :   `addImpl` in class `Container`

    Parameters:
    :   `x` - the component to be added
    :   `constraints` - an object expressing layout constraints
        for this component
    :   `index` - the position in the container's list at which to
        insert the component, where `-1`
        means append to the end

    See Also:
    :   - [`Container.add(Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.add(Component, int)`](../../java/awt/Container.md#add(java.awt.Component,int))
        - [`Container.add(Component, java.lang.Object)`](../../java/awt/Container.md#add(java.awt.Component,java.lang.Object))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
        - [`LayoutManager`](../../java/awt/LayoutManager.md "interface in java.awt")
        - [`LayoutManager2`](../../java/awt/LayoutManager2.md "interface in java.awt")
  + ### paintComponent

    public void paintComponent([Graphics](../../java/awt/Graphics.md "class in java.awt") g,
    [Component](../../java/awt/Component.md "class in java.awt") c,
    [Container](../../java/awt/Container.md "class in java.awt") p,
    int x,
    int y,
    int w,
    int h,
    boolean shouldValidate)

    Paint a cell renderer component c on graphics object g. Before the component
    is drawn it's reparented to this (if that's necessary), it's bounds
    are set to w,h and the graphics object is (effectively) translated to x,y.
    If it's a JComponent, double buffering is temporarily turned off. After
    the component is painted it's bounds are reset to -w, -h, 0, 0 so that, if
    it's the last renderer component painted, it will not start consuming input.
    The Container p is the component we're actually drawing on, typically it's
    equal to this.getParent(). If shouldValidate is true the component c will be
    validated before painted.

    Parameters:
    :   `g` - the `Graphics` object to draw on
    :   `c` - the `Component` to draw
    :   `p` - the `Container` component actually drawn on
    :   `x` - an int specifying the left side of the area draw in, in pixels,
        measured from the left edge of the graphics context
    :   `y` - an int specifying the top of the area to draw in, in pixels
        measured down from the top edge of the graphics context
    :   `w` - an int specifying the width of the area draw in, in pixels
    :   `h` - an int specifying the height of the area draw in, in pixels
    :   `shouldValidate` - if true, component `c` will be validated
        before being painted
  + ### paintComponent

    public void paintComponent([Graphics](../../java/awt/Graphics.md "class in java.awt") g,
    [Component](../../java/awt/Component.md "class in java.awt") c,
    [Container](../../java/awt/Container.md "class in java.awt") p,
    int x,
    int y,
    int w,
    int h)

    Calls this.paintComponent(g, c, p, x, y, w, h, false).

    Parameters:
    :   `g` - the `Graphics` object to draw on
    :   `c` - the `Component` to draw
    :   `p` - the `Container` component actually drawn on
    :   `x` - an int specifying the left side of the area draw in, in pixels,
        measured from the left edge of the graphics context
    :   `y` - an int specifying the top of the area to draw in, in pixels
        measured down from the top edge of the graphics context
    :   `w` - an int specifying the width of the area draw in, in pixels
    :   `h` - an int specifying the height of the area draw in, in pixels
  + ### paintComponent

    public void paintComponent([Graphics](../../java/awt/Graphics.md "class in java.awt") g,
    [Component](../../java/awt/Component.md "class in java.awt") c,
    [Container](../../java/awt/Container.md "class in java.awt") p,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") r)

    Calls this.paintComponent(g, c, p, r.x, r.y, r.width, r.height) where
    `r` is the input `Rectangle` parameter.

    Parameters:
    :   `g` - the `Graphics` object to draw on
    :   `c` - the `Component` to draw
    :   `p` - the `Container` component actually drawn on
    :   `r` - the `Rectangle` to draw in
  + ### getAccessibleContext

    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this CellRendererPane.
    For CellRendererPanes, the AccessibleContext takes the form of an
    AccessibleCellRendererPane.
    A new AccessibleCellRendererPane instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleCellRendererPane that serves as the
        AccessibleContext of this CellRendererPane