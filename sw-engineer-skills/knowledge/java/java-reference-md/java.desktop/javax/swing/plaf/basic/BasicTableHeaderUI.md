Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTableHeaderUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TableHeaderUI](../TableHeaderUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicTableHeaderUI

Direct Known Subclasses:
:   `SynthTableHeaderUI`

---

public class BasicTableHeaderUI
extends [TableHeaderUI](../TableHeaderUI.md "class in javax.swing.plaf")

BasicTableHeaderUI implementation

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicTableHeaderUI.MouseInputHandler`

  This class should be treated as a "protected" inner class.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected JTableHeader`

  `header`

  The `JTableHeader` that is delegating the painting to this UI.

  `protected MouseInputListener`

  `mouseInputListener`

  Listeners that are attached to the `JTable`

  `protected CellRendererPane`

  `rendererPane`

  The instance of `CellRendererPane`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicTableHeaderUI()`

  Constructs a `BasicTableHeaderUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected MouseInputListener`

  `createMouseInputListener()`

  Creates the mouse listener for the `JTableHeader`.

  `static ComponentUI`

  `createUI(JComponent h)`

  Returns a new instance of `BasicTableHeaderUI`.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Return the maximum size of the header.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Return the minimum size of the header.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Return the preferred size of the header.

  `protected int`

  `getRolloverColumn()`

  Returns the index of the column header over which the mouse
  currently is.

  `protected void`

  `installDefaults()`

  Initializes JTableHeader properties such as font, foreground, and background.

  `protected void`

  `installKeyboardActions()`

  Register all keyboard actions on the JTableHeader.

  `protected void`

  `installListeners()`

  Attaches listeners to the JTableHeader.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `protected void`

  `rolloverColumnUpdated(int oldColumn,
  int newColumn)`

  This method gets called every time when a rollover column in the table
  header is updated.

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties

  `protected void`

  `uninstallKeyboardActions()`

  Unregisters default key actions.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaselineResizeBehavior, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### header

    protected [JTableHeader](../../table/JTableHeader.md "class in javax.swing.table") header

    The `JTableHeader` that is delegating the painting to this UI.
  + ### rendererPane

    protected [CellRendererPane](../../CellRendererPane.md "class in javax.swing") rendererPane

    The instance of `CellRendererPane`.
  + ### mouseInputListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") mouseInputListener

    Listeners that are attached to the `JTable`
* ## Constructor Details

  + ### BasicTableHeaderUI

    public BasicTableHeaderUI()

    Constructs a `BasicTableHeaderUI`.
* ## Method Details

  + ### createMouseInputListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") createMouseInputListener()

    Creates the mouse listener for the `JTableHeader`.

    Returns:
    :   the mouse listener for the `JTableHeader`
  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") h)

    Returns a new instance of `BasicTableHeaderUI`.

    Parameters:
    :   `h` - a component.

    Returns:
    :   a new instance of `BasicTableHeaderUI`
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Configures the specified component appropriately for the look and feel.
    This method is invoked when the `ComponentUI` instance is being installed
    as the UI delegate on the specified component. This method should
    completely configure the component for the look and feel,
    including the following:
    1. Install default property values for color, fonts, borders,
       icons, opacity, etc. on the component. Whenever possible,
       property values initialized by the client program should *not*
       be overridden.+ Install a `LayoutManager` on the component if necessary.+ Create/add any required sub-components to the component.+ Create/install event listeners on the component.+ Create/install a `PropertyChangeListener` on the component in order
               to detect and respond to component property changes appropriately.+ Install keyboard UI (mnemonics, traversal, etc.) on the component.+ Initialize any appropriate instance data.

    Overrides:
    :   `installUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component where this UI delegate is being installed

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installDefaults

    protected void installDefaults()

    Initializes JTableHeader properties such as font, foreground, and background.
    The font, foreground, and background properties are only set if their
    current value is either null or a UIResource, other properties are set
    if the current value is null.

    See Also:
    :   - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
  + ### installListeners

    protected void installListeners()

    Attaches listeners to the JTableHeader.
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Register all keyboard actions on the JTableHeader.
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Reverses configuration which was done on the specified component during
    `installUI`. This method is invoked when this
    `UIComponent` instance is being removed as the UI delegate
    for the specified component. This method should undo the
    configuration performed in `installUI`, being careful to
    leave the `JComponent` instance in a clean state (no
    extraneous listeners, look-and-feel-specific property objects, etc.).
    This should include the following:
    1. Remove any UI-set borders from the component.+ Remove any UI-set layout managers on the component.+ Remove any UI-added sub-components from the component.+ Remove any UI-added event/property listeners from the component.+ Remove any UI-installed keyboard UI from the component.+ Nullify any allocated instance data objects to allow for GC.

    Overrides:
    :   `uninstallUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component from which this UI delegate is being removed;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Unregisters default key actions.
  + ### getRolloverColumn

    protected int getRolloverColumn()

    Returns the index of the column header over which the mouse
    currently is. When the mouse is not over the table header,
    -1 is returned.

    Returns:
    :   the index of the current rollover column

    Since:
    :   1.6

    See Also:
    :   - [`rolloverColumnUpdated(int, int)`](#rolloverColumnUpdated(int,int))
  + ### rolloverColumnUpdated

    protected void rolloverColumnUpdated(int oldColumn,
    int newColumn)

    This method gets called every time when a rollover column in the table
    header is updated. Every look and feel that supports a rollover effect
    in a table header should override this method and repaint the header.

    Parameters:
    :   `oldColumn` - the index of the previous rollover column or -1 if the
        mouse was not over a column
    :   `newColumn` - the index of the new rollover column or -1 if the mouse
        is not over a column

    Since:
    :   1.6

    See Also:
    :   - [`getRolloverColumn()`](#getRolloverColumn())
        - [`JTableHeader.getHeaderRect(int)`](../../table/JTableHeader.md#getHeaderRect(int))
  + ### getBaseline

    public int getBaseline([JComponent](../../JComponent.md "class in javax.swing") c,
    int width,
    int height)

    Returns the baseline.

    Overrides:
    :   `getBaseline` in class `ComponentUI`

    Parameters:
    :   `c` - `JComponent` baseline is being requested for
    :   `width` - the width to get the baseline for
    :   `height` - the height to get the baseline for

    Returns:
    :   baseline or a value < 0 indicating there is no reasonable
        baseline

    Throws:
    :   `NullPointerException` - if `c` is `null`
    :   `IllegalArgumentException` - if width or height is < 0

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../../JComponent.md#getBaseline(int,int))
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Paints the specified component appropriately for the look and feel.
    This method is invoked from the `ComponentUI.update` method when
    the specified component is being painted. Subclasses should override
    this method and use the specified `Graphics` object to
    render the content of the component.

    Overrides:
    :   `paint` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Return the minimum size of the header. The minimum width is the sum
    of the minimum widths of each column (plus inter-cell spacing).

    Overrides:
    :   `getMinimumSize` in class `ComponentUI`

    Parameters:
    :   `c` - the component whose minimum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Return the preferred size of the header. The preferred height is the
    maximum of the preferred heights of all of the components provided
    by the header renderers. The preferred width is the sum of the
    preferred widths of each column (plus inter-cell spacing).

    Overrides:
    :   `getPreferredSize` in class `ComponentUI`

    Parameters:
    :   `c` - the component whose preferred size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object containing given component's preferred
        size appropriate for the look and feel

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### getMaximumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Return the maximum size of the header. The maximum width is the sum
    of the maximum widths of each column (plus inter-cell spacing).

    Overrides:
    :   `getMaximumSize` in class `ComponentUI`

    Parameters:
    :   `c` - the component whose maximum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`JComponent.getMaximumSize()`](../../JComponent.md#getMaximumSize())
        - [`LayoutManager2.maximumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager2.md#maximumLayoutSize(java.awt.Container))