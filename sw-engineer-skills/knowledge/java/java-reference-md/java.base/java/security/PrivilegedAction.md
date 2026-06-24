Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface PrivilegedAction<T>

Type Parameters:
:   `T` - the type of the result of running the computation

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface PrivilegedAction<T>

A computation to be performed with privileges enabled. The computation is
performed by invoking `AccessController.doPrivileged` on the
`PrivilegedAction` object. This interface is used only for
computations that do not throw checked exceptions; computations that
throw checked exceptions must use `PrivilegedExceptionAction`
instead.

Since:
:   1.2

See Also:
:   * [`AccessController`](AccessController.md "class in java.security")
    * [`AccessController.doPrivileged(PrivilegedAction)`](AccessController.md#doPrivileged(java.security.PrivilegedAction))
    * [`PrivilegedExceptionAction`](PrivilegedExceptionAction.md "interface in java.security")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `T`

  `run()`

  Performs the computation.

* ## Method Details

  + ### run

    [T](PrivilegedAction.md "type parameter in PrivilegedAction") run()

    Performs the computation. This method will be called by
    `AccessController.doPrivileged` after enabling privileges.

    Returns:
    :   a class-dependent value that may represent the results of the
        computation. Each class that implements
        `PrivilegedAction`
        should document what (if anything) this value represents.

    See Also:
    :   - [`AccessController.doPrivileged(PrivilegedAction)`](AccessController.md#doPrivileged(java.security.PrivilegedAction))
        - [`AccessController.doPrivileged(PrivilegedAction, AccessControlContext)`](AccessController.md#doPrivileged(java.security.PrivilegedAction,java.security.AccessControlContext))