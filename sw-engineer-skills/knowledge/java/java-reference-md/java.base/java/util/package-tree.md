# Hierarchy For Package java.util

Package Hierarchies:

* [All Packages](../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../lang/Object.md "class in java.lang")
  + java.util.[AbstractCollection](AbstractCollection.md "class in java.util")<E> (implements java.util.[Collection](Collection.md "interface in java.util")<E>)
    - java.util.[AbstractList](AbstractList.md "class in java.util")<E> (implements java.util.[List](List.md "interface in java.util")<E>)
      * java.util.[AbstractSequentialList](AbstractSequentialList.md "class in java.util")<E>
        + java.util.[LinkedList](LinkedList.md "class in java.util")<E> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.util.[Deque](Deque.md "interface in java.util")<E>, java.util.[List](List.md "interface in java.util")<E>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
      * java.util.[ArrayList](ArrayList.md "class in java.util")<E> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.util.[List](List.md "interface in java.util")<E>, java.util.[RandomAccess](RandomAccess.md "interface in java.util"), java.io.[Serializable](../io/Serializable.md "interface in java.io"))
      * java.util.[Vector](Vector.md "class in java.util")<E> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.util.[List](List.md "interface in java.util")<E>, java.util.[RandomAccess](RandomAccess.md "interface in java.util"), java.io.[Serializable](../io/Serializable.md "interface in java.io"))
        + java.util.[Stack](Stack.md "class in java.util")<E>
    - java.util.[AbstractQueue](AbstractQueue.md "class in java.util")<E> (implements java.util.[Queue](Queue.md "interface in java.util")<E>)
      * java.util.[PriorityQueue](PriorityQueue.md "class in java.util")<E> (implements java.io.[Serializable](../io/Serializable.md "interface in java.io"))
    - java.util.[AbstractSet](AbstractSet.md "class in java.util")<E> (implements java.util.[Set](Set.md "interface in java.util")<E>)
      * java.util.[EnumSet](EnumSet.md "class in java.util")<E> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.io.[Serializable](../io/Serializable.md "interface in java.io"))
      * java.util.[HashSet](HashSet.md "class in java.util")<E> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.io.[Serializable](../io/Serializable.md "interface in java.io"), java.util.[Set](Set.md "interface in java.util")<E>)
        + java.util.[LinkedHashSet](LinkedHashSet.md "class in java.util")<E> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.util.[SequencedSet](SequencedSet.md "interface in java.util")<E>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
      * java.util.[TreeSet](TreeSet.md "class in java.util")<E> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.util.[NavigableSet](NavigableSet.md "interface in java.util")<E>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
    - java.util.[ArrayDeque](ArrayDeque.md "class in java.util")<E> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.util.[Deque](Deque.md "interface in java.util")<E>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
  + java.util.[AbstractMap](AbstractMap.md "class in java.util")<K,V> (implements java.util.[Map](Map.md "interface in java.util")<K,V>)
    - java.util.[EnumMap](EnumMap.md "class in java.util")<K,V> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.io.[Serializable](../io/Serializable.md "interface in java.io"))
    - java.util.[HashMap](HashMap.md "class in java.util")<K,V> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.util.[Map](Map.md "interface in java.util")<K,V>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
      * java.util.[LinkedHashMap](LinkedHashMap.md "class in java.util")<K,V> (implements java.util.[SequencedMap](SequencedMap.md "interface in java.util")<K,V>)
    - java.util.[IdentityHashMap](IdentityHashMap.md "class in java.util")<K,V> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.util.[Map](Map.md "interface in java.util")<K,V>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
    - java.util.[TreeMap](TreeMap.md "class in java.util")<K,V> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.util.[NavigableMap](NavigableMap.md "interface in java.util")<K,V>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
    - java.util.[WeakHashMap](WeakHashMap.md "class in java.util")<K,V> (implements java.util.[Map](Map.md "interface in java.util")<K,V>)
  + java.util.[AbstractMap.SimpleEntry](AbstractMap.SimpleEntry.md "class in java.util")<K,V> (implements java.util.[Map.Entry](Map.Entry.md "interface in java.util")<K,V>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
  + java.util.[AbstractMap.SimpleImmutableEntry](AbstractMap.SimpleImmutableEntry.md "class in java.util")<K,V> (implements java.util.[Map.Entry](Map.Entry.md "interface in java.util")<K,V>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
  + java.util.[Arrays](Arrays.md "class in java.util")
  + java.util.[Base64](Base64.md "class in java.util")
  + java.util.[Base64.Decoder](Base64.Decoder.md "class in java.util")
  + java.util.[Base64.Encoder](Base64.Encoder.md "class in java.util")
  + java.util.[BitSet](BitSet.md "class in java.util") (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.io.[Serializable](../io/Serializable.md "interface in java.io"))
  + java.util.[Calendar](Calendar.md "class in java.util") (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.lang.[Comparable](../lang/Comparable.md "interface in java.lang")<T>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
    - java.util.[GregorianCalendar](GregorianCalendar.md "class in java.util")
  + java.util.[Calendar.Builder](Calendar.Builder.md "class in java.util")
  + java.util.[Collections](Collections.md "class in java.util")
  + java.util.[Currency](Currency.md "class in java.util") (implements java.io.[Serializable](../io/Serializable.md "interface in java.io"))
  + java.util.[Date](Date.md "class in java.util") (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.lang.[Comparable](../lang/Comparable.md "interface in java.lang")<T>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
  + java.util.[Dictionary](Dictionary.md "class in java.util")<K,V>
    - java.util.[Hashtable](Hashtable.md "class in java.util")<K,V> (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.util.[Map](Map.md "interface in java.util")<K,V>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))
      * java.util.[Properties](Properties.md "class in java.util")
  + java.util.[DoubleSummaryStatistics](DoubleSummaryStatistics.md "class in java.util") (implements java.util.function.[DoubleConsumer](function/DoubleConsumer.md "interface in java.util.function"))
  + java.util.[EventListenerProxy](EventListenerProxy.md "class in java.util")<T> (implements java.util.[EventListener](EventListener.md "interface in java.util"))
  + java.util.[EventObject](EventObject.md "class in java.util") (implements java.io.[Serializable](../io/Serializable.md "interface in java.io"))
  + java.util.[FormatProcessor](FormatProcessor.md "class in java.util")[PREVIEW](FormatProcessor.md#preview-java.util.FormatProcessor) (implements java.lang.[StringTemplate.Processor](../lang/StringTemplate.Processor.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor)<R,E>, java.lang.[StringTemplate.Processor.Linkage](../lang/StringTemplate.Processor.Linkage.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.Processor.Linkage.md#preview-java.lang.StringTemplate.Processor.Linkage))
  + java.util.[FormattableFlags](FormattableFlags.md "class in java.util")
  + java.util.[Formatter](Formatter.md "class in java.util") (implements java.io.[Closeable](../io/Closeable.md "interface in java.io"), java.io.[Flushable](../io/Flushable.md "interface in java.io"))
  + java.util.[HexFormat](HexFormat.md "class in java.util")
  + java.util.[IntSummaryStatistics](IntSummaryStatistics.md "class in java.util") (implements java.util.function.[IntConsumer](function/IntConsumer.md "interface in java.util.function"))
  + java.util.[Locale](Locale.md "class in java.util") (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.io.[Serializable](../io/Serializable.md "interface in java.io"))
  + java.util.[Locale.Builder](Locale.Builder.md "class in java.util")
  + java.util.[Locale.LanguageRange](Locale.LanguageRange.md "class in java.util")
  + java.util.[LongSummaryStatistics](LongSummaryStatistics.md "class in java.util") (implements java.util.function.[IntConsumer](function/IntConsumer.md "interface in java.util.function"), java.util.function.[LongConsumer](function/LongConsumer.md "interface in java.util.function"))
  + java.util.[Objects](Objects.md "class in java.util")
  + java.util.[Observable](Observable.md "class in java.util")
  + java.util.[Optional](Optional.md "class in java.util")<T>
  + java.util.[OptionalDouble](OptionalDouble.md "class in java.util")
  + java.util.[OptionalInt](OptionalInt.md "class in java.util")
  + java.util.[OptionalLong](OptionalLong.md "class in java.util")
  + java.security.[Permission](../security/Permission.md "class in java.security") (implements java.security.[Guard](../security/Guard.md "interface in java.security"), java.io.[Serializable](../io/Serializable.md "interface in java.io"))
    - java.security.[BasicPermission](../security/BasicPermission.md "class in java.security") (implements java.io.[Serializable](../io/Serializable.md "interface in java.io"))
      * java.util.[PropertyPermission](PropertyPermission.md "class in java.util")
  + java.util.[Random](Random.md "class in java.util") (implements java.util.random.[RandomGenerator](random/RandomGenerator.md "interface in java.util.random"), java.io.[Serializable](../io/Serializable.md "interface in java.io"))
  + java.util.[ResourceBundle](ResourceBundle.md "class in java.util")
    - java.util.[ListResourceBundle](ListResourceBundle.md "class in java.util")
    - java.util.[PropertyResourceBundle](PropertyResourceBundle.md "class in java.util")
  + java.util.[ResourceBundle.Control](ResourceBundle.Control.md "class in java.util")
  + java.util.[Scanner](Scanner.md "class in java.util") (implements java.io.[Closeable](../io/Closeable.md "interface in java.io"), java.util.[Iterator](Iterator.md "interface in java.util")<E>)
  + java.util.[ServiceLoader](ServiceLoader.md "class in java.util")<S> (implements java.lang.[Iterable](../lang/Iterable.md "interface in java.lang")<T>)
  + java.util.[Spliterators](Spliterators.md "class in java.util")
  + java.util.[Spliterators.AbstractDoubleSpliterator](Spliterators.AbstractDoubleSpliterator.md "class in java.util") (implements java.util.[Spliterator.OfDouble](Spliterator.OfDouble.md "interface in java.util"))
  + java.util.[Spliterators.AbstractIntSpliterator](Spliterators.AbstractIntSpliterator.md "class in java.util") (implements java.util.[Spliterator.OfInt](Spliterator.OfInt.md "interface in java.util"))
  + java.util.[Spliterators.AbstractLongSpliterator](Spliterators.AbstractLongSpliterator.md "class in java.util") (implements java.util.[Spliterator.OfLong](Spliterator.OfLong.md "interface in java.util"))
  + java.util.[Spliterators.AbstractSpliterator](Spliterators.AbstractSpliterator.md "class in java.util")<T> (implements java.util.[Spliterator](Spliterator.md "interface in java.util")<T>)
  + java.util.[SplittableRandom](SplittableRandom.md "class in java.util") (implements java.util.random.[RandomGenerator](random/RandomGenerator.md "interface in java.util.random"), java.util.random.[RandomGenerator.SplittableGenerator](random/RandomGenerator.SplittableGenerator.md "interface in java.util.random"))
  + java.util.[StringJoiner](StringJoiner.md "class in java.util")
  + java.util.[StringTokenizer](StringTokenizer.md "class in java.util") (implements java.util.[Enumeration](Enumeration.md "interface in java.util")<E>)
  + java.lang.[Throwable](../lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../io/Serializable.md "interface in java.io"))
    - java.lang.[Error](../lang/Error.md "class in java.lang")
      * java.util.[ServiceConfigurationError](ServiceConfigurationError.md "class in java.util")
    - java.lang.[Exception](../lang/Exception.md "class in java.lang")
      * java.io.[IOException](../io/IOException.md "class in java.io")
        + java.util.[InvalidPropertiesFormatException](InvalidPropertiesFormatException.md "class in java.util")
      * java.lang.[RuntimeException](../lang/RuntimeException.md "class in java.lang")
        + java.util.[ConcurrentModificationException](ConcurrentModificationException.md "class in java.util")
        + java.util.[EmptyStackException](EmptyStackException.md "class in java.util")
        + java.lang.[IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")
          - java.util.[IllegalFormatException](IllegalFormatException.md "class in java.util")
            * java.util.[DuplicateFormatFlagsException](DuplicateFormatFlagsException.md "class in java.util")
            * java.util.[FormatFlagsConversionMismatchException](FormatFlagsConversionMismatchException.md "class in java.util")
            * java.util.[IllegalFormatCodePointException](IllegalFormatCodePointException.md "class in java.util")
            * java.util.[IllegalFormatConversionException](IllegalFormatConversionException.md "class in java.util")
            * java.util.[IllegalFormatFlagsException](IllegalFormatFlagsException.md "class in java.util")
            * java.util.[IllegalFormatPrecisionException](IllegalFormatPrecisionException.md "class in java.util")
            * java.util.[IllegalFormatWidthException](IllegalFormatWidthException.md "class in java.util")
            * java.util.[MissingFormatArgumentException](MissingFormatArgumentException.md "class in java.util")
            * java.util.[MissingFormatWidthException](MissingFormatWidthException.md "class in java.util")
            * java.util.[UnknownFormatConversionException](UnknownFormatConversionException.md "class in java.util")
            * java.util.[UnknownFormatFlagsException](UnknownFormatFlagsException.md "class in java.util")
        + java.lang.[IllegalStateException](../lang/IllegalStateException.md "class in java.lang")
          - java.util.[FormatterClosedException](FormatterClosedException.md "class in java.util")
        + java.util.[IllformedLocaleException](IllformedLocaleException.md "class in java.util")
        + java.util.[MissingResourceException](MissingResourceException.md "class in java.util")
        + java.util.[NoSuchElementException](NoSuchElementException.md "class in java.util")
          - java.util.[InputMismatchException](InputMismatchException.md "class in java.util")
      * java.util.[TooManyListenersException](TooManyListenersException.md "class in java.util")
  + java.util.[Timer](Timer.md "class in java.util")
  + java.util.[TimerTask](TimerTask.md "class in java.util") (implements java.lang.[Runnable](../lang/Runnable.md "interface in java.lang"))
  + java.util.[TimeZone](TimeZone.md "class in java.util") (implements java.lang.[Cloneable](../lang/Cloneable.md "interface in java.lang"), java.io.[Serializable](../io/Serializable.md "interface in java.io"))
    - java.util.[SimpleTimeZone](SimpleTimeZone.md "class in java.util")
  + java.util.[UUID](UUID.md "class in java.util") (implements java.lang.[Comparable](../lang/Comparable.md "interface in java.lang")<T>, java.io.[Serializable](../io/Serializable.md "interface in java.io"))

## Interface Hierarchy

* java.util.[Comparator](Comparator.md "interface in java.util")<T>
* java.util.[Enumeration](Enumeration.md "interface in java.util")<E>
* java.util.[EventListener](EventListener.md "interface in java.util")
* java.util.[Formattable](Formattable.md "interface in java.util")
* java.lang.[Iterable](../lang/Iterable.md "interface in java.lang")<T>
  + java.util.[Collection](Collection.md "interface in java.util")<E>
    - java.util.[Queue](Queue.md "interface in java.util")<E>
      * java.util.[Deque](Deque.md "interface in java.util")<E> (also extends java.util.[SequencedCollection](SequencedCollection.md "interface in java.util")<E>)
    - java.util.[SequencedCollection](SequencedCollection.md "interface in java.util")<E>
      * java.util.[Deque](Deque.md "interface in java.util")<E> (also extends java.util.[Queue](Queue.md "interface in java.util")<E>)
      * java.util.[List](List.md "interface in java.util")<E>
      * java.util.[SequencedSet](SequencedSet.md "interface in java.util")<E> (also extends java.util.[Set](Set.md "interface in java.util")<E>)
        + java.util.[SortedSet](SortedSet.md "interface in java.util")<E> (also extends java.util.[Set](Set.md "interface in java.util")<E>)
          - java.util.[NavigableSet](NavigableSet.md "interface in java.util")<E>
    - java.util.[Set](Set.md "interface in java.util")<E>
      * java.util.[SequencedSet](SequencedSet.md "interface in java.util")<E> (also extends java.util.[SequencedCollection](SequencedCollection.md "interface in java.util")<E>)
        + java.util.[SortedSet](SortedSet.md "interface in java.util")<E> (also extends java.util.[Set](Set.md "interface in java.util")<E>)
          - java.util.[NavigableSet](NavigableSet.md "interface in java.util")<E>
      * java.util.[SortedSet](SortedSet.md "interface in java.util")<E> (also extends java.util.[SequencedSet](SequencedSet.md "interface in java.util")<E>)
        + java.util.[NavigableSet](NavigableSet.md "interface in java.util")<E>
* java.util.[Iterator](Iterator.md "interface in java.util")<E>
  + java.util.[ListIterator](ListIterator.md "interface in java.util")<E>
  + java.util.[PrimitiveIterator](PrimitiveIterator.md "interface in java.util")<T,T\_CONS>
    - java.util.[PrimitiveIterator.OfDouble](PrimitiveIterator.OfDouble.md "interface in java.util")
    - java.util.[PrimitiveIterator.OfInt](PrimitiveIterator.OfInt.md "interface in java.util")
    - java.util.[PrimitiveIterator.OfLong](PrimitiveIterator.OfLong.md "interface in java.util")
* java.util.[Map](Map.md "interface in java.util")<K,V>
  + java.util.[SequencedMap](SequencedMap.md "interface in java.util")<K,V>
    - java.util.[SortedMap](SortedMap.md "interface in java.util")<K,V>
      * java.util.[NavigableMap](NavigableMap.md "interface in java.util")<K,V>
* java.util.[Map.Entry](Map.Entry.md "interface in java.util")<K,V>
* java.util.[Observer](Observer.md "interface in java.util")
* java.util.[RandomAccess](RandomAccess.md "interface in java.util")
* java.util.[Spliterator](Spliterator.md "interface in java.util")<T>
  + java.util.[Spliterator.OfPrimitive](Spliterator.OfPrimitive.md "interface in java.util")<T,T\_CONS,T\_SPLITR>
    - java.util.[Spliterator.OfDouble](Spliterator.OfDouble.md "interface in java.util")
    - java.util.[Spliterator.OfInt](Spliterator.OfInt.md "interface in java.util")
    - java.util.[Spliterator.OfLong](Spliterator.OfLong.md "interface in java.util")
* java.util.function.[Supplier](function/Supplier.md "interface in java.util.function")<T>
  + java.util.[ServiceLoader.Provider](ServiceLoader.Provider.md "interface in java.util")<S>

## Enum Class Hierarchy

* java.lang.[Object](../lang/Object.md "class in java.lang")
  + java.lang.[Enum](../lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../io/Serializable.md "interface in java.io"))
    - java.util.[Formatter.BigDecimalLayoutForm](Formatter.BigDecimalLayoutForm.md "enum class in java.util")
    - java.util.[Locale.Category](Locale.Category.md "enum class in java.util")
    - java.util.[Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util")
    - java.util.[Locale.IsoCountryCode](Locale.IsoCountryCode.md "enum class in java.util")