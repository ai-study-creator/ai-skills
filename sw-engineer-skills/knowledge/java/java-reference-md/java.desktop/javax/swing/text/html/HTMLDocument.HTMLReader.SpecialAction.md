Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLDocument.HTMLReader.SpecialAction

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.html.HTMLDocument.HTMLReader.TagAction](HTMLDocument.HTMLReader.TagAction.md "class in javax.swing.text.html")

javax.swing.text.html.HTMLDocument.HTMLReader.SpecialAction

Direct Known Subclasses:
:   `HTMLDocument.HTMLReader.FormAction`

Enclosing class:
:   `HTMLDocument.HTMLReader`

---

public class HTMLDocument.HTMLReader.SpecialAction
extends [HTMLDocument.HTMLReader.TagAction](HTMLDocument.HTMLReader.TagAction.md "class in javax.swing.text.html")

Action assigned by default to handle the Special task of the reader.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SpecialAction()`

  Constructs a `SpecialAction`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `start(HTML.Tag t,
  MutableAttributeSet a)`

  Called when a start tag is seen for the
  type of tag this action was registered
  to.

  ### Methods inherited from class javax.swing.text.html.[HTMLDocument.HTMLReader.TagAction](HTMLDocument.HTMLReader.TagAction.md "class in javax.swing.text.html")

  `end`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SpecialAction

    public SpecialAction()

    Constructs a `SpecialAction`.
* ## Method Details

  + ### start

    public void start([HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") t,
    [MutableAttributeSet](../MutableAttributeSet.md "interface in javax.swing.text") a)

    Description copied from class: `HTMLDocument.HTMLReader.TagAction`

    Called when a start tag is seen for the
    type of tag this action was registered
    to. The tag argument indicates the actual
    tag for those actions that are shared across
    many tags. By default this does nothing and
    completely ignores the tag.

    Overrides:
    :   `start` in class `HTMLDocument.HTMLReader.TagAction`

    Parameters:
    :   `t` - the HTML tag
    :   `a` - the attributes