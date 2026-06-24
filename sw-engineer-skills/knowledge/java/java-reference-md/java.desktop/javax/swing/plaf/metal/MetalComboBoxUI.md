Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalComboBoxUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ComboBoxUI](../ComboBoxUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicComboBoxUI](../basic/BasicComboBoxUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalComboBoxUI

---

public class MetalComboBoxUI
extends [BasicComboBoxUI](../basic/BasicComboBoxUI.md "class in javax.swing.plaf.basic")

Metal UI for JComboBox

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`MetalComboBoxEditor`](MetalComboBoxEditor.md "class in javax.swing.plaf.metal")
    * [`MetalComboBoxButton`](MetalComboBoxButton.md "class in javax.swing.plaf.metal")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `MetalComboBoxUI.MetalComboBoxLayoutManager`

  This class should be treated as a "protected" inner class.

  `class`

  `MetalComboBoxUI.MetalComboPopup`

  Deprecated.

  As of Java 2 platform v1.4.

  `class`

  `MetalComboBoxUI.MetalPropertyChangeListener`

  This class should be treated as a "protected" inner class.

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicComboBoxUI](../basic/BasicComboBoxUI.md "class in javax.swing.plaf.basic")

  `BasicComboBoxUI.ComboBoxLayoutManager, BasicComboBoxUI.FocusHandler, BasicComboBoxUI.ItemHandler, BasicComboBoxUI.KeyHandler, BasicComboBoxUI.ListDataHandler, BasicComboBoxUI.PropertyChangeHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicComboBoxUI](../basic/BasicComboBoxUI.md "class in javax.swing.plaf.basic")

  `arrowButton, cachedMinimumSize, comboBox, currentValuePane, editor, focusListener, hasFocus, isMinimumSizeDirty, itemListener, keyListener, listBox, listDataListener, padding, popup, popupKeyListener, popupMouseListener, popupMouseMotionListener, propertyChangeListener, squareButton`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalComboBoxUI()`

  Constructs a `MetalComboBoxUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `configureEditor()`

  This protected method is implementation specific and should be private.

  `protected JButton`

  `createArrowButton()`

  Creates a button which will be used as the control to show or hide
  the popup portion of the combo box.

  `protected ComboBoxEditor`

  `createEditor()`

  Creates the default editor that will be used in editable combo boxes.

  `protected LayoutManager`

  `createLayoutManager()`

  Creates a layout manager for managing the components which make up the
  combo box.

  `protected ComboPopup`

  `createPopup()`

  Creates the popup portion of the combo box.

  `PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates a `PropertyChangeListener` which will be added to
  the combo box.

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs an instance of `MetalComboBoxUI`.

  `protected void`

  `editablePropertyChanged(PropertyChangeEvent e)`

  Deprecated.

  As of Java 2 platform v1.4.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `Dimension`

  `getMinimumSize(JComponent c)`

  The minimum size is the size of the display area plus insets plus the button.

  `void`

  `layoutComboBox(Container parent,
  MetalComboBoxUI.MetalComboBoxLayoutManager manager)`

  Lays out the `JComboBox` in the `parent` container.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `void`

  `paintCurrentValue(Graphics g,
  Rectangle bounds,
  boolean hasFocus)`

  If necessary paints the currently selected item.

  `void`

  `paintCurrentValueBackground(Graphics g,
  Rectangle bounds,
  boolean hasFocus)`

  If necessary paints the background of the currently selected item.

  `protected void`

  `removeListeners()`

  Deprecated.

  As of Java 2 platform v1.4.

  `void`

  `unconfigureEditor()`

  This protected method is implementation specific and should be private.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicComboBoxUI](../basic/BasicComboBoxUI.md "class in javax.swing.plaf.basic")

  `addEditor, configureArrowButton, createFocusListener, createItemListener, createKeyListener, createListDataListener, createRenderer, getAccessibleChild, getAccessibleChildrenCount, getBaselineResizeBehavior, getDefaultSize, getDisplaySize, getInsets, getMaximumSize, getPreferredSize, getSizeForComponent, installComponents, installDefaults, installKeyboardActions, installListeners, installUI, isFocusTraversable, isNavigationKey, isPopupVisible, rectangleForCurrentValue, removeEditor, selectNextPossibleValue, selectPreviousPossibleValue, setPopupVisible, toggleOpenClose, unconfigureArrowButton, uninstallComponents, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalComboBoxUI

    public MetalComboBoxUI()

    Constructs a `MetalComboBoxUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs an instance of `MetalComboBoxUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MetalComboBoxUI`
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
    :   `paint` in class `BasicComboBoxUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
  + ### paintCurrentValue

    public void paintCurrentValue([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") bounds,
    boolean hasFocus)

    If necessary paints the currently selected item.

    Overrides:
    :   `paintCurrentValue` in class `BasicComboBoxUI`

    Parameters:
    :   `g` - Graphics to paint to
    :   `bounds` - Region to paint current value to
    :   `hasFocus` - whether or not the JComboBox has focus

    Throws:
    :   `NullPointerException` - if any of the arguments are null.

    Since:
    :   1.5
  + ### paintCurrentValueBackground

    public void paintCurrentValueBackground([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") bounds,
    boolean hasFocus)

    If necessary paints the background of the currently selected item.

    Overrides:
    :   `paintCurrentValueBackground` in class `BasicComboBoxUI`

    Parameters:
    :   `g` - Graphics to paint to
    :   `bounds` - Region to paint background to
    :   `hasFocus` - whether or not the JComboBox has focus

    Throws:
    :   `NullPointerException` - if any of the arguments are null.

    Since:
    :   1.5
  + ### getBaseline

    public int getBaseline([JComponent](../../JComponent.md "class in javax.swing") c,
    int width,
    int height)

    Returns the baseline.

    Overrides:
    :   `getBaseline` in class `BasicComboBoxUI`

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
  + ### createEditor

    protected [ComboBoxEditor](../../ComboBoxEditor.md "interface in javax.swing") createEditor()

    Description copied from class: `BasicComboBoxUI`

    Creates the default editor that will be used in editable combo boxes.
    A default editor will be used only if an editor has not been
    explicitly set with `setEditor`.

    Overrides:
    :   `createEditor` in class `BasicComboBoxUI`

    Returns:
    :   a `ComboBoxEditor` used for the combo box

    See Also:
    :   - [`JComboBox.setEditor(javax.swing.ComboBoxEditor)`](../../JComboBox.md#setEditor(javax.swing.ComboBoxEditor))
  + ### createPopup

    protected [ComboPopup](../basic/ComboPopup.md "interface in javax.swing.plaf.basic") createPopup()

    Description copied from class: `BasicComboBoxUI`

    Creates the popup portion of the combo box.

    Overrides:
    :   `createPopup` in class `BasicComboBoxUI`

    Returns:
    :   an instance of `ComboPopup`

    See Also:
    :   - [`ComboPopup`](../basic/ComboPopup.md "interface in javax.swing.plaf.basic")
  + ### createArrowButton

    protected [JButton](../../JButton.md "class in javax.swing") createArrowButton()

    Description copied from class: `BasicComboBoxUI`

    Creates a button which will be used as the control to show or hide
    the popup portion of the combo box.

    Overrides:
    :   `createArrowButton` in class `BasicComboBoxUI`

    Returns:
    :   a button which represents the popup control
  + ### createPropertyChangeListener

    public [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Description copied from class: `BasicComboBoxUI`

    Creates a `PropertyChangeListener` which will be added to
    the combo box. If this method returns null then it will not
    be added to the combo box.

    Overrides:
    :   `createPropertyChangeListener` in class `BasicComboBoxUI`

    Returns:
    :   an instance of a `PropertyChangeListener` or null
  + ### editablePropertyChanged

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected void editablePropertyChanged([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Deprecated.

    As of Java 2 platform v1.4.

    As of Java 2 platform v1.4 this method is no longer used. Do not call or
    override. All the functionality of this method is in the
    MetalPropertyChangeListener.

    Parameters:
    :   `e` - an instance of `PropertyChangeEvent`
  + ### createLayoutManager

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayoutManager()

    Description copied from class: `BasicComboBoxUI`

    Creates a layout manager for managing the components which make up the
    combo box.

    Overrides:
    :   `createLayoutManager` in class `BasicComboBoxUI`

    Returns:
    :   an instance of a layout manager
  + ### layoutComboBox

    public void layoutComboBox([Container](../../../../java/awt/Container.md "class in java.awt") parent,
    [MetalComboBoxUI.MetalComboBoxLayoutManager](MetalComboBoxUI.MetalComboBoxLayoutManager.md "class in javax.swing.plaf.metal") manager)

    Lays out the `JComboBox` in the `parent` container.

    Parameters:
    :   `parent` - a container
    :   `manager` - an instance of `MetalComboBoxLayoutManager`
  + ### removeListeners

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected void removeListeners()

    Deprecated.

    As of Java 2 platform v1.4.

    As of Java 2 platform v1.4 this method is no
    longer used.
  + ### configureEditor

    public void configureEditor()

    Description copied from class: `BasicComboBoxUI`

    This protected method is implementation specific and should be private.
    do not call or override.

    Overrides:
    :   `configureEditor` in class `BasicComboBoxUI`

    See Also:
    :   - [`BasicComboBoxUI.addEditor()`](../basic/BasicComboBoxUI.md#addEditor())
  + ### unconfigureEditor

    public void unconfigureEditor()

    Description copied from class: `BasicComboBoxUI`

    This protected method is implementation specific and should be private.
    Do not call or override.

    Overrides:
    :   `unconfigureEditor` in class `BasicComboBoxUI`

    See Also:
    :   - [`BasicComboBoxUI.addEditor()`](../basic/BasicComboBoxUI.md#addEditor())
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicComboBoxUI`

    The minimum size is the size of the display area plus insets plus the button.

    Overrides:
    :   `getMinimumSize` in class `BasicComboBoxUI`

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