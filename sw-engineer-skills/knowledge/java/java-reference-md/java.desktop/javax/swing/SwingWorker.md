Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class SwingWorker<T,V>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.SwingWorker<T,V>

Type Parameters:
:   `T` - the result type returned by this `SwingWorker's`
    `doInBackground` and `get` methods
:   `V` - the type used for carrying out intermediate results by this
    `SwingWorker's` `publish` and `process` methods

All Implemented Interfaces:
:   `Runnable`, `Future<T>`, `RunnableFuture<T>`

---

public abstract class SwingWorker<T,V>
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [RunnableFuture](../../../java.base/java/util/concurrent/RunnableFuture.md "interface in java.util.concurrent")<T>

An abstract class to perform lengthy GUI-interaction tasks in a
background thread. Several background threads can be used to execute such
tasks. However, the exact strategy of choosing a thread for any particular
`SwingWorker` is unspecified and should not be relied on.

When writing a multi-threaded application using Swing, there are
two constraints to keep in mind:
(refer to
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html) for more details):

* Time-consuming tasks should not be run on the *Event
  Dispatch Thread*. Otherwise the application becomes unresponsive.
* Swing components should be accessed on the *Event
  Dispatch Thread* only.

These constraints mean that a GUI application with time intensive
computing needs at least two threads: 1) a thread to perform the lengthy
task and 2) the *Event Dispatch Thread* (EDT) for all GUI-related
activities. This involves inter-thread communication which can be
tricky to implement.

