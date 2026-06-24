Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface Comparable<T>

Type Parameters:
:   `T` - the type of objects that this object may be compared to

All Known Subinterfaces:
:   `ChronoLocalDate`, `ChronoLocalDateTime<D>`, `Chronology`, `ChronoZonedDateTime<D>`, `Delayed`, `Name`, `Path`, `ProcessHandle`, `RunnableScheduledFuture<V>`, `ScheduledFuture<V>`

All Known Implementing Classes:
:   `AbstractChronology`, `AbstractRegionPainter.PaintContext.CacheMode`, `AccessFlag`, `AccessFlag.Location`, `AccessMode`, `AclEntryFlag`, `AclEntryPermission`, `AclEntryType`, `Authenticator.RequestorType`, `BigDecimal`, `BigInteger`, `Boolean`, `Byte`, `ByteBuffer`, `Calendar`, `CatalogFeatures.Feature`, `CertPathValidatorException.BasicReason`, `Character`, `Character.UnicodeScript`, `CharBuffer`, `Charset`, `ChronoField`, `ChronoUnit`, `ClassFileFormatVersion`, `ClientInfoStatus`, `CollationKey`, `Collector.Characteristics`, `Component.BaselineResizeBehavior`, `CompositeName`, `CompoundName`, `CRLReason`, `CryptoPrimitive`, `Date`, `Date`, `DayOfWeek`, `Desktop.Action`, `Diagnostic.Kind`, `Dialog.ModalExclusionType`, `Dialog.ModalityType`, `DirectMethodHandleDesc.Kind`, `DocumentationTool.Location`, `Double`, `DoubleBuffer`, `DrbgParameters.Capability`, `DropMode`, `Duration`, `ElementKind`, `Elements.Origin`, `ElementType`, `Enum`, `File`, `FileTime`, `FileVisitOption`, `FileVisitResult`, `Float`, `FloatBuffer`, `FocusEvent.Cause`, `FormatStyle`, `Formatter.BigDecimalLayoutForm`, `FormSubmitEvent.MethodType`, `Future.State`, `GraphicsDevice.WindowTranslucency`, `GregorianCalendar`, `GroupLayout.Alignment`, `HijrahChronology`, `HijrahDate`, `HijrahEra`, `HttpClient.Redirect`, `HttpClient.Version`, `Instant`, `IntBuffer`, `Integer`, `IsoChronology`, `IsoEra`, `JapaneseChronology`, `JapaneseDate`, `JavaFileObject.Kind`, `JDBCType`, `JTable.PrintMode`, `KeyRep.Type`, `LayoutStyle.ComponentPlacement`, `LdapName`, `LinkOption`, `LocalDate`, `LocalDateTime`, `Locale.Category`, `Locale.FilteringMode`, `Locale.IsoCountryCode`, `LocalTime`, `Long`, `LongBuffer`, `MappedByteBuffer`, `MemoryType`, `MethodHandles.Lookup.ClassOption`, `MinguoChronology`, `MinguoDate`, `MinguoEra`, `Modifier`, `ModuleDescriptor`, `ModuleDescriptor.Exports`, `ModuleDescriptor.Exports.Modifier`, `ModuleDescriptor.Modifier`, `ModuleDescriptor.Opens`, `ModuleDescriptor.Opens.Modifier`, `ModuleDescriptor.Provides`, `ModuleDescriptor.Requires`, `ModuleDescriptor.Requires.Modifier`, `ModuleDescriptor.Version`, `ModuleElement.DirectiveKind`, `Month`, `MonthDay`, `MultipleGradientPaint.ColorSpaceType`, `MultipleGradientPaint.CycleMethod`, `NestingKind`, `Normalizer.Form`, `NumberFormat.Style`, `NumericShaper.Range`, `ObjectInputFilter.Status`, `ObjectName`, `ObjectStreamField`, `OffsetDateTime`, `OffsetTime`, `PKIXReason`, `PKIXRevocationChecker.Option`, `PosixFilePermission`, `ProcessBuilder.Redirect.Type`, `Proxy.Type`, `PseudoColumnUsage`, `QuitStrategy`, `Rdn`, `ResolverStyle`, `RetentionPolicy`, `RoundingMode`, `RowFilter.ComparisonType`, `RowIdLifetime`, `RowSorterEvent.Type`, `Runtime.Version`, `Short`, `ShortBuffer`, `SignStyle`, `SortOrder`, `SourceVersion`, `SSLEngineResult.HandshakeStatus`, `SSLEngineResult.Status`, `StackWalker.Option`, `StandardCopyOption`, `StandardLocation`, `StandardOpenOption`, `StandardProtocolFamily`, `String`, `StringBuffer`, `StringBuilder`, `StructuredTaskScope.Subtask.StatePREVIEW`, `SwingWorker.StateValue`, `System.Logger.Level`, `Taskbar.Feature`, `Taskbar.State`, `TextStyle`, `ThaiBuddhistChronology`, `ThaiBuddhistDate`, `ThaiBuddhistEra`, `Thread.State`, `Time`, `Timestamp`, `TimeUnit`, `TrayIcon.MessageType`, `TypeKind`, `URI`, `UserSessionEvent.Reason`, `UUID`, `VarHandle.AccessMode`, `Window.Type`, `XPathEvaluationResult.XPathResultType`, `Year`, `YearMonth`, `ZonedDateTime`, `ZoneOffset`, `ZoneOffsetTransition`, `ZoneOffsetTransitionRule.TimeDefinition`

