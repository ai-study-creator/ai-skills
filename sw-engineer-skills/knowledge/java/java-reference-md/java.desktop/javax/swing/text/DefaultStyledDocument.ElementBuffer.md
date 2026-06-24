Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultStyledDocument.ElementBuffer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.DefaultStyledDocument.ElementBuffer

All Implemented Interfaces:
:   `Serializable`

Enclosing class:
:   `DefaultStyledDocument`

---

public class DefaultStyledDocument.ElementBuffer
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Class to manage changes to the element
hierarchy.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ElementBuffer(Element root)`

  Creates a new ElementBuffer.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `change(int offset,
  int length,
  AbstractDocument.DefaultDocumentEvent de)`

  Changes content.

  `protected void`

  `changeUpdate()`

  Updates the element structure in response to a change in the
  document.

  `Element`

  `clone(Element parent,
  Element clonee)`

  Creates a copy of this element, with a different
  parent.

  `Element`

  `getRootElement()`

  Gets the root element.

  `void`

  `insert(int offset,
  int length,
  DefaultStyledDocument.ElementSpec[] data,
  AbstractDocument.DefaultDocumentEvent de)`

  Inserts new content.

  `protected void`

  `insertUpdate(DefaultStyledDocument.ElementSpec[] data)`

  Inserts an update into the document.

  `void`

  `remove(int offset,
  int length,
  AbstractDocument.DefaultDocumentEvent de)`

  Removes content.

  `protected void`

  `removeUpdate()`

  Updates the element structure in response to a removal from the
  associated sequence in the document.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ElementBuffer

    public ElementBuffer([Element](Element.md "interface in javax.swing.text") root)

    Creates a new ElementBuffer.

    Parameters:
    :   `root` - the root element

    Since:
    :   1.4
* ## Method Details

  + ### getRootElement

    public [Element](Element.md "interface in javax.swing.text") getRootElement()

    Gets the root element.

    Returns:
    :   the root element
  + ### insert

    public void insert(int offset,
    int length,
    [DefaultStyledDocument.ElementSpec](DefaultStyledDocument.ElementSpec.md "class in javax.swing.text")[] data,
    [AbstractDocument.DefaultDocumentEvent](AbstractDocument.DefaultDocumentEvent.md "class in javax.swing.text") de)

    Inserts new content.

    Parameters:
    :   `offset` - the starting offset >= 0
    :   `length` - the length >= 0
    :   `data` - the data to insert
    :   `de` - the event capturing this edit
  + ### remove

    public void remove(int offset,
    int length,
    [AbstractDocument.DefaultDocumentEvent](AbstractDocument.DefaultDocumentEvent.md "class in javax.swing.text") de)

    Removes content.

    Parameters:
    :   `offset` - the starting offset >= 0
    :   `length` - the length >= 0
    :   `de` - the event capturing this edit
  + ### change

    public void change(int offset,
    int length,
    [AbstractDocument.DefaultDocumentEvent](AbstractDocument.DefaultDocumentEvent.md "class in javax.swing.text") de)

    Changes content.

    Parameters:
    :   `offset` - the starting offset >= 0
    :   `length` - the length >= 0
    :   `de` - the event capturing this edit
  + ### insertUpdate

    protected void insertUpdate([DefaultStyledDocument.ElementSpec](DefaultStyledDocument.ElementSpec.md "class in javax.swing.text")[] data)

    Inserts an update into the document.

    Parameters:
    :   `data` - the elements to insert
  + ### removeUpdate

    protected void removeUpdate()

    Updates the element structure in response to a removal from the
    associated sequence in the document. Any elements consumed by the
    span of the removal are removed.
  + ### changeUpdate

    protected void changeUpdate()

    Updates the element structure in response to a change in the
    document.
  + ### clone

    public [Element](Element.md "interface in javax.swing.text") clone([Element](Element.md "interface in javax.swing.text") parent,
    [Element](Element.md "interface in javax.swing.text") clonee)

    Creates a copy of this element, with a different
    parent.

    Parameters:
    :   `parent` - the parent element
    :   `clonee` - the element to be cloned

    Returns:
    :   the copy