`SwingWorker` is designed for situations where you need to have a long
running task run in a background thread and provide updates to the UI
either when done, or while processing.
Subclasses of `SwingWorker` must implement
the [`doInBackground()`](#doInBackground()) method to perform the background computation.

**Workflow**

There are three threads involved in the life cycle of a
`SwingWorker` :

* *Current* thread: The [`execute()`](#execute()) method is
  called on this thread. It schedules `SwingWorker` for the execution on a
  *worker*
  thread and returns immediately. One can wait for the `SwingWorker` to
  complete using the [`get`](#get()) methods.* *Worker* thread: The [`doInBackground()`](#doInBackground())
    method is called on this thread.
    This is where all background activities should happen. To notify
    `PropertyChangeListeners` about bound properties changes use the
    [`firePropertyChange`](#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object)) and
    [`getPropertyChangeSupport()`](#getPropertyChangeSupport()) methods. By default there are two bound
    properties available: `state` and `progress`.* *Event Dispatch Thread*: All Swing related activities occur
      on this thread. `SwingWorker` invokes the
      [`process`](#process(java.util.List)) and [`done()`](#done()) methods and notifies
      any `PropertyChangeListeners` on this thread.

Often, the *Current* thread is the *Event Dispatch
Thread*.

Before the `doInBackground` method is invoked on a *worker* thread,
`SwingWorker` notifies any `PropertyChangeListeners` about the
`state` property change to `StateValue.STARTED`. After the
`doInBackground` method is finished the `done` method is
executed. Then `SwingWorker` notifies any `PropertyChangeListeners`
about the `state` property change to `StateValue.DONE`.

`SwingWorker` is only designed to be executed once. Executing a
`SwingWorker` more than once will not result in invoking the
`doInBackground` method twice.

**Sample Usage**

The following example illustrates the simplest use case. Some
processing is done in the background and when done you update a Swing
component.

Say we want to find the "Meaning of Life" and display the result in
a `JLabel`.

```
   final JLabel label;
   class MeaningOfLifeFinder extends SwingWorker<String, Object> {
       @Override
       public String doInBackground() {
           return findTheMeaningOfLife();
       }

       @Override
       protected void done() {
           try {
               label.setText(get());
           } catch (Exception ignore) {
           }
       }
   }

   (new MeaningOfLifeFinder()).execute();
```

The next example is useful in situations where you wish to process data
as it is ready on the *Event Dispatch Thread*.

Now we want to find the first N prime numbers and display the results in a
`JTextArea`. While this is computing, we want to update our
progress in a `JProgressBar`. Finally, we also want to print
the prime numbers to `System.out`.

```
 class PrimeNumbersTask extends
         SwingWorker<List<Integer>, Integer> {
     PrimeNumbersTask(JTextArea textArea, int numbersToFind) {
         //initialize
     }

     @Override
     public List<Integer> doInBackground() {
         while (! enough && ! isCancelled()) {
                 number = nextPrimeNumber();
                 publish(number);
                 setProgress(100 * numbers.size() / numbersToFind);
             }
         }
         return numbers;
     }

     @Override
     protected void process(List<Integer> chunks) {
         for (int number : chunks) {
             textArea.append(number + "\n");
         }
     }
 }

 JTextArea textArea = new JTextArea();
 final JProgressBar progressBar = new JProgressBar(0, 100);
 PrimeNumbersTask task = new PrimeNumbersTask(textArea, N);
 task.addPropertyChangeListener(
     new PropertyChangeListener() {
         public  void propertyChange(PropertyChangeEvent evt) {
             if ("progress".equals(evt.getPropertyName())) {
                 progressBar.setValue((Integer)evt.getNewValue());
             }
         }
     });

 task.execute();
 System.out.println(task.get()); //prints all prime numbers we have got
```

Because `SwingWorker` implements `Runnable`, a
`SwingWorker` can be submitted to an
[`Executor`](../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent") for execution.

Since:
:   1.6

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `SwingWorker.StateValue`

  Values for the `state` bound property.

  ## Nested classes/interfaces inherited from interface java.util.concurrent.[Future](../../../java.base/java/util/concurrent/Future.md "interface in java.util.concurrent")

  `Future.State`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SwingWorker()`

  Constructs this `SwingWorker`.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Adds a `PropertyChangeListener` to the listener list.

  `final boolean`

  `cancel(boolean mayInterruptIfRunning)`

  Attempts to cancel execution of this task.

  `protected abstract T`

  `doInBackground()`

  Computes a result, or throws an exception if unable to do so.

  `protected void`

  `done()`

  Executed on the *Event Dispatch Thread* after the `doInBackground`
  method is finished.

  `final void`

  `execute()`

  Schedules this `SwingWorker` for execution on a *worker*
  thread.

  `final void`

  `firePropertyChange(String propertyName,
  Object oldValue,
  Object newValue)`

  Reports a bound property update to any registered listeners.

  `final T`

  `get()`

  Waits if necessary for the computation to complete, and then
  retrieves its result.

  `final T`

  `get(long timeout,
  TimeUnit unit)`

  Waits if necessary for at most the given time for the computation
  to complete, and then retrieves its result, if available.

  `final int`

  `getProgress()`

  Returns the `progress` bound property.

  `final PropertyChangeSupport`

  `getPropertyChangeSupport()`

  Returns the `PropertyChangeSupport` for this `SwingWorker`.

  `final SwingWorker.StateValue`

  `getState()`

  Returns the `SwingWorker` state bound property.

  `final boolean`

  `isCancelled()`

  Returns `true` if this task was cancelled before it completed
  normally.

  `final boolean`

  `isDone()`

  Returns `true` if this task completed.

  `protected void`

  `process(List<V> chunks)`

  Receives data chunks from the `publish` method asynchronously on the
  *Event Dispatch Thread*.

  `protected final void`

  `publish(V... chunks)`

  Sends data chunks to the [`process(java.util.List<V>)`](#process(java.util.List)) method.

  `final void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Removes a `PropertyChangeListener` from the listener list.

  `final void`

  `run()`

  Sets this `Future` to the result of computation unless
  it has been cancelled.

  `protected final void`

  `setProgress(int progress)`

  Sets the `progress` bound property.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.util.concurrent.[Future](../../../java.base/java/util/concurrent/Future.md "interface in java.util.concurrent")

  `exceptionNow, resultNow, state`

* ## Constructor Details

  + ### SwingWorker

    public SwingWorker()

    Constructs this `SwingWorker`.
* ## Method Details

  + ### doInBackground

    protected abstract [T](SwingWorker.md "type parameter in SwingWorker") doInBackground()
    throws [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

    Computes a result, or throws an exception if unable to do so.

    Note that this method is executed only once.

    Note: this method is executed in a background thread.

    Returns:
    :   the computed result

    Throws:
    :   `Exception` - if unable to compute a result
  + ### run

    public final void run()

    Sets this `Future` to the result of computation unless
    it has been cancelled.

    Specified by:
    :   `run` in interface `Runnable`

    Specified by:
    :   `run` in interface `RunnableFuture<T>`
  + ### publish

    [@SafeVarargs](../../../java.base/java/lang/SafeVarargs.md "annotation interface in java.lang")
    protected final void publish([V](SwingWorker.md "type parameter in SwingWorker")... chunks)

    Sends data chunks to the [`process(java.util.List<V>)`](#process(java.util.List)) method. This method is to be
    used from inside the `doInBackground` method to deliver
    intermediate results
    for processing on the *Event Dispatch Thread* inside the
    `process` method.

    Because the `process` method is invoked asynchronously on
    the *Event Dispatch Thread*
    multiple invocations to the `publish` method
    might occur before the `process` method is executed. For
    performance purposes all these invocations are coalesced into one
    invocation with concatenated arguments.

    For example:

    ```
     publish("1");
     publish("2", "3");
     publish("4", "5", "6");
    ```

    might result in:

    ```
     process("1", "2", "3", "4", "5", "6")
    ```

    **Sample Usage**. This code snippet loads some tabular data and
    updates `DefaultTableModel` with it. Note that it safe to mutate
    the tableModel from inside the `process` method because it is
    invoked on the *Event Dispatch Thread*.

    ```
     class TableSwingWorker extends
             SwingWorker<DefaultTableModel, Object[]> {
         private final DefaultTableModel tableModel;

         public TableSwingWorker(DefaultTableModel tableModel) {
             this.tableModel = tableModel;
         }

         @Override
         protected DefaultTableModel doInBackground() throws Exception {
             for (Object[] row = loadData();
                      ! isCancelled() && row != null;
                      row = loadData()) {
                 publish((Object[]) row);
             }
             return tableModel;
         }

         @Override
         protected void process(List<Object[]> chunks) {
             for (Object[] row : chunks) {
                 tableModel.addRow(row);
             }
         }
     }
    ```

    Parameters:
    :   `chunks` - intermediate results to process

    See Also:
    :   - [`process(java.util.List<V>)`](#process(java.util.List))
  + ### process

    protected void process([List](../../../java.base/java/util/List.md "interface in java.util")<[V](SwingWorker.md "type parameter in SwingWorker")> chunks)

    Receives data chunks from the `publish` method asynchronously on the
    *Event Dispatch Thread*.

    Please refer to the [`publish(V...)`](#publish(V...)) method for more details.

    Parameters:
    :   `chunks` - intermediate results to process

    See Also:
    :   - [`publish(V...)`](#publish(V...))
  + ### done

    protected void done()

    Executed on the *Event Dispatch Thread* after the `doInBackground`
    method is finished. The default
    implementation does nothing. Subclasses may override this method to
    perform completion actions on the *Event Dispatch Thread*. Note
    that you can query status inside the implementation of this method to
    determine the result of this task or whether this task has been cancelled.

    See Also:
    :   - [`doInBackground()`](#doInBackground())
        - [`isCancelled()`](#isCancelled())
        - [`get()`](#get())
  + ### setProgress

    protected final void setProgress(int progress)

    Sets the `progress` bound property.
    The value should be from 0 to 100.

    Because `PropertyChangeListener`s are notified asynchronously on
    the *Event Dispatch Thread* multiple invocations to the
    `setProgress` method might occur before any
    `PropertyChangeListeners` are invoked. For performance purposes
    all these invocations are coalesced into one invocation with the last
    invocation argument only.

    For example, the following invocations:

    ```
     setProgress(1);
     setProgress(2);
     setProgress(3);
    ```

    might result in a single `PropertyChangeListener` notification with
    the value `3`.

    Parameters:
    :   `progress` - the progress value to set

    Throws:
    :   `IllegalArgumentException` - is value not from 0 to 100
  + ### getProgress

    public final int getProgress()

    Returns the `progress` bound property.

    Returns:
    :   the progress bound property.
  + ### execute

    public final void execute()

    Schedules this `SwingWorker` for execution on a *worker*
    thread. There are a number of *worker* threads available. In the
    event all *worker* threads are busy handling other
    `SwingWorkers` this `SwingWorker` is placed in a waiting
    queue.

    Note:
    `SwingWorker` is only designed to be executed once. Executing a
    `SwingWorker` more than once will not result in invoking the
    `doInBackground` method twice.
  + ### cancel

    public final boolean cancel(boolean mayInterruptIfRunning)

    Attempts to cancel execution of this task. This method has no
    effect if the task is already completed or cancelled, or could
    not be cancelled for some other reason. Otherwise, if this
    task has not started when `cancel` is called, this task
    should never run. If the task has already started, then the
    `mayInterruptIfRunning` parameter determines whether the
    thread executing this task (when known by the implementation)
    is interrupted in an attempt to stop the task.

    The return value from this method does not necessarily
    indicate whether the task is now cancelled; use [`Future.isCancelled()`](../../../java.base/java/util/concurrent/Future.md#isCancelled()).

    Specified by:
    :   `cancel` in interface `Future<T>`

    Parameters:
    :   `mayInterruptIfRunning` - `true` if the thread
        executing this task should be interrupted (if the thread is
        known to the implementation); otherwise, in-progress tasks are
        allowed to complete

    Returns:
    :   `false` if the task could not be cancelled,
        typically because it has already completed; `true`
        otherwise. If two or more threads cause a task to be cancelled,
        then at least one of them returns `true`. Implementations
        may provide stronger guarantees.
  + ### isCancelled

    public final boolean isCancelled()

    Returns `true` if this task was cancelled before it completed
    normally.

    Specified by:
    :   `isCancelled` in interface `Future<T>`

    Returns:
    :   `true` if this task was cancelled before it completed
  + ### isDone

    public final boolean isDone()

    Returns `true` if this task completed.
    Completion may be due to normal termination, an exception, or
    cancellation -- in all of these cases, this method will return
    `true`.

    Specified by:
    :   `isDone` in interface `Future<T>`

    Returns:
    :   `true` if this task completed
  + ### get

    public final [T](SwingWorker.md "type parameter in SwingWorker") get()
    throws [InterruptedException](../../../java.base/java/lang/InterruptedException.md "class in java.lang"),
    [ExecutionException](../../../java.base/java/util/concurrent/ExecutionException.md "class in java.util.concurrent")

    Waits if necessary for the computation to complete, and then
    retrieves its result.

    Note: calling `get` on the *Event Dispatch Thread* blocks
    *all* events, including repaints, from being processed until this
    `SwingWorker` is complete.

    When you want the `SwingWorker` to block on the *Event
    Dispatch Thread* we recommend that you use a *modal dialog*.

    For example:

    ```
     class SwingWorkerCompletionWaiter implements PropertyChangeListener {
         private JDialog dialog;

         public SwingWorkerCompletionWaiter(JDialog dialog) {
             this.dialog = dialog;
         }

         public void propertyChange(PropertyChangeEvent event) {
             if ("state".equals(event.getPropertyName())
                     && SwingWorker.StateValue.DONE == event.getNewValue()) {
                 dialog.setVisible(false);
                 dialog.dispose();
             }
         }
     }
     JDialog dialog = new JDialog(owner, true);
     swingWorker.addPropertyChangeListener(
         new SwingWorkerCompletionWaiter(dialog));
     swingWorker.execute();
     //the dialog will be visible until the SwingWorker is done
     dialog.setVisible(true);
    ```

    Specified by:
    :   `get` in interface `Future<T>`

    Returns:
    :   the computed result

    Throws:
    :   `CancellationException` - if the computation was cancelled
    :   `InterruptedException` - if the current thread was interrupted
        while waiting
    :   `ExecutionException` - if the computation threw an
        exception
  + ### get

    public final [T](SwingWorker.md "type parameter in SwingWorker") get(long timeout,
    [TimeUnit](../../../java.base/java/util/concurrent/TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../../java.base/java/lang/InterruptedException.md "class in java.lang"),
    [ExecutionException](../../../java.base/java/util/concurrent/ExecutionException.md "class in java.util.concurrent"),
    [TimeoutException](../../../java.base/java/util/concurrent/TimeoutException.md "class in java.util.concurrent")

    Waits if necessary for at most the given time for the computation
    to complete, and then retrieves its result, if available.

    Please refer to [`get()`](#get()) for more details.

    Specified by:
    :   `get` in interface `Future<T>`

    Parameters:
    :   `timeout` - the maximum time to wait
    :   `unit` - the time unit of the timeout argument

    Returns:
    :   the computed result

    Throws:
    :   `CancellationException` - if the computation was cancelled
    :   `InterruptedException` - if the current thread was interrupted
        while waiting
    :   `ExecutionException` - if the computation threw an
        exception
    :   `TimeoutException` - if the wait timed out
  + ### addPropertyChangeListener

    public final void addPropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Adds a `PropertyChangeListener` to the listener list. The listener
    is registered for all properties. The same listener object may be added
    more than once, and will be called as many times as it is added. If
    `listener` is `null`, no exception is thrown and no action is taken.

    Note: This is merely a convenience wrapper. All work is delegated to
    `PropertyChangeSupport` from [`getPropertyChangeSupport()`](#getPropertyChangeSupport()).

    Parameters:
    :   `listener` - the `PropertyChangeListener` to be added
  + ### removePropertyChangeListener

    public final void removePropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Removes a `PropertyChangeListener` from the listener list. This
    removes a `PropertyChangeListener` that was registered for all
    properties. If `listener` was added more than once to the same
    event source, it will be notified one less time after being removed. If
    `listener` is `null`, or was never added, no exception is
    thrown and no action is taken.

    Note: This is merely a convenience wrapper. All work is delegated to
    `PropertyChangeSupport` from [`getPropertyChangeSupport()`](#getPropertyChangeSupport()).

    Parameters:
    :   `listener` - the `PropertyChangeListener` to be removed
  + ### firePropertyChange

    public final void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Reports a bound property update to any registered listeners. No event is
    fired if `old` and `new` are equal and non-null.

    This `SwingWorker` will be the source for
    any generated events.

    When called off the *Event Dispatch Thread*
    `PropertyChangeListeners` are notified asynchronously on
    the *Event Dispatch Thread*.

    Note: This is merely a convenience wrapper. All work is delegated to
    `PropertyChangeSupport` from [`getPropertyChangeSupport()`](#getPropertyChangeSupport()).

    Parameters:
    :   `propertyName` - the programmatic name of the property that was
        changed
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property
  + ### getPropertyChangeSupport

    public final [PropertyChangeSupport](../../java/beans/PropertyChangeSupport.md "class in java.beans") getPropertyChangeSupport()

    Returns the `PropertyChangeSupport` for this `SwingWorker`.
    This method is used when flexible access to bound properties support is
    needed.

    This `SwingWorker` will be the source for
    any generated events.

    Note: The returned `PropertyChangeSupport` notifies any
    `PropertyChangeListener`s asynchronously on the *Event Dispatch
    Thread* in the event that `firePropertyChange` or
    `fireIndexedPropertyChange` are called off the *Event Dispatch
    Thread*.

    Returns:
    :   `PropertyChangeSupport` for this `SwingWorker`
  + ### getState

    public final [SwingWorker.StateValue](SwingWorker.StateValue.md "enum class in javax.swing") getState()

    Returns the `SwingWorker` state bound property.

    Returns:
    :   the current state