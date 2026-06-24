Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLDocument.Iterator

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.HTMLDocument.Iterator

Enclosing class:
:   `HTMLDocument`

---

public abstract static class HTMLDocument.Iterator
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

An iterator to iterate over a particular type of
tag. The iterator is not thread safe. If reliable
access to the document is not already ensured by
the context under which the iterator is being used,
its use should be performed under the protection of
Document.render.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Iterator()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract AttributeSet`

  `getAttributes()`

  Return the attributes for this tag.

  `abstract int`

  `getEndOffset()`

  Returns the end of the range for which the current occurrence of
  the tag is defined and has the same attributes.

  `abstract int`

  `getStartOffset()`

  Returns the start of the range for which the current occurrence of
  the tag is defined and has the same attributes.

  `abstract HTML.Tag`

  `getTag()`

  Type of tag this iterator represents.

  `abstract boolean`

  `isValid()`

  Indicates if the iterator is currently
  representing an occurrence of a tag.

  `abstract void`

  `next()`

  Move the iterator forward to the next occurrence
  of the tag it represents.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Iterator

    protected Iterator()

    Constructor for subclasses to call.
* ## Method Details

  + ### getAttributes

    public abstract [AttributeSet](../AttributeSet.md "interface in javax.swing.text") getAttributes()

    Return the attributes for this tag.

    Returns:
    :   the `AttributeSet` for this tag, or
        `null` if none can be found
  + ### getStartOffset

    public abstract int getStartOffset()

    Returns the start of the range for which the current occurrence of
    the tag is defined and has the same attributes.

    Returns:
    :   the start of the range, or -1 if it can't be found
  + ### getEndOffset

    public abstract int getEndOffset()

    Returns the end of the range for which the current occurrence of
    the tag is defined and has the same attributes.

    Returns:
    :   the end of the range
  + ### next

    public abstract void next()

    Move the iterator forward to the next occurrence
    of the tag it represents.
  + ### isValid

    public abstract boolean isValid()

    Indicates if the iterator is currently
    representing an occurrence of a tag. If
    false there are no more tags for this iterator.

    Returns:
    :   true if the iterator is currently representing an
        occurrence of a tag, otherwise returns false
  + ### getTag

    public abstract [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") getTag()

    Type of tag this iterator represents.

    Returns:
    :   the tag