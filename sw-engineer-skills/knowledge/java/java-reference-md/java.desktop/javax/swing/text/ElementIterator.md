Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class ElementIterator

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.ElementIterator

All Implemented Interfaces:
:   `Cloneable`

---

public class ElementIterator
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

`ElementIterator`, as the name suggests, iterates over the
`Element` tree. The constructor can be invoked with either
`Document` or an `Element` as an argument. If the constructor is
invoked with a `Document` as an argument then the root of the iteration
is the return value of `document.getDefaultRootElement()`.

The iteration happens in a depth-first manner. In terms of how boundary
conditions are handled:

* if [`next()`](#next()) is called before [`first()`](#first()) or [`current()`](#current()),
  the root will be returned* [`next()`](#next()) returns `null` to indicate the end of the list* [`previous()`](#previous()) returns `null` when the current element is the
      root or [`next()`](#next()) has returned `null`

The `ElementIterator` does no locking of the `Element` tree. This
means that it does not track any changes. It is the responsibility of the
user of this class, to ensure that no changes happen during element
iteration.

Simple usage example:

```
public void iterate() {
      ElementIterator it = new ElementIterator(root);
      Element elem;
      while (true) {
          if ((elem = it.next()) != null) {
              // process element
              System.out.println("elem: " + elem.getName());
          } else {
              break;
          }
      }
 }
```

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ElementIterator(Document document)`

  Creates a new `ElementIterator`.

  `ElementIterator(Element root)`

  Creates a new `ElementIterator`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Clones the `ElementIterator`.

  `Element`

  `current()`

  Fetches the current `Element`.

  `int`

  `depth()`

  Fetches the current depth of element tree.

  `Element`

  `first()`

  Fetches the first element.

  `Element`

  `next()`

  Fetches the next `Element`.

  `Element`

  `previous()`

  Fetches the previous `Element`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ElementIterator

    public ElementIterator([Document](Document.md "interface in javax.swing.text") document)

    Creates a new `ElementIterator`. The root element is taken to get
    the default root element of the document.

    Parameters:
    :   `document` - a `Document`
  + ### ElementIterator

    public ElementIterator([Element](Element.md "interface in javax.swing.text") root)

    Creates a new `ElementIterator`.

    Parameters:
    :   `root` - the root `Element`
* ## Method Details

  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Clones the `ElementIterator`.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a cloned `ElementIterator` Object

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### first

    public [Element](Element.md "interface in javax.swing.text") first()

    Fetches the first element.

    Returns:
    :   an `Element`
  + ### depth

    public int depth()

    Fetches the current depth of element tree.

    Returns:
    :   the depth
  + ### current

    public [Element](Element.md "interface in javax.swing.text") current()

    Fetches the current `Element`.

    Returns:
    :   element on top of the stack or `null` if the root element
        is `null`
  + ### next

    public [Element](Element.md "interface in javax.swing.text") next()

    Fetches the next `Element`. The strategy used to locate the next
    element is a depth-first search.

    Returns:
    :   the next element or `null` at the end of the list
  + ### previous

    public [Element](Element.md "interface in javax.swing.text") previous()

    Fetches the previous `Element`. If however the current element is
    the last element, or the current element is `null`, then
    `null` is returned.

    Returns:
    :   previous `Element` if available