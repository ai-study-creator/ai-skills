Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JLayeredPane

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JLayeredPane

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

Direct Known Subclasses:
:   `JDesktopPane`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="accessibleContext")
public class JLayeredPane
extends [JComponent](JComponent.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

`JLayeredPane` adds depth to a JFC/Swing container,
allowing components to overlap each other when needed.
An `Integer` object specifies each component's depth in the
container, where higher-numbered components sit "on top" of other
components.
For task-oriented documentation and examples of using layered panes see
[How to Use a Layered Pane](https://docs.oracle.com/javase/tutorial/uiswing/components/layeredpane.html),
a section in *The Java Tutorial*.

**Example:**

![The following text describes this image.](doc-files/JLayeredPane-1.gif)

For convenience, `JLayeredPane` divides the depth-range
into several different layers. Putting a component into one of those
layers makes it easy to ensure that components overlap properly,
without having to worry about specifying numbers for specific depths:

DEFAULT\_LAYER
:   The standard layer, where most components go. This the bottommost
    layer.

    PALETTE\_LAYER
    :   The palette layer sits over the default layer. Useful for floating
        toolbars and palettes, so they can be positioned above other components.

        MODAL\_LAYER
        :   The layer used for modal dialogs. They will appear on top of any
            toolbars, palettes, or standard components in the container.

            POPUP\_LAYER
            :   The popup layer displays above dialogs. That way, the popup windows
                associated with combo boxes, tooltips, and other help text will appear
                above the component, palette, or dialog that generated them.

                DRAG\_LAYER
                :   When dragging a component, reassigning it to the drag layer ensures
                    that it is positioned over every other component in the container. When
                    finished dragging, it can be reassigned to its normal layer.

The `JLayeredPane` methods `moveToFront(Component)`,
`moveToBack(Component)` and `setPosition` can be used
to reposition a component within its layer. The `setLayer` method
can also be used to change the component's current layer.

## Details

`JLayeredPane` manages its list of children like
`Container`, but allows for the definition of a several
layers within itself. Children in the same layer are managed exactly
like the normal `Container` object,
with the added feature that when children components overlap, children
in higher layers display above the children in lower layers.

Each layer is a distinct integer number. The layer attribute can be set
on a `Component` by passing an `Integer`
object during the add call.  
 For example:

```
     layeredPane.add(child, JLayeredPane.DEFAULT_LAYER);
 or
     layeredPane.add(child, Integer.valueOf(10));
```

The layer attribute can also be set on a Component by calling

```
     layeredPaneParent.setLayer(child, 10)
```

on the `JLayeredPane` that is the parent of component. The layer
should be set *before* adding the child to the parent.

Higher number layers display above lower number layers. So, using
numbers for the layers and letters for individual components, a
representative list order would look like this:

```
       5a, 5b, 5c, 2a, 2b, 2c, 1a
```

where the leftmost components are closest to the top of the display.

A component can be moved to the top or bottom position within its
layer by calling `moveToFront` or `moveToBack`.

The position of a component within a layer can also be specified directly.
Valid positions range from 0 up to one less than the number of
components in that layer. A value of -1 indicates the bottommost
position. A value of 0 indicates the topmost position. Unlike layer
numbers, higher position values are *lower* in the display.
> **Note:** This sequence (defined by java.awt.Container) is the reverse
> of the layer numbering sequence. Usually though, you will use `moveToFront`,
> `moveToBack`, and `setLayer`.

Here are some examples using the method add(Component, layer, position):
Calling add(5x, 5, -1) results in:

```
       5a, 5b, 5c, 5x, 2a, 2b, 2c, 1a
```

Calling add(5z, 5, 2) results in:

```
       5a, 5b, 5z, 5c, 5x, 2a, 2b, 2c, 1a
```

Calling add(3a, 3, 7) results in:

```
       5a, 5b, 5z, 5c, 5x, 3a, 2a, 2b, 2c, 1a
```

Using normal paint/event mechanics results in 1a appearing at the bottom
and 5a being above all other components.

**Note:** that these layers are simply a logical construct and LayoutManagers
will affect all child components of this container without regard for
layer settings.

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

  `JLayeredPane.AccessibleJLayeredPane`

  This class implements accessibility support for the
  `JLayeredPane` class.

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

  `static final Integer`

  `DEFAULT_LAYER`

  Convenience object defining the Default layer.

  `static final Integer`

  `DRAG_LAYER`

  Convenience object defining the Drag layer.

  `static final Integer`

  `FRAME_CONTENT_LAYER`

  Convenience object defining the Frame Content layer.

  `static final String`

  `LAYER_PROPERTY`

  Bound property

  `static final Integer`

  `MODAL_LAYER`

  Convenience object defining the Modal layer.

  `static final Integer`

  `PALETTE_LAYER`

  Convenience object defining the Palette layer.

  `static final Integer`

  `POPUP_LAYER`

  Convenience object defining the Popup layer.

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

  `JLayeredPane()`

  Create a new JLayeredPane
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `addImpl(Component comp,
  Object constraints,
  int index)`

  Adds the specified component to this container at the specified
  index.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JLayeredPane.

  `int`

  `getComponentCountInLayer(int layer)`

  Returns the number of children currently in the specified layer.

  `Component[]`

  `getComponentsInLayer(int layer)`

  Returns an array of the components in the specified layer.

  `protected Hashtable<Component,Integer>`

  `getComponentToLayer()`

  Returns the hashtable that maps components to layers.

  `int`

  `getIndexOf(Component c)`

  Returns the index of the specified Component.

  `int`

  `getLayer(Component c)`

  Returns the layer attribute for the specified Component.

  `static int`

  `getLayer(JComponent c)`

  Gets the layer property for a JComponent, it
  does not cause any side effects like setLayer().

  `static JLayeredPane`

  `getLayeredPaneAbove(Component c)`

  Convenience method that returns the first JLayeredPane which
  contains the specified component.

  `protected Integer`

  `getObjectForLayer(int layer)`

  Returns the Integer object associated with a specified layer.

  `int`

  `getPosition(Component c)`

  Get the relative position of the component within its layer.

  `int`

  `highestLayer()`

  Returns the highest layer value from all current children.

  `protected int`

  `insertIndexForLayer(int layer,
  int position)`

  Primitive method that determines the proper location to
  insert a new child based on layer and position requests.

  `boolean`

  `isOptimizedDrawingEnabled()`

  Returns false if components in the pane can overlap, which makes
  optimized drawing impossible.

  `int`

  `lowestLayer()`

  Returns the lowest layer value from all current children.

  `void`

  `moveToBack(Component c)`

  Moves the component to the bottom of the components in its current layer
  (position -1).

  `void`

  `moveToFront(Component c)`

  Moves the component to the top of the components in its current layer
  (position 0).

  `void`

  `paint(Graphics g)`

  Paints this JLayeredPane within the specified graphics context.

  `protected String`

  `paramString()`

  Returns a string representation of this JLayeredPane.

  `static void`

  `putLayer(JComponent c,
  int layer)`

  Sets the layer property on a JComponent.

  `void`

  `remove(int index)`

  Remove the indexed component from this pane.

  `void`

  `removeAll()`

  Removes all the components from this container.

  `void`

  `setLayer(Component c,
  int layer)`

  Sets the layer attribute on the specified component,
  making it the bottommost component in that layer.

  `void`

  `setLayer(Component c,
  int layer,
  int position)`

  Sets the layer attribute for the specified component and
  also sets its position within that layer.

  `void`

  `setPosition(Component c,
  int position)`

  Moves the component to `position` within its current layer,
  where 0 is the topmost position within the layer and -1 is the bottommost
  position.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getUI, getUIClassID, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update, updateUI`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_LAYER

    public static final [Integer](../../../java.base/java/lang/Integer.md "class in java.lang") DEFAULT\_LAYER

    Convenience object defining the Default layer. Equivalent to Integer.valueOf(0).
  + ### PALETTE\_LAYER

    public static final [Integer](../../../java.base/java/lang/Integer.md "class in java.lang") PALETTE\_LAYER

    Convenience object defining the Palette layer. Equivalent to Integer.valueOf(100).
  + ### MODAL\_LAYER

    public static final [Integer](../../../java.base/java/lang/Integer.md "class in java.lang") MODAL\_LAYER

    Convenience object defining the Modal layer. Equivalent to Integer.valueOf(200).
  + ### POPUP\_LAYER

    public static final [Integer](../../../java.base/java/lang/Integer.md "class in java.lang") POPUP\_LAYER

    Convenience object defining the Popup layer. Equivalent to Integer.valueOf(300).
  + ### DRAG\_LAYER

    public static final [Integer](../../../java.base/java/lang/Integer.md "class in java.lang") DRAG\_LAYER

    Convenience object defining the Drag layer. Equivalent to Integer.valueOf(400).
  + ### FRAME\_CONTENT\_LAYER

    public static final [Integer](../../../java.base/java/lang/Integer.md "class in java.lang") FRAME\_CONTENT\_LAYER

    Convenience object defining the Frame Content layer.
    This layer is normally only use to position the contentPane and menuBar
    components of JFrame.
    Equivalent to Integer.valueOf(-30000).

    See Also:
    :   - [`JFrame`](JFrame.md "class in javax.swing")
  + ### LAYER\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") LAYER\_PROPERTY

    Bound property

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JLayeredPane.LAYER_PROPERTY)
* ## Constructor Details

  + ### JLayeredPane

    public JLayeredPane()

    Create a new JLayeredPane
* ## Method Details

  + ### addImpl

    protected void addImpl([Component](../../java/awt/Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints,
    int index)

    Description copied from class: `Container`

    Adds the specified component to this container at the specified
    index. This method also notifies the layout manager to add
    the component to this container's layout using the specified
    constraints object via the `addLayoutComponent`
    method.

    The constraints are
    defined by the particular layout manager being used. For
    example, the `BorderLayout` class defines five
    constraints: `BorderLayout.NORTH`,
    `BorderLayout.SOUTH`, `BorderLayout.EAST`,
    `BorderLayout.WEST`, and `BorderLayout.CENTER`.

    The `GridBagLayout` class requires a
    `GridBagConstraints` object. Failure to pass
    the correct type of constraints object results in an
    `IllegalArgumentException`.

    If the current layout manager implements `LayoutManager2`, then
    [`LayoutManager2.addLayoutComponent(Component,Object)`](../../java/awt/LayoutManager2.md#addLayoutComponent(java.awt.Component,java.lang.Object)) is invoked on
    it. If the current layout manager does not implement
    `LayoutManager2`, and constraints is a `String`, then
    [`LayoutManager.addLayoutComponent(String,Component)`](../../java/awt/LayoutManager.md#addLayoutComponent(java.lang.String,java.awt.Component)) is invoked on it.

    If the component is not an ancestor of this container and has a non-null
    parent, it is removed from its current parent before it is added to this
    container.

    This is the method to override if a program needs to track
    every add request to a container as all other add methods defer
    to this one. An overriding method should
    usually include a call to the superclass's version of the method:
    > `super.addImpl(comp, constraints, index)`

    This method changes layout-related information, and therefore,
    invalidates the component hierarchy. If the container has already been
    displayed, the hierarchy must be validated thereafter in order to
    display the added component.

    Overrides:
    :   `addImpl` in class `Container`

    Parameters:
    :   `comp` - the component to be added
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
  + ### remove

    public void remove(int index)

    Remove the indexed component from this pane.
    This is the absolute index, ignoring layers.

    Overrides:
    :   `remove` in class `Container`

    Parameters:
    :   `index` - an int specifying the component to remove

    See Also:
    :   - [`getIndexOf(java.awt.Component)`](#getIndexOf(java.awt.Component))
  + ### removeAll

    public void removeAll()

    Removes all the components from this container.

    Overrides:
    :   `removeAll` in class `Container`

    Since:
    :   1.5

    See Also:
    :   - [`Container.add(java.awt.Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.remove(int)`](../../java/awt/Container.md#remove(int))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
  + ### isOptimizedDrawingEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public boolean isOptimizedDrawingEnabled()

    Returns false if components in the pane can overlap, which makes
    optimized drawing impossible. Otherwise, returns true.

    Overrides:
    :   `isOptimizedDrawingEnabled` in class `JComponent`

    Returns:
    :   false if components can overlap, else true

    See Also:
    :   - [`JComponent.isOptimizedDrawingEnabled()`](JComponent.md#isOptimizedDrawingEnabled())
  + ### putLayer

    public static void putLayer([JComponent](JComponent.md "class in javax.swing") c,
    int layer)

    Sets the layer property on a JComponent. This method does not cause
    any side effects like setLayer() (painting, add/remove, etc).
    Normally you should use the instance method setLayer(), in order to
    get the desired side-effects (like repainting).

    Parameters:
    :   `c` - the JComponent to move
    :   `layer` - an int specifying the layer to move it to

    See Also:
    :   - [`setLayer(java.awt.Component, int)`](#setLayer(java.awt.Component,int))
  + ### getLayer

    public static int getLayer([JComponent](JComponent.md "class in javax.swing") c)

    Gets the layer property for a JComponent, it
    does not cause any side effects like setLayer(). (painting, add/remove, etc)
    Normally you should use the instance method getLayer().

    Parameters:
    :   `c` - the JComponent to check

    Returns:
    :   an int specifying the component's layer
  + ### getLayeredPaneAbove

    public static [JLayeredPane](JLayeredPane.md "class in javax.swing") getLayeredPaneAbove([Component](../../java/awt/Component.md "class in java.awt") c)

    Convenience method that returns the first JLayeredPane which
    contains the specified component. Note that all JFrames have a
    JLayeredPane at their root, so any component in a JFrame will
    have a JLayeredPane parent.

    Parameters:
    :   `c` - the Component to check

    Returns:
    :   the JLayeredPane that contains the component, or
        null if no JLayeredPane is found in the component
        hierarchy

    See Also:
    :   - [`JFrame`](JFrame.md "class in javax.swing")
        - [`JRootPane`](JRootPane.md "class in javax.swing")
  + ### setLayer

    public void setLayer([Component](../../java/awt/Component.md "class in java.awt") c,
    int layer)

    Sets the layer attribute on the specified component,
    making it the bottommost component in that layer.
    Should be called before adding to parent.

    Parameters:
    :   `c` - the Component to set the layer for
    :   `layer` - an int specifying the layer to set, where
        lower numbers are closer to the bottom
  + ### setLayer

    public void setLayer([Component](../../java/awt/Component.md "class in java.awt") c,
    int layer,
    int position)

    Sets the layer attribute for the specified component and
    also sets its position within that layer.

    Parameters:
    :   `c` - the Component to set the layer for
    :   `layer` - an int specifying the layer to set, where
        lower numbers are closer to the bottom
    :   `position` - an int specifying the position within the
        layer, where 0 is the topmost position and -1
        is the bottommost position
  + ### getLayer

    public int getLayer([Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the layer attribute for the specified Component.

    Parameters:
    :   `c` - the Component to check

    Returns:
    :   an int specifying the component's current layer
  + ### getIndexOf

    public int getIndexOf([Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the index of the specified Component.
    This is the absolute index, ignoring layers.
    Index numbers, like position numbers, have the topmost component
    at index zero. Larger numbers are closer to the bottom.

    Parameters:
    :   `c` - the Component to check

    Returns:
    :   an int specifying the component's index
  + ### moveToFront

    public void moveToFront([Component](../../java/awt/Component.md "class in java.awt") c)

    Moves the component to the top of the components in its current layer
    (position 0).

    Parameters:
    :   `c` - the Component to move

    See Also:
    :   - [`setPosition(Component, int)`](#setPosition(java.awt.Component,int))
  + ### moveToBack

    public void moveToBack([Component](../../java/awt/Component.md "class in java.awt") c)

    Moves the component to the bottom of the components in its current layer
    (position -1).

    Parameters:
    :   `c` - the Component to move

    See Also:
    :   - [`setPosition(Component, int)`](#setPosition(java.awt.Component,int))
  + ### setPosition

    public void setPosition([Component](../../java/awt/Component.md "class in java.awt") c,
    int position)

    Moves the component to `position` within its current layer,
    where 0 is the topmost position within the layer and -1 is the bottommost
    position.

    **Note:** Position numbering is defined by java.awt.Container, and
    is the opposite of layer numbering. Lower position numbers are closer
    to the top (0 is topmost), and higher position numbers are closer to
    the bottom.

    Parameters:
    :   `c` - the Component to move
    :   `position` - an int in the range -1..N-1, where N is the number of
        components in the component's current layer
  + ### getPosition

    public int getPosition([Component](../../java/awt/Component.md "class in java.awt") c)

    Get the relative position of the component within its layer.

    Parameters:
    :   `c` - the Component to check

    Returns:
    :   an int giving the component's position, where 0 is the
        topmost position and the highest index value = the count
        count of components at that layer, minus 1

    See Also:
    :   - [`getComponentCountInLayer(int)`](#getComponentCountInLayer(int))
  + ### highestLayer

    public int highestLayer()

    Returns the highest layer value from all current children.
    Returns 0 if there are no children.

    Returns:
    :   an int indicating the layer of the topmost component in the
        pane, or zero if there are no children
  + ### lowestLayer

    public int lowestLayer()

    Returns the lowest layer value from all current children.
    Returns 0 if there are no children.

    Returns:
    :   an int indicating the layer of the bottommost component in the
        pane, or zero if there are no children
  + ### getComponentCountInLayer

    public int getComponentCountInLayer(int layer)

    Returns the number of children currently in the specified layer.

    Parameters:
    :   `layer` - an int specifying the layer to check

    Returns:
    :   an int specifying the number of components in that layer
  + ### getComponentsInLayer

    public [Component](../../java/awt/Component.md "class in java.awt")[] getComponentsInLayer(int layer)

    Returns an array of the components in the specified layer.

    Parameters:
    :   `layer` - an int specifying the layer to check

    Returns:
    :   an array of Components contained in that layer
  + ### paint

    public void paint([Graphics](../../java/awt/Graphics.md "class in java.awt") g)

    Paints this JLayeredPane within the specified graphics context.

    Overrides:
    :   `paint` in class `JComponent`

    Parameters:
    :   `g` - the Graphics context within which to paint

    See Also:
    :   - [`JComponent.paintComponent(java.awt.Graphics)`](JComponent.md#paintComponent(java.awt.Graphics))
        - [`JComponent.paintBorder(java.awt.Graphics)`](JComponent.md#paintBorder(java.awt.Graphics))
        - [`JComponent.paintChildren(java.awt.Graphics)`](JComponent.md#paintChildren(java.awt.Graphics))
        - [`JComponent.getComponentGraphics(java.awt.Graphics)`](JComponent.md#getComponentGraphics(java.awt.Graphics))
        - [`JComponent.repaint(long, int, int, int, int)`](JComponent.md#repaint(long,int,int,int,int))
  + ### getComponentToLayer

    protected [Hashtable](../../../java.base/java/util/Hashtable.md "class in java.util")<[Component](../../java/awt/Component.md "class in java.awt"),[Integer](../../../java.base/java/lang/Integer.md "class in java.lang")> getComponentToLayer()

    Returns the hashtable that maps components to layers.

    Returns:
    :   the Hashtable used to map components to their layers
  + ### getObjectForLayer

    protected [Integer](../../../java.base/java/lang/Integer.md "class in java.lang") getObjectForLayer(int layer)

    Returns the Integer object associated with a specified layer.

    Parameters:
    :   `layer` - an int specifying the layer

    Returns:
    :   an Integer object for that layer
  + ### insertIndexForLayer

    protected int insertIndexForLayer(int layer,
    int position)

    Primitive method that determines the proper location to
    insert a new child based on layer and position requests.

    Parameters:
    :   `layer` - an int specifying the layer
    :   `position` - an int specifying the position within the layer

    Returns:
    :   an int giving the (absolute) insertion-index

    See Also:
    :   - [`getIndexOf(java.awt.Component)`](#getIndexOf(java.awt.Component))
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this JLayeredPane. This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this JLayeredPane.
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JLayeredPane.
    For layered panes, the AccessibleContext takes the form of an
    AccessibleJLayeredPane.
    A new AccessibleJLayeredPane instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJLayeredPane that serves as the
        AccessibleContext of this JLayeredPane