Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class LayoutQueue

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.LayoutQueue

---

public class LayoutQueue
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A queue of text layout tasks.

Since:
:   1.3

See Also:
:   * [`AsyncBoxView`](AsyncBoxView.md "class in javax.swing.text")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LayoutQueue()`

  Construct a layout queue.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addTask(Runnable task)`

  Add a task that is not needed immediately because
  the results are not believed to be visible.

  `static LayoutQueue`

  `getDefaultQueue()`

  Fetch the default layout queue.

  `static void`

  `setDefaultQueue(LayoutQueue q)`

  Set the default layout queue.

  `protected Runnable`

  `waitForWork()`

  Used by the worker thread to get a new task to execute.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LayoutQueue

    public LayoutQueue()

    Construct a layout queue.
* ## Method Details

  + ### getDefaultQueue

    public static [LayoutQueue](LayoutQueue.md "class in javax.swing.text") getDefaultQueue()

    Fetch the default layout queue.

    Returns:
    :   the default layout queue
  + ### setDefaultQueue

    public static void setDefaultQueue([LayoutQueue](LayoutQueue.md "class in javax.swing.text") q)

    Set the default layout queue.

    Parameters:
    :   `q` - the new queue.
  + ### addTask

    public void addTask([Runnable](../../../../java.base/java/lang/Runnable.md "interface in java.lang") task)

    Add a task that is not needed immediately because
    the results are not believed to be visible.

    Parameters:
    :   `task` - the task to add to the queue
  + ### waitForWork

    protected [Runnable](../../../../java.base/java/lang/Runnable.md "interface in java.lang") waitForWork()

    Used by the worker thread to get a new task to execute.

    Returns:
    :   a task from the queue