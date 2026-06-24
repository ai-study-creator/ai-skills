Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthSpinnerUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.SpinnerUI](../SpinnerUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicSpinnerUI](../basic/BasicSpinnerUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthSpinnerUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthSpinnerUI
extends [BasicSpinnerUI](../basic/BasicSpinnerUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JSpinner`](../../JSpinner.md "class in javax.swing").

Since:
:   1.7

* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicSpinnerUI](../basic/BasicSpinnerUI.md "class in javax.swing.plaf.basic")

  `spinner`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthSpinnerUI()`

  Constructs a `SynthSpinnerUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected JComponent`

  `createEditor()`

  This method is called by installUI to get the editor component
  of the `JSpinner`.

  `protected LayoutManager`

  `createLayout()`

  Creates a `LayoutManager` that manages the `editor`,
  `nextButton`, and `previousButton`
  children of the JSpinner.

  `protected Component`

  `createNextButton()`

  Creates an increment button, i.e.

  `protected Component`

  `createPreviousButton()`

  Creates a decrement button, i.e.

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns a new instance of SynthSpinnerUI.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `protected void`

  `installDefaults()`

  Initializes the `JSpinner` `border`,
  `foreground`, and `background`, properties
  based on the corresponding "Spinner.\*" properties from defaults table.

  `protected void`

  `installListeners()`

  Initializes `PropertyChangeListener` with
  a shared object that delegates interesting PropertyChangeEvents
  to protected methods.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component according to the Look and Feel.

  `protected void`

  `paint(SynthContext context,
  Graphics g)`

  Paints the specified component.

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

  `replaceEditor(JComponent oldEditor,
  JComponent newEditor)`

  Called by the `PropertyChangeListener` when the
  `JSpinner` editor property changes.

  `protected void`

  `uninstallDefaults()`

  Sets the `JSpinner's` layout manager to null.

  `protected void`

  `uninstallListeners()`

  Removes the `PropertyChangeListener` added
  by installListeners.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicSpinnerUI](../basic/BasicSpinnerUI.md "class in javax.swing.plaf.basic")

  `createPropertyChangeListener, getBaseline, getBaselineResizeBehavior, installKeyboardActions, installNextButtonListeners, installPreviousButtonListeners, installUI, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getMaximumSize, getMinimumSize, getPreferredSize`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthSpinnerUI

    public SynthSpinnerUI()

    Constructs a `SynthSpinnerUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns a new instance of SynthSpinnerUI.

    Parameters:
    :   `c` - the JSpinner (not used)

    Returns:
    :   a new SynthSpinnerUI object

    See Also:
    :   - [`ComponentUI.createUI(javax.swing.JComponent)`](../ComponentUI.md#createUI(javax.swing.JComponent))
  + ### installListeners

    protected void installListeners()

    Initializes `PropertyChangeListener` with
    a shared object that delegates interesting PropertyChangeEvents
    to protected methods.

    This method is called by `installUI`.

    Overrides:
    :   `installListeners` in class `BasicSpinnerUI`

    See Also:
    :   - [`BasicSpinnerUI.replaceEditor(javax.swing.JComponent, javax.swing.JComponent)`](../basic/BasicSpinnerUI.md#replaceEditor(javax.swing.JComponent,javax.swing.JComponent))
        - [`BasicSpinnerUI.uninstallListeners()`](../basic/BasicSpinnerUI.md#uninstallListeners())
  + ### uninstallListeners

    protected void uninstallListeners()

    Removes the `PropertyChangeListener` added
    by installListeners.

    This method is called by `uninstallUI`.

    Overrides:
    :   `uninstallListeners` in class `BasicSpinnerUI`

    See Also:
    :   - [`BasicSpinnerUI.installListeners()`](../basic/BasicSpinnerUI.md#installListeners())
  + ### installDefaults

    protected void installDefaults()

    Initializes the `JSpinner` `border`,
    `foreground`, and `background`, properties
    based on the corresponding "Spinner.\*" properties from defaults table.
    The `JSpinners` layout is set to the value returned by
    `createLayout`. This method is called by `installUI`.

    Overrides:
    :   `installDefaults` in class `BasicSpinnerUI`

    See Also:
    :   - [`uninstallDefaults()`](#uninstallDefaults())
        - [`BasicSpinnerUI.installUI(javax.swing.JComponent)`](../basic/BasicSpinnerUI.md#installUI(javax.swing.JComponent))
        - [`createLayout()`](#createLayout())
        - [`LookAndFeel.installBorder(javax.swing.JComponent, java.lang.String)`](../../LookAndFeel.md#installBorder(javax.swing.JComponent,java.lang.String))
        - [`LookAndFeel.installColors(javax.swing.JComponent, java.lang.String, java.lang.String)`](../../LookAndFeel.md#installColors(javax.swing.JComponent,java.lang.String,java.lang.String))
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Sets the `JSpinner's` layout manager to null. This
    method is called by `uninstallUI`.

    Overrides:
    :   `uninstallDefaults` in class `BasicSpinnerUI`

    See Also:
    :   - [`installDefaults()`](#installDefaults())
        - [`BasicSpinnerUI.uninstallUI(javax.swing.JComponent)`](../basic/BasicSpinnerUI.md#uninstallUI(javax.swing.JComponent))
  + ### createLayout

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayout()

    Creates a `LayoutManager` that manages the `editor`,
    `nextButton`, and `previousButton`
    children of the JSpinner. These three children must be
    added with a constraint that identifies their role:
    "Editor", "Next", and "Previous". The default layout manager
    can handle the absence of any of these children.

    Overrides:
    :   `createLayout` in class `BasicSpinnerUI`

    Returns:
    :   a LayoutManager for the editor, next button, and previous button.

    See Also:
    :   - [`BasicSpinnerUI.createNextButton()`](../basic/BasicSpinnerUI.md#createNextButton())
        - [`BasicSpinnerUI.createPreviousButton()`](../basic/BasicSpinnerUI.md#createPreviousButton())
        - [`BasicSpinnerUI.createEditor()`](../basic/BasicSpinnerUI.md#createEditor())
  + ### createPreviousButton

    protected [Component](../../../../java/awt/Component.md "class in java.awt") createPreviousButton()

    Creates a decrement button, i.e. component that replaces the spinner
    value with the object returned by `spinner.getPreviousValue`.
    By default the `previousButton` is a `JButton`. If the
    decrement button is not needed this method should return `null`.

    Overrides:
    :   `createPreviousButton` in class `BasicSpinnerUI`

    Returns:
    :   a component that will replace the spinner's value with the
        previous value in the sequence, or `null`

    See Also:
    :   - [`BasicSpinnerUI.installUI(javax.swing.JComponent)`](../basic/BasicSpinnerUI.md#installUI(javax.swing.JComponent))
        - [`BasicSpinnerUI.createNextButton()`](../basic/BasicSpinnerUI.md#createNextButton())
        - [`BasicSpinnerUI.installPreviousButtonListeners(java.awt.Component)`](../basic/BasicSpinnerUI.md#installPreviousButtonListeners(java.awt.Component))
  + ### createNextButton

    protected [Component](../../../../java/awt/Component.md "class in java.awt") createNextButton()

    Creates an increment button, i.e. component that replaces the spinner
    value with the object returned by `spinner.getNextValue`.
    By default the `nextButton` is a `JButton`. If the
    increment button is not needed this method should return `null`.

    Overrides:
    :   `createNextButton` in class `BasicSpinnerUI`

    Returns:
    :   a component that will replace the spinner's value with the
        next value in the sequence, or `null`

    See Also:
    :   - [`BasicSpinnerUI.installUI(javax.swing.JComponent)`](../basic/BasicSpinnerUI.md#installUI(javax.swing.JComponent))
        - [`BasicSpinnerUI.createPreviousButton()`](../basic/BasicSpinnerUI.md#createPreviousButton())
        - [`BasicSpinnerUI.installNextButtonListeners(java.awt.Component)`](../basic/BasicSpinnerUI.md#installNextButtonListeners(java.awt.Component))
  + ### createEditor

    protected [JComponent](../../JComponent.md "class in javax.swing") createEditor()

    This method is called by installUI to get the editor component
    of the `JSpinner`. By default it just returns
    `JSpinner.getEditor()`. Subclasses can override
    `createEditor` to return a component that contains
    the spinner's editor or null, if they're going to handle adding
    the editor to the `JSpinner` in an
    `installUI` override.

    Typically this method would be overridden to wrap the editor
    with a container with a custom border, since one can't assume
    that the editors border can be set directly.

    The `replaceEditor` method is called when the spinners
    editor is changed with `JSpinner.setEditor`. If you've
    overridden this method, then you'll probably want to override
    `replaceEditor` as well.

    Overrides:
    :   `createEditor` in class `BasicSpinnerUI`

    Returns:
    :   the JSpinners editor JComponent, spinner.getEditor() by default

    See Also:
    :   - [`BasicSpinnerUI.installUI(javax.swing.JComponent)`](../basic/BasicSpinnerUI.md#installUI(javax.swing.JComponent))
        - [`replaceEditor(javax.swing.JComponent, javax.swing.JComponent)`](#replaceEditor(javax.swing.JComponent,javax.swing.JComponent))
        - [`JSpinner.getEditor()`](../../JSpinner.md#getEditor())
  + ### replaceEditor

    protected void replaceEditor([JComponent](../../JComponent.md "class in javax.swing") oldEditor,
    [JComponent](../../JComponent.md "class in javax.swing") newEditor)

    Called by the `PropertyChangeListener` when the
    `JSpinner` editor property changes. It's the responsibility
    of this method to remove the old editor and add the new one. By
    default this operation is just:

    ```
     spinner.remove(oldEditor);
     spinner.add(newEditor, "Editor");
    ```

    The implementation of `replaceEditor` should be coordinated
    with the `createEditor` method.

    Overrides:
    :   `replaceEditor` in class `BasicSpinnerUI`

    Parameters:
    :   `oldEditor` - an old instance of editor
    :   `newEditor` - a new instance of editor

    See Also:
    :   - [`createEditor()`](#createEditor())
        - [`BasicSpinnerUI.createPropertyChangeListener()`](../basic/BasicSpinnerUI.md#createPropertyChangeListener())
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
  + ### update

    public void update([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Notifies this UI delegate to repaint the specified component.
    This method paints the component background, then calls
    the [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics)) method.

    In general, this method does not need to be overridden by subclasses.
    All Look and Feel rendering code should reside in the `paint` method.

    Overrides:
    :   `update` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` object used for painting
    :   `c` - the component being painted

    See Also:
    :   - [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics))
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Paints the specified component according to the Look and Feel.

    This method is not used by Synth Look and Feel.
    Painting is handled by the [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics)) method.

    Overrides:
    :   `paint` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` object used for painting
    :   `c` - the component being painted

    See Also:
    :   - [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics))
  + ### paint

    protected void paint([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the specified component. This implementation does nothing.

    Parameters:
    :   `context` - context for the component being painted
    :   `g` - the `Graphics` object used for painting

    See Also:
    :   - [`update(Graphics,JComponent)`](#update(java.awt.Graphics,javax.swing.JComponent))
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
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.