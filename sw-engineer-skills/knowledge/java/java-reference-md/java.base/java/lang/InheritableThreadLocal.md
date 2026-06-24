Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class InheritableThreadLocal<T>

[java.lang.Object](Object.md "class in java.lang")

[java.lang.ThreadLocal](ThreadLocal.md "class in java.lang")<T>

java.lang.InheritableThreadLocal<T>

Type Parameters:
:   `T` - the type of the inheritable thread local's value

---

public class InheritableThreadLocal<T>
extends [ThreadLocal](ThreadLocal.md "class in java.lang")<T>

This class extends `ThreadLocal` to provide inheritance of values
from parent thread to child thread: when a child thread is created, the
child receives initial values for all inheritable thread-local variables
for which the parent has values. Normally the child's values will be
identical to the parent's; however, the child's value can be made an
arbitrary function of the parent's by overriding the `childValue`
method in this class.

Inheritable thread-local variables are used in preference to
ordinary thread-local variables when the per-thread-attribute being
maintained in the variable (e.g., User ID, Transaction ID) must be
automatically transmitted to any child threads that are created.

Note: During the creation of a new [`thread`](Thread.md#%3Cinit%3E(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String,long,boolean)), it is
possible to *opt out* of receiving initial values for inheritable
thread-local variables.

Since:
:   1.2

See Also:
:   * [`ThreadLocal`](ThreadLocal.md "class in java.lang")
    * [`Thread.Builder.inheritInheritableThreadLocals(boolean)`](Thread.Builder.md#inheritInheritableThreadLocals(boolean))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InheritableThreadLocal()`

  Creates an inheritable thread local variable.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected T`

  `childValue(T parentValue)`

  Computes the child's initial value for this inheritable thread-local
  variable as a function of the parent's value at the time the child
  thread is created.

  ### Methods inherited from class java.lang.[ThreadLocal](ThreadLocal.md "class in java.lang")

  `get, initialValue, remove, set, withInitial`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### InheritableThreadLocal

    public InheritableThreadLocal()

    Creates an inheritable thread local variable.
* ## Method Details

  + ### childValue

    protected [T](InheritableThreadLocal.md "type parameter in InheritableThreadLocal") childValue([T](InheritableThreadLocal.md "type parameter in InheritableThreadLocal") parentValue)

    Computes the child's initial value for this inheritable thread-local
    variable as a function of the parent's value at the time the child
    thread is created. This method is called from within the parent
    thread before the child is started.

    This method merely returns its input argument, and should be overridden
    if a different behavior is desired.

    Parameters:
    :   `parentValue` - the parent thread's value

    Returns:
    :   the child thread's initial value