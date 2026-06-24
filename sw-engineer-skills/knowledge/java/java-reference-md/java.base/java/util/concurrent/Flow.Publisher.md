Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface Flow.Publisher<T>

Type Parameters:
:   `T` - the published item type

All Known Subinterfaces:
:   `Flow.Processor<T,R>`, `HttpRequest.BodyPublisher`

All Known Implementing Classes:
:   `SubmissionPublisher`

Enclosing class:
:   `Flow`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public static interface Flow.Publisher<T>

A producer of items (and related control messages) received by
Subscribers. Each current [`Flow.Subscriber`](Flow.Subscriber.md "interface in java.util.concurrent") receives the same
items (via method `onNext`) in the same order, unless
drops or errors are encountered. If a Publisher encounters an
error that does not allow items to be issued to a Subscriber,
that Subscriber receives `onError`, and then receives no
further messages. Otherwise, when it is known that no further
messages will be issued to it, a subscriber receives `onComplete`. Publishers ensure that Subscriber method
invocations for each subscription are strictly ordered in [*happens-before*](package-summary.md#MemoryVisibility)
order.

Publishers may vary in policy about whether drops (failures
to issue an item because of resource limitations) are treated
as unrecoverable errors. Publishers may also vary about
whether Subscribers receive items that were produced or
available before they subscribed.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `subscribe(Flow.Subscriber<? super T> subscriber)`

  Adds the given Subscriber if possible.

* ## Method Details

  + ### subscribe

    void subscribe([Flow.Subscriber](Flow.Subscriber.md "interface in java.util.concurrent")<? super [T](Flow.Publisher.md "type parameter in Flow.Publisher")> subscriber)

    Adds the given Subscriber if possible. If already
    subscribed, or the attempt to subscribe fails due to policy
    violations or errors, the Subscriber's `onError`
    method is invoked with an [`IllegalStateException`](../../lang/IllegalStateException.md "class in java.lang").
    Otherwise, the Subscriber's `onSubscribe` method is
    invoked with a new [`Flow.Subscription`](Flow.Subscription.md "interface in java.util.concurrent"). Subscribers may
    enable receiving items by invoking the `request`
    method of this Subscription, and may unsubscribe by
    invoking its `cancel` method.

    Parameters:
    :   `subscriber` - the subscriber

    Throws:
    :   `NullPointerException` - if subscriber is null