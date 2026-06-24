Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicOptionPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.OptionPaneUI](../OptionPaneUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicOptionPaneUI

Direct Known Subclasses:
:   `SynthOptionPaneUI`

---

public class BasicOptionPaneUI
extends [OptionPaneUI](../OptionPaneUI.md "class in javax.swing.plaf")

Provides the basic look and feel for a `JOptionPane`.
`BasicMessagePaneUI` provides a means to place an icon,
message and buttons into a `Container`.
Generally, the layout will look like:

```
        ------------------
        | i | message    |
        | c | message    |
        | o | message    |
        | n | message    |
        ------------------
        |     buttons    |
        |________________|
```

icon is an instance of `Icon` that is wrapped inside a
`JLabel`. The message is an opaque object and is tested
for the following: if the message is a `Component` it is
added to the `Container`, if it is an `Icon`
it is wrapped inside a `JLabel` and added to the
`Container` otherwise it is wrapped inside a `JLabel`.

The above layout is used when the option pane's
`ComponentOrientation` property is horizontal, left-to-right.
The layout will be adjusted appropriately for other orientations.

The `Container`, message, icon, and buttons are all
determined from abstract methods.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicOptionPaneUI.ButtonActionListener`

  This class should be treated as a "protected" inner class.

  `static class`

  `BasicOptionPaneUI.ButtonAreaLayout`

  `ButtonAreaLayout` behaves in a similar manner to
  `FlowLayout`.

  `class`

  `BasicOptionPaneUI.PropertyChangeHandler`

  This class should be treated as a "protected" inner class.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `hasCustomComponents`

  This is set to true in validateComponent if a Component is contained
  in either the message or the buttons.

  `protected Component`

  `initialFocusComponent`

  Component to receive focus when messaged with selectInitialValue.

  `protected JComponent`

  `inputComponent`

  JComponent provide for input if optionPane.getWantsInput() returns
  true.

  `static final int`

  `MinimumHeight`

  The minimum height of `JOptionPane`.

  `protected Dimension`

  `minimumSize`

  The size of `JOptionPane`.

  `static final int`

  `MinimumWidth`

  The minimum width of `JOptionPane`.

  `protected JOptionPane`

  `optionPane`

  `JOptionPane` that the receiver is providing the
  look and feel for.

  `protected PropertyChangeListener`

  `propertyChangeListener`

  The instance of `PropertyChangeListener`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicOptionPaneUI()`

  Constructs a `BasicOptionPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `addButtonComponents(Container container,
  Object[] buttons,
  int initialIndex)`

  Creates the appropriate object to represent each of the objects in
  `buttons` and adds it to `container`.

  `protected void`

  `addIcon(Container top)`

  Creates and adds a JLabel representing the icon returned from
  `getIcon` to `top`.

  `protected void`

  `addMessageComponents(Container container,
  GridBagConstraints cons,
  Object msg,
  int maxll,
  boolean internallyCreated)`

  Creates the appropriate object to represent `msg` and places it
  into `container`.

  `protected void`

  `burstStringInto(Container c,
  String d,
  int maxll)`

  Recursively creates new `JLabel` instances to represent `d`.

  `boolean`

  `containsCustomComponents(JOptionPane op)`

  Returns true if in the last call to validateComponent the message
  or buttons contained a subclass of Component.

  `protected ActionListener`

  `createButtonActionListener(int buttonIndex)`

  Constructs a new instance of a `ButtonActionListener`.

  `protected Container`

  `createButtonArea()`

  Creates and returns a `Container` containing the buttons.

  `protected LayoutManager`

  `createLayoutManager()`

  Returns a layout manager.

  `protected Container`

  `createMessageArea()`

  Messaged from `installComponents` to create a `Container`
  containing the body of the message.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Returns an instance of `PropertyChangeListener`.

  `protected Container`

  `createSeparator()`

  Returns a separator.

  `static ComponentUI`

  `createUI(JComponent x)`

  Creates a new `BasicOptionPaneUI` instance.

  `protected Object[]`

  `getButtons()`

  Returns the buttons to display from the `JOptionPane` the receiver is
  providing the look and feel for.

  `protected Icon`

  `getIcon()`

  Returns the icon from the `JOptionPane` the receiver is providing
  the look and feel for, or the default icon as returned from
  `getDefaultIcon`.

  `protected Icon`

  `getIconForType(int messageType)`

  Returns the icon to use for the passed in type.

  `protected int`

  `getInitialValueIndex()`

  Returns the initial index into the buttons to select.

  `protected int`

  `getMaxCharactersPerLineCount()`

  Returns the maximum number of characters to place on a line.

  `protected Object`

  `getMessage()`

  Returns the message to display from the `JOptionPane` the receiver is
  providing the look and feel for.

  `Dimension`

  `getMinimumOptionPaneSize()`

  Returns the minimum size the option pane should be.

  `Dimension`

  `getPreferredSize(JComponent c)`

  If `c` is the `JOptionPane` the receiver
  is contained in, the preferred
  size that is returned is the maximum of the preferred size of
  the `LayoutManager` for the `JOptionPane`, and
  `getMinimumOptionPaneSize`.

  `protected boolean`

  `getSizeButtonsToSameWidth()`

  Returns `true`, basic L&F wants all the buttons to have the same
  width.

  `protected void`

  `installComponents()`

  Registers components.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installKeyboardActions()`

  Registers keyboard actions.

  `protected void`

  `installListeners()`

  Registers listeners.

  `void`

  `installUI(JComponent c)`

  Installs the receiver as the L&F for the passed in
  `JOptionPane`.

  `protected void`

  `resetInputValue()`

  Sets the input value in the option pane the receiver is providing
  the look and feel for based on the value in the inputComponent.

  `void`

  `selectInitialValue(JOptionPane op)`

  If inputComponent is non-null, the focus is requested on that,
  otherwise request focus on the default value

  `protected void`

  `uninstallComponents()`

  Unregisters components.

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

  Removes the receiver from the L&F controller of the passed in split
  pane.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### MinimumWidth

    public static final int MinimumWidth

    The minimum width of `JOptionPane`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicOptionPaneUI.MinimumWidth)
  + ### MinimumHeight

    public static final int MinimumHeight

    The minimum height of `JOptionPane`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicOptionPaneUI.MinimumHeight)
  + ### optionPane

    protected [JOptionPane](../../JOptionPane.md "class in javax.swing") optionPane

    `JOptionPane` that the receiver is providing the
    look and feel for.
  + ### minimumSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") minimumSize

    The size of `JOptionPane`.
  + ### inputComponent

    protected [JComponent](../../JComponent.md "class in javax.swing") inputComponent

    JComponent provide for input if optionPane.getWantsInput() returns
    true.
  + ### initialFocusComponent

    protected [Component](../../../../java/awt/Component.md "class in java.awt") initialFocusComponent

    Component to receive focus when messaged with selectInitialValue.
  + ### hasCustomComponents

    protected boolean hasCustomComponents

    This is set to true in validateComponent if a Component is contained
    in either the message or the buttons.
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    The instance of `PropertyChangeListener`.
* ## Constructor Details

  + ### BasicOptionPaneUI

    public BasicOptionPaneUI()

    Constructs a `BasicOptionPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Creates a new `BasicOptionPaneUI` instance.

    Parameters:
    :   `x` - the component

    Returns:
    :   a new `BasicOptionPaneUI` instance
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Installs the receiver as the L&F for the passed in
    `JOptionPane`.

    Overrides:
    :   `installUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component where this UI delegate is being installed

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Removes the receiver from the L&F controller of the passed in split
    pane.

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
  + ### installDefaults

    protected void installDefaults()

    Installs default properties.
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.
  + ### installComponents

    protected void installComponents()

    Registers components.
  + ### uninstallComponents

    protected void uninstallComponents()

    Unregisters components.
  + ### createLayoutManager

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayoutManager()

    Returns a layout manager.

    Returns:
    :   a layout manager
  + ### installListeners

    protected void installListeners()

    Registers listeners.
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Returns an instance of `PropertyChangeListener`.

    Returns:
    :   an instance of `PropertyChangeListener`
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Registers keyboard actions.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Unregisters keyboard actions.
  + ### getMinimumOptionPaneSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumOptionPaneSize()

    Returns the minimum size the option pane should be. Primarily
    provided for subclassers wishing to offer a different minimum size.

    Returns:
    :   the minimum size of the option pane
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    If `c` is the `JOptionPane` the receiver
    is contained in, the preferred
    size that is returned is the maximum of the preferred size of
    the `LayoutManager` for the `JOptionPane`, and
    `getMinimumOptionPaneSize`.

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
  + ### createMessageArea

    protected [Container](../../../../java/awt/Container.md "class in java.awt") createMessageArea()

    Messaged from `installComponents` to create a `Container`
    containing the body of the message. The icon is the created
    by calling `addIcon`.

    Returns:
    :   a instance of `Container`
  + ### addMessageComponents

    protected void addMessageComponents([Container](../../../../java/awt/Container.md "class in java.awt") container,
    [GridBagConstraints](../../../../java/awt/GridBagConstraints.md "class in java.awt") cons,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") msg,
    int maxll,
    boolean internallyCreated)

    Creates the appropriate object to represent `msg` and places it
    into `container`. If `msg` is an instance of
    `Component`, it is added directly; if it is an `Icon`, a
    `JLabel` is created to represent it; otherwise, a `JLabel`
    is created for the string. If `msg` is an Object[], this method
    will be recursively invoked for the children. `internallyCreated`
    is `true` if `msg` is an instance of `Component` and
    was created internally by this method (this is used to correctly set
    `hasCustomComponents` only if `internallyCreated` is
    `false`).

    Parameters:
    :   `container` - a container
    :   `cons` - an instance of `GridBagConstraints`
    :   `msg` - a message
    :   `maxll` - a maximum length
    :   `internallyCreated` - `true` if the component was internally created
  + ### getMessage

    protected [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getMessage()

    Returns the message to display from the `JOptionPane` the receiver is
    providing the look and feel for.

    Returns:
    :   the message to display
  + ### addIcon

    protected void addIcon([Container](../../../../java/awt/Container.md "class in java.awt") top)

    Creates and adds a JLabel representing the icon returned from
    `getIcon` to `top`. This is messaged from
    `createMessageArea`.

    Parameters:
    :   `top` - a container
  + ### getIcon

    protected [Icon](../../Icon.md "interface in javax.swing") getIcon()

    Returns the icon from the `JOptionPane` the receiver is providing
    the look and feel for, or the default icon as returned from
    `getDefaultIcon`.

    Returns:
    :   the icon
  + ### getIconForType

    protected [Icon](../../Icon.md "interface in javax.swing") getIconForType(int messageType)

    Returns the icon to use for the passed in type.

    Parameters:
    :   `messageType` - a type of message

    Returns:
    :   the icon to use for the passed in type
  + ### getMaxCharactersPerLineCount

    protected int getMaxCharactersPerLineCount()

    Returns the maximum number of characters to place on a line.

    Returns:
    :   the maximum number of characters to place on a line
  + ### burstStringInto

    protected void burstStringInto([Container](../../../../java/awt/Container.md "class in java.awt") c,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") d,
    int maxll)

    Recursively creates new `JLabel` instances to represent `d`.
    Each `JLabel` instance is added to `c`.

    Parameters:
    :   `c` - a container
    :   `d` - a text
    :   `maxll` - a maximum length of a text
  + ### createSeparator

    protected [Container](../../../../java/awt/Container.md "class in java.awt") createSeparator()

    Returns a separator.

    Returns:
    :   a separator
  + ### createButtonArea

    protected [Container](../../../../java/awt/Container.md "class in java.awt") createButtonArea()

    Creates and returns a `Container` containing the buttons.
    The buttons are created by calling `getButtons`.

    Returns:
    :   a `Container` containing the buttons
  + ### addButtonComponents

    protected void addButtonComponents([Container](../../../../java/awt/Container.md "class in java.awt") container,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")[] buttons,
    int initialIndex)

    Creates the appropriate object to represent each of the objects in
    `buttons` and adds it to `container`. This
    differs from addMessageComponents in that it will recurse on
    `buttons` and that if button is not a Component
    it will create an instance of JButton.

    Parameters:
    :   `container` - a container
    :   `buttons` - an array of buttons
    :   `initialIndex` - an initial index
  + ### createButtonActionListener

    protected [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event") createButtonActionListener(int buttonIndex)

    Constructs a new instance of a `ButtonActionListener`.

    Parameters:
    :   `buttonIndex` - an index of the button

    Returns:
    :   a new instance of a `ButtonActionListener`
  + ### getButtons

    protected [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")[] getButtons()

    Returns the buttons to display from the `JOptionPane` the receiver is
    providing the look and feel for. If the `JOptionPane` has options
    set, they will be provided, otherwise if the optionType is
    `YES_NO_OPTION`, `yesNoOptions` is returned, if the type is
    `YES_NO_CANCEL_OPTION` `yesNoCancelOptions` is returned, otherwise
    `defaultButtons` are returned.

    Returns:
    :   the buttons to display from the JOptionPane
  + ### getSizeButtonsToSameWidth

    protected boolean getSizeButtonsToSameWidth()

    Returns `true`, basic L&F wants all the buttons to have the same
    width.

    Returns:
    :   `true` if all the buttons should have the same width
  + ### getInitialValueIndex

    protected int getInitialValueIndex()

    Returns the initial index into the buttons to select. The index
    is calculated from the initial value from the JOptionPane and
    options of the JOptionPane or 0.

    Returns:
    :   the initial index into the buttons to select
  + ### resetInputValue

    protected void resetInputValue()

    Sets the input value in the option pane the receiver is providing
    the look and feel for based on the value in the inputComponent.
  + ### selectInitialValue

    public void selectInitialValue([JOptionPane](../../JOptionPane.md "class in javax.swing") op)

    If inputComponent is non-null, the focus is requested on that,
    otherwise request focus on the default value

    Specified by:
    :   `selectInitialValue` in class `OptionPaneUI`

    Parameters:
    :   `op` - a `JOptionPane`
  + ### containsCustomComponents

    public boolean containsCustomComponents([JOptionPane](../../JOptionPane.md "class in javax.swing") op)

    Returns true if in the last call to validateComponent the message
    or buttons contained a subclass of Component.

    Specified by:
    :   `containsCustomComponents` in class `OptionPaneUI`

    Parameters:
    :   `op` - a `JOptionPane`

    Returns:
    :   `true` if the given `JOptionPane` contains user
        created `Component`s