Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSpinnerUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.SpinnerUI](../SpinnerUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicSpinnerUI

Direct Known Subclasses:
:   `SynthSpinnerUI`

---

public class BasicSpinnerUI
extends [SpinnerUI](../SpinnerUI.md "class in javax.swing.plaf")

The default Spinner UI delegate.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected JSpinner`

  `spinner`

  The spinner that we're a UI delegate for.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicSpinnerUI()`

  Constructs a `BasicSpinnerUI`.
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

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates a `PropertyChangeListener` that can be
  added to the JSpinner itself.

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns a new instance of BasicSpinnerUI.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(JComponent c)`

  Returns an enum indicating how the baseline of the component
  changes as the size changes.

  `protected void`

  `installDefaults()`

  Initialize the `JSpinner` `border`,
  `foreground`, and `background`, properties
  based on the corresponding "Spinner.\*" properties from defaults table.

  `protected void`

  `installKeyboardActions()`

  Installs the keyboard Actions onto the JSpinner.

  `protected void`

  `installListeners()`

  Initializes `PropertyChangeListener` with
  a shared object that delegates interesting PropertyChangeEvents
  to protected methods.

  `protected void`

  `installNextButtonListeners(Component c)`

  Installs the necessary listeners on the next button, `c`,
  to update the `JSpinner` in response to a user gesture.

  `protected void`

  `installPreviousButtonListeners(Component c)`

  Installs the necessary listeners on the previous button, `c`,
  to update the `JSpinner` in response to a user gesture.

  `void`

  `installUI(JComponent c)`

  Calls `installDefaults`, `installListeners`,
  and then adds the components returned by `createNextButton`,
  `createPreviousButton`, and `createEditor`.

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

  `uninstallUI(JComponent c)`

  Calls `uninstallDefaults`, `uninstallListeners`,
  and then removes all of the spinners children.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getMaximumSize, getMinimumSize, getPreferredSize, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### spinner

    protected [JSpinner](../../JSpinner.md "class in javax.swing") spinner

    The spinner that we're a UI delegate for. Initialized by
    the `installUI` method, and reset to null
    by `uninstallUI`.

    See Also:
    :   - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
        - [`uninstallUI(javax.swing.JComponent)`](#uninstallUI(javax.swing.JComponent))
* ## Constructor Details

  + ### BasicSpinnerUI

    public BasicSpinnerUI()

    Constructs a `BasicSpinnerUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns a new instance of BasicSpinnerUI. SpinnerListUI
    delegates are allocated one per JSpinner.

    Parameters:
    :   `c` - the JSpinner (not used)

    Returns:
    :   a new BasicSpinnerUI object

    See Also:
    :   - [`ComponentUI.createUI(javax.swing.JComponent)`](../ComponentUI.md#createUI(javax.swing.JComponent))
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Calls `installDefaults`, `installListeners`,
    and then adds the components returned by `createNextButton`,
    `createPreviousButton`, and `createEditor`.

    Overrides:
    :   `installUI` in class `ComponentUI`

    Parameters:
    :   `c` - the JSpinner

    See Also:
    :   - [`installDefaults()`](#installDefaults())
        - [`installListeners()`](#installListeners())
        - [`createNextButton()`](#createNextButton())
        - [`createPreviousButton()`](#createPreviousButton())
        - [`createEditor()`](#createEditor())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Calls `uninstallDefaults`, `uninstallListeners`,
    and then removes all of the spinners children.

    Overrides:
    :   `uninstallUI` in class `ComponentUI`

    Parameters:
    :   `c` - the JSpinner (not used)

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installListeners

    protected void installListeners()

    Initializes `PropertyChangeListener` with
    a shared object that delegates interesting PropertyChangeEvents
    to protected methods.

    This method is called by `installUI`.

    See Also:
    :   - [`replaceEditor(javax.swing.JComponent, javax.swing.JComponent)`](#replaceEditor(javax.swing.JComponent,javax.swing.JComponent))
        - [`uninstallListeners()`](#uninstallListeners())
  + ### uninstallListeners

    protected void uninstallListeners()

    Removes the `PropertyChangeListener` added
    by installListeners.

    This method is called by `uninstallUI`.

    See Also:
    :   - [`installListeners()`](#installListeners())
  + ### installDefaults

    protected void installDefaults()

    Initialize the `JSpinner` `border`,
    `foreground`, and `background`, properties
    based on the corresponding "Spinner.\*" properties from defaults table.
    The `JSpinners` layout is set to the value returned by
    `createLayout`. This method is called by `installUI`.

    See Also:
    :   - [`uninstallDefaults()`](#uninstallDefaults())
        - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
        - [`createLayout()`](#createLayout())
        - [`LookAndFeel.installBorder(javax.swing.JComponent, java.lang.String)`](../../LookAndFeel.md#installBorder(javax.swing.JComponent,java.lang.String))
        - [`LookAndFeel.installColors(javax.swing.JComponent, java.lang.String, java.lang.String)`](../../LookAndFeel.md#installColors(javax.swing.JComponent,java.lang.String,java.lang.String))
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Sets the `JSpinner's` layout manager to null. This
    method is called by `uninstallUI`.

    See Also:
    :   - [`installDefaults()`](#installDefaults())
        - [`uninstallUI(javax.swing.JComponent)`](#uninstallUI(javax.swing.JComponent))
  + ### installNextButtonListeners

    protected void installNextButtonListeners([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Installs the necessary listeners on the next button, `c`,
    to update the `JSpinner` in response to a user gesture.

    Parameters:
    :   `c` - Component to install the listeners on

    Throws:
    :   `NullPointerException` - if `c` is null.

    Since:
    :   1.5

    See Also:
    :   - [`createNextButton()`](#createNextButton())
  + ### installPreviousButtonListeners

    protected void installPreviousButtonListeners([Component](../../../../java/awt/Component.md "class in java.awt") c)

    Installs the necessary listeners on the previous button, `c`,
    to update the `JSpinner` in response to a user gesture.

    Parameters:
    :   `c` - Component to install the listeners on.

    Throws:
    :   `NullPointerException` - if `c` is null.

    Since:
    :   1.5

    See Also:
    :   - [`createPreviousButton()`](#createPreviousButton())
  + ### createLayout

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayout()

    Creates a `LayoutManager` that manages the `editor`,
    `nextButton`, and `previousButton`
    children of the JSpinner. These three children must be
    added with a constraint that identifies their role:
    "Editor", "Next", and "Previous". The default layout manager
    can handle the absence of any of these children.

    Returns:
    :   a LayoutManager for the editor, next button, and previous button.

    See Also:
    :   - [`createNextButton()`](#createNextButton())
        - [`createPreviousButton()`](#createPreviousButton())
        - [`createEditor()`](#createEditor())
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Creates a `PropertyChangeListener` that can be
    added to the JSpinner itself. Typically, this listener
    will call replaceEditor when the "editor" property changes,
    since it's the `SpinnerUI's` responsibility to
    add the editor to the JSpinner (and remove the old one).
    This method is called by `installListeners`.

    Returns:
    :   A PropertyChangeListener for the JSpinner itself

    See Also:
    :   - [`installListeners()`](#installListeners())
  + ### createPreviousButton

    protected [Component](../../../../java/awt/Component.md "class in java.awt") createPreviousButton()

    Creates a decrement button, i.e. component that replaces the spinner
    value with the object returned by `spinner.getPreviousValue`.
    By default the `previousButton` is a `JButton`. If the
    decrement button is not needed this method should return `null`.

    Returns:
    :   a component that will replace the spinner's value with the
        previous value in the sequence, or `null`

    See Also:
    :   - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
        - [`createNextButton()`](#createNextButton())
        - [`installPreviousButtonListeners(java.awt.Component)`](#installPreviousButtonListeners(java.awt.Component))
  + ### createNextButton

    protected [Component](../../../../java/awt/Component.md "class in java.awt") createNextButton()

    Creates an increment button, i.e. component that replaces the spinner
    value with the object returned by `spinner.getNextValue`.
    By default the `nextButton` is a `JButton`. If the
    increment button is not needed this method should return `null`.

    Returns:
    :   a component that will replace the spinner's value with the
        next value in the sequence, or `null`

    See Also:
    :   - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
        - [`createPreviousButton()`](#createPreviousButton())
        - [`installNextButtonListeners(java.awt.Component)`](#installNextButtonListeners(java.awt.Component))
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

    Returns:
    :   the JSpinners editor JComponent, spinner.getEditor() by default

    See Also:
    :   - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
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

    Parameters:
    :   `oldEditor` - an old instance of editor
    :   `newEditor` - a new instance of editor

    See Also:
    :   - [`createEditor()`](#createEditor())
        - [`createPropertyChangeListener()`](#createPropertyChangeListener())
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Installs the keyboard Actions onto the JSpinner.

    Since:
    :   1.5
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