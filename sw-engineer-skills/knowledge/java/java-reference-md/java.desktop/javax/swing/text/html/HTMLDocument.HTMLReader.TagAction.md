Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLDocument.HTMLReader.TagAction

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.HTMLDocument.HTMLReader.TagAction

Direct Known Subclasses:
:   `HTMLDocument.HTMLReader.BlockAction`, `HTMLDocument.HTMLReader.CharacterAction`, `HTMLDocument.HTMLReader.HiddenAction`, `HTMLDocument.HTMLReader.IsindexAction`, `HTMLDocument.HTMLReader.SpecialAction`

Enclosing class:
:   `HTMLDocument.HTMLReader`

---

public class HTMLDocument.HTMLReader.TagAction
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

An action to be performed in response
to parsing a tag. This allows customization
of how each tag is handled and avoids a large
switch statement.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TagAction()`

  Constructs a `TagAction`.
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
  MutableAttributeSet a)`

  Called when a start tag is seen for the
  type of tag this action was registered
  to.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TagAction

    public TagAction()

    Constructs a `TagAction`.
* ## Method Details

  + ### start

    public void start([HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") t,
    [MutableAttributeSet](../MutableAttributeSet.md "interface in javax.swing.text") a)

    Called when a start tag is seen for the
    type of tag this action was registered
    to. The tag argument indicates the actual
    tag for those actions that are shared across
    many tags. By default this does nothing and
    completely ignores the tag.

    Parameters:
    :   `t` - the HTML tag
    :   `a` - the attributes
  + ### end

    public void end([HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") t)

    Called when an end tag is seen for the
    type of tag this action was registered
    to. The tag argument indicates the actual
    tag for those actions that are shared across
    many tags. By default this does nothing and
    completely ignores the tag.

    Parameters:
    :   `t` - the HTML tag