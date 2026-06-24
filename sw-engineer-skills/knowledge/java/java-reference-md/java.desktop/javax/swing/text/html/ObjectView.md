Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class ObjectView

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](../View.md "class in javax.swing.text")

[javax.swing.text.ComponentView](../ComponentView.md "class in javax.swing.text")

javax.swing.text.html.ObjectView

All Implemented Interfaces:
:   `SwingConstants`

---

public class ObjectView
extends [ComponentView](../ComponentView.md "class in javax.swing.text")

Component decorator that implements the view interface
for <object> elements.

This view will try to load the class specified by the
`classid` attribute. If possible, the Classloader
used to load the associated Document is used.
This would typically be the same as the ClassLoader
used to load the EditorKit. If the document's
ClassLoader is null, `Class.forName` is used.

If the class can successfully be loaded, an attempt will
be made to create an instance of it by calling
`Class.newInstance`. An attempt will be made
to narrow the instance to type `java.awt.Component`
to display the object.

This view can also manage a set of parameters with limitations.
The parameters to the <object> element are expected to
be present on the associated elements attribute set as simple
strings. Each bean property will be queried as a key on
the AttributeSet, with the expectation that a non-null value
(of type String) will be present if there was a parameter
specification for the property. Reflection is used to
set the parameter. Currently, this is limited to a very
simple single parameter of type String.

A simple example HTML invocation is:

```
      <object classid="javax.swing.JLabel">
      <param name="text" value="sample text">
      </object>
```

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ObjectView(Element elem)`

  Creates a new ObjectView object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected Component`

  `createComponent()`

  Create the component.

  ### Methods inherited from class javax.swing.text.[ComponentView](../ComponentView.md "class in javax.swing.text")

  `getAlignment, getComponent, getMaximumSpan, getMinimumSpan, getPreferredSpan, modelToView, paint, setParent, viewToModel`

  ### Methods inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `append, breakView, changedUpdate, createFragment, forwardUpdate, forwardUpdateToView, getAttributes, getBreakWeight, getChildAllocation, getContainer, getDocument, getElement, getEndOffset, getGraphics, getNextVisualPositionFrom, getParent, getResizeWeight, getStartOffset, getToolTipText, getView, getViewCount, getViewFactory, getViewIndex, getViewIndex, insert, insertUpdate, isVisible, modelToView, modelToView, preferenceChanged, remove, removeAll, removeUpdate, replace, setSize, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ObjectView

    public ObjectView([Element](../Element.md "interface in javax.swing.text") elem)

    Creates a new ObjectView object.

    Parameters:
    :   `elem` - the element to decorate
* ## Method Details

  + ### createComponent

    protected [Component](../../../../java/awt/Component.md "class in java.awt") createComponent()

    Create the component. The classid is used
    as a specification of the classname, which
    we try to load.

    Overrides:
    :   `createComponent` in class `ComponentView`

    Returns:
    :   the component that is associated with
        this view