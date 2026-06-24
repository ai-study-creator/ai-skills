Module [java.base](../../../../module-summary.md)

# Package java.util.concurrent.atomic

---

package java.util.concurrent.atomic

A small toolkit of classes that support lock-free thread-safe
programming on single variables. Instances of Atomic classes
maintain values that are accessed and updated using methods
otherwise available for fields using associated atomic [`VarHandle`](../../../lang/invoke/VarHandle.md "class in java.lang.invoke") operations.

Instances of classes
[`AtomicBoolean`](AtomicBoolean.md "class in java.util.concurrent.atomic"),
[`AtomicInteger`](AtomicInteger.md "class in java.util.concurrent.atomic"),
[`AtomicLong`](AtomicLong.md "class in java.util.concurrent.atomic"), and
[`AtomicReference`](AtomicReference.md "class in java.util.concurrent.atomic")
each provide access and updates to a single variable of the
corresponding type. Each class also provides appropriate utility
methods for that type. For example, classes `AtomicLong` and
`AtomicInteger` provide atomic increment methods. One
application is to generate sequence numbers, as in:

```
 class Sequencer {
   private final AtomicLong sequenceNumber
     = new AtomicLong(17);
   public long next() {
     return sequenceNumber.getAndIncrement();
   }
 }
```

Arbitrary transformations of the contained value are provided both
by low-level read-modify-write operations such as `compareAndSet`
and by higher-level methods such as `getAndUpdate`.

These classes are not general purpose replacements for `java.lang.Integer` and related classes. They do *not*
define methods such as `equals`, `hashCode` and `compareTo`. Because atomic variables are expected to be mutated,
they are poor choices for hash table keys.

The
[`AtomicIntegerArray`](AtomicIntegerArray.md "class in java.util.concurrent.atomic"),
[`AtomicLongArray`](AtomicLongArray.md "class in java.util.concurrent.atomic"), and
[`AtomicReferenceArray`](AtomicReferenceArray.md "class in java.util.concurrent.atomic") classes
further extend atomic operation support to arrays of these types.
These classes are also notable in providing `volatile` access
semantics for their array elements.

In addition to classes representing single values and arrays,
this package contains *Updater* classes that can be used to
obtain `compareAndSet` and related operations on any selected
`volatile` field of any selected class. These classes
predate the introduction of [`VarHandle`](../../../lang/invoke/VarHandle.md "class in java.lang.invoke"), and are of more limited use.
[`AtomicReferenceFieldUpdater`](AtomicReferenceFieldUpdater.md "class in java.util.concurrent.atomic"),
[`AtomicIntegerFieldUpdater`](AtomicIntegerFieldUpdater.md "class in java.util.concurrent.atomic"), and
[`AtomicLongFieldUpdater`](AtomicLongFieldUpdater.md "class in java.util.concurrent.atomic") are
reflection-based utilities that provide access to the associated
field types. These are mainly of use in atomic data structures in
which several `volatile` fields of the same node (for
example, the links of a tree node) are independently subject to
atomic updates. These classes enable greater flexibility in how
and when to use atomic updates, at the expense of more awkward
reflection-based setup, less convenient usage, and weaker
guarantees.

The [`AtomicMarkableReference`](AtomicMarkableReference.md "class in java.util.concurrent.atomic")
class associates a single boolean with a reference. For example, this
bit might be used inside a data structure to mean that the object
being referenced has logically been deleted.
The [`AtomicStampedReference`](AtomicStampedReference.md "class in java.util.concurrent.atomic")
class associates an integer value with a reference. This may be
used for example, to represent version numbers corresponding to
series of updates.

Since:
:   1.5

* Related Packages

  Package

  Description

  [java.util.concurrent](../package-summary.md)

  Utility classes commonly useful in concurrent programming.

  [java.util.concurrent.locks](../locks/package-summary.md)

  Interfaces and classes providing a framework for locking and waiting
  for conditions that is distinct from built-in synchronization and
  monitors.
* Classes

  Class

  Description

  [AtomicBoolean](AtomicBoolean.md "class in java.util.concurrent.atomic")

  A `boolean` value that may be updated atomically.

  [AtomicInteger](AtomicInteger.md "class in java.util.concurrent.atomic")

  An `int` value that may be updated atomically.

  [AtomicIntegerArray](AtomicIntegerArray.md "class in java.util.concurrent.atomic")

  An `int` array in which elements may be updated atomically.

  [AtomicIntegerFieldUpdater](AtomicIntegerFieldUpdater.md "class in java.util.concurrent.atomic")<T>

  A reflection-based utility that enables atomic updates to
  designated `volatile int` fields of designated classes.

  [AtomicLong](AtomicLong.md "class in java.util.concurrent.atomic")

  A `long` value that may be updated atomically.

  [AtomicLongArray](AtomicLongArray.md "class in java.util.concurrent.atomic")

  A `long` array in which elements may be updated atomically.

  [AtomicLongFieldUpdater](AtomicLongFieldUpdater.md "class in java.util.concurrent.atomic")<T>

  A reflection-based utility that enables atomic updates to
  designated `volatile long` fields of designated classes.

  [AtomicMarkableReference](AtomicMarkableReference.md "class in java.util.concurrent.atomic")<V>

  An `AtomicMarkableReference` maintains an object reference
  along with a mark bit, that can be updated atomically.

  [AtomicReference](AtomicReference.md "class in java.util.concurrent.atomic")<V>

  An object reference that may be updated atomically.

  [AtomicReferenceArray](AtomicReferenceArray.md "class in java.util.concurrent.atomic")<E>

  An array of object references in which elements may be updated
  atomically.

  [AtomicReferenceFieldUpdater](AtomicReferenceFieldUpdater.md "class in java.util.concurrent.atomic")<T,V>

  A reflection-based utility that enables atomic updates to
  designated `volatile` reference fields of designated
  classes.

  [AtomicStampedReference](AtomicStampedReference.md "class in java.util.concurrent.atomic")<V>

  An `AtomicStampedReference` maintains an object reference
  along with an integer "stamp", that can be updated atomically.

  [DoubleAccumulator](DoubleAccumulator.md "class in java.util.concurrent.atomic")

  One or more variables that together maintain a running `double`
  value updated using a supplied function.

  [DoubleAdder](DoubleAdder.md "class in java.util.concurrent.atomic")

  One or more variables that together maintain an initially zero
  `double` sum.

  [LongAccumulator](LongAccumulator.md "class in java.util.concurrent.atomic")

  One or more variables that together maintain a running `long`
  value updated using a supplied function.

  [LongAdder](LongAdder.md "class in java.util.concurrent.atomic")

  One or more variables that together maintain an initially zero
  `long` sum.