Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTML.UnknownTag

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.html.HTML.Tag](HTML.Tag.md "class in javax.swing.text.html")

javax.swing.text.html.HTML.UnknownTag

All Implemented Interfaces:
:   `Serializable`

Enclosing class:
:   `HTML`

---

public static class HTML.UnknownTag
extends [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html")
implements [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

Class represents unknown HTML tag.

* ## Field Summary

  ### Fields inherited from class javax.swing.text.html.[HTML.Tag](HTML.Tag.md "class in javax.swing.text.html")

  `A, ADDRESS, APPLET, AREA, B, BASE, BASEFONT, BIG, BLOCKQUOTE, BODY, BR, CAPTION, CENTER, CITE, CODE, COMMENT, CONTENT, DD, DFN, DIR, DIV, DL, DT, EM, FONT, FORM, FRAME, FRAMESET, H1, H2, H3, H4, H5, H6, HEAD, HR, HTML, I, IMG, IMPLIED, INPUT, ISINDEX, KBD, LI, LINK, MAP, MENU, META, NOFRAMES, OBJECT, OL, OPTION, P, PARAM, PRE, S, SAMP, SCRIPT, SELECT, SMALL, SPAN, STRIKE, STRONG, STYLE, SUB, SUP, TABLE, TD, TEXTAREA, TH, TITLE, TR, TT, U, UL, VAR`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnknownTag(String id)`

  Creates a new `UnknownTag` with the specified
  `id`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this object to the specified object.

  `int`

  `hashCode()`

  Returns the hash code which corresponds to the string
  for this tag.

  ### Methods inherited from class javax.swing.text.html.[HTML.Tag](HTML.Tag.md "class in javax.swing.text.html")

  `breaksFlow, isBlock, isPreformatted, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnknownTag

    public UnknownTag([String](../../../../../java.base/java/lang/String.md "class in java.lang") id)

    Creates a new `UnknownTag` with the specified
    `id`.

    Parameters:
    :   `id` - the id of the new tag
* ## Method Details

  + ### hashCode

    public int hashCode()

    Returns the hash code which corresponds to the string
    for this tag.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this object to the specified object.
    The result is `true` if and only if the argument is not
    `null` and is an `UnknownTag` object
    with the same name.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare this tag with

    Returns:
    :   `true` if the objects are equal;
        `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")