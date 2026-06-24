Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface Flow.Subscriber<T>

Type Parameters:
:   `T` - the subscribed item type

All Known Subinterfaces:
:   `Flow.Processor<T,R>`, `HttpResponse.BodySubscriber<T>`

Enclosing class:
:   `Flow`

---

public static interface Flow.Subscriber<T>

A receiver of messages. The methods in this interface are
invoked in strict sequential order for each [`Flow.Subscription`](Flow.Subscription.md "interface in java.util.concurrent").

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `onComplete()`

  Method invoked when it is known that no additional
  Subscriber method invocations will occur for a Subscription
  that is not already terminated by error, after which no
  other Subscriber methods are invoked by the Subscription.

  `void`

  `onError(Throwable throwable)`

  Method invoked upon an unrecoverable error encountered by a
  Publisher or Subscription, after which no other Subscriber
  methods are invoked by the Subscription.

  `void`

  `onNext(T item)`

  Method invoked with a Subscription's next item.

  `void`

  `onSubscribe(Flow.Subscription subscription)`

  Method invoked prior to invoking any other Subscriber
  methods for the given Subscription.

* ## Method Details

  + ### onSubscribe

    void onSubscribe([Flow.Subscription](Flow.Subscription.md "interface in java.util.concurrent") subscription)

    Method invoked prior to invoking any other Subscriber
    methods for the given Subscription. If this method throws
    an exception, resulting behavior is not guaranteed, but may
    cause the Subscription not to be established or to be cancelled.

    Typically, implementations of this method invoke `subscription.request` to enable receiving items.

    Parameters:
    :   `subscription` - a new subscription
  + ### onNext

    void onNext([T](Flow.Subscriber.md "type parameter in Flow.Subscriber") item)

    Method invoked with a Subscription's next item. If this
    method throws an exception, resulting behavior is not
    guaranteed, but may cause the Subscription to be cancelled.

    Parameters:
    :   `item` - the item
  + ### onError

    void onError([Throwable](../../lang/Throwable.md "class in java.lang") throwable)

    Method invoked upon an unrecoverable error encountered by a
    Publisher or Subscription, after which no other Subscriber
    methods are invoked by the Subscription. If this method
    itself throws an exception, resulting behavior is
    undefined.

    Parameters:
    :   `throwable` - the exception
  + ### onComplete

    void onComplete()

    Method invoked when it is known that no additional
    Subscriber method invocations will occur for a Subscription
    that is not already terminated by error, after which no
    other Subscriber methods are invoked by the Subscription.
    If this method throws an exception, resulting behavior is
    undefined.