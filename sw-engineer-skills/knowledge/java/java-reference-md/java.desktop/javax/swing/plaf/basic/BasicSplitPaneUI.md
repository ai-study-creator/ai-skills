Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSplitPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.SplitPaneUI](../SplitPaneUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicSplitPaneUI

Direct Known Subclasses:
:   `MetalSplitPaneUI`, `SynthSplitPaneUI`

---

public class BasicSplitPaneUI
extends [SplitPaneUI](../SplitPaneUI.md "class in javax.swing.plaf")

A Basic L&F implementation of the SplitPaneUI.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicSplitPaneUI.BasicHorizontalLayoutManager`

  LayoutManager for JSplitPanes that have an orientation of
  HORIZONTAL\_SPLIT.

  `class`

  `BasicSplitPaneUI.BasicVerticalLayoutManager`

  LayoutManager used for JSplitPanes with an orientation of
  VERTICAL\_SPLIT.

  `class`

  `BasicSplitPaneUI.FocusHandler`

  Implementation of the FocusListener that the JSplitPane UI uses.

  `class`

  `BasicSplitPaneUI.KeyboardDownRightHandler`

  Implementation of an ActionListener that the JSplitPane UI uses for
  handling specific key presses.

  `class`

  `BasicSplitPaneUI.KeyboardEndHandler`

  Implementation of an ActionListener that the JSplitPane UI uses for
  handling specific key presses.

  `class`

  `BasicSplitPaneUI.KeyboardHomeHandler`

  Implementation of an ActionListener that the JSplitPane UI uses for
  handling specific key presses.

  `class`

  `BasicSplitPaneUI.KeyboardResizeToggleHandler`

  Implementation of an ActionListener that the JSplitPane UI uses for
  handling specific key presses.

  `class`

  `BasicSplitPaneUI.KeyboardUpLeftHandler`

  Implementation of an ActionListener that the JSplitPane UI uses for
  handling specific key presses.

  `class`

  `BasicSplitPaneUI.PropertyHandler`

  Implementation of the PropertyChangeListener
  that the JSplitPane UI uses.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `beginDragDividerLocation`

  Location of the divider when the dragging session began.

  `protected BasicSplitPaneDivider`

  `divider`

  Instance of the divider for this JSplitPane.

  `protected KeyStroke`

  `dividerResizeToggleKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected int`

  `dividerSize`

  The size of the divider while the dragging session is valid.

  `protected KeyStroke`

  `downKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected boolean`

  `draggingHW`

  Set to true in startDragging if any of the children
  (not including the nonContinuousLayoutDivider) are heavy weights.

  `protected KeyStroke`

  `endKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected FocusListener`

  `focusListener`

  Instance of the FocusListener for this JSplitPane.

  `protected KeyStroke`

  `homeKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected static int`

  `KEYBOARD_DIVIDER_MOVE_OFFSET`

  How far (relative) the divider does move when it is moved around by
  the cursor keys on the keyboard.

  `protected ActionListener`

  `keyboardDownRightListener`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected ActionListener`

  `keyboardEndListener`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected ActionListener`

  `keyboardHomeListener`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected ActionListener`

  `keyboardResizeToggleListener`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected ActionListener`

  `keyboardUpLeftListener`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected BasicSplitPaneUI.BasicHorizontalLayoutManager`

  `layoutManager`

  LayoutManager that is created and placed into the split pane.

  `protected KeyStroke`

  `leftKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected static final String`

  `NON_CONTINUOUS_DIVIDER`

  The divider used for non-continuous layout is added to the split pane
  with this object.

  `protected Component`

  `nonContinuousLayoutDivider`

  Instance for the shadow of the divider when non continuous layout
  is being used.

  `protected PropertyChangeListener`

  `propertyChangeListener`

  Instance of the PropertyChangeListener for this JSplitPane.

  `protected KeyStroke`

  `rightKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected JSplitPane`

  `splitPane`

  JSplitPane instance this instance is providing
  the look and feel for.

  `protected KeyStroke`

  `upKey`

  Deprecated.

  As of Java 2 platform v1.3.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicSplitPaneUI()`

  Constructs a `BasicSplitPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `BasicSplitPaneDivider`

  `createDefaultDivider()`

  Creates the default divider.

  `protected Component`

  `createDefaultNonContinuousLayoutDivider()`

  Returns the default non continuous layout divider, which is an
  instance of `Canvas` that fills in the background with dark gray.

  `protected FocusListener`

  `createFocusListener()`

  Creates a `FocusListener` for the `JSplitPane` UI.

  `protected ActionListener`

  `createKeyboardDownRightListener()`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected ActionListener`

  `createKeyboardEndListener()`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected ActionListener`

  `createKeyboardHomeListener()`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected ActionListener`

  `createKeyboardResizeToggleListener()`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected ActionListener`

  `createKeyboardUpLeftListener()`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates a `PropertyChangeListener` for the `JSplitPane` UI.

  `static ComponentUI`

  `createUI(JComponent x)`

  Creates a new instance of `BasicSplitPaneUI`.

  `protected void`

  `dragDividerTo(int location)`

  Messaged during a dragging session to move the divider to the
  passed in `location`.

  `protected void`

  `finishDraggingTo(int location)`

  Messaged to finish the dragging session.

  `void`

  `finishedPaintingChildren(JSplitPane sp,
  Graphics g)`

  Called when the specified split pane has finished painting
  its children.

  `BasicSplitPaneDivider`

  `getDivider()`

  Returns the divider between the top Components.

  `protected int`

  `getDividerBorderSize()`

  Deprecated.

  As of Java 2 platform v1.3, instead set the border on the
  divider.

  `int`

  `getDividerLocation(JSplitPane jc)`

  Returns the location of the divider, which may differ from what
  the splitpane thinks the location of the divider is.

  `Insets`

  `getInsets(JComponent jc)`

  Returns the insets.

  `int`

  `getLastDragLocation()`

  Returns the last drag location of the `JSplitPane`.

  `int`

  `getMaximumDividerLocation(JSplitPane jc)`

  Gets the maximum location of the divider.

  `Dimension`

  `getMaximumSize(JComponent jc)`

  Returns the maximum size for the passed in component,
  This is passed off to the current layout manager.

  `int`

  `getMinimumDividerLocation(JSplitPane jc)`

  Gets the minimum location of the divider.

  `Dimension`

  `getMinimumSize(JComponent jc)`

  Returns the minimum size for the passed in component,
  This is passed off to the current layout manager.

  `Component`

  `getNonContinuousLayoutDivider()`

  Returns the divider to use when the `JSplitPane` is configured to
  not continuously layout.

  `int`

  `getOrientation()`

  Returns the orientation for the `JSplitPane`.

  `Dimension`

  `getPreferredSize(JComponent jc)`

  Returns the preferred size for the passed in component,
  This is passed off to the current layout manager.

  `JSplitPane`

  `getSplitPane()`

  Returns the `JSplitPane` this instance is currently contained
  in.

  `protected void`

  `installDefaults()`

  Installs the UI defaults.

  `protected void`

  `installKeyboardActions()`

  Installs the keyboard actions for the UI.

  `protected void`

  `installListeners()`

  Installs the event listeners for the UI.

  `void`

  `installUI(JComponent c)`

  Installs the UI.

  `boolean`

  `isContinuousLayout()`

  Determines whether the `JSplitPane` is set to use a continuous layout.

  `void`

  `paint(Graphics g,
  JComponent jc)`

  Paints the specified component appropriately for the look and feel.

  `protected void`

  `resetLayoutManager()`

  Resets the layout manager based on orientation and messages it
  with invalidateLayout to pull in appropriate Components.

  `void`

  `resetToPreferredSizes(JSplitPane jc)`

  Messaged to reset the preferred sizes.

  `void`

  `setContinuousLayout(boolean b)`

  Turn continuous layout on/off.

  `void`

  `setDividerLocation(JSplitPane jc,
  int location)`

  Sets the location of the divider to location.

  `void`

  `setLastDragLocation(int l)`

  Set the last drag location of the `JSplitPane`.

  `protected void`

  `setNonContinuousLayoutDivider(Component newDivider)`

  Sets the divider to use when the `JSplitPane` is configured to
  not continuously layout.

  `protected void`

  `setNonContinuousLayoutDivider(Component newDivider,
  boolean rememberSizes)`

  Sets the divider to use.

  `void`

  `setOrientation(int orientation)`

  Set the orientation for the `JSplitPane`.

  `protected void`

  `startDragging()`

  Should be messaged before the dragging session starts, resets
  lastDragLocation and dividerSize.

  `protected void`

  `uninstallDefaults()`

  Uninstalls the UI defaults.

  `protected void`

  `uninstallKeyboardActions()`

  Uninstalls the keyboard actions for the UI.

  `protected void`

  `uninstallListeners()`

  Uninstalls the event listeners for the UI.

  `void`

  `uninstallUI(JComponent c)`

  Uninstalls the UI.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### NON\_CONTINUOUS\_DIVIDER

    protected static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") NON\_CONTINUOUS\_DIVIDER

    The divider used for non-continuous layout is added to the split pane
    with this object.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicSplitPaneUI.NON_CONTINUOUS_DIVIDER)
  + ### KEYBOARD\_DIVIDER\_MOVE\_OFFSET

    protected static int KEYBOARD\_DIVIDER\_MOVE\_OFFSET

    How far (relative) the divider does move when it is moved around by
    the cursor keys on the keyboard.
  + ### splitPane

    protected [JSplitPane](../../JSplitPane.md "class in javax.swing") splitPane

    JSplitPane instance this instance is providing
    the look and feel for.
  + ### layoutManager

    protected [BasicSplitPaneUI.BasicHorizontalLayoutManager](BasicSplitPaneUI.BasicHorizontalLayoutManager.md "class in javax.swing.plaf.basic") layoutManager

    LayoutManager that is created and placed into the split pane.
  + ### divider

    protected [BasicSplitPaneDivider](BasicSplitPaneDivider.md "class in javax.swing.plaf.basic") divider

    Instance of the divider for this JSplitPane.
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    Instance of the PropertyChangeListener for this JSplitPane.
  + ### focusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") focusListener

    Instance of the FocusListener for this JSplitPane.
  + ### dividerSize

    protected int dividerSize

    The size of the divider while the dragging session is valid.
  + ### nonContinuousLayoutDivider

    protected [Component](../../../../java/awt/Component.md "class in java.awt") nonContinuousLayoutDivider

    Instance for the shadow of the divider when non continuous layout
    is being used.
  + ### draggingHW

    protected boolean draggingHW

    Set to true in startDragging if any of the children
    (not including the nonContinuousLayoutDivider) are heavy weights.
  + ### beginDragDividerLocation

    protected int beginDragDividerLocation

    Location of the divider when the dragging session began.
  + ### upKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") upKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### downKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") downKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### leftKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") leftKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### rightKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") rightKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### homeKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") homeKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### endKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") endKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### dividerResizeToggleKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") dividerResizeToggleKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### keyboardUpLeftListener

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") keyboardUpLeftListener

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### keyboardDownRightListener

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") keyboardDownRightListener

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### keyboardHomeListener

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") keyboardHomeListener

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### keyboardEndListener

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") keyboardEndListener

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### keyboardResizeToggleListener

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") keyboardResizeToggleListener

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
* ## Constructor Details

  + ### BasicSplitPaneUI

    public BasicSplitPaneUI()

    Constructs a `BasicSplitPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Creates a new instance of `BasicSplitPaneUI`.

    Parameters:
    :   `x` - a component

    Returns:
    :   a new instance of `BasicSplitPaneUI`
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Installs the UI.

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

    Installs the UI defaults.
  + ### installListeners

    protected void installListeners()

    Installs the event listeners for the UI.
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Installs the keyboard actions for the UI.
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Uninstalls the UI.

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

    Uninstalls the UI defaults.
  + ### uninstallListeners

    protected void uninstallListeners()

    Uninstalls the event listeners for the UI.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Uninstalls the keyboard actions for the UI.
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Creates a `PropertyChangeListener` for the `JSplitPane` UI.

    Returns:
    :   an instance of `PropertyChangeListener`
  + ### createFocusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") createFocusListener()

    Creates a `FocusListener` for the `JSplitPane` UI.

    Returns:
    :   an instance of `FocusListener`
  + ### createKeyboardUpLeftListener

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") createKeyboardUpLeftListener()

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this method is no longer used.
    Subclassers previously using this method should instead create
    an `Action` wrapping the `ActionListener`, and register
    that `Action` by overriding `installKeyboardActions`
    and placing the `Action` in the `SplitPane's ActionMap`.
    Please refer to the key bindings specification for further details.

    Creates an `ActionListener` for the `JSplitPane` UI that
    listens for specific key presses.

    Returns:
    :   an instance of `ActionListener`
  + ### createKeyboardDownRightListener

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") createKeyboardDownRightListener()

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this method is no longer used.
    Subclassers previously using this method should instead create
    an `Action` wrapping the `ActionListener`, and register
    that `Action` by overriding `installKeyboardActions`
    and placing the `Action` in the `SplitPane's ActionMap`.
    Please refer to the key bindings specification for further details.

    Creates an `ActionListener` for the `JSplitPane` UI that
    listens for specific key presses.

    Returns:
    :   an instance of `ActionListener`
  + ### createKeyboardHomeListener

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") createKeyboardHomeListener()

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this method is no longer used.
    Subclassers previously using this method should instead create
    an `Action` wrapping the `ActionListener`, and register
    that `Action` by overriding `installKeyboardActions`
    and placing the `Action` in the `SplitPane's ActionMap`.
    Please refer to the key bindings specification for further details.

    Creates an `ActionListener` for the `JSplitPane` UI that
    listens for specific key presses.

    Returns:
    :   an instance of `ActionListener`
  + ### createKeyboardEndListener

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") createKeyboardEndListener()

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this method is no longer used.
    Subclassers previously using this method should instead create
    an `Action` wrapping the `ActionListener`, and register
    that `Action` by overriding `installKeyboardActions`
    and placing the `Action` in the `SplitPane's ActionMap`.
    Please refer to the key bindings specification for further details.

    Creates an `ActionListener` for the `JSplitPane` UI that
    listens for specific key presses.

    Returns:
    :   an instance of `ActionListener`
  + ### createKeyboardResizeToggleListener

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") createKeyboardResizeToggleListener()

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this method is no longer used.
    Subclassers previously using this method should instead create
    an `Action` wrapping the `ActionListener`, and register
    that `Action` by overriding `installKeyboardActions`
    and placing the `Action` in the `SplitPane's ActionMap`.
    Please refer to the key bindings specification for further details.

    Creates an `ActionListener` for the `JSplitPane` UI that
    listens for specific key presses.

    Returns:
    :   an instance of `ActionListener`
  + ### getOrientation

    public int getOrientation()

    Returns the orientation for the `JSplitPane`.

    Returns:
    :   the orientation
  + ### setOrientation

    public void setOrientation(int orientation)

    Set the orientation for the `JSplitPane`.

    Parameters:
    :   `orientation` - the orientation
  + ### isContinuousLayout

    public boolean isContinuousLayout()

    Determines whether the `JSplitPane` is set to use a continuous layout.

    Returns:
    :   `true` if a continuous layout is set
  + ### setContinuousLayout

    public void setContinuousLayout(boolean b)

    Turn continuous layout on/off.

    Parameters:
    :   `b` - if `true` the continuous layout turns on
  + ### getLastDragLocation

    public int getLastDragLocation()

    Returns the last drag location of the `JSplitPane`.

    Returns:
    :   the last drag location
  + ### setLastDragLocation

    public void setLastDragLocation(int l)

    Set the last drag location of the `JSplitPane`.

    Parameters:
    :   `l` - the drag location
  + ### getDivider

    public [BasicSplitPaneDivider](BasicSplitPaneDivider.md "class in javax.swing.plaf.basic") getDivider()

    Returns the divider between the top Components.

    Returns:
    :   the divider between the top Components
  + ### createDefaultNonContinuousLayoutDivider

    protected [Component](../../../../java/awt/Component.md "class in java.awt") createDefaultNonContinuousLayoutDivider()

    Returns the default non continuous layout divider, which is an
    instance of `Canvas` that fills in the background with dark gray.

    Returns:
    :   the default non continuous layout divider
  + ### setNonContinuousLayoutDivider

    protected void setNonContinuousLayoutDivider([Component](../../../../java/awt/Component.md "class in java.awt") newDivider)

    Sets the divider to use when the `JSplitPane` is configured to
    not continuously layout. This divider will only be used during a
    dragging session. It is recommended that the passed in component
    be a heavy weight.

    Parameters:
    :   `newDivider` - the new divider
  + ### setNonContinuousLayoutDivider

    protected void setNonContinuousLayoutDivider([Component](../../../../java/awt/Component.md "class in java.awt") newDivider,
    boolean rememberSizes)

    Sets the divider to use.

    Parameters:
    :   `newDivider` - the new divider
    :   `rememberSizes` - if `true` the pane size is remembered
  + ### getNonContinuousLayoutDivider

    public [Component](../../../../java/awt/Component.md "class in java.awt") getNonContinuousLayoutDivider()

    Returns the divider to use when the `JSplitPane` is configured to
    not continuously layout. This divider will only be used during a
    dragging session.

    Returns:
    :   the divider
  + ### getSplitPane

    public [JSplitPane](../../JSplitPane.md "class in javax.swing") getSplitPane()

    Returns the `JSplitPane` this instance is currently contained
    in.

    Returns:
    :   the instance of `JSplitPane`
  + ### createDefaultDivider

    public [BasicSplitPaneDivider](BasicSplitPaneDivider.md "class in javax.swing.plaf.basic") createDefaultDivider()

    Creates the default divider.

    Returns:
    :   the default divider
  + ### resetToPreferredSizes

    public void resetToPreferredSizes([JSplitPane](../../JSplitPane.md "class in javax.swing") jc)

    Messaged to reset the preferred sizes.

    Specified by:
    :   `resetToPreferredSizes` in class `SplitPaneUI`

    Parameters:
    :   `jc` - a `JSplitPane`
  + ### setDividerLocation

    public void setDividerLocation([JSplitPane](../../JSplitPane.md "class in javax.swing") jc,
    int location)

    Sets the location of the divider to location.

    Specified by:
    :   `setDividerLocation` in class `SplitPaneUI`

    Parameters:
    :   `jc` - a `JSplitPane`
    :   `location` - an integer specifying the location of the divider
  + ### getDividerLocation

    public int getDividerLocation([JSplitPane](../../JSplitPane.md "class in javax.swing") jc)

    Returns the location of the divider, which may differ from what
    the splitpane thinks the location of the divider is.

    Specified by:
    :   `getDividerLocation` in class `SplitPaneUI`

    Parameters:
    :   `jc` - a `JSplitPane`

    Returns:
    :   an integer specifying the location of the divider
  + ### getMinimumDividerLocation

    public int getMinimumDividerLocation([JSplitPane](../../JSplitPane.md "class in javax.swing") jc)

    Gets the minimum location of the divider.

    Specified by:
    :   `getMinimumDividerLocation` in class `SplitPaneUI`

    Parameters:
    :   `jc` - a `JSplitPane`

    Returns:
    :   and integer specifying the minimum location of the divider
  + ### getMaximumDividerLocation

    public int getMaximumDividerLocation([JSplitPane](../../JSplitPane.md "class in javax.swing") jc)

    Gets the maximum location of the divider.

    Specified by:
    :   `getMaximumDividerLocation` in class `SplitPaneUI`

    Parameters:
    :   `jc` - a `JSplitPane`

    Returns:
    :   an integer specifying the maximum location of the divider
  + ### finishedPaintingChildren

    public void finishedPaintingChildren([JSplitPane](../../JSplitPane.md "class in javax.swing") sp,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Called when the specified split pane has finished painting
    its children.

    Specified by:
    :   `finishedPaintingChildren` in class `SplitPaneUI`

    Parameters:
    :   `sp` - a `JSplitPane`
    :   `g` - the `Graphics` context
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") jc)

    Paints the specified component appropriately for the look and feel.
    This method is invoked from the `ComponentUI.update` method when
    the specified component is being painted. Subclasses should override
    this method and use the specified `Graphics` object to
    render the content of the component.

    Overrides:
    :   `paint` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `jc` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") jc)

    Returns the preferred size for the passed in component,
    This is passed off to the current layout manager.

    Overrides:
    :   `getPreferredSize` in class `ComponentUI`

    Parameters:
    :   `jc` - the component whose preferred size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object containing given component's preferred
        size appropriate for the look and feel

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") jc)

    Returns the minimum size for the passed in component,
    This is passed off to the current layout manager.

    Overrides:
    :   `getMinimumSize` in class `ComponentUI`

    Parameters:
    :   `jc` - the component whose minimum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
  + ### getMaximumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumSize([JComponent](../../JComponent.md "class in javax.swing") jc)

    Returns the maximum size for the passed in component,
    This is passed off to the current layout manager.

    Overrides:
    :   `getMaximumSize` in class `ComponentUI`

    Parameters:
    :   `jc` - the component whose maximum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`JComponent.getMaximumSize()`](../../JComponent.md#getMaximumSize())
        - [`LayoutManager2.maximumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager2.md#maximumLayoutSize(java.awt.Container))
  + ### getInsets

    public [Insets](../../../../java/awt/Insets.md "class in java.awt") getInsets([JComponent](../../JComponent.md "class in javax.swing") jc)

    Returns the insets. The insets are returned from the border insets
    of the current border.

    Parameters:
    :   `jc` - a component

    Returns:
    :   the insets
  + ### resetLayoutManager

    protected void resetLayoutManager()

    Resets the layout manager based on orientation and messages it
    with invalidateLayout to pull in appropriate Components.
  + ### startDragging

    protected void startDragging()

    Should be messaged before the dragging session starts, resets
    lastDragLocation and dividerSize.
  + ### dragDividerTo

    protected void dragDividerTo(int location)

    Messaged during a dragging session to move the divider to the
    passed in `location`. If `continuousLayout` is `true`
    the location is reset and the splitPane validated.

    Parameters:
    :   `location` - the location of divider
  + ### finishDraggingTo

    protected void finishDraggingTo(int location)

    Messaged to finish the dragging session. If not continuous display
    the dividers `location` will be reset.

    Parameters:
    :   `location` - the location of divider
  + ### getDividerBorderSize

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected int getDividerBorderSize()

    Deprecated.

    As of Java 2 platform v1.3, instead set the border on the
    divider.

    As of Java 2 platform v1.3 this method is no longer used. Instead
    you should set the border on the divider.

    Returns the width of one side of the divider border.

    Returns:
    :   the width of one side of the divider border