Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Interface CompletionHandler<V,A>

Type Parameters:
:   `V` - The result type of the I/O operation
:   `A` - The type of the object attached to the I/O operation

---

public interface CompletionHandler<V,A>

A handler for consuming the result of an asynchronous I/O operation.

The asynchronous channels defined in this package allow a completion
handler to be specified to consume the result of an asynchronous operation.
The [`completed`](#completed(V,A)) method is invoked when the I/O operation
completes successfully. The [`failed`](#failed(java.lang.Throwable,A)) method is invoked if the
I/O operations fails. The implementations of these methods should complete
in a timely manner so as to avoid keeping the invoking thread from dispatching
to other completion handlers.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `completed(V result,
  A attachment)`

  Invoked when an operation has completed.

  `void`

  `failed(Throwable exc,
  A attachment)`

  Invoked when an operation fails.

* ## Method Details

  + ### completed

    void completed([V](CompletionHandler.md "type parameter in CompletionHandler") result,
    [A](CompletionHandler.md "type parameter in CompletionHandler") attachment)

    Invoked when an operation has completed.

    Parameters:
    :   `result` - The result of the I/O operation.
    :   `attachment` - The object attached to the I/O operation when it was initiated.
  + ### failed

    void failed([Throwable](../../lang/Throwable.md "class in java.lang") exc,
    [A](CompletionHandler.md "type parameter in CompletionHandler") attachment)

    Invoked when an operation fails.

    Parameters:
    :   `exc` - The exception to indicate why the I/O operation failed
    :   `attachment` - The object attached to the I/O operation when it was initiated.