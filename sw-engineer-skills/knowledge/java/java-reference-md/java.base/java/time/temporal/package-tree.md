# Hierarchy For Package java.time.temporal

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.time.temporal.[IsoFields](IsoFields.md "class in java.time.temporal")
  + java.time.temporal.[JulianFields](JulianFields.md "class in java.time.temporal")
  + java.time.temporal.[TemporalAdjusters](TemporalAdjusters.md "class in java.time.temporal")
  + java.time.temporal.[TemporalQueries](TemporalQueries.md "class in java.time.temporal")
  + java.lang.[Throwable](../../lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../lang/Exception.md "class in java.lang")
      * java.lang.[RuntimeException](../../lang/RuntimeException.md "class in java.lang")
        + java.time.[DateTimeException](../DateTimeException.md "class in java.time")
          - java.time.temporal.[UnsupportedTemporalTypeException](UnsupportedTemporalTypeException.md "class in java.time.temporal")
  + java.time.temporal.[ValueRange](ValueRange.md "class in java.time.temporal") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
  + java.time.temporal.[WeekFields](WeekFields.md "class in java.time.temporal") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))

## Interface Hierarchy

* java.time.temporal.[TemporalAccessor](TemporalAccessor.md "interface in java.time.temporal")
  + java.time.temporal.[Temporal](Temporal.md "interface in java.time.temporal")
* java.time.temporal.[TemporalAdjuster](TemporalAdjuster.md "interface in java.time.temporal")
* java.time.temporal.[TemporalAmount](TemporalAmount.md "interface in java.time.temporal")
* java.time.temporal.[TemporalField](TemporalField.md "interface in java.time.temporal")
* java.time.temporal.[TemporalQuery](TemporalQuery.md "interface in java.time.temporal")<R>
* java.time.temporal.[TemporalUnit](TemporalUnit.md "interface in java.time.temporal")

## Enum Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.time.temporal.[ChronoField](ChronoField.md "enum class in java.time.temporal") (implements java.time.temporal.[TemporalField](TemporalField.md "interface in java.time.temporal"))
    - java.time.temporal.[ChronoUnit](ChronoUnit.md "enum class in java.time.temporal") (implements java.time.temporal.[TemporalUnit](TemporalUnit.md "interface in java.time.temporal"))