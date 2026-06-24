Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class FormView

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](../View.md "class in javax.swing.text")

[javax.swing.text.ComponentView](../ComponentView.md "class in javax.swing.text")

javax.swing.text.html.FormView

All Implemented Interfaces:
:   `ActionListener`, `EventListener`, `SwingConstants`

---

public class FormView
extends [ComponentView](../ComponentView.md "class in javax.swing.text")
implements [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event")

Component decorator that implements the view interface
for form elements, <input>, <textarea>,
and <select>. The model for the component is stored
as an attribute of the element (using StyleConstants.ModelAttribute),
and is used to build the component of the view. The type
of the model is assumed to of the type that would be set by
`HTMLDocument.HTMLReader.FormAction`. If there are
multiple views mapped over the document, they will share the
embedded component models.

The following table shows what components get built
by this view.

Shows what components get built by this view

| Element Type Component built | |
| --- | --- |
| input, type button JButton|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | input, type checkbox JCheckBox|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | input, type image JButton|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | input, type password JPasswordField|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | input, type radio JRadioButton|  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | input, type reset JButton|  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | input, type submit JButton|  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | input, type text JTextField|  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | | select, size > 1 or multiple attribute defined JList in a JScrollPane|  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | | select, size unspecified or 1 JComboBox|  |  |  |  | | --- | --- | --- | --- | | textarea JTextArea in a JScrollPane|  |  | | --- | --- | | input, type file JTextField | | | | | | | | | | | | | | | | | | | | | | | |

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `FormView.MouseEventListener`

  MouseEventListener class to handle form submissions when
  an input with type equal to image is clicked on.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `RESET`

  Deprecated.

  As of 1.3, value comes from UIManager UIManager property
  FormView.resetButtonText

  `static final String`

  `SUBMIT`

  Deprecated.

  As of 1.3, value now comes from UIManager property
  FormView.submitButtonText

  ### Fields inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FormView(Element elem)`

  Creates a new FormView object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent evt)`

  Responsible for processing the ActionEvent.

  `protected Component`

  `createComponent()`

  Create the component.

  `float`

  `getMaximumSpan(int axis)`

  Determines the maximum span for this view along an
  axis.

  `protected void`

  `imageSubmit(String imageData)`

  This method is called to submit a form in response
  to a click on an image -- an <INPUT> form
  element of type "image".

  `protected void`

  `submitData(String data)`

  This method is responsible for submitting the form data.

  ### Methods inherited from class javax.swing.text.[ComponentView](../ComponentView.md "class in javax.swing.text")

  `getAlignment, getComponent, getMinimumSpan, getPreferredSpan, modelToView, paint, setParent, viewToModel`

  ### Methods inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `append, breakView, changedUpdate, createFragment, forwardUpdate, forwardUpdateToView, getAttributes, getBreakWeight, getChildAllocation, getContainer, getDocument, getElement, getEndOffset, getGraphics, getNextVisualPositionFrom, getParent, getResizeWeight, getStartOffset, getToolTipText, getView, getViewCount, getViewFactory, getViewIndex, getViewIndex, insert, insertUpdate, isVisible, modelToView, modelToView, preferenceChanged, remove, removeAll, removeUpdate, replace, setSize, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### SUBMIT

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SUBMIT

    Deprecated.

    As of 1.3, value now comes from UIManager property
    FormView.submitButtonText

    If a value attribute is not specified for a FORM input element
    of type "submit", then this default string is used.
  + ### RESET

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RESET

    Deprecated.

    As of 1.3, value comes from UIManager UIManager property
    FormView.resetButtonText

    If a value attribute is not specified for a FORM input element
    of type "reset", then this default string is used.
* ## Constructor Details

  + ### FormView

    public FormView([Element](../Element.md "interface in javax.swing.text") elem)

    Creates a new FormView object.

    Parameters:
    :   `elem` - the element to decorate
* ## Method Details

  + ### createComponent

    protected [Component](../../../../java/awt/Component.md "class in java.awt") createComponent()

    Create the component. This is basically a
    big switch statement based upon the tag type
    and html attributes of the associated element.

    Overrides:
    :   `createComponent` in class `ComponentView`

    Returns:
    :   the component that is associated with
        this view
  + ### getMaximumSpan

    public float getMaximumSpan(int axis)

    Determines the maximum span for this view along an
    axis. For certain components, the maximum and preferred span are the
    same. For others this will return the value
    returned by Component.getMaximumSize along the
    axis of interest.

    Overrides:
    :   `getMaximumSpan` in class `ComponentView`

    Parameters:
    :   `axis` - may be either View.X\_AXIS or View.Y\_AXIS

    Returns:
    :   the span the view would like to be rendered into >= 0.
        Typically the view is told to render into the span
        that is returned, although there is no guarantee.
        The parent may choose to resize or break the view.

    Throws:
    :   `IllegalArgumentException` - for an invalid axis

    See Also:
    :   - [`View.getPreferredSpan(int)`](../View.md#getPreferredSpan(int))
  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../../java/awt/event/ActionEvent.md "class in java.awt.event") evt)

    Responsible for processing the ActionEvent.
    If the element associated with the FormView,
    has a type of "submit", "reset", "text" or "password"
    then the action is processed. In the case of a "submit"
    the form is submitted. In the case of a "reset"
    the form is reset to its original state.
    In the case of "text" or "password", if the
    element is the last one of type "text" or "password",
    the form is submitted. Otherwise, focus is transferred
    to the next component in the form.

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `evt` - the ActionEvent.
  + ### submitData

    protected void submitData([String](../../../../../java.base/java/lang/String.md "class in java.lang") data)

    This method is responsible for submitting the form data.
    A thread is forked to undertake the submission.

    Parameters:
    :   `data` - data to submit
  + ### imageSubmit

    protected void imageSubmit([String](../../../../../java.base/java/lang/String.md "class in java.lang") imageData)

    This method is called to submit a form in response
    to a click on an image -- an <INPUT> form
    element of type "image".

    Parameters:
    :   `imageData` - the mouse click coordinates.