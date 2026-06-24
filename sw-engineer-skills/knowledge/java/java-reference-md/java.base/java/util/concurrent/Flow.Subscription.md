Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface Flow.Subscription

Enclosing class:
:   `Flow`

---

public static interface Flow.Subscription

Message control linking a [`Flow.Publisher`](Flow.Publisher.md "interface in java.util.concurrent") and [`Flow.Subscriber`](Flow.Subscriber.md "interface in java.util.concurrent"). Subscribers receive items only when requested,
and may cancel at any time. The methods in this interface are
intended to be invoked only by their Subscribers; usages in
other contexts have undefined effects.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `cancel()`

  Causes the Subscriber to (eventually) stop receiving
  messages.

  `void`

  `request(long n)`

  Adds the given number `n` of items to the current
  unfulfilled demand for this subscription.

* ## Method Details

  + ### request

    void request(long n)

    Adds the given number `n` of items to the current
    unfulfilled demand for this subscription. If `n` is
    less than or equal to zero, the Subscriber will receive an
    `onError` signal with an [`IllegalArgumentException`](../../lang/IllegalArgumentException.md "class in java.lang") argument. Otherwise, the
    Subscriber will receive up to `n` additional `onNext` invocations (or fewer if terminated).

    Parameters:
    :   `n` - the increment of demand; a value of `Long.MAX_VALUE` may be considered as effectively unbounded
  + ### cancel

    void cancel()

    Causes the Subscriber to (eventually) stop receiving
    messages. Implementation is best-effort -- additional
    messages may be received after invoking this method.
    A cancelled subscription need not ever receive an
    `onComplete` or `onError` signal.