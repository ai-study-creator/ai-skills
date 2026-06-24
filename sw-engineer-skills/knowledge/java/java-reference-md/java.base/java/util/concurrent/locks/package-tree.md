# Hierarchy For Package java.util.concurrent.locks

Package Hierarchies:

* [All Packages](../../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../lang/Object.md "class in java.lang")
  + java.util.concurrent.locks.[AbstractOwnableSynchronizer](AbstractOwnableSynchronizer.md "class in java.util.concurrent.locks") (implements java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
    - java.util.concurrent.locks.[AbstractQueuedLongSynchronizer](AbstractQueuedLongSynchronizer.md "class in java.util.concurrent.locks") (implements java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
    - java.util.concurrent.locks.[AbstractQueuedSynchronizer](AbstractQueuedSynchronizer.md "class in java.util.concurrent.locks") (implements java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
  + java.util.concurrent.locks.[AbstractQueuedLongSynchronizer.ConditionObject](AbstractQueuedLongSynchronizer.ConditionObject.md "class in java.util.concurrent.locks") (implements java.util.concurrent.locks.[Condition](Condition.md "interface in java.util.concurrent.locks"), java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
  + java.util.concurrent.locks.[AbstractQueuedSynchronizer.ConditionObject](AbstractQueuedSynchronizer.ConditionObject.md "class in java.util.concurrent.locks") (implements java.util.concurrent.locks.[Condition](Condition.md "interface in java.util.concurrent.locks"), java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
  + java.util.concurrent.locks.[LockSupport](LockSupport.md "class in java.util.concurrent.locks")
  + java.util.concurrent.locks.[ReentrantLock](ReentrantLock.md "class in java.util.concurrent.locks") (implements java.util.concurrent.locks.[Lock](Lock.md "interface in java.util.concurrent.locks"), java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
  + java.util.concurrent.locks.[ReentrantReadWriteLock](ReentrantReadWriteLock.md "class in java.util.concurrent.locks") (implements java.util.concurrent.locks.[ReadWriteLock](ReadWriteLock.md "interface in java.util.concurrent.locks"), java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
  + java.util.concurrent.locks.[ReentrantReadWriteLock.ReadLock](ReentrantReadWriteLock.ReadLock.md "class in java.util.concurrent.locks") (implements java.util.concurrent.locks.[Lock](Lock.md "interface in java.util.concurrent.locks"), java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
  + java.util.concurrent.locks.[ReentrantReadWriteLock.WriteLock](ReentrantReadWriteLock.WriteLock.md "class in java.util.concurrent.locks") (implements java.util.concurrent.locks.[Lock](Lock.md "interface in java.util.concurrent.locks"), java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))
  + java.util.concurrent.locks.[StampedLock](StampedLock.md "class in java.util.concurrent.locks") (implements java.io.[Serializable](../../../io/Serializable.md "interface in java.io"))

## Interface Hierarchy

* java.util.concurrent.locks.[Condition](Condition.md "interface in java.util.concurrent.locks")
* java.util.concurrent.locks.[Lock](Lock.md "interface in java.util.concurrent.locks")
* java.util.concurrent.locks.[ReadWriteLock](ReadWriteLock.md "interface in java.util.concurrent.locks")