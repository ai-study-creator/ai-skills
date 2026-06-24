Module [java.base](../../../module-summary.md)

Package [java.time.temporal](package-summary.md)

# Interface TemporalQuery<R>

Type Parameters:
:   `R` - the type returned from the query

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface TemporalQuery<R>

Strategy for querying a temporal object.

Queries are a key tool for extracting information from temporal objects.
They exist to externalize the process of querying, permitting different
approaches, as per the strategy design pattern.
Examples might be a query that checks if the date is the day before February 29th
in a leap year, or calculates the number of days to your next birthday.

The [`TemporalField`](TemporalField.md "interface in java.time.temporal") interface provides another mechanism for querying
temporal objects. That interface is limited to returning a `long`.
By contrast, queries can return any type.

There are two equivalent ways of using a `TemporalQuery`.
The first is to invoke the method on this interface directly.
The second is to use [`TemporalAccessor.query(TemporalQuery)`](TemporalAccessor.md#query(java.time.temporal.TemporalQuery)):

```
   // these two lines are equivalent, but the second approach is recommended
   temporal = thisQuery.queryFrom(temporal);
   temporal = temporal.query(thisQuery);
```

It is recommended to use the second approach, `query(TemporalQuery)`,
as it is a lot clearer to read in code.

The most common implementations are method references, such as
`LocalDate::from` and `ZoneId::from`.
Additional common queries are provided as static methods in [`TemporalQueries`](TemporalQueries.md "class in java.time.temporal").

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `R`

  `queryFrom(TemporalAccessor temporal)`

  Queries the specified temporal object.

* ## Method Details

  + ### queryFrom

    [R](TemporalQuery.md "type parameter in TemporalQuery") queryFrom([TemporalAccessor](TemporalAccessor.md "interface in java.time.temporal") temporal)

    Queries the specified temporal object.

    This queries the specified temporal object to return an object using the logic
    encapsulated in the implementing class.
    Examples might be a query that checks if the date is the day before February 29th
    in a leap year, or calculates the number of days to your next birthday.

    There are two equivalent ways of using this method.
    The first is to invoke this method directly.
    The second is to use [`TemporalAccessor.query(TemporalQuery)`](TemporalAccessor.md#query(java.time.temporal.TemporalQuery)):

    ```
       // these two lines are equivalent, but the second approach is recommended
       temporal = thisQuery.queryFrom(temporal);
       temporal = temporal.query(thisQuery);
    ```

    It is recommended to use the second approach, `query(TemporalQuery)`,
    as it is a lot clearer to read in code.

    Parameters:
    :   `temporal` - the temporal object to query, not null

    Returns:
    :   the queried value, may return null to indicate not found

    Throws:
    :   `DateTimeException` - if unable to query
    :   `ArithmeticException` - if numeric overflow occurs