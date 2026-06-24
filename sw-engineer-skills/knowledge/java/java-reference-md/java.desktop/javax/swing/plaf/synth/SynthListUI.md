Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthListUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ListUI](../ListUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicListUI](../basic/BasicListUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthListUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthListUI
extends [BasicListUI](../basic/BasicListUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JList`](../../JList.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicListUI](../basic/BasicListUI.md "class in javax.swing.plaf.basic")

  `BasicListUI.FocusHandler, BasicListUI.ListDataHandler, BasicListUI.ListSelectionHandler, BasicListUI.MouseInputHandler, BasicListUI.PropertyChangeHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicListUI](../basic/BasicListUI.md "class in javax.swing.plaf.basic")

  `cellHeight, cellHeights, cellRendererChanged, cellWidth, fixedCellHeightChanged, fixedCellWidthChanged, focusListener, fontChanged, list, listDataListener, listSelectionListener, modelChanged, mouseInputListener, propertyChangeListener, prototypeCellValueChanged, rendererPane, selectionModelChanged, updateLayoutStateNeeded`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthListUI()`

  Constructs a `SynthListUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent list)`

  Creates a new UI object for the given component.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `protected void`

  `installDefaults()`

  Initializes list properties such as font, foreground, and background,
  and adds the CellRendererPane.

  `protected void`

  `installListeners()`

  Creates and installs the listeners for the JList, its model, and its
  selectionModel.

  `void`

  `paintBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `protected void`

  `uninstallDefaults()`

  Sets the list properties that have not been explicitly overridden to
  `null`.

  `protected void`

  `uninstallListeners()`

  Removes the listeners from the JList, its model, and its
  selectionModel.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicListUI](../basic/BasicListUI.md "class in javax.swing.plaf.basic")

  `convertRowToY, convertYToRow, createFocusListener, createListDataListener, createListSelectionListener, createMouseInputListener, createPropertyChangeListener, getBaseline, getBaselineResizeBehavior, getCellBounds, getPreferredSize, getRowHeight, indexToLocation, installKeyboardActions, installUI, locationToIndex, maybeUpdateLayoutState, paint, paintCell, selectNextIndex, selectPreviousIndex, uninstallKeyboardActions, uninstallUI, updateLayoutState`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getMaximumSize, getMinimumSize`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthListUI

    public SynthListUI()

    Constructs a `SynthListUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") list)

    Creates a new UI object for the given component.

    Parameters:
    :   `list` - component to create UI object for

    Returns:
    :   the UI object
  + ### update

    public void update([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Notifies this UI delegate to repaint the specified component.
    This method paints the component background, then calls
    the [`BasicListUI.paint(java.awt.Graphics, javax.swing.JComponent)`](../basic/BasicListUI.md#paint(java.awt.Graphics,javax.swing.JComponent)) method.

    In general, this method does not need to be overridden by subclasses.
    All Look and Feel rendering code should reside in the `paint` method.

    Overrides:
    :   `update` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` object used for painting
    :   `c` - the component being painted

    See Also:
    :   - [`BasicListUI.paint(java.awt.Graphics, javax.swing.JComponent)`](../basic/BasicListUI.md#paint(java.awt.Graphics,javax.swing.JComponent))
  + ### paintBorder

    public void paintBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border.

    Specified by:
    :   `paintBorder` in interface `SynthUI`

    Parameters:
    :   `context` - a component context
    :   `g` - `Graphics` to paint on
    :   `x` - the X coordinate
    :   `y` - the Y coordinate
    :   `w` - width of the border
    :   `h` - height of the border
  + ### installListeners

    protected void installListeners()

    Creates and installs the listeners for the JList, its model, and its
    selectionModel. This method is called at installUI() time.

    Overrides:
    :   `installListeners` in class `BasicListUI`

    See Also:
    :   - [`BasicListUI.installUI(javax.swing.JComponent)`](../basic/BasicListUI.md#installUI(javax.swing.JComponent))
        - [`BasicListUI.uninstallListeners()`](../basic/BasicListUI.md#uninstallListeners())
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### uninstallListeners

    protected void uninstallListeners()

    Removes the listeners from the JList, its model, and its
    selectionModel. All of the listener fields, are reset to
    null here. This method is called at uninstallUI() time,
    it should be kept in sync with installListeners.

    Overrides:
    :   `uninstallListeners` in class `BasicListUI`

    See Also:
    :   - [`BasicListUI.uninstallUI(javax.swing.JComponent)`](../basic/BasicListUI.md#uninstallUI(javax.swing.JComponent))
        - [`BasicListUI.installListeners()`](../basic/BasicListUI.md#installListeners())
  + ### installDefaults

    protected void installDefaults()

    Initializes list properties such as font, foreground, and background,
    and adds the CellRendererPane. The font, foreground, and background
    properties are only set if their current value is either null
    or a UIResource, other properties are set if the current
    value is null.

    Overrides:
    :   `installDefaults` in class `BasicListUI`

    See Also:
    :   - [`BasicListUI.uninstallDefaults()`](../basic/BasicListUI.md#uninstallDefaults())
        - [`BasicListUI.installUI(javax.swing.JComponent)`](../basic/BasicListUI.md#installUI(javax.swing.JComponent))
        - [`CellRendererPane`](../../CellRendererPane.md "class in javax.swing")
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Sets the list properties that have not been explicitly overridden to
    `null`. A property is considered overridden if its current value
    is not a `UIResource`.

    Overrides:
    :   `uninstallDefaults` in class `BasicListUI`

    See Also:
    :   - [`BasicListUI.installDefaults()`](../basic/BasicListUI.md#installDefaults())
        - [`BasicListUI.uninstallUI(javax.swing.JComponent)`](../basic/BasicListUI.md#uninstallUI(javax.swing.JComponent))
        - [`CellRendererPane`](../../CellRendererPane.md "class in javax.swing")
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.