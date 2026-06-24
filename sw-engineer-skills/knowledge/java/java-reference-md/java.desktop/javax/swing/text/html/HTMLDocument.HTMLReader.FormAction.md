Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLDocument.HTMLReader.FormAction

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.html.HTMLDocument.HTMLReader.TagAction](HTMLDocument.HTMLReader.TagAction.md "class in javax.swing.text.html")

[javax.swing.text.html.HTMLDocument.HTMLReader.SpecialAction](HTMLDocument.HTMLReader.SpecialAction.md "class in javax.swing.text.html")

javax.swing.text.html.HTMLDocument.HTMLReader.FormAction

Enclosing class:
:   `HTMLDocument.HTMLReader`

---

public class HTMLDocument.HTMLReader.FormAction
extends [HTMLDocument.HTMLReader.SpecialAction](HTMLDocument.HTMLReader.SpecialAction.md "class in javax.swing.text.html")

Action to support forms by building all of the elements
used to represent form controls. This will process
the <INPUT>, <TEXTAREA>, <SELECT>,
and <OPTION> tags. The element created by
this action is expected to have the attribute
`StyleConstants.ModelAttribute` set to
the model that holds the state for the form control.
This enables multiple views, and allows document to
be iterated over picking up the data of the form.
The following are the model assignments for the
various type of form elements.

Model assignments for the various types of form elements

| Element Type Model Type | |
| --- | --- |
| input, type button [`DefaultButtonModel`](../../DefaultButtonModel.md "class in javax.swing")| input, type checkbox [`JToggleButton.ToggleButtonModel`](../../JToggleButton.ToggleButtonModel.md "class in javax.swing")| input, type image [`DefaultButtonModel`](../../DefaultButtonModel.md "class in javax.swing")| input, type password [`PlainDocument`](../PlainDocument.md "class in javax.swing.text")| input, type radio [`JToggleButton.ToggleButtonModel`](../../JToggleButton.ToggleButtonModel.md "class in javax.swing")| input, type reset [`DefaultButtonModel`](../../DefaultButtonModel.md "class in javax.swing")| input, type submit [`DefaultButtonModel`](../../DefaultButtonModel.md "class in javax.swing")| input, type text or type is null. [`PlainDocument`](../PlainDocument.md "class in javax.swing.text")| select [`DefaultComboBoxModel`](../../DefaultComboBoxModel.md "class in javax.swing") or an [`DefaultListModel`](../../DefaultListModel.md "class in javax.swing"), with an item type of Option| textarea [`PlainDocument`](../PlainDocument.md "class in javax.swing.text") | | | | | | | | | | | | | | | | | | | |

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FormAction()`

  Constructs a `FormAction`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `end(HTML.Tag t)`

  Called when an end tag is seen for the
  type of tag this action was registered
  to.

  `void`

  `start(HTML.Tag t,
  MutableAttributeSet attr)`

  Called when a start tag is seen for the
  type of tag this action was registered
  to.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FormAction

    public FormAction()

    Constructs a `FormAction`.
* ## Method Details

  + ### start

    public void start([HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") t,
    [MutableAttributeSet](../MutableAttributeSet.md "interface in javax.swing.text") attr)

    Description copied from class: `HTMLDocument.HTMLReader.TagAction`

    Called when a start tag is seen for the
    type of tag this action was registered
    to. The tag argument indicates the actual
    tag for those actions that are shared across
    many tags. By default this does nothing and
    completely ignores the tag.

    Overrides:
    :   `start` in class `HTMLDocument.HTMLReader.SpecialAction`

    Parameters:
    :   `t` - the HTML tag
    :   `attr` - the attributes
  + ### end

    public void end([HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") t)

    Description copied from class: `HTMLDocument.HTMLReader.TagAction`

    Called when an end tag is seen for the
    type of tag this action was registered
    to. The tag argument indicates the actual
    tag for those actions that are shared across
    many tags. By default this does nothing and
    completely ignores the tag.

    Overrides:
    :   `end` in class `HTMLDocument.HTMLReader.TagAction`

    Parameters:
    :   `t` - the HTML tag