---

public interface Comparable<T>

This interface imposes a total ordering on the objects of each class that
implements it. This ordering is referred to as the class's *natural
ordering*, and the class's `compareTo` method is referred to as
its *natural comparison method*.

Lists (and arrays) of objects that implement this interface can be sorted
automatically by [`Collections.sort`](../util/Collections.md#sort(java.util.List)) (and
[`Arrays.sort`](../util/Arrays.md#sort(java.lang.Object%5B%5D))). Objects that implement this
interface can be used as keys in a [sorted map](../util/SortedMap.md "interface in java.util") or as
elements in a [sorted set](../util/SortedSet.md "interface in java.util"), without the need to
specify a [comparator](../util/Comparator.md "interface in java.util").

The natural ordering for a class `C` is said to be *consistent
with equals* if and only if `e1.compareTo(e2) == 0` has
the same boolean value as `e1.equals(e2)` for every
`e1` and `e2` of class `C`. Note that `null`
is not an instance of any class, and `e.compareTo(null)` should
throw a `NullPointerException` even though `e.equals(null)`
returns `false`.

It is strongly recommended (though not required) that natural orderings be
consistent with equals. This is so because sorted sets (and sorted maps)
without explicit comparators behave "strangely" when they are used with
elements (or keys) whose natural ordering is inconsistent with equals. In
particular, such a sorted set (or sorted map) violates the general contract
for set (or map), which is defined in terms of the `equals`
method.

For example, if one adds two keys `a` and `b` such that
`(!a.equals(b) && a.compareTo(b) == 0)` to a sorted
set that does not use an explicit comparator, the second `add`
operation returns false (and the size of the sorted set does not increase)
because `a` and `b` are equivalent from the sorted set's
perspective.

Virtually all Java core classes that implement `Comparable`
have natural orderings that are consistent with equals. One
exception is [`BigDecimal`](../math/BigDecimal.md "class in java.math"), whose [natural ordering](../math/BigDecimal.md#compareTo(java.math.BigDecimal)) equates `BigDecimal` objects with equal numerical values and different
representations (such as 4.0 and 4.00). For [`BigDecimal.equals()`](../math/BigDecimal.md#equals(java.lang.Object)) to return true,
the representation and numerical value of the two `BigDecimal` objects must be the same.

For the mathematically inclined, the *relation* that defines
the natural ordering on a given class C is:

```
       {(x, y) such that x.compareTo(y) <= 0}.
```

The *quotient* for this total order is:

```
       {(x, y) such that x.compareTo(y) == 0}.
```

It follows immediately from the contract for `compareTo` that the
quotient is an *equivalence relation* on `C`, and that the
natural ordering is a *total order* on `C`. When we say that a
class's natural ordering is *consistent with equals*, we mean that the
quotient for the natural ordering is the equivalence relation defined by
the class's [`equals(Object)`](Object.md#equals(java.lang.Object)) method:

```
     {(x, y) such that x.equals(y)}.
```

In other words, when a class's natural ordering is consistent with
equals, the equivalence classes defined by the equivalence relation
of the `equals` method and the equivalence classes defined by
the quotient of the `compareTo` method are the same.

This interface is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   1.2

See Also:
:   * [`Comparator`](../util/Comparator.md "interface in java.util")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `compareTo(T o)`

  Compares this object with the specified object for order.

* ## Method Details

  + ### compareTo

    int compareTo([T](Comparable.md "type parameter in Comparable") o)

    Compares this object with the specified object for order. Returns a
    negative integer, zero, or a positive integer as this object is less
    than, equal to, or greater than the specified object.

    The implementor must ensure [`signum`](Integer.md#signum(int))`(x.compareTo(y)) == -signum(y.compareTo(x))` for
    all `x` and `y`. (This implies that `x.compareTo(y)` must throw an exception if and only if `y.compareTo(x)` throws an exception.)

    The implementor must also ensure that the relation is transitive:
    `(x.compareTo(y) > 0 && y.compareTo(z) > 0)` implies
    `x.compareTo(z) > 0`.

    Finally, the implementor must ensure that `x.compareTo(y)==0` implies that `signum(x.compareTo(z))
    == signum(y.compareTo(z))`, for all `z`.

    Parameters:
    :   `o` - the object to be compared.

    Returns:
    :   a negative integer, zero, or a positive integer as this object
        is less than, equal to, or greater than the specified object.

    Throws:
    :   `NullPointerException` - if the specified object is null
    :   `ClassCastException` - if the specified object's type prevents it
        from being compared to this object.