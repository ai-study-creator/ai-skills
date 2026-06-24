Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JLayer<V extends [Component](../../java/awt/Component.md "class in java.awt")>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JLayer<V>

Type Parameters:
:   `V` - the type of `JLayer`'s view component

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `PropertyChangeListener`, `Serializable`, `EventListener`, `Accessible`, `Scrollable`

---

public final class JLayer<V extends [Component](../../java/awt/Component.md "class in java.awt")>
extends [JComponent](JComponent.md "class in javax.swing")
implements [Scrollable](Scrollable.md "interface in javax.swing"), [PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

`JLayer` is a universal decorator for Swing components
which enables you to implement various advanced painting effects as well as
receive notifications of all `AWTEvent`s generated within its borders.

`JLayer` delegates the handling of painting and input events to a
[`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") object, which performs the actual decoration.

The custom painting implemented in the `LayerUI` and events notification
work for the JLayer itself and all its subcomponents.
This combination enables you to enrich existing components
by adding new advanced functionality such as temporary locking of a hierarchy,
data tips for compound components, enhanced mouse scrolling etc and so on.

`JLayer` is a good solution if you only need to do custom painting
over compound component or catch input events from its subcomponents.

```
 import javax.swing.*;
 import javax.swing.plaf.LayerUI;
 import java.awt.*;

 public class JLayerSample {

     private static JLayer<JComponent> createLayer() {
         // This custom layerUI will fill the layer with translucent green
         // and print out all mouseMotion events generated within its borders
         LayerUI<JComponent> layerUI = new LayerUI<JComponent>() {

             public void paint(Graphics g, JComponent c) {
                 // paint the layer as is
                 super.paint(g, c);
                 // fill it with the translucent green
                 g.setColor(new Color(0, 128, 0, 128));
                 g.fillRect(0, 0, c.getWidth(), c.getHeight());
             }

             public void installUI(JComponent c) {
                 super.installUI(c);
                 // enable mouse motion events for the layer's subcomponents
                 ((JLayer) c).setLayerEventMask(AWTEvent.MOUSE_MOTION_EVENT_MASK);
             }

             public void uninstallUI(JComponent c) {
                 super.uninstallUI(c);
                 // reset the layer event mask
                 ((JLayer) c).setLayerEventMask(0);
             }

             // overridden method which catches MouseMotion events
             public void eventDispatched(AWTEvent e, JLayer<? extends JComponent> l) {
                 System.out.println("AWTEvent detected: " + e);
             }
         };
         // create a component to be decorated with the layer
         JPanel panel = new JPanel();
         panel.add(new JButton("JButton"));

         // create the layer for the panel using our custom layerUI
         return new JLayer<JComponent>(panel, layerUI);
     }

     private static void createAndShowGUI() {
         final JFrame frame = new JFrame();
         frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);

         // work with the layer as with any other Swing component
         frame.add(createLayer());

         frame.setSize(200, 200);
         frame.setLocationRelativeTo(null);
         frame.setVisible(true);
     }

     public static void main(String[] args) throws Exception {
         SwingUtilities.invokeAndWait(new Runnable() {
             public void run() {
                 createAndShowGUI();
             }
         });
     }
 }
```

**Note:** `JLayer` doesn't support the following methods:

* [`Container.add(java.awt.Component)`](../../java/awt/Container.md#add(java.awt.Component))
* [`Container.add(String, java.awt.Component)`](../../java/awt/Container.md#add(java.lang.String,java.awt.Component))
* [`Container.add(java.awt.Component, int)`](../../java/awt/Container.md#add(java.awt.Component,int))
* [`Container.add(java.awt.Component, Object)`](../../java/awt/Container.md#add(java.awt.Component,java.lang.Object))
* [`Container.add(java.awt.Component, Object, int)`](../../java/awt/Container.md#add(java.awt.Component,java.lang.Object,int))

using any of them will cause `UnsupportedOperationException` to be thrown,
to add a component to `JLayer`
use [`setView(Component)`](#setView(V)) or [`setGlassPane(JPanel)`](#setGlassPane(javax.swing.JPanel)).

Since:
:   1.7

See Also:
:   * [`JLayer(Component)`](#%3Cinit%3E(V))
    * [`setView(Component)`](#setView(V))
    * [`getView()`](#getView())
    * [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf")
    * [`JLayer(Component, LayerUI)`](#%3Cinit%3E(V,javax.swing.plaf.LayerUI))
    * [`setUI(javax.swing.plaf.LayerUI)`](#setUI(javax.swing.plaf.LayerUI))
    * [`getUI()`](#getUI())

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

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

  `JLayer()`

  Creates a new `JLayer` object with a `null` view component
  and default [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf").

  `JLayer(V view)`

  Creates a new `JLayer` object
  with default [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf").

  `JLayer(V view,
  LayerUI<V> ui)`

  Creates a new `JLayer` object with the specified view component
  and [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `addImpl(Component comp,
  Object constraints,
  int index)`

  This method is not supported by `JLayer`
  and always throws `UnsupportedOperationException`

  `void`

  `addNotify()`

  Notifies this component that it now has a parent component.

  `JPanel`

  `createGlassPane()`

  Called by the constructor methods to create a default `glassPane`.

  `void`

  `doLayout()`

  Delegates its functionality to the [`LayerUI.doLayout(JLayer)`](plaf/LayerUI.md#doLayout(javax.swing.JLayer)) method,
  if `LayerUI` is set.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this `JLayer`.

  `Border`

  `getBorder()`

  Delegates its functionality to the `getView().getBorder()` method,
  if the view component is an instance of `javax.swing.JComponent`,
  otherwise returns `null`.

  `JPanel`

  `getGlassPane()`

  Returns the `JLayer`'s glassPane component or `null`.

  `long`

  `getLayerEventMask()`

  Returns the bitmap of event mask to receive by this `JLayer`
  and its `LayerUI`.

  `Dimension`

  `getPreferredScrollableViewportSize()`

  Returns the preferred size of the viewport for a view component.

  `int`

  `getScrollableBlockIncrement(Rectangle visibleRect,
  int orientation,
  int direction)`

  Returns a scroll increment, which is required for components
  that display logical rows or columns in order to completely expose
  one block of rows or columns, depending on the value of orientation.

  `boolean`

  `getScrollableTracksViewportHeight()`

  Returns `false` to indicate that the height of the viewport does not
  determine the height of the layer, unless the preferred height
  of the layer is smaller than the height of the viewport.

  `boolean`

  `getScrollableTracksViewportWidth()`

  Returns `false` to indicate that the width of the viewport does not
  determine the width of the layer, unless the preferred width
  of the layer is smaller than the width of the viewport.

  `int`

  `getScrollableUnitIncrement(Rectangle visibleRect,
  int orientation,
  int direction)`

  Returns a scroll increment, which is required for components
  that display logical rows or columns in order to completely expose
  one new row or column, depending on the value of orientation.

  `LayerUI<? super V>`

  `getUI()`

  Returns the [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") for this `JLayer`.

  `V`

  `getView()`

  Returns the `JLayer`'s view component or `null`.

  `boolean`

  `imageUpdate(Image img,
  int infoflags,
  int x,
  int y,
  int w,
  int h)`

  Delegates its functionality to the
  [`LayerUI.imageUpdate(java.awt.Image, int, int, int, int, int, JLayer)`](plaf/LayerUI.md#imageUpdate(java.awt.Image,int,int,int,int,int,javax.swing.JLayer)) method,
  if the `LayerUI` is set.

  `boolean`

  `isOptimizedDrawingEnabled()`

  The `JLayer` overrides the default implementation of
  this method (in `JComponent`) to return `false`.

  `protected boolean`

  `isPaintingOrigin()`

  Always returns `true` to cause painting to originate from `JLayer`,
  or one of its ancestors.

  `void`

  `paint(Graphics g)`

  Delegates all painting to the [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") object.

  `protected void`

  `paintComponent(Graphics g)`

  This method is empty, because all painting is done by
  [`paint(Graphics)`](#paint(java.awt.Graphics)) and
  [`ComponentUI.update(Graphics, JComponent)`](plaf/ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent)) methods

  `void`

  `paintImmediately(int x,
  int y,
  int w,
  int h)`

  Delegates its functionality to the
  [`LayerUI.paintImmediately(int, int, int, int, JLayer)`](plaf/LayerUI.md#paintImmediately(int,int,int,int,javax.swing.JLayer)) method,
  if `LayerUI` is set.

  `void`

  `propertyChange(PropertyChangeEvent evt)`

  This method gets called when a bound property is changed.

  `void`

  `remove(Component comp)`

  Removes the specified component from this container.

  `void`

  `removeAll()`

  Removes all the components from this container.

  `void`

  `removeNotify()`

  Notifies this component that it no longer has a parent component.

  `void`

  `setBorder(Border border)`

  Delegates its functionality to the `getView().setBorder(Border)` method,
  if the view component is an instance of `javax.swing.JComponent`,
  otherwise this method is a no-op.

  `void`

  `setGlassPane(JPanel glassPane)`

  Sets the `JLayer`'s glassPane component, which can be `null`.

  `void`

  `setLayerEventMask(long layerEventMask)`

  Enables the events from JLayer and **all its descendants**
  defined by the specified event mask parameter
  to be delivered to the
  [`LayerUI.eventDispatched(AWTEvent, JLayer)`](plaf/LayerUI.md#eventDispatched(java.awt.AWTEvent,javax.swing.JLayer)) method.

  `void`

  `setLayout(LayoutManager mgr)`

  Sets the layout manager for this container.

  `void`

  `setUI(LayerUI<? super V> ui)`

  Sets the [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") which will perform painting
  and receive input events for this `JLayer`.

  `void`

  `setView(V view)`

  Sets the `JLayer`'s view component, which can be `null`.

  `void`

  `updateUI()`

  Delegates its functionality to the [`LayerUI.updateUI(JLayer)`](plaf/LayerUI.md#updateUI(javax.swing.JLayer)) method,
  if `LayerUI` is set.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getUIClassID, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isPaintingForPrint, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paintBorder, paintChildren, paintImmediately, paramString, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JLayer

    public JLayer()

    Creates a new `JLayer` object with a `null` view component
    and default [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf").

    See Also:
    :   - [`setView(V)`](#setView(V))
        - [`setUI(javax.swing.plaf.LayerUI<? super V>)`](#setUI(javax.swing.plaf.LayerUI))
  + ### JLayer

    public JLayer([V](JLayer.md "type parameter in JLayer") view)

    Creates a new `JLayer` object
    with default [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf").

    Parameters:
    :   `view` - the component to be decorated by this `JLayer`

    See Also:
    :   - [`setUI(javax.swing.plaf.LayerUI<? super V>)`](#setUI(javax.swing.plaf.LayerUI))
  + ### JLayer

    public JLayer([V](JLayer.md "type parameter in JLayer") view,
    [LayerUI](plaf/LayerUI.md "class in javax.swing.plaf")<[V](JLayer.md "type parameter in JLayer")> ui)

    Creates a new `JLayer` object with the specified view component
    and [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") object.

    Parameters:
    :   `view` - the component to be decorated
    :   `ui` - the [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") delegate
        to be used by this `JLayer`
* ## Method Details

  + ### getView

    public [V](JLayer.md "type parameter in JLayer") getView()

    Returns the `JLayer`'s view component or `null`.
      
    This is a bound property.

    Returns:
    :   the `JLayer`'s view component
        or `null` if none exists

    See Also:
    :   - [`setView(Component)`](#setView(V))
  + ### setView

    public void setView([V](JLayer.md "type parameter in JLayer") view)

    Sets the `JLayer`'s view component, which can be `null`.
      
    This is a bound property.

    Parameters:
    :   `view` - the view component for this `JLayer`

    See Also:
    :   - [`getView()`](#getView())
  + ### setUI

    public void setUI([LayerUI](plaf/LayerUI.md "class in javax.swing.plaf")<? super [V](JLayer.md "type parameter in JLayer")> ui)

    Sets the [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") which will perform painting
    and receive input events for this `JLayer`.

    Parameters:
    :   `ui` - the [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") for this `JLayer`
  + ### getUI

    public [LayerUI](plaf/LayerUI.md "class in javax.swing.plaf")<? super [V](JLayer.md "type parameter in JLayer")> getUI()

    Returns the [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") for this `JLayer`.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the `LayerUI` for this `JLayer`
  + ### getGlassPane

    public [JPanel](JPanel.md "class in javax.swing") getGlassPane()

    Returns the `JLayer`'s glassPane component or `null`.
      
    This is a bound property.

    Returns:
    :   the `JLayer`'s glassPane component
        or `null` if none exists

    See Also:
    :   - [`setGlassPane(JPanel)`](#setGlassPane(javax.swing.JPanel))
  + ### setGlassPane

    public void setGlassPane([JPanel](JPanel.md "class in javax.swing") glassPane)

    Sets the `JLayer`'s glassPane component, which can be `null`.
      
    This is a bound property.

    Parameters:
    :   `glassPane` - the glassPane component of this `JLayer`

    See Also:
    :   - [`getGlassPane()`](#getGlassPane())
  + ### createGlassPane

    public [JPanel](JPanel.md "class in javax.swing") createGlassPane()

    Called by the constructor methods to create a default `glassPane`.
    By default this method creates a new JPanel with visibility set to true
    and opacity set to false.

    Returns:
    :   the default `glassPane`
  + ### setLayout

    public void setLayout([LayoutManager](../../java/awt/LayoutManager.md "interface in java.awt") mgr)

    Sets the layout manager for this container. This method is
    overridden to prevent the layout manager from being set.

    Note: If `mgr` is non-`null`, this
    method will throw an exception as layout managers are not supported on
    a `JLayer`.

    Overrides:
    :   `setLayout` in class `Container`

    Parameters:
    :   `mgr` - the specified layout manager

    Throws:
    :   `IllegalArgumentException` - this method is not supported

    See Also:
    :   - [`Container.doLayout()`](../../java/awt/Container.md#doLayout())
        - [`Container.getLayout()`](../../java/awt/Container.md#getLayout())
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
  + ### setBorder

    public void setBorder([Border](border/Border.md "interface in javax.swing.border") border)

    Delegates its functionality to the `getView().setBorder(Border)` method,
    if the view component is an instance of `javax.swing.JComponent`,
    otherwise this method is a no-op.

    Overrides:
    :   `setBorder` in class `JComponent`

    Parameters:
    :   `border` - the border to be rendered for the `view` component

    See Also:
    :   - [`getView()`](#getView())
        - [`JComponent.setBorder(Border)`](JComponent.md#setBorder(javax.swing.border.Border))
  + ### getBorder

    public [Border](border/Border.md "interface in javax.swing.border") getBorder()

    Delegates its functionality to the `getView().getBorder()` method,
    if the view component is an instance of `javax.swing.JComponent`,
    otherwise returns `null`.

    Overrides:
    :   `getBorder` in class `JComponent`

    Returns:
    :   the border object for the `view` component

    See Also:
    :   - [`getView()`](#getView())
        - [`setBorder(javax.swing.border.Border)`](#setBorder(javax.swing.border.Border))
        - [`JComponent.getBorder()`](JComponent.md#getBorder())
  + ### addImpl

    protected void addImpl([Component](../../java/awt/Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints,
    int index)

    This method is not supported by `JLayer`
    and always throws `UnsupportedOperationException`

    Overrides:
    :   `addImpl` in class `Container`

    Parameters:
    :   `comp` - the component to be added
    :   `constraints` - an object expressing layout constraints
        for this component
    :   `index` - the position in the container's list at which to
        insert the component, where `-1`
        means append to the end

    Throws:
    :   `UnsupportedOperationException` - this method is not supported

    See Also:
    :   - [`setView(Component)`](#setView(V))
        - [`setGlassPane(JPanel)`](#setGlassPane(javax.swing.JPanel))
  + ### remove

    public void remove([Component](../../java/awt/Component.md "class in java.awt") comp)

    Removes the specified component from this container.
    This method also notifies the layout manager to remove the
    component from this container's layout via the
    `removeLayoutComponent` method.

    This method changes layout-related information, and therefore,
    invalidates the component hierarchy. If the container has already been
    displayed, the hierarchy must be validated thereafter in order to
    reflect the changes.

    Overrides:
    :   `remove` in class `Container`

    Parameters:
    :   `comp` - the component to be removed

    See Also:
    :   - [`Container.add(java.awt.Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
        - [`Container.validate()`](../../java/awt/Container.md#validate())
        - [`Container.remove(int)`](../../java/awt/Container.md#remove(int))
  + ### removeAll

    public void removeAll()

    Removes all the components from this container.
    This method also notifies the layout manager to remove the
    components from this container's layout via the
    `removeLayoutComponent` method.

    This method changes layout-related information, and therefore,
    invalidates the component hierarchy. If the container has already been
    displayed, the hierarchy must be validated thereafter in order to
    reflect the changes.

    Overrides:
    :   `removeAll` in class `Container`

    See Also:
    :   - [`Container.add(java.awt.Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.remove(int)`](../../java/awt/Container.md#remove(int))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
  + ### isPaintingOrigin

    protected boolean isPaintingOrigin()

    Always returns `true` to cause painting to originate from `JLayer`,
    or one of its ancestors.

    Overrides:
    :   `isPaintingOrigin` in class `JComponent`

    Returns:
    :   true

    See Also:
    :   - [`JComponent.isPaintingOrigin()`](JComponent.md#isPaintingOrigin())
  + ### paintImmediately

    public void paintImmediately(int x,
    int y,
    int w,
    int h)

    Delegates its functionality to the
    [`LayerUI.paintImmediately(int, int, int, int, JLayer)`](plaf/LayerUI.md#paintImmediately(int,int,int,int,javax.swing.JLayer)) method,
    if `LayerUI` is set.

    Overrides:
    :   `paintImmediately` in class `JComponent`

    Parameters:
    :   `x` - the x value of the region to be painted
    :   `y` - the y value of the region to be painted
    :   `w` - the width of the region to be painted
    :   `h` - the height of the region to be painted

    See Also:
    :   - [`JComponent.repaint(long, int, int, int, int)`](JComponent.md#repaint(long,int,int,int,int))
        - [`JComponent.isPaintingOrigin()`](JComponent.md#isPaintingOrigin())
  + ### imageUpdate

    public boolean imageUpdate([Image](../../java/awt/Image.md "class in java.awt") img,
    int infoflags,
    int x,
    int y,
    int w,
    int h)

    Delegates its functionality to the
    [`LayerUI.imageUpdate(java.awt.Image, int, int, int, int, int, JLayer)`](plaf/LayerUI.md#imageUpdate(java.awt.Image,int,int,int,int,int,javax.swing.JLayer)) method,
    if the `LayerUI` is set.

    Specified by:
    :   `imageUpdate` in interface `ImageObserver`

    Overrides:
    :   `imageUpdate` in class `Component`

    Parameters:
    :   `img` - the image being observed
    :   `infoflags` - see `imageUpdate` for more information
    :   `x` - the *x* coordinate
    :   `y` - the *y* coordinate
    :   `w` - the width
    :   `h` - the height

    Returns:
    :   `false` if the infoflags indicate that the
        image is completely loaded; `true` otherwise.

    See Also:
    :   - [`ImageObserver`](../../java/awt/image/ImageObserver.md "interface in java.awt.image")
        - [`Graphics.drawImage(Image, int, int, Color, java.awt.image.ImageObserver)`](../../java/awt/Graphics.md#drawImage(java.awt.Image,int,int,java.awt.Color,java.awt.image.ImageObserver))
        - [`Graphics.drawImage(Image, int, int, java.awt.image.ImageObserver)`](../../java/awt/Graphics.md#drawImage(java.awt.Image,int,int,java.awt.image.ImageObserver))
        - [`Graphics.drawImage(Image, int, int, int, int, Color, java.awt.image.ImageObserver)`](../../java/awt/Graphics.md#drawImage(java.awt.Image,int,int,int,int,java.awt.Color,java.awt.image.ImageObserver))
        - [`Graphics.drawImage(Image, int, int, int, int, java.awt.image.ImageObserver)`](../../java/awt/Graphics.md#drawImage(java.awt.Image,int,int,int,int,java.awt.image.ImageObserver))
        - [`ImageObserver.imageUpdate(java.awt.Image, int, int, int, int, int)`](../../java/awt/image/ImageObserver.md#imageUpdate(java.awt.Image,int,int,int,int,int))
  + ### paint

    public void paint([Graphics](../../java/awt/Graphics.md "class in java.awt") g)

    Delegates all painting to the [`LayerUI`](plaf/LayerUI.md "class in javax.swing.plaf") object.

    Overrides:
    :   `paint` in class `JComponent`

    Parameters:
    :   `g` - the `Graphics` to render to

    See Also:
    :   - [`JComponent.paintComponent(java.awt.Graphics)`](JComponent.md#paintComponent(java.awt.Graphics))
        - [`JComponent.paintBorder(java.awt.Graphics)`](JComponent.md#paintBorder(java.awt.Graphics))
        - [`JComponent.paintChildren(java.awt.Graphics)`](JComponent.md#paintChildren(java.awt.Graphics))
        - [`JComponent.getComponentGraphics(java.awt.Graphics)`](JComponent.md#getComponentGraphics(java.awt.Graphics))
        - [`JComponent.repaint(long, int, int, int, int)`](JComponent.md#repaint(long,int,int,int,int))
  + ### paintComponent

    protected void paintComponent([Graphics](../../java/awt/Graphics.md "class in java.awt") g)

    This method is empty, because all painting is done by
    [`paint(Graphics)`](#paint(java.awt.Graphics)) and
    [`ComponentUI.update(Graphics, JComponent)`](plaf/ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent)) methods

    Overrides:
    :   `paintComponent` in class `JComponent`

    Parameters:
    :   `g` - the `Graphics` object to protect

    See Also:
    :   - [`JComponent.paint(java.awt.Graphics)`](JComponent.md#paint(java.awt.Graphics))
        - [`ComponentUI`](plaf/ComponentUI.md "class in javax.swing.plaf")
  + ### isOptimizedDrawingEnabled

    public boolean isOptimizedDrawingEnabled()

    The `JLayer` overrides the default implementation of
    this method (in `JComponent`) to return `false`.
    This ensures
    that the drawing machinery will call the `JLayer`'s
    `paint`
    implementation rather than messaging the `JLayer`'s
    children directly.

    Overrides:
    :   `isOptimizedDrawingEnabled` in class `JComponent`

    Returns:
    :   false
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../java/beans/PropertyChangeEvent.md "class in java.beans") evt)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `evt` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### setLayerEventMask

    public void setLayerEventMask(long layerEventMask)

    Enables the events from JLayer and **all its descendants**
    defined by the specified event mask parameter
    to be delivered to the
    [`LayerUI.eventDispatched(AWTEvent, JLayer)`](plaf/LayerUI.md#eventDispatched(java.awt.AWTEvent,javax.swing.JLayer)) method.

    Events are delivered provided that `LayerUI` is set
    for this `JLayer` and the `JLayer`
    is displayable.

    The following example shows how to correctly use this method
    in the `LayerUI` implementations:

    ```
        public void installUI(JComponent c) {
           super.installUI(c);
           JLayer l = (JLayer) c;
           // this LayerUI will receive only key and focus events
           l.setLayerEventMask(AWTEvent.KEY_EVENT_MASK | AWTEvent.FOCUS_EVENT_MASK);
        }

        public void uninstallUI(JComponent c) {
           super.uninstallUI(c);
           JLayer l = (JLayer) c;
           // JLayer must be returned to its initial state
           l.setLayerEventMask(0);
        }
    ```

    By default `JLayer` receives no events and its event mask is `0`.

    Parameters:
    :   `layerEventMask` - the bitmask of event types to receive

    See Also:
    :   - [`getLayerEventMask()`](#getLayerEventMask())
        - [`LayerUI.eventDispatched(AWTEvent, JLayer)`](plaf/LayerUI.md#eventDispatched(java.awt.AWTEvent,javax.swing.JLayer))
        - [`Component.isDisplayable()`](../../java/awt/Component.md#isDisplayable())
  + ### getLayerEventMask

    public long getLayerEventMask()

    Returns the bitmap of event mask to receive by this `JLayer`
    and its `LayerUI`.

    It means that [`LayerUI.eventDispatched(AWTEvent, JLayer)`](plaf/LayerUI.md#eventDispatched(java.awt.AWTEvent,javax.swing.JLayer)) method
    will only receive events that match the event mask.

    By default `JLayer` receives no events.

    Returns:
    :   the bitmask of event types to receive for this `JLayer`
  + ### updateUI

    public void updateUI()

    Delegates its functionality to the [`LayerUI.updateUI(JLayer)`](plaf/LayerUI.md#updateUI(javax.swing.JLayer)) method,
    if `LayerUI` is set.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`UIManager.getLookAndFeel()`](UIManager.md#getLookAndFeel())
        - [`UIManager.getUI(javax.swing.JComponent)`](UIManager.md#getUI(javax.swing.JComponent))
  + ### getPreferredScrollableViewportSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") getPreferredScrollableViewportSize()

    Returns the preferred size of the viewport for a view component.

    If the view component of this layer implements [`Scrollable`](Scrollable.md "interface in javax.swing"), this method delegates its
    implementation to the view component.

    Specified by:
    :   `getPreferredScrollableViewportSize` in interface `Scrollable`

    Returns:
    :   the preferred size of the viewport for a view component

    See Also:
    :   - [`Scrollable`](Scrollable.md "interface in javax.swing")
  + ### getScrollableBlockIncrement

    public int getScrollableBlockIncrement([Rectangle](../../java/awt/Rectangle.md "class in java.awt") visibleRect,
    int orientation,
    int direction)

    Returns a scroll increment, which is required for components
    that display logical rows or columns in order to completely expose
    one block of rows or columns, depending on the value of orientation.

    If the view component of this layer implements [`Scrollable`](Scrollable.md "interface in javax.swing"), this method delegates its
    implementation to the view component.

    Specified by:
    :   `getScrollableBlockIncrement` in interface `Scrollable`

    Parameters:
    :   `visibleRect` - The view area visible within the viewport
    :   `orientation` - Either SwingConstants.VERTICAL or SwingConstants.HORIZONTAL.
    :   `direction` - Less than zero to scroll up/left, greater than zero for down/right.

    Returns:
    :   the "block" increment for scrolling in the specified direction

    See Also:
    :   - [`Scrollable`](Scrollable.md "interface in javax.swing")
  + ### getScrollableTracksViewportHeight

    public boolean getScrollableTracksViewportHeight()

    Returns `false` to indicate that the height of the viewport does not
    determine the height of the layer, unless the preferred height
    of the layer is smaller than the height of the viewport.

    If the view component of this layer implements [`Scrollable`](Scrollable.md "interface in javax.swing"), this method delegates its
    implementation to the view component.

    Specified by:
    :   `getScrollableTracksViewportHeight` in interface `Scrollable`

    Returns:
    :   whether the layer should track the height of the viewport

    See Also:
    :   - [`Scrollable`](Scrollable.md "interface in javax.swing")
  + ### getScrollableTracksViewportWidth

    public boolean getScrollableTracksViewportWidth()

    Returns `false` to indicate that the width of the viewport does not
    determine the width of the layer, unless the preferred width
    of the layer is smaller than the width of the viewport.

    If the view component of this layer implements [`Scrollable`](Scrollable.md "interface in javax.swing"), this method delegates its
    implementation to the view component.

    Specified by:
    :   `getScrollableTracksViewportWidth` in interface `Scrollable`

    Returns:
    :   whether the layer should track the width of the viewport

    See Also:
    :   - [`Scrollable`](Scrollable.md "interface in javax.swing")
  + ### getScrollableUnitIncrement

    public int getScrollableUnitIncrement([Rectangle](../../java/awt/Rectangle.md "class in java.awt") visibleRect,
    int orientation,
    int direction)

    Returns a scroll increment, which is required for components
    that display logical rows or columns in order to completely expose
    one new row or column, depending on the value of orientation.
    Ideally, components should handle a partially exposed row or column
    by returning the distance required to completely expose the item.

    Scrolling containers, like `JScrollPane`, will use this method
    each time the user requests a unit scroll.

    If the view component of this layer implements [`Scrollable`](Scrollable.md "interface in javax.swing"), this method delegates its
    implementation to the view component.

    Specified by:
    :   `getScrollableUnitIncrement` in interface `Scrollable`

    Parameters:
    :   `visibleRect` - The view area visible within the viewport
    :   `orientation` - Either SwingConstants.VERTICAL or SwingConstants.HORIZONTAL.
    :   `direction` - Less than zero to scroll up/left, greater than zero for down/right.

    Returns:
    :   The "unit" increment for scrolling in the specified direction.
        This value should always be positive.

    See Also:
    :   - [`Scrollable`](Scrollable.md "interface in javax.swing")
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
  + ### doLayout

    public void doLayout()

    Delegates its functionality to the [`LayerUI.doLayout(JLayer)`](plaf/LayerUI.md#doLayout(javax.swing.JLayer)) method,
    if `LayerUI` is set.

    Overrides:
    :   `doLayout` in class `Container`

    See Also:
    :   - [`LayoutManager.layoutContainer(java.awt.Container)`](../../java/awt/LayoutManager.md#layoutContainer(java.awt.Container))
        - [`Container.setLayout(java.awt.LayoutManager)`](../../java/awt/Container.md#setLayout(java.awt.LayoutManager))
        - [`Container.validate()`](../../java/awt/Container.md#validate())
  + ### getAccessibleContext

    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this `JLayer`.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   the AccessibleContext associated with this `JLayer`.