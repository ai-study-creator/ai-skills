Module [java.base](../../module-summary.md)

# Package java.util

---

package java.util

Contains the collections framework, some internationalization support classes,
a service loader, properties, random number generation, string parsing
and scanning classes, base64 encoding and decoding, a bit array, and
several miscellaneous utility classes. This package also contains
legacy collection classes and legacy date and time classes.

## Java Collections Framework

For an overview, API outline, and design rationale, please see:

* [**Collections Framework Documentation**](doc-files/coll-index.md)

For a tutorial and programming guide with examples of use
of the collections framework, please see:

* [**Collections Framework Tutorial**](http://docs.oracle.com/javase/tutorial/collections/index.html)

Since:
:   1.0

* Related Packages

  Module

  Package

  Description

  [java.base](../../module-summary.md)

  [java.util.concurrent](concurrent/package-summary.md)

  Utility classes commonly useful in concurrent programming.

  [java.base](../../module-summary.md)

  [java.util.function](function/package-summary.md)

  *Functional interfaces* provide target types for lambda expressions
  and method references.

  [java.base](../../module-summary.md)

  [java.util.jar](jar/package-summary.md)

  Provides classes for reading and writing the JAR (Java ARchive)
  file format, which is based on the standard ZIP file format with an
  optional manifest file.

  [java.logging](../../../java.logging/module-summary.md)

  [java.util.logging](../../../java.logging/java/util/logging/package-summary.md)

  Provides the classes and interfaces of
  the Java 2 platform's core logging facilities.

  [java.prefs](../../../java.prefs/module-summary.md)

  [java.util.prefs](../../../java.prefs/java/util/prefs/package-summary.md)

  This package allows applications to store and retrieve user and system
  preference and configuration data.

  [java.base](../../module-summary.md)

  [java.util.random](random/package-summary.md)

  This package contains classes and interfaces that support a generic API
  for random number generation.

  [java.base](../../module-summary.md)

  [java.util.regex](regex/package-summary.md)

  Classes for matching character sequences against patterns specified
  by regular expressions.

  [java.base](../../module-summary.md)

  [java.util.spi](spi/package-summary.md)

  Service provider classes for the classes in the java.util package.

  [java.base](../../module-summary.md)

  [java.util.stream](stream/package-summary.md)

  Classes to support functional-style operations on streams of elements, such
  as map-reduce transformations on collections.

  [java.base](../../module-summary.md)

  [java.util.zip](zip/package-summary.md)

  Provides classes for reading and writing the standard ZIP and GZIP file
  formats.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [AbstractCollection](AbstractCollection.md "class in java.util")<E>

  This class provides a skeletal implementation of the `Collection`
  interface, to minimize the effort required to implement this interface.

  [AbstractList](AbstractList.md "class in java.util")<E>

  This class provides a skeletal implementation of the [`List`](List.md "interface in java.util")
  interface to minimize the effort required to implement this interface
  backed by a "random access" data store (such as an array).

  [AbstractMap](AbstractMap.md "class in java.util")<K,V>

  This class provides a skeletal implementation of the `Map`
  interface, to minimize the effort required to implement this interface.

  [AbstractMap.SimpleEntry](AbstractMap.SimpleEntry.md "class in java.util")<K,V>

  An Entry maintaining a key and a value.

  [AbstractMap.SimpleImmutableEntry](AbstractMap.SimpleImmutableEntry.md "class in java.util")<K,V>

  An unmodifiable Entry maintaining a key and a value.

  [AbstractQueue](AbstractQueue.md "class in java.util")<E>

  This class provides skeletal implementations of some [`Queue`](Queue.md "interface in java.util")
  operations.

  [AbstractSequentialList](AbstractSequentialList.md "class in java.util")<E>

  This class provides a skeletal implementation of the `List`
  interface to minimize the effort required to implement this interface
  backed by a "sequential access" data store (such as a linked list).

  [AbstractSet](AbstractSet.md "class in java.util")<E>

  This class provides a skeletal implementation of the `Set`
  interface to minimize the effort required to implement this
  interface.

  [ArrayDeque](ArrayDeque.md "class in java.util")<E>

  Resizable-array implementation of the [`Deque`](Deque.md "interface in java.util") interface.

  [ArrayList](ArrayList.md "class in java.util")<E>

  Resizable-array implementation of the `List` interface.

  [Arrays](Arrays.md "class in java.util")

  This class contains various methods for manipulating arrays (such as
  sorting and searching).

  [Base64](Base64.md "class in java.util")

  This class consists exclusively of static methods for obtaining
  encoders and decoders for the Base64 encoding scheme.

  [Base64.Decoder](Base64.Decoder.md "class in java.util")

  This class implements a decoder for decoding byte data using the
  Base64 encoding scheme as specified in RFC 4648 and RFC 2045.

  [Base64.Encoder](Base64.Encoder.md "class in java.util")

  This class implements an encoder for encoding byte data using
  the Base64 encoding scheme as specified in RFC 4648 and RFC 2045.

  [BitSet](BitSet.md "class in java.util")

  This class implements a vector of bits that grows as needed.

  [Calendar](Calendar.md "class in java.util")

  The `Calendar` class is an abstract class that provides methods
  for converting between a specific instant in time and a set of [`calendar fields`](Calendar.md#fields) such as `YEAR`, `MONTH`,
  `DAY_OF_MONTH`, `HOUR`, and so on, and for
  manipulating the calendar fields, such as getting the date of the next
  week.

  [Calendar.Builder](Calendar.Builder.md "class in java.util")

  `Calendar.Builder` is used for creating a `Calendar` from
  various date-time parameters.

  [Collection](Collection.md "interface in java.util")<E>

  The root interface in the *collection hierarchy*.

  [Collections](Collections.md "class in java.util")

  This class consists exclusively of static methods that operate on or return
  collections.

  [Comparator](Comparator.md "interface in java.util")<T>

  A comparison function, which imposes a *total ordering* on
  some collection of objects.

  [ConcurrentModificationException](ConcurrentModificationException.md "class in java.util")

  This exception may be thrown by methods that have detected concurrent
  modification of an object when such modification is not permissible.

  [Currency](Currency.md "class in java.util")

  Represents a currency.

  [Date](Date.md "class in java.util")

  The class `Date` represents a specific instant
  in time, with millisecond precision.

  [Deque](Deque.md "interface in java.util")<E>

  A linear collection that supports element insertion and removal at
  both ends.

  [Dictionary](Dictionary.md "class in java.util")<K,V>

  The `Dictionary` class is the abstract parent of any
  class, such as `Hashtable`, which maps keys to values.

  [DoubleSummaryStatistics](DoubleSummaryStatistics.md "class in java.util")

  A state object for collecting statistics such as count, min, max, sum, and
  average.

  [DuplicateFormatFlagsException](DuplicateFormatFlagsException.md "class in java.util")

  Unchecked exception thrown when duplicate flags are provided in the format
  specifier.

  [EmptyStackException](EmptyStackException.md "class in java.util")

  Thrown by methods in the `Stack` class to indicate
  that the stack is empty.

  [Enumeration](Enumeration.md "interface in java.util")<E>

  An object that implements the Enumeration interface generates a
  series of elements, one at a time.

  [EnumMap](EnumMap.md "class in java.util")<K extends [Enum](../lang/Enum.md "class in java.lang")<K>,V>

  A specialized [`Map`](Map.md "interface in java.util") implementation for use with enum type keys.

  [EnumSet](EnumSet.md "class in java.util")<E extends [Enum](../lang/Enum.md "class in java.lang")<E>>

  A specialized [`Set`](Set.md "interface in java.util") implementation for use with enum types.

  [EventListener](EventListener.md "interface in java.util")

  A tagging interface that all event listener interfaces must extend.

  [EventListenerProxy](EventListenerProxy.md "class in java.util")<T extends [EventListener](EventListener.md "interface in java.util")>

  An abstract wrapper class for an `EventListener` class
  which associates a set of additional parameters with the listener.

  [EventObject](EventObject.md "class in java.util")

  The root class from which all event state objects shall be derived.

  [FormatFlagsConversionMismatchException](FormatFlagsConversionMismatchException.md "class in java.util")

  Unchecked exception thrown when a conversion and flag are incompatible.

  [FormatProcessor](FormatProcessor.md "class in java.util")[PREVIEW](FormatProcessor.md#preview-java.util.FormatProcessor)

  Preview.

  This [`StringTemplate.Processor`](../lang/StringTemplate.Processor.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor) constructs a [`String`](../lang/String.md "class in java.lang") result using
  [`Formatter`](Formatter.md "class in java.util") specifications and values found in the [`StringTemplate`](../lang/StringTemplate.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.md#preview-java.lang.StringTemplate).

  [Formattable](Formattable.md "interface in java.util")

  The `Formattable` interface must be implemented by any class that
  needs to perform custom formatting using the `'s'` conversion
  specifier of [`Formatter`](Formatter.md "class in java.util").

  [FormattableFlags](FormattableFlags.md "class in java.util")

  FormattableFlags are passed to the [`Formattable.formatTo()`](Formattable.md#formatTo(java.util.Formatter,int,int,int)) method and modify the output format for [Formattables](Formattable.md "interface in java.util").

  [Formatter](Formatter.md "class in java.util")

  An interpreter for printf-style format strings.

  [Formatter.BigDecimalLayoutForm](Formatter.BigDecimalLayoutForm.md "enum class in java.util")

  Enum for `BigDecimal` formatting.

  [FormatterClosedException](FormatterClosedException.md "class in java.util")

  Unchecked exception thrown when the formatter has been closed.

  [GregorianCalendar](GregorianCalendar.md "class in java.util")

  `GregorianCalendar` is a concrete subclass of
  `Calendar` and provides the standard calendar system
  used by most of the world.

  [HashMap](HashMap.md "class in java.util")<K,V>

  Hash table based implementation of the `Map` interface.

  [HashSet](HashSet.md "class in java.util")<E>

  This class implements the `Set` interface, backed by a hash table
  (actually a `HashMap` instance).

  [Hashtable](Hashtable.md "class in java.util")<K,V>

  This class implements a hash table, which maps keys to values.

  [HexFormat](HexFormat.md "class in java.util")

  `HexFormat` converts between bytes and chars and hex-encoded strings which may include
  additional formatting markup such as prefixes, suffixes, and delimiters.

  [IdentityHashMap](IdentityHashMap.md "class in java.util")<K,V>

  This class implements the `Map` interface with a hash table, using
  reference-equality in place of object-equality when comparing keys (and
  values).

  [IllegalFormatCodePointException](IllegalFormatCodePointException.md "class in java.util")

  Unchecked exception thrown when a character with an invalid Unicode code
  point as defined by [`Character.isValidCodePoint(int)`](../lang/Character.md#isValidCodePoint(int)) is passed to the
  [`Formatter`](Formatter.md "class in java.util").

  [IllegalFormatConversionException](IllegalFormatConversionException.md "class in java.util")

  Unchecked exception thrown when the argument corresponding to the format
  specifier is of an incompatible type.

  [IllegalFormatException](IllegalFormatException.md "class in java.util")

  Unchecked exception thrown when a format string contains an illegal syntax
  or a format specifier that is incompatible with the given arguments.

  [IllegalFormatFlagsException](IllegalFormatFlagsException.md "class in java.util")

  Unchecked exception thrown when an illegal combination flags is given.

  [IllegalFormatPrecisionException](IllegalFormatPrecisionException.md "class in java.util")

  Unchecked exception thrown when the precision is a negative value other than
  `-1`, the conversion does not support a precision, or the value is
  otherwise unsupported.

  [IllegalFormatWidthException](IllegalFormatWidthException.md "class in java.util")

  Unchecked exception thrown when the format width is a negative value other
  than `-1` or is otherwise unsupported.

  [IllformedLocaleException](IllformedLocaleException.md "class in java.util")

  Thrown by methods in [`Locale`](Locale.md "class in java.util") and [`Locale.Builder`](Locale.Builder.md "class in java.util") to
  indicate that an argument is not a well-formed BCP 47 tag.

  [InputMismatchException](InputMismatchException.md "class in java.util")

  Thrown by a `Scanner` to indicate that the token
  retrieved does not match the pattern for the expected type, or
  that the token is out of range for the expected type.

  [IntSummaryStatistics](IntSummaryStatistics.md "class in java.util")

  A state object for collecting statistics such as count, min, max, sum, and
  average.

  [InvalidPropertiesFormatException](InvalidPropertiesFormatException.md "class in java.util")

  Thrown to indicate that an operation could not complete because
  the input did not conform to the appropriate XML document type
  for a collection of properties, as per the [`Properties`](Properties.md "class in java.util")
  specification.

  [Iterator](Iterator.md "interface in java.util")<E>

  An iterator over a collection.

  [LinkedHashMap](LinkedHashMap.md "class in java.util")<K,V>

  Hash table and linked list implementation of the `Map` interface,
  with well-defined encounter order.

  [LinkedHashSet](LinkedHashSet.md "class in java.util")<E>

  Hash table and linked list implementation of the `Set` interface,
  with well-defined encounter order.

  [LinkedList](LinkedList.md "class in java.util")<E>

  Doubly-linked list implementation of the `List` and `Deque`
  interfaces.

  [List](List.md "interface in java.util")<E>

  An ordered collection, where the user has precise control over where in the
  list each element is inserted.

  [ListIterator](ListIterator.md "interface in java.util")<E>

  An iterator for lists that allows the programmer
  to traverse the list in either direction, modify
  the list during iteration, and obtain the iterator's
  current position in the list.

  [ListResourceBundle](ListResourceBundle.md "class in java.util")

  `ListResourceBundle` is an abstract subclass of
  `ResourceBundle` that manages resources for a locale
  in a convenient and easy to use list.

  [Locale](Locale.md "class in java.util")

  A `Locale` object represents a specific geographical, political,
  or cultural region.

  [Locale.Builder](Locale.Builder.md "class in java.util")

  `Builder` is used to build instances of `Locale`
  from values configured by the setters.

  [Locale.Category](Locale.Category.md "enum class in java.util")

  Enum for locale categories.

  [Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util")

  This enum provides constants to select a filtering mode for locale
  matching.

  [Locale.IsoCountryCode](Locale.IsoCountryCode.md "enum class in java.util")

  Enum for specifying the type defined in ISO 3166.

  [Locale.LanguageRange](Locale.LanguageRange.md "class in java.util")

  This class expresses a *Language Range* defined in
  [RFC 4647 Matching of
  Language Tags](https://tools.ietf.org/html/rfc4647).

  [LongSummaryStatistics](LongSummaryStatistics.md "class in java.util")

  A state object for collecting statistics such as count, min, max, sum, and
  average.

  [Map](Map.md "interface in java.util")<K,V>

  An object that maps keys to values.

  [Map.Entry](Map.Entry.md "interface in java.util")<K,V>

  A map entry (key-value pair).

  [MissingFormatArgumentException](MissingFormatArgumentException.md "class in java.util")

  Unchecked exception thrown when there is a format specifier which does not
  have a corresponding argument or if an argument index refers to an argument
  that does not exist.

  [MissingFormatWidthException](MissingFormatWidthException.md "class in java.util")

  Unchecked exception thrown when the format width is required.

  [MissingResourceException](MissingResourceException.md "class in java.util")

  Signals that a resource is missing.

  [NavigableMap](NavigableMap.md "interface in java.util")<K,V>

  A [`SortedMap`](SortedMap.md "interface in java.util") extended with navigation methods returning the
  closest matches for given search targets.

  [NavigableSet](NavigableSet.md "interface in java.util")<E>

  A [`SortedSet`](SortedSet.md "interface in java.util") extended with navigation methods reporting
  closest matches for given search targets.

  [NoSuchElementException](NoSuchElementException.md "class in java.util")

  Thrown by various accessor methods to indicate that the element being requested
  does not exist.

  [Objects](Objects.md "class in java.util")

  This class consists of `static` utility methods for operating
  on objects, or checking certain conditions before operation.

  [Observable](Observable.md "class in java.util")

  Deprecated.

  This class and the [`Observer`](Observer.md "interface in java.util") interface have been deprecated.

  [Observer](Observer.md "interface in java.util")

  Deprecated.

  This interface has been deprecated.

  [Optional](Optional.md "class in java.util")<T>

  A container object which may or may not contain a non-`null` value.

  [OptionalDouble](OptionalDouble.md "class in java.util")

  A container object which may or may not contain a `double` value.

  [OptionalInt](OptionalInt.md "class in java.util")

  A container object which may or may not contain an `int` value.

  [OptionalLong](OptionalLong.md "class in java.util")

  A container object which may or may not contain a `long` value.

  [PrimitiveIterator](PrimitiveIterator.md "interface in java.util")<T,T\_CONS>

  A base type for primitive specializations of `Iterator`.

  [PrimitiveIterator.OfDouble](PrimitiveIterator.OfDouble.md "interface in java.util")

  An Iterator specialized for `double` values.

  [PrimitiveIterator.OfInt](PrimitiveIterator.OfInt.md "interface in java.util")

  An Iterator specialized for `int` values.

  [PrimitiveIterator.OfLong](PrimitiveIterator.OfLong.md "interface in java.util")

  An Iterator specialized for `long` values.

  [PriorityQueue](PriorityQueue.md "class in java.util")<E>

  An unbounded priority [queue](Queue.md "interface in java.util") based on a priority heap.

  [Properties](Properties.md "class in java.util")

  The `Properties` class represents a persistent set of
  properties.

  [PropertyPermission](PropertyPermission.md "class in java.util")

  This class is for property permissions.

  [PropertyResourceBundle](PropertyResourceBundle.md "class in java.util")

  `PropertyResourceBundle` is a concrete subclass of
  `ResourceBundle` that manages resources for a locale
  using a set of static strings from a property file.

  [Queue](Queue.md "interface in java.util")<E>

  A collection designed for holding elements prior to processing.

  [Random](Random.md "class in java.util")

  An instance of this class is used to generate a stream of
  pseudorandom numbers; its period is only 248.

  [RandomAccess](RandomAccess.md "interface in java.util")

  Marker interface used by `List` implementations to indicate that
  they support fast (generally constant time) random access.

  [ResourceBundle](ResourceBundle.md "class in java.util")

  Resource bundles contain locale-specific objects.

  [ResourceBundle.Control](ResourceBundle.Control.md "class in java.util")

  `ResourceBundle.Control` defines a set of callback methods
  that are invoked by the [`ResourceBundle.getBundle`](ResourceBundle.md#getBundle(java.lang.String,java.util.Locale,java.lang.ClassLoader,java.util.ResourceBundle.Control)) factory
  methods during the bundle loading process.

  [Scanner](Scanner.md "class in java.util")

  A simple text scanner which can parse primitive types and strings using
  regular expressions.

  [SequencedCollection](SequencedCollection.md "interface in java.util")<E>

  A collection that has a well-defined encounter order, that supports operations at both ends,
  and that is reversible.

  [SequencedMap](SequencedMap.md "interface in java.util")<K,V>

  A Map that has a well-defined encounter order, that supports operations at both ends, and
  that is reversible.

  [SequencedSet](SequencedSet.md "interface in java.util")<E>

  A collection that is both a [`SequencedCollection`](SequencedCollection.md "interface in java.util") and a [`Set`](Set.md "interface in java.util").

  [ServiceConfigurationError](ServiceConfigurationError.md "class in java.util")

  Error thrown when something goes wrong while locating, loading, or
  instantiating a service provider.

  [ServiceLoader](ServiceLoader.md "class in java.util")<S>

  A facility to load implementations of a service.

  [ServiceLoader.Provider](ServiceLoader.Provider.md "interface in java.util")<S>

  Represents a service provider located by `ServiceLoader`.

  [Set](Set.md "interface in java.util")<E>

  A collection that contains no duplicate elements.

  [SimpleTimeZone](SimpleTimeZone.md "class in java.util")

  `SimpleTimeZone` is a concrete subclass of `TimeZone`
  that represents a time zone for use with a Gregorian calendar.

  [SortedMap](SortedMap.md "interface in java.util")<K,V>

  A [`Map`](Map.md "interface in java.util") that further provides a *total ordering* on its keys.

  [SortedSet](SortedSet.md "interface in java.util")<E>

  A [`Set`](Set.md "interface in java.util") that further provides a *total ordering* on its elements.

  [Spliterator](Spliterator.md "interface in java.util")<T>

  An object for traversing and partitioning elements of a source.

  [Spliterator.OfDouble](Spliterator.OfDouble.md "interface in java.util")

  A Spliterator specialized for `double` values.

  [Spliterator.OfInt](Spliterator.OfInt.md "interface in java.util")

  A Spliterator specialized for `int` values.

  [Spliterator.OfLong](Spliterator.OfLong.md "interface in java.util")

  A Spliterator specialized for `long` values.

  [Spliterator.OfPrimitive](Spliterator.OfPrimitive.md "interface in java.util")<T,T\_CONS,T\_SPLITR extends [Spliterator.OfPrimitive](Spliterator.OfPrimitive.md "interface in java.util")<T,T\_CONS,T\_SPLITR>>

  A Spliterator specialized for primitive values.

  [Spliterators](Spliterators.md "class in java.util")

  Static classes and methods for operating on or creating instances of
  [`Spliterator`](Spliterator.md "interface in java.util") and its primitive specializations
  [`Spliterator.OfInt`](Spliterator.OfInt.md "interface in java.util"), [`Spliterator.OfLong`](Spliterator.OfLong.md "interface in java.util"), and
  [`Spliterator.OfDouble`](Spliterator.OfDouble.md "interface in java.util").

  [Spliterators.AbstractDoubleSpliterator](Spliterators.AbstractDoubleSpliterator.md "class in java.util")

  An abstract `Spliterator.OfDouble` that implements
  `trySplit` to permit limited parallelism.

  [Spliterators.AbstractIntSpliterator](Spliterators.AbstractIntSpliterator.md "class in java.util")

  An abstract `Spliterator.OfInt` that implements `trySplit` to
  permit limited parallelism.

  [Spliterators.AbstractLongSpliterator](Spliterators.AbstractLongSpliterator.md "class in java.util")

  An abstract `Spliterator.OfLong` that implements `trySplit`
  to permit limited parallelism.

  [Spliterators.AbstractSpliterator](Spliterators.AbstractSpliterator.md "class in java.util")<T>

  An abstract `Spliterator` that implements `trySplit` to
  permit limited parallelism.

  [SplittableRandom](SplittableRandom.md "class in java.util")

  A generator of uniform pseudorandom values (with period 264)
  applicable for use in (among other contexts) isolated parallel
  computations that may generate subtasks.

  [Stack](Stack.md "class in java.util")<E>

  The `Stack` class represents a last-in-first-out
  (LIFO) stack of objects.

  [StringJoiner](StringJoiner.md "class in java.util")

  `StringJoiner` is used to construct a sequence of characters separated
  by a delimiter and optionally starting with a supplied prefix
  and ending with a supplied suffix.

  [StringTokenizer](StringTokenizer.md "class in java.util")

  The string tokenizer class allows an application to break a
  string into tokens.

  [Timer](Timer.md "class in java.util")

  A facility for threads to schedule tasks for future execution in a
  background thread.

  [TimerTask](TimerTask.md "class in java.util")

  A task that can be scheduled for one-time or repeated execution by a
  [`Timer`](Timer.md "class in java.util").

  [TimeZone](TimeZone.md "class in java.util")

  `TimeZone` represents a time zone offset, and also figures out daylight
  savings.

  [TooManyListenersException](TooManyListenersException.md "class in java.util")

  The  `TooManyListenersException`  Exception is used as part of
  the Java Event model to annotate and implement a unicast special case of
  a multicast Event Source.

  [TreeMap](TreeMap.md "class in java.util")<K,V>

  A Red-Black tree based [`NavigableMap`](NavigableMap.md "interface in java.util") implementation.

  [TreeSet](TreeSet.md "class in java.util")<E>

  A [`NavigableSet`](NavigableSet.md "interface in java.util") implementation based on a [`TreeMap`](TreeMap.md "class in java.util").

  [UnknownFormatConversionException](UnknownFormatConversionException.md "class in java.util")

  Unchecked exception thrown when an unknown conversion is given.

  [UnknownFormatFlagsException](UnknownFormatFlagsException.md "class in java.util")

  Unchecked exception thrown when an unknown flag is given.

  [UUID](UUID.md "class in java.util")

  A class that represents an immutable universally unique identifier (UUID).

  [Vector](Vector.md "class in java.util")<E>

  The `Vector` class implements a growable array of
  objects.

  [WeakHashMap](WeakHashMap.md "class in java.util")<K,V>

  Hash table based implementation of the `Map` interface, with
  *weak keys*.