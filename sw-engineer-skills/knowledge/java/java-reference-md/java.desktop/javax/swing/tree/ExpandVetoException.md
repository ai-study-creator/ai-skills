Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Class ExpandVetoException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.swing.tree.ExpandVetoException

All Implemented Interfaces:
:   `Serializable`

---

public class ExpandVetoException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Exception used to stop an expand/collapse from happening.
See [How to Write a Tree-Will-Expand Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/treewillexpandlistener.html)
in *The Java Tutorial*
for further information and examples.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected TreeExpansionEvent`

  `event`

  The event that the exception was created for.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ExpandVetoException(TreeExpansionEvent event)`

  Constructs an ExpandVetoException object with no message.

  `ExpandVetoException(TreeExpansionEvent event,
  String message)`

  Constructs an ExpandVetoException object with the specified message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### event

    protected [TreeExpansionEvent](../event/TreeExpansionEvent.md "class in javax.swing.event") event

    The event that the exception was created for.
* ## Constructor Details

  + ### ExpandVetoException

    public ExpandVetoException([TreeExpansionEvent](../event/TreeExpansionEvent.md "class in javax.swing.event") event)

    Constructs an ExpandVetoException object with no message.

    Parameters:
    :   `event` - a TreeExpansionEvent object
  + ### ExpandVetoException

    public ExpandVetoException([TreeExpansionEvent](../event/TreeExpansionEvent.md "class in javax.swing.event") event,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs an ExpandVetoException object with the specified message.

    Parameters:
    :   `event` - a TreeExpansionEvent object
    :   `message` - a String containing the message