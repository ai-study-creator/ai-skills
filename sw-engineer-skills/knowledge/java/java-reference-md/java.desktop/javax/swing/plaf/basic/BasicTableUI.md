Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTableUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TableUI](../TableUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicTableUI

Direct Known Subclasses:
:   `SynthTableUI`

---

public class BasicTableUI
extends [TableUI](../TableUI.md "class in javax.swing.plaf")

BasicTableUI implementation

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicTableUI.FocusHandler`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicTableUI.KeyHandler`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicTableUI.MouseInputHandler`

  This class should be treated as a "protected" inner class.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected FocusListener`

  `focusListener`

  `FocusListener` that are attached to the `JTable`.

  `protected KeyListener`

  `keyListener`

  `KeyListener` that are attached to the `JTable`.

  `protected MouseInputListener`

  `mouseInputListener`

  `MouseInputListener` that are attached to the `JTable`.

  `protected CellRendererPane`

  `rendererPane`

  The instance of `CellRendererPane`.

  `protected JTable`

  `table`

  The instance of `JTable`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicTableUI()`

  Constructs a `BasicTableUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected FocusListener`

  `createFocusListener()`

  Creates the focus listener for handling keyboard navigation in the `JTable`.

  `protected KeyListener`

  `createKeyListener()`

  Creates the key listener for handling keyboard navigation in the `JTable`.

  `protected MouseInputListener`

  `createMouseInputListener()`

  Creates the mouse listener for the `JTable`.

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns a new instance of `BasicTableUI`.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(JComponent c)`

  Returns an enum indicating how the baseline of the component
  changes as the size changes.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Return the maximum size of the table.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Return the minimum size of the table.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Return the preferred size of the table.

  `protected void`

  `installDefaults()`

  Initialize JTable properties, e.g.

  `protected void`

  `installKeyboardActions()`

  Register all keyboard actions on the JTable.

  `protected void`

  `installListeners()`

  Attaches listeners to the JTable.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paint a representation of the `table` instance
  that was set in installUI().

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallKeyboardActions()`

  Unregisters keyboard actions.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### table

    protected [JTable](../../JTable.md "class in javax.swing") table

    The instance of `JTable`.
  + ### rendererPane

    protected [CellRendererPane](../../CellRendererPane.md "class in javax.swing") rendererPane

    The instance of `CellRendererPane`.
  + ### keyListener

    protected [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event") keyListener

    `KeyListener` that are attached to the `JTable`.
  + ### focusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") focusListener

    `FocusListener` that are attached to the `JTable`.
  + ### mouseInputListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") mouseInputListener

    `MouseInputListener` that are attached to the `JTable`.
* ## Constructor Details

  + ### BasicTableUI

    public BasicTableUI()

    Constructs a `BasicTableUI`.
* ## Method Details

  + ### createKeyListener

    protected [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event") createKeyListener()

    Creates the key listener for handling keyboard navigation in the `JTable`.

    Returns:
    :   the key listener for handling keyboard navigation in the `JTable`
  + ### createFocusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") createFocusListener()

    Creates the focus listener for handling keyboard navigation in the `JTable`.

    Returns:
    :   the focus listener for handling keyboard navigation in the `JTable`
  + ### createMouseInputListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") createMouseInputListener()

    Creates the mouse listener for the `JTable`.

    Returns:
    :   the mouse listener for the `JTable`
  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns a new instance of `BasicTableUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `BasicTableUI`
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

    Initialize JTable properties, e.g. font, foreground, and background.
    The font, foreground, and background properties are only set if their
    current value is either null or a UIResource, other properties are set
    if the current value is null.

    See Also:
    :   - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
  + ### installListeners

    protected void installListeners()

    Attaches listeners to the JTable.
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Register all keyboard actions on the JTable.
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

    Uninstalls default properties.
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Unregisters keyboard actions.
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
  + ### getBaselineResizeBehavior

    public [Component.BaselineResizeBehavior](../../../../java/awt/Component.BaselineResizeBehavior.md "enum class in java.awt") getBaselineResizeBehavior([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an enum indicating how the baseline of the component
    changes as the size changes.

    Overrides:
    :   `getBaselineResizeBehavior` in class `ComponentUI`

    Parameters:
    :   `c` - `JComponent` to return baseline resize behavior for

    Returns:
    :   an enum indicating how the baseline changes as the component
        size changes

    Throws:
    :   `NullPointerException` - if `c` is `null`

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../../JComponent.md#getBaseline(int,int))
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Return the minimum size of the table. The minimum height is the
    row height times the number of rows.
    The minimum width is the sum of the minimum widths of each column.

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

    Return the preferred size of the table. The preferred height is the
    row height times the number of rows.
    The preferred width is the sum of the preferred widths of each column.

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

    Return the maximum size of the table. The maximum height is the
    row heighttimes the number of rows.
    The maximum width is the sum of the maximum widths of each column.

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
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Paint a representation of the `table` instance
    that was set in installUI().

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