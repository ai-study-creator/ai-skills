# Hierarchy For Package java.time.zone

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.lang.[Throwable](../../lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../lang/Exception.md "class in java.lang")
      * java.lang.[RuntimeException](../../lang/RuntimeException.md "class in java.lang")
        + java.time.[DateTimeException](../DateTimeException.md "class in java.time")
          - java.time.zone.[ZoneRulesException](ZoneRulesException.md "class in java.time.zone")
  + java.time.zone.[ZoneOffsetTransition](ZoneOffsetTransition.md "class in java.time.zone") (implements java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")<T>, java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
  + java.time.zone.[ZoneOffsetTransitionRule](ZoneOffsetTransitionRule.md "class in java.time.zone") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
  + java.time.zone.[ZoneRules](ZoneRules.md "class in java.time.zone") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
  + java.time.zone.[ZoneRulesProvider](ZoneRulesProvider.md "class in java.time.zone")

## Enum Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.time.zone.[ZoneOffsetTransitionRule.TimeDefinition](ZoneOffsetTransitionRule.TimeDefinition.md "enum class in java.time.zone")