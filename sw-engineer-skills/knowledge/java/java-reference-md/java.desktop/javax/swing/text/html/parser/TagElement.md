Module [java.desktop](../../../../../module-summary.md)

Package [javax.swing.text.html.parser](package-summary.md)

# Class TagElement

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.parser.TagElement

---

public class TagElement
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

A generic HTML TagElement class. The methods define how white
space is interpreted around the tag.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TagElement(Element elem)`

  Creates a generic HTML TagElement class with `fictional` equals to `false`.

  `TagElement(Element elem,
  boolean fictional)`

  Creates a generic HTML TagElement class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `breaksFlow()`

  Returns `true` if this tag causes a
  line break to the flow of data, otherwise returns
  `false`.

  `boolean`

  `fictional()`

  Returns `true` if the tag is fictional.

  `Element`

  `getElement()`

  Returns the element.

  `HTML.Tag`

  `getHTMLTag()`

  Returns the tag constant corresponding to the name of the `element`

  `boolean`

  `isPreformatted()`

  Returns `true` if this tag is pre-formatted.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TagElement

    public TagElement([Element](Element.md "class in javax.swing.text.html.parser") elem)

    Creates a generic HTML TagElement class with `fictional` equals to `false`.

    Parameters:
    :   `elem` - an element
  + ### TagElement

    public TagElement([Element](Element.md "class in javax.swing.text.html.parser") elem,
    boolean fictional)

    Creates a generic HTML TagElement class.

    Parameters:
    :   `elem` - an element
    :   `fictional` - if `true` the tag is inserted by error recovery.
* ## Method Details

  + ### breaksFlow

    public boolean breaksFlow()

    Returns `true` if this tag causes a
    line break to the flow of data, otherwise returns
    `false`.

    Returns:
    :   `true` if this tag causes a
        line break to the flow of data, otherwise returns
        `false`
  + ### isPreformatted

    public boolean isPreformatted()

    Returns `true` if this tag is pre-formatted.

    Returns:
    :   `true` if this tag is pre-formatted,
        otherwise returns `false`
  + ### getElement

    public [Element](Element.md "class in javax.swing.text.html.parser") getElement()

    Returns the element.

    Returns:
    :   the element
  + ### getHTMLTag

    public [HTML.Tag](../HTML.Tag.md "class in javax.swing.text.html") getHTMLTag()

    Returns the tag constant corresponding to the name of the `element`

    Returns:
    :   the tag constant corresponding to the name of the `element`
  + ### fictional

    public boolean fictional()

    Returns `true` if the tag is fictional.

    Returns:
    :   `true` if the tag is fictional.