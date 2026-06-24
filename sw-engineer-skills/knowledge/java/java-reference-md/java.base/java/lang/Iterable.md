Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface Iterable<T>

Type Parameters:
:   `T` - the type of elements returned by the iterator

All Known Subinterfaces:
:   `BeanContext`, `BeanContextServices`, `BlockingDeque<E>`, `BlockingQueue<E>`, `Collection<E>`, `Deque<E>`, `DirectoryStream<T>`, `List<E>`, `NavigableSet<E>`, `NodeSetData<T>`, `Path`, `Queue<E>`, `SecureDirectoryStream<T>`, `SequencedCollection<E>`, `SequencedSet<E>`, `Set<E>`, `SortedSet<E>`, `TransferQueue<E>`, `XPathNodes`

All Known Implementing Classes:
:   `AbstractCollection`, `AbstractList`, `AbstractQueue`, `AbstractSequentialList`, `AbstractSet`, `ArrayBlockingQueue`, `ArrayDeque`, `ArrayList`, `AttributeList`, `BatchUpdateException`, `BeanContextServicesSupport`, `BeanContextSupport`, `ConcurrentHashMap.KeySetView`, `ConcurrentLinkedDeque`, `ConcurrentLinkedQueue`, `ConcurrentSkipListSet`, `CopyOnWriteArrayList`, `CopyOnWriteArraySet`, `DataTruncation`, `DelayQueue`, `EnumSet`, `HashSet`, `JobStateReasons`, `LinkedBlockingDeque`, `LinkedBlockingQueue`, `LinkedHashSet`, `LinkedList`, `LinkedTransferQueue`, `PriorityBlockingQueue`, `PriorityQueue`, `RoleList`, `RoleUnresolvedList`, `RowSetWarning`, `SerialException`, `ServiceLoader`, `SQLClientInfoException`, `SQLDataException`, `SQLException`, `SQLFeatureNotSupportedException`, `SQLIntegrityConstraintViolationException`, `SQLInvalidAuthorizationSpecException`, `SQLNonTransientConnectionException`, `SQLNonTransientException`, `SQLRecoverableException`, `SQLSyntaxErrorException`, `SQLTimeoutException`, `SQLTransactionRollbackException`, `SQLTransientConnectionException`, `SQLTransientException`, `SQLWarning`, `Stack`, `SyncFactoryException`, `SynchronousQueue`, `SyncProviderException`, `TreeSet`, `Vector`

---

public interface Iterable<T>

Implementing this interface allows an object to be the target of the enhanced
`for` statement (sometimes called the "for-each loop" statement).

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default void`

  `forEach(Consumer<? super T> action)`

  Performs the given action for each element of the `Iterable`
  until all elements have been processed or the action throws an
  exception.

  `Iterator<T>`

  `iterator()`

  Returns an iterator over elements of type `T`.

  `default Spliterator<T>`

  `spliterator()`

  Creates a [`Spliterator`](../util/Spliterator.md "interface in java.util") over the elements described by this
  `Iterable`.

* ## Method Details

  + ### iterator

    [Iterator](../util/Iterator.md "interface in java.util")<[T](Iterable.md "type parameter in Iterable")> iterator()

    Returns an iterator over elements of type `T`.

    Returns:
    :   an Iterator.
  + ### forEach

    default void forEach([Consumer](../util/function/Consumer.md "interface in java.util.function")<? super [T](Iterable.md "type parameter in Iterable")> action)

    Performs the given action for each element of the `Iterable`
    until all elements have been processed or the action throws an
    exception. Actions are performed in the order of iteration, if that
    order is specified. Exceptions thrown by the action are relayed to the
    caller.

    The behavior of this method is unspecified if the action performs
    side-effects that modify the underlying source of elements, unless an
    overriding class has specified a concurrent modification policy.

    Parameters:
    :   `action` - The action to be performed for each element

    Throws:
    :   `NullPointerException` - if the specified action is null

    Since:
    :   1.8
  + ### spliterator

    default [Spliterator](../util/Spliterator.md "interface in java.util")<[T](Iterable.md "type parameter in Iterable")> spliterator()

    Creates a [`Spliterator`](../util/Spliterator.md "interface in java.util") over the elements described by this
    `Iterable`.

    Returns:
    :   a `Spliterator` over the elements described by this
        `Iterable`.

    Since:
    :   1.8