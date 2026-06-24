Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class TreeExpansionEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.TreeExpansionEvent

All Implemented Interfaces:
:   `Serializable`

---

public class TreeExpansionEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

An event used to identify a single path in a tree. The source
returned by **getSource** will be an instance of JTree.

For further documentation and examples see
the following sections in *The Java Tutorial*:
[How to Write a Tree Expansion Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/treeexpansionlistener.html) and
[How to Write a Tree-Will-Expand Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/treewillexpandlistener.html).

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected TreePath`

  `path`

  Path to the value this event represents.

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TreeExpansionEvent(Object source,
  TreePath path)`

  Constructs a TreeExpansionEvent object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `TreePath`

  `getPath()`

  Returns the path to the value that has been expanded/collapsed.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### path

    protected [TreePath](../tree/TreePath.md "class in javax.swing.tree") path

    Path to the value this event represents.
* ## Constructor Details

  + ### TreeExpansionEvent

    public TreeExpansionEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [TreePath](../tree/TreePath.md "class in javax.swing.tree") path)

    Constructs a TreeExpansionEvent object.

    Parameters:
    :   `source` - the Object that originated the event
        (typically `this`)
    :   `path` - a TreePath object identifying the newly expanded
        node
* ## Method Details

  + ### getPath

    public [TreePath](../tree/TreePath.md "class in javax.swing.tree") getPath()

    Returns the path to the value that has been expanded/collapsed.

    Returns:
    :   this event's `TreePath` object