Module [java.datatransfer](../../../module-summary.md)

Package [java.awt.datatransfer](package-summary.md)

# Interface FlavorTable

All Superinterfaces:
:   `FlavorMap`

All Known Implementing Classes:
:   `SystemFlavorMap`

---

public interface FlavorTable
extends [FlavorMap](FlavorMap.md "interface in java.awt.datatransfer")

A FlavorMap which relaxes the traditional 1-to-1 restriction of a Map. A
flavor is permitted to map to any number of natives, and likewise a native is
permitted to map to any number of flavors. FlavorTables need not be
symmetric, but typically are.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<DataFlavor>`

  `getFlavorsForNative(String nat)`

  Returns a `List` of `DataFlavor`s to which the specified
  `String` corresponds.

  `List<String>`

  `getNativesForFlavor(DataFlavor flav)`

  Returns a `List` of `String` natives to which the specified
  `DataFlavor` corresponds.

  ### Methods inherited from interface java.awt.datatransfer.[FlavorMap](FlavorMap.md "interface in java.awt.datatransfer")

  `getFlavorsForNatives, getNativesForFlavors`

* ## Method Details

  + ### getNativesForFlavor

    [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getNativesForFlavor([DataFlavor](DataFlavor.md "class in java.awt.datatransfer") flav)

    Returns a `List` of `String` natives to which the specified
    `DataFlavor` corresponds. The `List` will be sorted from best
    native to worst. That is, the first native will best reflect data in the
    specified flavor to the underlying native platform. The returned
    `List` is a modifiable copy of this `FlavorTable`'s internal
    data. Client code is free to modify the `List` without affecting
    this object.

    Parameters:
    :   `flav` - the `DataFlavor` whose corresponding natives should be
        returned. If `null` is specified, all natives currently
        known to this `FlavorTable` are returned in a
        non-deterministic order.

    Returns:
    :   a `java.util.List` of `java.lang.String` objects
        which are platform-specific representations of platform-specific
        data formats
  + ### getFlavorsForNative

    [List](../../../../java.base/java/util/List.md "interface in java.util")<[DataFlavor](DataFlavor.md "class in java.awt.datatransfer")> getFlavorsForNative([String](../../../../java.base/java/lang/String.md "class in java.lang") nat)

    Returns a `List` of `DataFlavor`s to which the specified
    `String` corresponds. The `List` will be sorted from best
    `DataFlavor` to worst. That is, the first `DataFlavor` will
    best reflect data in the specified native to a Java application. The
    returned `List` is a modifiable copy of this `FlavorTable`'s
    internal data. Client code is free to modify the `List` without
    affecting this object.

    Parameters:
    :   `nat` - the native whose corresponding `DataFlavor`s should be
        returned. If `null` is specified, all `DataFlavor`s
        currently known to this `FlavorTable` are returned in a
        non-deterministic order.

    Returns:
    :   a `java.util.List` of `DataFlavor` objects into which
        platform-specific data in the specified, platform-specific native
        can be translated