Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface Flow.Processor<T,R>

Type Parameters:
:   `T` - the subscribed item type
:   `R` - the published item type

All Superinterfaces:
:   `Flow.Publisher<R>`, `Flow.Subscriber<T>`

Enclosing class:
:   `Flow`

---

public static interface Flow.Processor<T,R>
extends [Flow.Subscriber](Flow.Subscriber.md "interface in java.util.concurrent")<T>, [Flow.Publisher](Flow.Publisher.md "interface in java.util.concurrent")<R>

A component that acts as both a Subscriber and Publisher.

* ## Method Summary

  ### Methods inherited from interface java.util.concurrent.[Flow.Publisher](Flow.Publisher.md "interface in java.util.concurrent")

  `subscribe`

  ### Methods inherited from interface java.util.concurrent.[Flow.Subscriber](Flow.Subscriber.md "interface in java.util.concurrent")

  `onComplete, onError, onNext, onSubscribe`