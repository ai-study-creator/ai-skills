Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLDocument.HTMLReader.PreAction

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.html.HTMLDocument.HTMLReader.TagAction](HTMLDocument.HTMLReader.TagAction.md "class in javax.swing.text.html")

[javax.swing.text.html.HTMLDocument.HTMLReader.BlockAction](HTMLDocument.HTMLReader.BlockAction.md "class in javax.swing.text.html")

javax.swing.text.html.HTMLDocument.HTMLReader.PreAction

Enclosing class:
:   `HTMLDocument.HTMLReader`

---

public class HTMLDocument.HTMLReader.PreAction
extends [HTMLDocument.HTMLReader.BlockAction](HTMLDocument.HTMLReader.BlockAction.md "class in javax.swing.text.html")

Action assigned by default to handle the Pre block task of the reader.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PreAction()`

  Constructs a `PreAction`.
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

  + ### PreAction

    public PreAction()

    Constructs a `PreAction`.
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
    :   `start` in class `HTMLDocument.HTMLReader.BlockAction`

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
    :   `end` in class `HTMLDocument.HTMLReader.BlockAction`

    Parameters:
    :   `t` - the HTML tag